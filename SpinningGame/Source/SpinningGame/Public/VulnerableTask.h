// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BehaviorTree/BTTaskNode.h"
#include "BaseTimedTask.h"
#include "BehaviorTree/BlackboardComponent.h"
#include "BaseBossController.h"
#include "VulnerableTask.generated.h"

/**
 * 
 */
UCLASS()
class SPINNINGGAME_API UVulnerableTask : public UBaseTimedTask
{
	GENERATED_BODY()

protected:
	virtual void Begin(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const override;
	virtual void End(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const override;
};
