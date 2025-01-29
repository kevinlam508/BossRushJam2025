// Fill out your copyright notice in the Description page of Project Settings.


#include "BombComponent.h"

// Sets default values for this component's properties
UBombComponent::UBombComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UBombComponent::BeginPlay()
{
	Super::BeginPlay();

	// ...
	if (Delay > 0)
	{
		FTimerHandle handle;

		FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
		timerManager.SetTimer
			(
				handle,
				this,
				&UBombComponent::Detonate,
				Delay
			);
	}
}

void UBombComponent::Detonate()
{
	FCollisionObjectQueryParams params;
	params.AddObjectTypesToQuery(ECollisionChannel::ECC_GameTraceChannel1);

	TArray<FHitResult> results;
	bool hasHits = GetWorld()->SweepMultiByObjectType(
		results,
		GetOwner()->GetActorLocation(),
		GetOwner()->GetActorLocation(),
		FQuat(),
		params,
		FCollisionShape::MakeSphere(Radius)
	);

	if (hasHits)
	{
		for (FHitResult& result : results)
		{
			AActor* hitActor = result.GetActor();
			if (hitActor == GetOwner())
			{
				continue;
			}

			// Only damage the main collider of player
			if (!result.Component->ComponentHasTag(FName("Main")))
			{
				continue;
			}
			FDamageEvent damageEvent;
			hitActor->TakeDamage(
				Damage,
				damageEvent,
				nullptr,
				nullptr
			);
		}
	}

	OnExplode.Broadcast();
	GetOwner()->Destroy();
}

