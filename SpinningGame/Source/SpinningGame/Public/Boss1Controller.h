// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "GameFramework/Character.h"
#include "Navigation/PathFollowingComponent.h"
#include "BaseBossController.h"
#include "BulletGroupComponent.h"
#include "DamageType_A.h"
#include "DamageType_B.h"
#include "HealthComponent.h"
#include "BounceMovement.h"
#include "MoveStraight.h"
#include "FollowActor.h"
#include "Kismet/GameplayStatics.h"
#include "TimerManager.h"
#include "Boss1Controller.generated.h"

/**
 * 
 */
UCLASS()
class SPINNINGGAME_API ABoss1Controller : public ABaseBossController
{
	GENERATED_BODY()
	
public:
	// Attack 0
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	TSubclassOf<AActor> Attack0BulletGroupABP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	TArray<FLocationList> Attack0PatternA;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	TSubclassOf<AActor> Attack0BulletGroupBBP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	TArray<FLocationList> Attack0PatternB;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	float Attack0Period = 10;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	float Attack0SprayGap = 0.5;

	// Attack 1
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TSubclassOf<AActor> Attack1BulletGroupABP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TSubclassOf<AActor> Attack1BulletGroupBBP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TArray<FLocationList> Attack1Pattern;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TArray<FLocationList> Attack1Pattern2;

	UFUNCTION(BlueprintCallable)
	void ProcessDamage(float Amount, TSubclassOf<UDamageType> Type);

	UFUNCTION(BlueprintCallable)
	void OnPossess_Implementation(AActor* Actor);

	virtual void Tick(float DeltaTime) override;

	virtual int GetTotalAttacks() const override;
	virtual void BeginVulnerability() override;
	virtual void EndVulnerability() override;
	virtual void BeginAttack(int Number) override;
	virtual void AbortAttack(int Number) override;

private:
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Test", meta = (AllowPrivateAccess = true))
	TSubclassOf<UDamageType> CurrentWeakness;

	TObjectPtr<UHealthComponent> Health;
	TObjectPtr<UBounceMovement> BounceMove;
	TObjectPtr<UFollowActor> FollowActor;
	int CurrentAttack;

	void SwitchWeakness();
	AActor* SpawnBulletGroupOnActor(const TSubclassOf<AActor>& blueprint, const TArray<FLocationList>& pattern);

	// Attack 0
	FTimerHandle Attack0Timer1;
	FTimerHandle Attack0Timer2;
	FTimerHandle Attack0Timer3;
	void BeginAttack0();
	void TickAttack0();
	void AbortAttack0();

	// Attack 1
	TObjectPtr<AActor> Attack1BulletInstance;
	TObjectPtr<AActor> Attack1BulletInstance2;
	void BeginAttack1();
	void AbortAttack1();
};
