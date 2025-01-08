// Fill out your copyright notice in the Description page of Project Settings.


#include "OrbitingWeapon.h"

// Sets default values for this component's properties
UOrbitingWeapon::UOrbitingWeapon()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;
}


// Called when the game starts
void UOrbitingWeapon::BeginPlay()
{
	Super::BeginPlay();

	// ...
	
}


// Called every frame
void UOrbitingWeapon::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	float speed = DoDefenseSpin
		? DefenseRotationSpeed : RotationSpeed;
	CurrentRotation.Add(0,
		speed * DeltaTime *
			(ReverseDirection ? 1 : -1),
		0);
	SetWorldRotation(CurrentRotation);
}

void UOrbitingWeapon::SwitchRotation()
{
	ReverseDirection = !ReverseDirection;
}

void UOrbitingWeapon::EnableDefenseSpin()
{
	DoDefenseSpin = true;
}

void UOrbitingWeapon::DisableDefenseSpin()
{
	DoDefenseSpin = false;
}

