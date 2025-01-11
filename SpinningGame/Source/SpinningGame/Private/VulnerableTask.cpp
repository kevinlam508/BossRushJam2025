// Fill out your copyright notice in the Description page of Project Settings.


#include "VulnerableTask.h"


void UVulnerableTask::Begin(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const
{
	ABaseBossController* controller = Cast<ABaseBossController>(OwnerComp.GetAIOwner());
	if (controller != nullptr)
	{
		controller->BeginVulnerability();
	}
}

void UVulnerableTask::End(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const
{
	OwnerComp.GetBlackboardComponent()->ClearValue(FName(TEXT("IsVulnerable")));
	ABaseBossController* controller = Cast<ABaseBossController>(OwnerComp.GetAIOwner());
	if (controller != nullptr)
	{
		controller->EndVulnerability();
	}
}