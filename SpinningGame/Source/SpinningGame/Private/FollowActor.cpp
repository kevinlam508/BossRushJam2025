// Fill out your copyright notice in the Description page of Project Settings.


#include "FollowActor.h"

// Sets default values for this component's properties
UFollowActor::UFollowActor()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UFollowActor::BeginPlay()
{
	Super::BeginPlay();

	// ...
	
}


// Called every frame
void UFollowActor::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
	if (Target == nullptr)
	{
		return;
	}

	FVector actorLocation = GetOwner()->GetActorLocation();
	FVector targetPosition = FMath::Lerp
		(
			actorLocation,
			Target->GetActorLocation(),
			FollowWeight
		);

	// Clamp distance by speed
	if (MaxSpeed > 0)
	{
		float maxDistance = MaxSpeed * DeltaTime;
		FVector deltaDistance = targetPosition - actorLocation;
		deltaDistance = deltaDistance.GetClampedToMaxSize(maxDistance);
		targetPosition = actorLocation + deltaDistance;
	}

	GetOwner()->SetActorLocation(targetPosition, true);
}

