// Fill out your copyright notice in the Description page of Project Settings.


#include "BaseBossController.h"

void ABaseBossController::BeginVulnerability()
{
}

void ABaseBossController::EndVulnerability()
{
}

void ABaseBossController::BeginAttack(int Number)
{
}

void ABaseBossController::EndAttack(int Number)
{
}

int ABaseBossController::GetTotalAttacks() const
{
	return 1;
}

void ABaseBossController::PickRandomAttack()
{
	UBlackboardComponent* blackboard = GetBlackboardComponent();
	FName valueKey = FName(TEXT("AttackNumber"));
	int currentAttack = blackboard->GetValueAsInt(valueKey);

	// Advance attack number by up to (total attacks - 1)
	// Guaruntees same attack is never used twice
	// Could handle as a bag, but this is good enough
	int totalAttacks = GetTotalAttacks();
	currentAttack += FMath::RandRange(1, totalAttacks);
	currentAttack = currentAttack % totalAttacks;

	blackboard->SetValueAsInt(valueKey, currentAttack);
}