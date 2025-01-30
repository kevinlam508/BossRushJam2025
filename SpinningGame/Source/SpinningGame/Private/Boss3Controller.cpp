// Fill out your copyright notice in the Description page of Project Settings.


#include "Boss3Controller.h"


void ABoss3Controller::OnPossess_Implementation(AActor* Actor)
{
	Super::OnPossess_Implementation(Actor);

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

int ABoss3Controller::GetTotalAttacks() const
{
	return 1;
}

void ABoss3Controller::Setup(float Duration)
{
	Super::Setup(Duration);
	RandomizeBoard();
}

void ABoss3Controller::BeginAttack(int Number)
{
	switch (Number)
	{
	case 0:
		BeginAttack0();
	}
	Super::BeginAttack(Number);
}

void ABoss3Controller::AbortAttack(int Number)
{

	switch (Number)
	{
	case 0:
		AbortAttack0();
	}
	Super::AbortAttack(Number);
}

void ABoss3Controller::EndAttack(int Number)
{
	switch (Number)
	{
	case 0:
		EndAttack0();
	}
	Super::EndAttack(Number);
}

void ABoss3Controller::BeginVulnerability()
{
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

	Super::BeginVulnerability();
}

void ABoss3Controller::EndVulnerability()
{
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
	Super::EndVulnerability();
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

void ABoss3Controller::Attack0SpawnBomb()
{
	// Find an empty spot
	FVector gridIndex;
	gridIndex.X = FMath::RandRange(-Attack0GridHalfExtentX + 1, Attack0GridHalfExtentX - 1);
	gridIndex.Y = FMath::RandRange(-Attack0GridHalfExtentY + 1, Attack0GridHalfExtentY - 1);
	gridIndex.Z = 0;
	while (Attack0BombGrid.Contains(gridIndex)
		|| (FMath::Abs(gridIndex.X) < 2 && FMath::Abs(gridIndex.Y) < 2))
	{
		gridIndex.X = FMath::RandRange(-Attack0GridHalfExtentX + 1, Attack0GridHalfExtentX - 1);
		gridIndex.Y = FMath::RandRange(-Attack0GridHalfExtentY + 1, Attack0GridHalfExtentY - 1);
	}

	FVector actorLocation = GetPawn()->GetActorLocation();
	actorLocation.Z = 0;
	FVector spawnLocation = (gridIndex * Attack0GridSpacing)
		 + actorLocation;
	spawnLocation.Z = Attack0BombSpawnHeight;

	int bombNumber = FMath::RandRange(0, 1);
	TSubclassOf<AActor> toSpawn = bombNumber == 0
		? Attack0BombABP
		: Attack0BombBBP;

	// Spawn
	AActor* newInstance = GetWorld()->SpawnActor(
		toSpawn,
		&spawnLocation
	);
	UBombComponent* component = newInstance->GetComponentByClass<UBombComponent>();
	Attack0BombGrid.Add(gridIndex, component);

	// Check for lines after delay
	UMoveStraight* moveStraight = newInstance->GetComponentByClass<UMoveStraight>();
	float landTime = Attack0BombSpawnHeight / moveStraight->Speed;
	
	FTimerDelegate checkDelegate;
	checkDelegate.BindLambda([&, gridIndex, component]()
	{

		UE_LOG(LogTemp, Warning, TEXT("New Drop %s"), *gridIndex.ToString());
		float z = component->GetOwner()->GetActorLocation().Z;

		TArray<FVector> horizontallyAdjacent;
		horizontallyAdjacent.Empty();
		for (int i = gridIndex.X + 1; i < Attack0GridHalfExtentX; i++)
		{
			FVector checkIndex = FVector(i,
				gridIndex.Y,
				0);

			// Doesn't exist, break
			UBombComponent** find = Attack0BombGrid.Find(checkIndex);
			if (find == nullptr)
			{
				break;
			}

			// HACK: only check pieces at same height to be "on the ground"
			UBombComponent* neighbor = *find;
			float diff = FMath::Abs(neighbor->GetOwner()->GetActorLocation().Z - z);
			if (diff > Attack0GroundCheckTolerance)
			{
				break;
			}
			horizontallyAdjacent.Add(checkIndex);
		}
		for (int i = gridIndex.X - 1; i > -Attack0GridHalfExtentX; i--)
		{
			FVector checkIndex = FVector(i,
				gridIndex.Y,
				0);

			// Doesn't exist, break
			UBombComponent** find = Attack0BombGrid.Find(checkIndex);
			if (find == nullptr)
			{
				break;
			}

			// HACK: only check pieces at same height to be "on the ground"
			UBombComponent* neighbor = *find;
			float diff = FMath::Abs(neighbor->GetOwner()->GetActorLocation().Z - z);
			if (diff > Attack0GroundCheckTolerance)
			{
				break;
			}
			horizontallyAdjacent.Add(checkIndex);
		}

		TArray<FVector> verticallyAdjacent;
		verticallyAdjacent.Empty();
		for (int i = gridIndex.Y + 1; i < Attack0GridHalfExtentY; i++)
		{
			FVector checkIndex = FVector(
				gridIndex.X,
				i,
				0);
			
			// Doesn't exist, break
			UBombComponent** find = Attack0BombGrid.Find(checkIndex);
			if (find == nullptr)
			{
				break;
			}

			// HACK: only check pieces at same height to be "on the ground"
			UBombComponent* neighbor = *find;
			float diff = FMath::Abs(neighbor->GetOwner()->GetActorLocation().Z - z);
			if (diff > Attack0GroundCheckTolerance)
			{
				break;
			}
			verticallyAdjacent.Add(checkIndex);
		}
		for (int i = gridIndex.Y - 1; i > -Attack0GridHalfExtentY; i--)
		{
			FVector checkIndex = FVector(
				gridIndex.X,
				i,
				0);
			// Doesn't exist, break
			UBombComponent** find = Attack0BombGrid.Find(checkIndex);
			if (find == nullptr)
			{
				break;
			}

			// HACK: only check pieces at same height to be "on the ground"
			UBombComponent* neighbor = *find;
			float diff = FMath::Abs(neighbor->GetOwner()->GetActorLocation().Z - z);
			if (diff > Attack0GroundCheckTolerance)
			{
				break;
			}
			verticallyAdjacent.Add(checkIndex);
		}

		if (horizontallyAdjacent.Num() + 1 >= Attack0BombDetonateLineLength
			|| verticallyAdjacent.Num() + 1 >= Attack0BombDetonateLineLength)
		{
			UBombComponent* bomb = Attack0BombGrid.FindAndRemoveChecked(gridIndex);
			bomb->Detonate();
		}

		if (horizontallyAdjacent.Num() + 1 >= Attack0BombDetonateLineLength)
		{
			for (const FVector& index : horizontallyAdjacent)
			{
				UBombComponent* bomb = Attack0BombGrid.FindAndRemoveChecked(index);
				bomb->Detonate();
			}
		}
		if (verticallyAdjacent.Num() + 1 >= Attack0BombDetonateLineLength)
		{
			for (const FVector& index : verticallyAdjacent)
			{
				UBombComponent* bomb = Attack0BombGrid.FindAndRemoveChecked(index);
				bomb->Detonate();
			}
		}
	});
	FTimerHandle handle;
	FTimerManager& timerManager = GetWorldTimerManager();
	timerManager.SetTimer
	(
		handle,
		checkDelegate,
		landTime + 0.05, // extra buffer to let ground check work
		false
	);
}

void ABoss3Controller::BeginAttack0()
{
	FTimerManager& timerManager = GetWorldTimerManager();
	timerManager.SetTimer
	(
		Attack0BombDropTimer,
		this,
		&ABoss3Controller::Attack0SpawnBomb,
		Attack0BombDropDelay,
		true
	);
}

void ABoss3Controller::EndAttack0()
{
	for (const auto& pair : Attack0BombGrid)
	{
		pair.Value->Detonate();
	}
	Attack0BombGrid.Empty();
}

void ABoss3Controller::AbortAttack0()
{
	FTimerManager& timerManager = GetWorldTimerManager();
	timerManager.ClearTimer(Attack0BombDropTimer);

	for (const auto& pair : Attack0BombGrid)
	{
		UBombComponent* component = pair.Value;
		if (component->IsBeingDestroyed())
		{
			continue;
		}

		AActor* actor = component->GetOwner();
		if (actor->IsActorBeingDestroyed())
		{
			continue;
		}
		actor->Destroy();
	}
	Attack0BombGrid.Empty();
}