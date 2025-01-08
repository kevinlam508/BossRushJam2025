// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "OrbitingWeapon.generated.h"

enum SpinDirection
{
	None,
	Left,
	Right
};

UCLASS(Blueprintable, ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UOrbitingWeapon : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UOrbitingWeapon();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float SwingDuration = 0.3;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float SwingCooldown = 0.4;

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	void SwingLeft();

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	void SwingRight();

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	bool CanSwing();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

private:
	SpinDirection CurrentSpin;
	float SpinSpeed;
	float ActiveSpinTime;

	// TEMP: center rotation to mouse?
	FRotator Rotation;
};
