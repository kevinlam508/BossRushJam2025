// Fill out your copyright notice in the Description page of Project Settings.


#include "BaseTimedTask.h"

UBaseTimedTask::UBaseTimedTask(const FObjectInitializer& objectInitializer)
	: UBTTaskNode(objectInitializer)
{
	bNotifyTick = true;
}

uint16 UBaseTimedTask::GetInstanceMemorySize() const
{
	return sizeof(UBaseTimedTask::Memory);
}

EBTNodeResult::Type UBaseTimedTask::ExecuteTask(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory)
{
	// Reset timer
	((Memory*)NodeMemory)->TimePassed = 0;

	Begin(OwnerComp, NodeMemory);

	return EBTNodeResult::Type::InProgress;
}

void UBaseTimedTask::TickTask(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory, float DeltaSeconds)
{
	Memory* memory = (Memory*)NodeMemory;
	if (memory->TimePassed < Duration)
	{
		memory->TimePassed += DeltaSeconds;
	}
	else
	{
		End(OwnerComp, NodeMemory);
		FinishLatentTask(OwnerComp,
			EBTNodeResult::Type::Succeeded);
	}
}

void UBaseTimedTask::Begin(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const
{
}

void UBaseTimedTask::End(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const
{
}