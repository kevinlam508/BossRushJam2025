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

	// Start time after CD time
	ActiveSpinTime = SwingDuration + SwingCooldown;
}


// Called every frame
void UOrbitingWeapon::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// Swinging
	if (ActiveSpinTime < SwingDuration)
	{
		float clampedDeltaTime = FMath::Clamp(DeltaTime, 0,  SwingDuration - ActiveSpinTime);
		ActiveSpinTime += DeltaTime;
		Rotation.Add(0, SpinSpeed * clampedDeltaTime, 0);
	}
	// Cooldown
	else if (ActiveSpinTime < SwingDuration + SwingCooldown)
	{
		OnSwingEnd.Broadcast();
		ActiveSpinTime += DeltaTime;
	}
	// End, reset for next swing
	else
	{
		SpinSpeed = 0;
		CurrentSpin = SpinDirection::None;
	}

	// Keep setting so parent rotation doesn't matter
	SetWorldRotation(Rotation);
}

void UOrbitingWeapon::SwingLeft()
{
	if (!CanSwing())
	{
		return;
	}

	CurrentSpin = SpinDirection::Left;
	SpinSpeed = 360 / SwingDuration;
	ActiveSpinTime = 0;

	OnLeftSwingBegin.Broadcast();
}

void UOrbitingWeapon::SwingRight()
{
	if (!CanSwing())
	{
		return;
	}

	CurrentSpin = SpinDirection::Right;
	SpinSpeed = -360 / SwingDuration;
	ActiveSpinTime = 0;

	OnRightSwingBegin.Broadcast();
}

bool UOrbitingWeapon::CanSwing()
{
	return CurrentSpin == SpinDirection::None;
}

