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

	// Grab all UPrimitive children
	TArray<USceneComponent*> temp;
	GetChildrenComponents(true, temp);
	for (auto& child : temp)
	{
		UPrimitiveComponent* collider = Cast<UPrimitiveComponent>(child);
		if (collider != nullptr)
		{
			collider->OnComponentBeginOverlap.AddDynamic(this, &UOrbitingWeapon::WeaponCollision);
		}
	}
}

void UOrbitingWeapon::OnComponentDestroyed(bool HeirarchyDestroy)
{
	Super::OnComponentDestroyed(HeirarchyDestroy);

	// Grab all UPrimitive children
	TArray<USceneComponent*> temp;
	GetChildrenComponents(true, temp);
	for (auto& child : temp)
	{
		UPrimitiveComponent* collider = Cast<UPrimitiveComponent>(child);
		if (collider != nullptr)
		{
			collider->OnComponentBeginOverlap.RemoveDynamic(this, &UOrbitingWeapon::WeaponCollision);
		}
	}
}


// Called every frame
void UOrbitingWeapon::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// Swinging
	if (ActiveSpinTime < SwingDuration)
	{
		ActiveSpinTime += DeltaTime;
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
		CurrentSpin = SpinDirection::None;
	}
}

void UOrbitingWeapon::SwingA()
{
	if (!CanSwing())
	{
		return;
	}
	ActiveSpinTime = 0;
	CurrentSpin = SpinDirection::A;
	OnASwingBegin.Broadcast();
}

void UOrbitingWeapon::SwingB()
{
	if (!CanSwing())
	{
		return;
	}
	ActiveSpinTime = 0;
	CurrentSpin = SpinDirection::B;
	OnBSwingBegin.Broadcast();
}

bool UOrbitingWeapon::CanSwing()
{
	return CurrentSpin == SpinDirection::None;
}

bool UOrbitingWeapon::IsSwinging()
{
	return CurrentSpin != SpinDirection::None
		&& ActiveSpinTime < SwingDuration;
}

void UOrbitingWeapon::WeaponCollision(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor,
	UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep,
	const FHitResult& SweepResult)
{
	// Not currently attacking, abort
	if (!IsSwinging())
	{
		return;
	}

	AActor* actor = GetOwner();
	APawn* pawn = Cast<APawn>(actor);

	UClass* damageType = (CurrentSpin == SpinDirection::A 
		? UDamageType_A::StaticClass()
		: UDamageType_B::StaticClass());
	FPointDamageEvent  event = FPointDamageEvent(
		Damage,
		SweepResult,
		FVector(),
		TSubclassOf<UDamageType>(damageType)
	);
	
	OtherActor->TakeDamage(Damage,
		event,
		pawn != nullptr ? pawn->GetController() : nullptr,
		actor);
	OnSwingHit.Broadcast(SweepResult.Location);
}

