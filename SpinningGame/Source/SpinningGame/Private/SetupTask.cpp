// Fill out your copyright notice in the Description page of Project Settings.


#include "SetupTask.h"

void USetupTask::Begin(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const
{
	ABaseBossController* controller = Cast<ABaseBossController>(OwnerComp.GetAIOwner());
	if (controller != nullptr)
	{
		controller->Setup(Duration);
	}
}
