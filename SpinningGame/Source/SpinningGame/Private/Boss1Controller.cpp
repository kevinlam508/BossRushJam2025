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

	UObject* obj = Actor->GetDefaultSubobjectByName(FName("Charge Hitbox"));
	DashAttackBox = Cast<UBoxComponent>(obj);
	DashAttackBox->OnComponentBeginOverlap.AddDynamic(this, &ABoss1Controller::DashCollision);
	DashAttackBoxCollisionType = DashAttackBox->GetCollisionEnabled();
	DashAttackBox->SetCollisionEnabled(ECollisionEnabled::Type::NoCollision);

	SwitchWeakness();
}

void ABoss1Controller::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

int ABoss1Controller::GetTotalAttacks() const
{
	return 3;
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
		case 2:
			BeginAttack2();
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
		case 2:
			AbortAttack2();
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

AActor* ABoss1Controller::SpawnBulletGroupOnActor(const TSubclassOf<AActor>& blueprint, const TArray<FLocationList>& pattern, float damage)
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
		if (damage > -1)
		{
			bulletGroup->Damage = damage;
		}
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
	BounceMove->Speed = Attack0Speed;
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

	AActor* newInstance = SpawnBulletGroupOnActor(attackBP, bulletPattern,
		Attack0Damage);

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

	Attack1BulletInstance = SpawnBulletGroupOnActor(attackBP, Attack1Pattern, Attack1Damage);
	UFollowActor* followActor = Attack1BulletInstance->GetComponentByClass<UFollowActor>();
	if (followActor != nullptr)
	{
		followActor->Target = GetPawn();
	}
	else
	{
		UE_LOG(LogTemp, Error, TEXT("Missing follow actor component"));
	}

	Attack1BulletInstance2 = SpawnBulletGroupOnActor(attackBP2, Attack1Pattern2, Attack1Damage);
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

void ABoss1Controller::BeginAttack2()
{
	FTimerManager& timerManager = GetPawn()->GetWorldTimerManager();
	Attack2ChargeTime = 0;
	timerManager.SetTimer(
		Attack2ChargeTimer,
		this,
		&ABoss1Controller::Attack2ChargeUp,
		1.0 / 60,
		true
	);
}

void ABoss1Controller::AbortAttack2()
{
	BounceMove->Stop();

	FTimerManager& timerManager = GetPawn()->GetWorldTimerManager();
	timerManager.ClearTimer(Attack2ChargeTimer);
	timerManager.ClearTimer(Attack2DashTimer);

	DashAttackBox->SetCollisionEnabled(ECollisionEnabled::Type::NoCollision);
}

void ABoss1Controller::Attack2ChargeUp()
{
	FTimerManager& timerManager = GetPawn()->GetWorldTimerManager();
	Attack2ChargeTime += timerManager.GetTimerElapsed(Attack2ChargeTimer);
	
	if (Attack2ChargeTime > Attack2ChargeDuration)
	{
		timerManager.ClearTimer(Attack2ChargeTimer);
		Attack2BeginDash();
	}
	else
	{
		// Change animation
		// TEMP: make the boss spin around
		GetPawn()->AddActorWorldRotation(FQuat(0, 0, 1, 0));
	}
}

void ABoss1Controller::Attack2BeginDash()
{
	DashAttackBox->SetCollisionEnabled(DashAttackBoxCollisionType);

	// Start at starting speed and go towards player
	BounceMove->Speed = Attack2SpeedCurve->GetFloatValue(0);
	
	ACharacter* player = UGameplayStatics::GetPlayerCharacter(GetWorld(), 0);
	FVector towardsPlayer = player->GetActorLocation()
		- GetPawn()->GetActorLocation();
	towardsPlayer.Z = 0;
	towardsPlayer.Normalize();
	BounceMove->MoveTowards(towardsPlayer);

	// Start timer to slow speed along curve
	Attack2DashTime = 0;
	FTimerManager& timerManager = GetPawn()->GetWorldTimerManager();
	timerManager.SetTimer(
		Attack2DashTimer,
		this,
		&ABoss1Controller::Attack2Dash,
		1.0 / 60,
		true);
}

void ABoss1Controller::Attack2Dash()
{
	FTimerManager& timerManager = GetPawn()->GetWorldTimerManager();
	Attack2DashTime += timerManager.GetTimerElapsed(Attack2DashTimer);

	BounceMove->Speed = Attack2SpeedCurve->GetFloatValue(Attack2DashTime / Attack2DashDuration);
}

void ABoss1Controller::DashCollision(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor,
	UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep,
	const FHitResult& SweepResult)
{
	if (!OtherActor->ActorHasTag(FName("Player")))
	{
		return;
	}

	ACharacter* player = Cast<ACharacter>(OtherActor);
	PushPlayer(player, BounceMove->GetDirection(), BounceMove->Speed);

	FDamageEvent event;
	OtherActor->TakeDamage(DashAttackDamage, 
		event,
		this,
		GetPawn());
}

void ABoss1Controller::PushPlayer(ACharacter* Player, FVector Direction, float Velocity)
{
	// Push upwards to prevent ground friction
	Player->LaunchCharacter(FVector::UpVector * DashPushUpwardsVelocity, false, true);

	float force = DashPushVelocityMultiplier * Velocity;
	FVector direction = Direction;
	FVector perpendicular = direction.Cross(FVector::UpVector) / 4;
	direction += perpendicular;
	direction.Normalize();
	FVector kbForce = direction * force;

	// Do actually kb in the next frame when player is off ground
	FTimerDelegate delegate;
	delegate.BindLambda([&, Player, kbForce]()
	{
		Player->LaunchCharacter(kbForce, true, false);
		UE_LOG(LogTemp, Warning, TEXT("kb with %s"), *kbForce.ToString());
	});
	FTimerManager& timerManager = GetPawn()->GetWorldTimerManager();
	timerManager.SetTimerForNextTick(delegate);
}