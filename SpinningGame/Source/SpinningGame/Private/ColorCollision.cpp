// Fill out your copyright notice in the Description page of Project Settings.


#include "ColorCollision.h"

// Sets default values for this component's properties
UColorCollision::UColorCollision()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UColorCollision::BeginPlay()
{
	Super::BeginPlay();

	// ...
	
}


// Called every frame
void UColorCollision::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
}

