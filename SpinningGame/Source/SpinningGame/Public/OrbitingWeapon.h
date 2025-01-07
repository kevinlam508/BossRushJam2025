// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "OrbitingWeapon.generated.h"


UCLASS(Blueprintable, ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UOrbitingWeapon : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UOrbitingWeapon();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	float RotationSpeed = 100;

	UFUNCTION(BlueprintCallable, Category = "Orbit")
	void SwitchRotation();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

private:
	bool ReverseDirection;
	FRotator CurrentRotation;
};
