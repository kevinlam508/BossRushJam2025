// Fill out your copyright notice in the Description page of Project Settings.


#include "BaseBossController.h"

void ABaseBossController::OnPossess_Implementation(AActor* Actor)
{
	Events = Actor->GetComponentByClass<UBossControllerEvents>();
	if (Events != nullptr)
	{
		UE_LOG(LogTemp, Warning, TEXT("Events found"));
	}
}

void ABaseBossController::Setup(float Duration)
{
	UBlackboardComponent* blackboard = GetBlackboardComponent();
	FName valueKey = FName(TEXT("IsSetup"));

	blackboard->SetValueAsBool(valueKey, true);
}

void ABaseBossController::BeginVulnerability()
{
	if (Events != nullptr)
		Events->OnVulnerableBegin.Broadcast();
}

void ABaseBossController::EndVulnerability()
{
	if (Events != nullptr)
		Events->OnVulnerableEnd.Broadcast();
}

void ABaseBossController::BeginAttack(int Number)
{
	if (Events != nullptr)
		Events->OnAttackBegin.Broadcast(Number);
}

void ABaseBossController::AbortAttack(int Number)
{
	if (Events != nullptr)
		Events->OnAttackAbort.Broadcast(Number);
}

void ABaseBossController::EndAttack(int Number)
{
	AbortAttack(Number);
	PickRandomAttack();
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
	currentAttack += FMath::RandRange(1, totalAttacks - 1);
	currentAttack = currentAttack % totalAttacks;

	blackboard->SetValueAsInt(valueKey, currentAttack);
}

bool ABaseBossController::IsVulnerable()
{
	UBlackboardComponent* blackboard = GetBlackboardComponent();
	FName valueKey = FName(TEXT("IsVulnerable"));

	return blackboard->GetValueAsBool(valueKey);
}

void ABaseBossController::BecomeVulnerable()
{
	UBlackboardComponent* blackboard = GetBlackboardComponent();
	FName valueKey = FName(TEXT("IsVulnerable"));

	blackboard->SetValueAsBool(valueKey, true);
}