// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BaseTimedTask.h"
#include "BaseBossController.h"
#include "SetupTask.generated.h"

/**
 * 
 */
UCLASS()
class SPINNINGGAME_API USetupTask : public UBaseTimedTask
{
	GENERATED_BODY()

protected:
	virtual void Begin(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const override;

};
