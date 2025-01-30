// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BossControllerEvents.h"
#include "Boss1ControllerEvents.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(
	FTypeEvent,
	bool,
	IsB);
/**
 * 
 */
UCLASS(ClassGroup = (Custom), meta = (BlueprintSpawnableComponent))
class SPINNINGGAME_API UBoss1ControllerEvents : public UBossControllerEvents
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintAssignable)
	FTypeEvent OnVulnerabilityChange;
	UPROPERTY(BlueprintAssignable)
	FTypeEvent OnShoot;
};
