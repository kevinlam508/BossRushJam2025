// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "GameFramework/Character.h"
#include "BaseBossController.h"
#include "PuzzleBoard.h"
#include "BombComponent.h"
#include "MoveStraight.h"
#include "DamageType_A.h"
#include "DamageType_B.h"
#include "TimerManager.h"
#include "PassiveRotation.h"
#include "RotationColliderEvents.h"
#include "PuzzleBoardViewComponent.h"
#include "Kismet/GameplayStatics.h"
#include "BulletGroupComponent.h"
#include "Boss3ControllerEvents.h"
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
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Vulnerability")
	float EnterVulnerabilityDelay = 5;

	UFUNCTION(BlueprintCallable)
	void OnPossess_Implementation(AActor* Actor) override;

	UFUNCTION(BlueprintCallable)
	void OnUnPossess_Implementation();

	UFUNCTION(BlueprintCallable)
	bool RotateBoardCorner(const FName& CornerName, const TSubclassOf<UDamageType>& DamageType);

	virtual int GetTotalAttacks() const override;
	virtual void Setup(float Duration) override;
	virtual void BeginVulnerability() override;
	virtual void EndVulnerability() override;
	virtual void BeginAttack(int Number) override;
	virtual void AbortAttack(int Number) override;
	virtual void EndAttack(int Number) override;

	// Attack 0
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	TSubclassOf<AActor> Attack0BombABP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	TSubclassOf<AActor> Attack0BombBBP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	float Attack0GridSpacing;	
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	int Attack0GridHalfExtentX;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	int Attack0GridHalfExtentY;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	float Attack0BombSpawnHeight;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	float Attack0BombDropDelay = 2;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	int Attack0BombDetonateLineLength = 3;

	// Attack 1
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TSubclassOf<AActor> Attack1ProjectileABP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TSubclassOf<AActor> Attack1ProjectileBBP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TArray<FLocationList> Attack1PatternA;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TArray<FLocationList> Attack1PatternB;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	float Attack1RotationSpeed = 10;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	float Attack1Damage = 5;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	float Attack1SwapRotationTime = 5;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	float Attack1Height;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	float Attack1SpawnInDuration = 5;

private:

	PuzzleBoard Board;
	TObjectPtr<UPuzzleBoardViewComponent> BoardView;
	TObjectPtr<URotationColliderEvents> RotationColliderEvents;
	bool IsAnimatingMatch;
	void RandomizeBoard();

	UFUNCTION()
	void CheckVulerability();
	void DelayTriggerVulnerable();

	UFUNCTION()
	void OnSetPatternAnimationEnd();

	// Vulnerability animation
	AnimationData<FVector> VulnerabilityAnimation;
	void TickVulnerabilityPositionSwap();

	// Attack0
	float Attack0GroundCheckTolerance = 1.5;
	FTimerHandle Attack0BombDropTimer;
	TSet<FTimerHandle> Attack0LineCheckTimers;
	TMap<FVector, UBombComponent*> Attack0BombGrid;
	void BeginAttack0();
	void EndAttack0();
	void AbortAttack0();
	void Attack0SpawnBomb();
	UFUNCTION()
	void RemoveBomb(FVector Index);

	// Attack 1
	FTimerHandle Attack1SwapRotationTimer;
	TArray<TObjectPtr<AActor>> Attack1BulletGroups = TArray<TObjectPtr<AActor>>();
	void BeginAttack1();
	void AbortAttack1();
	AActor* SpawnBulletGroupOnActor(const TSubclassOf<AActor>& blueprint, const TArray<FLocationList>& pattern, float damage);
	void Attack1SwapRotation();

	bool IsComponentAlive(UActorComponent* Component);
};
