// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BaseTimedTask.h"
#include "BaseBossController.h"
#include "AttackTask.generated.h"

/**
 * 
 */
UCLASS()
class SPINNINGGAME_API UAttackTask : public UBaseTimedTask
{
	GENERATED_BODY()

public:
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Vulnerable")
	int AttackIndex;

protected:
	virtual void Begin(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const override;
	virtual void End(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const override;
	virtual EBTNodeResult::Type AbortTask(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) override;
};
