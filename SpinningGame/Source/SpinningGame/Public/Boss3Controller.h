// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "Boss3Controller.generated.h"

/**
 * 
 */
UCLASS()
class SPINNINGGAME_API ABoss3Controller : public AAIController
{
	GENERATED_BODY()

public:
	UFUNCTION(BlueprintCallable)
	void OnPossess_Implementation(AActor* Actor);

};
