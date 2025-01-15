// Fill out your copyright notice in the Description page of Project Settings.


#include "MoveStraight.h"

// Sets default values for this component's properties
UMoveStraight::UMoveStraight()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UMoveStraight::BeginPlay()
{
	Super::BeginPlay();

	// ...
	Direction.Normalize();
}


// Called every frame
void UMoveStraight::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
	GetOwner()->AddActorWorldOffset(
		Direction * Speed * DeltaTime,
		true
	);
}

