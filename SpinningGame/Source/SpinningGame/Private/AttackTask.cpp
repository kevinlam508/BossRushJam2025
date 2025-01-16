// Fill out your copyright notice in the Description page of Project Settings.


#include "AttackTask.h"

void UAttackTask::Begin(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const
{
	ABaseBossController* controller = Cast<ABaseBossController>(OwnerComp.GetAIOwner());
	if (controller != nullptr)
	{
		controller->BeginAttack(AttackIndex);
	}
}

void UAttackTask::End(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const
{
	ABaseBossController* controller = Cast<ABaseBossController>(OwnerComp.GetAIOwner());
	if (controller != nullptr)
	{
		controller->EndAttack(AttackIndex);
	}
}

EBTNodeResult::Type UAttackTask::AbortTask(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory)
{
	Super::AbortTask(OwnerComp, NodeMemory);

	ABaseBossController* controller = Cast<ABaseBossController>(OwnerComp.GetAIOwner());
	if (controller != nullptr)
	{
		controller->AbortAttack(AttackIndex);
	}

	return EBTNodeResult::Type::Aborted;
}