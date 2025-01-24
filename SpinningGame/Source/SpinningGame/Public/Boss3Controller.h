// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "PuzzleBoard.h"
#include "DamageType_A.h"
#include "DamageType_B.h"
#include "TimerManager.h"
#include "PuzzleBoardViewComponent.h"
#include "Boss3Controller.generated.h"

/**
 * 
 */
UCLASS()
class SPINNINGGAME_API ABoss3Controller : public AAIController
{
	GENERATED_BODY()

public:

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Puzzle Board")
	float RotationAnimationDuration = 5;

	UFUNCTION(BlueprintCallable)
	void OnPossess_Implementation(AActor* Actor);

	UFUNCTION(BlueprintCallable)
	void RotateBoardCorner(const FName& CornerName, const TSubclassOf<UDamageType>& DamageType);

private:

	PuzzleBoard Board;
	FTimerHandle RotationHandle;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Puzzle Board", meta = (AllowPrivateAccess = true))
	bool IsRotationInProgress;
	TObjectPtr<UPuzzleBoardViewComponent> BoardView;
};
