// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "Engine/DamageEvents.h" 
#include "DamageType_A.h"
#include "DamageType_B.h"
#include "TimerManager.h"
#include "OrbitingWeapon.generated.h"

enum SpinDirection
{
	None,
	A,
	B,
	Super
};
enum ChargeState
{
	NoCharge,
	Charging,
	Charged
};

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FOnSwingBegin);

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FOnSwingEnd);

DECLARE_DYNAMIC_MULTICAST_DELEGATE_TwoParams(
	FOnSwingHit,
	FVector,
	Location,
	bool,
	IsSuperSwing
);


UCLASS(Blueprintable, ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UOrbitingWeapon : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UOrbitingWeapon();

	UPROPERTY(BlueprintAssignable)
	FOnSwingBegin OnASwingBegin;
	UPROPERTY(BlueprintAssignable)
	FOnSwingBegin OnBSwingBegin;
	UPROPERTY(BlueprintAssignable)
	FOnSwingEnd OnSwingEnd;

	UPROPERTY(BlueprintAssignable)
	FOnSwingBegin OnChargeBegin;
	UPROPERTY(BlueprintAssignable)
	FOnSwingBegin OnChargeComplete;
	UPROPERTY(BlueprintAssignable)
	FOnSwingBegin OnSuperSwingBegin;
	UPROPERTY(BlueprintAssignable)
	FOnSwingBegin OnSuperSwingCancel;


	UPROPERTY(BlueprintAssignable)
	FOnSwingHit OnSwingHit;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float SwingDuration = 0.3;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float SwingCooldown = 0.4;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float Damage = 2;


	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Super Attack")
	float SuperSwingDamage = 10;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Super Attack")
	float SuperSwingChargeTime = 1;

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	void SwingA();

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	void SwingB();

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	void ChargeSwingSuper();

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	bool CanSwing();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;
	virtual void OnComponentDestroyed(bool HeirarchyDestroy) override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

private:
	SpinDirection CurrentSpin;
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Orbit Controls", meta = (AllowPrivateAccess = true))
	float ActiveSpinTime;

	bool IsSwinging();

	UFUNCTION()
	void WeaponCollision(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor,
		UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep,
		const FHitResult& SweepResult);

	// Super swing 
	bool StartChargeAfterCooldown;
	ChargeState SuperSwingState;
	FTimerHandle SuperSwingChargeTimer;
	void ChargeComplete();
	void PerformSuperSwing();
	bool TryActivateSuperSwing();
};
