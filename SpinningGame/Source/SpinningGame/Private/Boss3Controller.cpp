// Fill out your copyright notice in the Description page of Project Settings.


#include "Boss3Controller.h"

void ABoss3Controller::OnPossess_Implementation(AActor* Actor)
{
	BoardView = Actor->GetComponentByClass<UPuzzleBoardViewComponent>();
	RotationColliderEvents = Actor->GetComponentByClass<URotationColliderEvents>();
	
	BoardView->OnRotationEnd.AddDynamic(this, &ABoss3Controller::CheckVulerability);
	BoardView->OnSetPatternEnd.AddDynamic(this, &ABoss3Controller::OnSetPatternAnimationEnd);
}

void ABoss3Controller::OnUnPossess_Implementation()
{
	BoardView->OnRotationEnd.RemoveDynamic(this, &ABoss3Controller::CheckVulerability);
	BoardView->OnSetPatternEnd.RemoveDynamic(this, &ABoss3Controller::OnSetPatternAnimationEnd);
}

void ABoss3Controller::RotateBoardCorner(const FName& CornerName, const TSubclassOf<UDamageType>& DamageType)
{
	// Only rotate while vulnerable
	// or not currently rotating
	if (IsVulnerable() || BoardView->IsAnimating())
	{
		return;
	}
	RotationColliderEvents->OnToggleRotationColliders.Broadcast(false);

	BoardCorner corner = BoardCorner::TopRight;
	if (CornerName == FName("TopRight"))
	{
		corner = BoardCorner::TopRight;
	}
	else if (CornerName == FName("TopLeft"))
	{
		corner = BoardCorner::TopLeft;
	}
	else if (CornerName == FName("BottomRight"))
	{
		corner = BoardCorner::BottomRight;
	}
	else if (CornerName == FName("BottomLeft"))
	{
		corner = BoardCorner::BottomLeft;
	}

	CornerRotation rotation = DamageType == UDamageType_A::StaticClass()
		? CornerRotation::CounterClockwise
		: CornerRotation::Clockwise;

	Board.RotateCorner(corner, rotation);
	BoardView->AnimateRotation(corner, rotation, RotationAnimationDuration);
}

void ABoss3Controller::Setup(float Duration)
{
	Super::Setup(Duration);
	RandomizeBoard();
}

void ABoss3Controller::BeginVulnerability()
{
	Super::BeginVulnerability();

	VulnerabilityAnimation.TimePassed = 0;
	VulnerabilityAnimation.Duration = VulnerabilityRiseFallDuration;
	VulnerabilityAnimation.StartValue = InvulernablePosition;
	VulnerabilityAnimation.EndValue = VulernablePosition;
	FTimerManager& timerManager = GetWorldTimerManager();
	timerManager.SetTimer(
		VulnerabilityAnimation.Handle,
		this,
		&ABoss3Controller::TickVulnerabilityPositionSwap,
		1.0 / 60,
		true
	);
}

void ABoss3Controller::EndVulnerability()
{
	Super::EndVulnerability();
	FTimerManager& timerManager = GetWorldTimerManager();

	// Knock player away from board
	ACharacter* player = UGameplayStatics::GetPlayerCharacter(GetWorld(), 0);
	player->LaunchCharacter(
		FVector(0, 0, 10),
		false,
		true
	);
	FVector towardsPlayer = player->GetActorLocation()
		- GetPawn()->GetActorLocation();
	towardsPlayer.Z = 0;
	towardsPlayer.Normalize();
	FVector kbForce = towardsPlayer * ExitVulnerabilityKnockback;
	FTimerDelegate delegate;
	delegate.BindLambda([&, player, kbForce]()
	{
		player->LaunchCharacter(kbForce, true, false);
	});
	timerManager.SetTimerForNextTick(delegate);

	// Animate boss back up
	VulnerabilityAnimation.TimePassed = 0;
	VulnerabilityAnimation.Duration = VulnerabilityRiseFallDuration;
	VulnerabilityAnimation.StartValue = VulernablePosition;
	VulnerabilityAnimation.EndValue = InvulernablePosition;
	
	timerManager.SetTimer(
		VulnerabilityAnimation.Handle,
		this,
		&ABoss3Controller::TickVulnerabilityPositionSwap,
		1.0 / 60,
		true
	);

	RandomizeBoard();
}

void ABoss3Controller::RandomizeBoard()
{
	RotationColliderEvents->OnToggleRotationColliders.Broadcast(false);
	Board.RandomizeBoard();
	BoardView->SetPattern(Board, RandomizePiecesAnimationDuration);
}

void ABoss3Controller::CheckVulerability()
{
	if (Board.HasLine())
	{
		BecomeVulnerable();
	}
	else
	{
		RotationColliderEvents->OnToggleRotationColliders.Broadcast(true);
	}
}

void ABoss3Controller::OnSetPatternAnimationEnd()
{
	RotationColliderEvents->OnToggleRotationColliders.Broadcast(true);
}

void ABoss3Controller::TickVulnerabilityPositionSwap()
{
	FTimerManager& timerManager = GetWorldTimerManager();
	float elapsed = timerManager.GetTimerElapsed(VulnerabilityAnimation.Handle);
	VulnerabilityAnimation.TimePassed += elapsed;
	if (VulnerabilityAnimation.TimePassed > VulnerabilityAnimation.Duration)
	{
		GetPawn()->SetActorLocation(VulnerabilityAnimation.EndValue);
		return;
	}

	float scalar = VulnerabilityAnimation.TimePassed / VulnerabilityAnimation.Duration;
	GetPawn()->SetActorLocation(
		FMath::Lerp(
			VulnerabilityAnimation.StartValue,
			VulnerabilityAnimation.EndValue,
			scalar
		)
	);
}