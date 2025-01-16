// Fill out your copyright notice in the Description page of Project Settings.


#include "Boss1Controller.h"

void ABoss1Controller::ProcessDamage(float Amount, TSubclassOf<UDamageType> Type)
{
	if (IsVulnerable())
	{
		if (Health != nullptr)
		{
			Health->TakeDamage(Amount);
		}
	}
	else if (Type == CurrentWeakness)
	{
		BecomeVulnerable();
	}
}

void ABoss1Controller::OnPossess_Implementation(AActor* Actor)
{
	Health = Actor->GetComponentByClass<UHealthComponent>();
	BounceMove = Actor->GetComponentByClass<UBounceMovement>();
	FollowActor = Actor->GetComponentByClass<UFollowActor>();
	SwitchWeakness();
}

void ABoss1Controller::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

int ABoss1Controller::GetTotalAttacks() const
{
	return 2;
}

void ABoss1Controller::BeginVulnerability()
{
	StopMovement();
}

void ABoss1Controller::EndVulnerability()
{
	SwitchWeakness();
	PickRandomAttack();
}

void ABoss1Controller::BeginAttack(int Number)
{
	CurrentAttack = Number;
	switch (Number)
	{
		case 0:
			BeginAttack0();
			break;
		case 1:
			BeginAttack1();
			break;
	}
}

void ABoss1Controller::AbortAttack(int Number)
{
	CurrentAttack = -1;
	switch (Number)
	{
		case 0:
			AbortAttack0();
			break;
		case 1:
			AbortAttack1();
			break;
	}
}

void ABoss1Controller::SwitchWeakness()
{
	if (CurrentWeakness == UDamageType_A::StaticClass())
	{
		CurrentWeakness = UDamageType_B::StaticClass();
	}
	else 
	{
		CurrentWeakness = UDamageType_A::StaticClass();
	}
}

AActor* ABoss1Controller::SpawnBulletGroupOnActor(const TSubclassOf<AActor>& blueprint, const TArray<FLocationList>& pattern)
{
	FVector spawnLocation = GetPawn()->GetActorLocation();
	AActor* newInstance = GetWorld()->SpawnActor(
		blueprint,
		&spawnLocation);

	if (newInstance == nullptr)
	{
		UE_LOG(LogTemp, Error, TEXT("Failed to spawn attack"));
		return nullptr;
	}

	UBulletGroupComponent* bulletGroup = newInstance->GetComponentByClass<UBulletGroupComponent>();
	if (bulletGroup != nullptr)
	{
		bulletGroup->SetPattern(pattern);
	}
	else
	{
		UE_LOG(LogTemp, Error, TEXT("Missing bullet group component"));
	}

	return newInstance;
}

void ABoss1Controller::BeginAttack0()
{
	// Move within 10 degrees of the 45 degree directions
	// Ensures more interesting bounces
	float randomAngle = 
		45 
		+ FMath::RandRange(0, 3) * 90
		+ FMath::RandRange(0, 10);
	FVector randomDirection = FVector::LeftVector.RotateAngleAxis(
		randomAngle, FVector::UpVector);
	BounceMove->MoveTowards(randomDirection);

	FTimerManager& timerManager = GetPawn()->GetWorldTimerManager();
	timerManager.SetTimer(
		Attack0Timer1,
		this,
		&ABoss1Controller::TickAttack0,
		Attack0Period,
		true,
		Attack0Period
	);
	timerManager.SetTimer(
		Attack0Timer2,
		this,
		&ABoss1Controller::TickAttack0,
		Attack0Period,
		true,
		Attack0Period + Attack0SprayGap
	);
	timerManager.SetTimer(
		Attack0Timer3,
		this,
		&ABoss1Controller::TickAttack0,
		Attack0Period,
		true,
		Attack0Period + Attack0SprayGap * 2
	);
}

void ABoss1Controller::TickAttack0()
{
	// Determine attack based on weakness
	TSubclassOf<AActor> attackBP = (CurrentWeakness != UDamageType_A::StaticClass()
		? Attack0BulletGroupABP : Attack0BulletGroupBBP);
	TArray<FLocationList> bulletPattern = (CurrentWeakness != UDamageType_A::StaticClass()
		? Attack0PatternA : Attack0PatternB);
	
	if (attackBP == nullptr)
	{
		UE_LOG(LogTemp, Error, TEXT("Missing bullet group"));
		return;
	}

	AActor* newInstance = SpawnBulletGroupOnActor(attackBP, bulletPattern);

	UMoveStraight* moveStraight = newInstance->GetComponentByClass<UMoveStraight>();
	if (moveStraight != nullptr)
	{
		ACharacter* player = UGameplayStatics::GetPlayerCharacter(GetWorld(), 0);
		FVector towardsPlayer = player->GetActorLocation()
			- GetPawn()->GetActorLocation();
		towardsPlayer.Normalize();
		moveStraight->Direction = towardsPlayer;
	}
	else
	{
		UE_LOG(LogTemp, Error, TEXT("Missing move straight component"));
	}
}

void ABoss1Controller::AbortAttack0()
{
	BounceMove->Stop(); 

	FTimerManager& timerManager = GetPawn()->GetWorldTimerManager();
	timerManager.ClearTimer(Attack0Timer1);
	timerManager.ClearTimer(Attack0Timer2);
	timerManager.ClearTimer(Attack0Timer3);
}

void ABoss1Controller::BeginAttack1()
{
	ACharacter* player = UGameplayStatics::GetPlayerCharacter(GetWorld(), 0);
	FollowActor->Target = player;

	TSubclassOf<AActor> attackBP = (CurrentWeakness != UDamageType_A::StaticClass()
		? Attack1BulletGroupABP : Attack1BulletGroupBBP);
	TSubclassOf<AActor> attackBP2 = (CurrentWeakness == UDamageType_A::StaticClass()
		? Attack1BulletGroupABP : Attack1BulletGroupBBP);
	if (attackBP == nullptr)
	{
		UE_LOG(LogTemp, Error, TEXT("Missing attack 1 BP"));
		return;
	}

	Attack1BulletInstance = SpawnBulletGroupOnActor(attackBP, Attack1Pattern);
	UFollowActor* followActor = Attack1BulletInstance->GetComponentByClass<UFollowActor>();
	if (followActor != nullptr)
	{
		followActor->Target = GetPawn();
	}
	else
	{
		UE_LOG(LogTemp, Error, TEXT("Missing follow actor component"));
	}

	Attack1BulletInstance2 = SpawnBulletGroupOnActor(attackBP2, Attack1Pattern2);
	followActor = Attack1BulletInstance2->GetComponentByClass<UFollowActor>();
	if (followActor != nullptr)
	{
		followActor->Target = GetPawn();
	}
	else
	{
		UE_LOG(LogTemp, Error, TEXT("Missing follow actor component"));
	}
}

void ABoss1Controller::AbortAttack1()
{
	FollowActor->Target = nullptr;

	if (Attack1BulletInstance != nullptr)
	{
		Attack1BulletInstance->Destroy();
		Attack1BulletInstance = nullptr;
	}
	if (Attack1BulletInstance2 != nullptr)
	{
		Attack1BulletInstance2->Destroy();
		Attack1BulletInstance2 = nullptr;
	}
}