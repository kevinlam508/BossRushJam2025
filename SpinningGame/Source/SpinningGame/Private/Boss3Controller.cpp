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
	// No damage time, not rotational hit
	if (DamageType == nullptr)
	{
		return;
	}

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
	return 2;
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
		break;
	case 1:
		BeginAttack1();
		break;
	}
	Super::BeginAttack(Number);
}

void ABoss3Controller::AbortAttack(int Number)
{
	switch (Number)
	{
	case 0:
		AbortAttack0();
		break;
	case 1:
		AbortAttack1();
		break;
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
	PickRandomAttack();
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
		// Safety: abort if deleted through other means
		if (!component->IsValidLowLevel())
		{
			return;
		}
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
	Attack0LineCheckTimers.Add(handle);
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

	FTimerManager& timerManager = GetWorldTimerManager();
	for (auto& timer : Attack0LineCheckTimers)
	{
		if (!timerManager.IsTimerActive(timer))
		{
			continue;
		}

		timerManager.ClearTimer(timer);
	}
	Attack0LineCheckTimers.Empty();
}

void ABoss3Controller::AbortAttack0()
{
	FTimerManager& timerManager = GetWorldTimerManager();
	timerManager.ClearTimer(Attack0BombDropTimer);

	for (const auto& pair : Attack0BombGrid)
	{
		UBombComponent* component = pair.Value;
		if (!component->IsValidLowLevel())
		{
			continue;
		}

		AActor* actor = component->GetOwner();
		if (!actor->IsValidLowLevel())
		{
			continue;
		}
		actor->Destroy();
	}
	Attack0BombGrid.Empty();
}

void ABoss3Controller::BeginAttack1()
{
	Attack1BulletGroups.Add(
		SpawnBulletGroupOnActor(Attack1ProjectileABP, Attack1PatternA, Attack1Damage)
	);
	Attack1BulletGroups.Add(
		SpawnBulletGroupOnActor(Attack1ProjectileBBP, Attack1PatternB, Attack1Damage)
	);
	
	FTimerManager& timerManager = GetWorldTimerManager();
	timerManager.SetTimer(
		Attack1SwapRotationTimer,
		this,
		&ABoss3Controller::Attack1SwapRotation,
		Attack1SwapRotationTime,
		true
	);
}

void ABoss3Controller::Attack1SwapRotation()
{
	for (const auto& group : Attack1BulletGroups)
	{
		if (!group->IsValidLowLevel())
		{
			continue;
		}

		UPassiveRotation* rotation = group->GetComponentByClass<UPassiveRotation>();
		if (rotation != nullptr)
		{
			rotation->RotationSpeed = -rotation->RotationSpeed;
		}
	}
}

void ABoss3Controller::AbortAttack1()
{
	FTimerManager& timerManager = GetWorldTimerManager();
	timerManager.ClearTimer(Attack1SwapRotationTimer);

	for (const auto& group : Attack1BulletGroups)
	{
		if (!group->IsValidLowLevel())
		{
			continue;
		}
		group->Destroy();
	}
	Attack1BulletGroups.Empty();
}

AActor* ABoss3Controller::SpawnBulletGroupOnActor(const TSubclassOf<AActor>& blueprint, const TArray<FLocationList>& pattern, float damage)
{
	FVector spawnLocation = GetPawn()->GetActorLocation();
	spawnLocation.Z = Attack1Height;
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
		bulletGroup->SpawnInAnimationDuration = Attack1SpawnInDuration;
	}
	else
	{
		UE_LOG(LogTemp, Error, TEXT("Missing bullet group component"));
	}

	UPassiveRotation* rotation = newInstance->GetComponentByClass<UPassiveRotation>();
	if (rotation != nullptr)
	{
		rotation->RotationSpeed = FQuat(
			FRotator(0, Attack1RotationSpeed, 0));
	}

	UMoveStraight* straight = newInstance->GetComponentByClass<UMoveStraight>();
	if (straight != nullptr)
	{
		straight->Speed = 0;
	}

	return newInstance;
}