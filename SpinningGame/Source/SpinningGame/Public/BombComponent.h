// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "TimerManager.h"
#include "Engine/DamageEvents.h" 
#include "BombComponent.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(
	FOnExplodeInternal,
	FVector,
	Index
);

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FOnExplode);

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UBombComponent : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UBombComponent();

	UPROPERTY(BlueprintAssignable);
	FOnExplode OnExplode;

	UPROPERTY();
	FOnExplodeInternal OnExplodeInternal;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Bomb")
	float Damage = 5;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Bomb")
	float Radius = 300;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Bomb")
	float Delay = -1;

	FVector Index;

	void Detonate();

	virtual void EndPlay(const EEndPlayReason::Type EndPlayReason) override;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

		
};
