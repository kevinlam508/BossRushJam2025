// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "BossControllerEvents.h"
#include "BehaviorTree/BlackboardComponent.h"
#include "BaseBossController.generated.h"

/**
 * 
 */
UCLASS(Abstract)
class SPINNINGGAME_API ABaseBossController : public AAIController
{
	GENERATED_BODY()
	
public:
	virtual void OnPossess_Implementation(AActor* Actor);

	virtual void Setup(float Duration);
	virtual void BeginVulnerability();
	virtual void EndVulnerability();
	virtual void BeginAttack(int Number);
	virtual void EndAttack(int Number);
	virtual void AbortAttack(int Number);

protected:
	TObjectPtr<UBossControllerEvents> Events;

	// Attack changing
	virtual int GetTotalAttacks() const;
	void PickRandomAttack();

	bool IsVulnerable();
	void BecomeVulnerable();
};
