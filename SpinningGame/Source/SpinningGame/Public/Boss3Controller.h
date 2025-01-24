// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "GameFramework/Character.h"
#include "BaseBossController.h"
#include "PuzzleBoard.h"
#include "DamageType_A.h"
#include "DamageType_B.h"
#include "TimerManager.h"
#include "RotationColliderEvents.h"
#include "PuzzleBoardViewComponent.h"
#include "Kismet/GameplayStatics.h"
#include "Boss3Controller.generated.h"


template<typename T>
struct AnimationData
{
public:
	T StartValue;
	T EndValue;

	FTimerHandle Handle;
	float Duration;
	float TimePassed;
};

/**
 * 
 */
UCLASS()
class SPINNINGGAME_API ABoss3Controller : public ABaseBossController
{
	GENERATED_BODY()

public:

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Puzzle Board")
	float RotationAnimationDuration = 2;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Puzzle Board")
	float RandomizePiecesAnimationDuration = 5;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Vulnerability")
	float VulnerabilityRiseFallDuration = 1;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Vulnerability")
	FVector VulernablePosition = FVector(1260, 1690, -550);
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Vulnerability")
	FVector InvulernablePosition = FVector(1260, 1690, 90);
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Vulnerability")
	float ExitVulnerabilityKnockback = 3000;

	UFUNCTION(BlueprintCallable)
	void OnPossess_Implementation(AActor* Actor);

	UFUNCTION(BlueprintCallable)
	void OnUnPossess_Implementation();

	UFUNCTION(BlueprintCallable)
	void RotateBoardCorner(const FName& CornerName, const TSubclassOf<UDamageType>& DamageType);

	virtual void Setup(float Duration) override;
	virtual void BeginVulnerability() override;
	virtual void EndVulnerability() override;
private:

	PuzzleBoard Board;
	TObjectPtr<UPuzzleBoardViewComponent> BoardView;
	TObjectPtr<URotationColliderEvents> RotationColliderEvents;

	void RandomizeBoard();

	UFUNCTION()
	void CheckVulerability();

	UFUNCTION()
	void OnSetPatternAnimationEnd();

	// Vulnerability animation
	AnimationData<FVector> VulnerabilityAnimation;
	void TickVulnerabilityPositionSwap();
};
