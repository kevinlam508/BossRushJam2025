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
		if (StartChargeAfterCooldown)
		{
			StartChargeAfterCooldown = false;
			ChargeSwingSuper();
		}
	}
}

void UOrbitingWeapon::SwingA()
{
	if (!CanSwing())
	{
		return;
	}
	// If super swing activated, don't normal swing
	if (TryActivateSuperSwing())
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
	// If super swing activated, don't normal swing
	if (TryActivateSuperSwing())
	{
		return;
	}

	ActiveSpinTime = 0;
	CurrentSpin = SpinDirection::B;
	OnBSwingBegin.Broadcast();
}

void UOrbitingWeapon::ChargeSwingSuper()
{
	// Start tracking the swing after CD so input isn't
	// "eaten"
	if (IsSwinging())
	{
		StartChargeAfterCooldown = true;
		return;
	}

	if (SuperSwingState != ChargeState::NoCharge)
	{
		return;
	}

	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	timerManager.SetTimer(
		SuperSwingChargeTimer,
		this,
		&UOrbitingWeapon::ChargeComplete,
		SuperSwingChargeTime
	);

	SuperSwingState = ChargeState::Charging;
	OnChargeBegin.Broadcast();
}

void UOrbitingWeapon::PerformSuperSwing()
{
	ActiveSpinTime = 0;
	CurrentSpin = SpinDirection::Super;
	OnSuperSwingBegin.Broadcast();
}

void UOrbitingWeapon::ChargeComplete()
{
	SuperSwingState = ChargeState::Charged;
	OnChargeComplete.Broadcast();
}

bool UOrbitingWeapon::TryActivateSuperSwing()
{
	bool result = false;
	if (SuperSwingState == ChargeState::Charged)
	{
		PerformSuperSwing();
		result = true;
	}
	// Canceled the charge by doing an attack
	else
	{
		FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
		timerManager.ClearTimer(SuperSwingChargeTimer);
		result = false;

		StartChargeAfterCooldown = false;
		OnSuperSwingCancel.Broadcast();
	}
	SuperSwingState = ChargeState::NoCharge;
	return result;
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

	bool isSuperSwing = CurrentSpin == SpinDirection::Super;
	UClass* damageType = nullptr;
	switch (CurrentSpin)
	{
	case SpinDirection::A:
		damageType = UDamageType_A::StaticClass();
		break;

	case SpinDirection::B:
		damageType = UDamageType_B::StaticClass();
		break;
	}

	// Determine point of impact
	FHitResult hit;
	FVector traceStart = GetOwner()->GetActorLocation();
	FVector traceEnd = OtherComp->GetComponentLocation();
	FCollisionObjectQueryParams objectParams;
	objectParams.AddObjectTypesToQuery(ECollisionChannel::ECC_GameTraceChannel4);
	GetWorld()->LineTraceSingleByObjectType(
		hit,
		traceStart,
		traceEnd,
		objectParams
	);

	float damage = isSuperSwing ? SuperSwingDamage : Damage;
	FPointDamageEvent  event = FPointDamageEvent(
		damage,
		hit,
		FVector(),
		TSubclassOf<UDamageType>(damageType)
	);
	
	OtherActor->TakeDamage(damage,
		event,
		pawn != nullptr ? pawn->GetController() : nullptr,
		actor);

	OnSwingHit.Broadcast(hit.Location, isSuperSwing);
}

