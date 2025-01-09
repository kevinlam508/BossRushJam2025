// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "Engine/DamageEvents.h" 
#include "DamageType_Red.h"
#include "DamageType_Blue.h"
#include "OrbitingWeapon.generated.h"

enum SpinDirection
{
	None,
	Left,
	Right
};

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FOnLeftSwingBegin);

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FOnRightSwingBegin);

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FOnSwingEnd);


UCLASS(Blueprintable, ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UOrbitingWeapon : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UOrbitingWeapon();

	UPROPERTY(BlueprintAssignable)
	FOnLeftSwingBegin OnLeftSwingBegin;

	UPROPERTY(BlueprintAssignable)
	FOnRightSwingBegin OnRightSwingBegin;

	UPROPERTY(BlueprintAssignable)
	FOnRightSwingBegin OnSwingEnd;


	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float SwingDuration = 0.3;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float SwingCooldown = 0.4;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float Damage = 1;

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	void SwingLeft();

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	void SwingRight();

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
	float SpinSpeed;
	float ActiveSpinTime;

	bool IsSwinging();

	UFUNCTION()
	void WeaponCollision(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor,
		UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep,
		const FHitResult& SweepResult);

	// TEMP: center rotation to mouse?
	FRotator Rotation;
};
