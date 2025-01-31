// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "BossControllerEvents.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FOnStateChange);

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(
	FOnAttackStateChange,
	int,
	AttackNumber);

DECLARE_DYNAMIC_MULTICAST_DELEGATE_ThreeParams(
	FOnHit,
	FVector,
	Location,
	bool,
	Successful,
	float,
	Amount
);

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UBossControllerEvents : public UActorComponent
{
	GENERATED_BODY()

public:	

	UPROPERTY(BlueprintAssignable)
	FOnHit OnHit;
	UPROPERTY(BlueprintAssignable)
	FOnStateChange OnVulnerableBegin;
	UPROPERTY(BlueprintAssignable)
	FOnStateChange OnVulnerableEnd;
	UPROPERTY(BlueprintAssignable)
	FOnAttackStateChange OnAttackBegin;
	UPROPERTY(BlueprintAssignable)
	FOnAttackStateChange OnAttackAbort;

		
};
