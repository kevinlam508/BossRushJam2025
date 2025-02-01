// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BossControllerEvents.h"
#include "Boss3ControllerEvents.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_ThreeParams(
	FOnLineComplete,
	UPrimitiveComponent*,
	First,
	UPrimitiveComponent*,
	Second,
	UPrimitiveComponent*,
	Third
);

/**
 * 
 */
UCLASS(ClassGroup = (Custom), meta = (BlueprintSpawnableComponent))
class SPINNINGGAME_API UBoss3ControllerEvents : public UBossControllerEvents
{
	GENERATED_BODY()
	
public:
	UPROPERTY(BlueprintAssignable)
	FOnLineComplete OnLineComplete;
};
