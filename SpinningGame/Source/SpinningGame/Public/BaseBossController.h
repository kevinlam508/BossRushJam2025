// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "BaseBossController.generated.h"

/**
 * 
 */
UCLASS(Abstract)
class SPINNINGGAME_API ABaseBossController : public AAIController
{
	GENERATED_BODY()
	
public:
	virtual void BeginVulnerability();
	virtual void EndVulnerability();
	virtual void BeginAttack(int Number);
	virtual void EndAttack(int Number);
};
