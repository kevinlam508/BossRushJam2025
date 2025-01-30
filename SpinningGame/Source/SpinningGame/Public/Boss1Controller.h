// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "GameFramework/Character.h"
#include "Components/BoxComponent.h"
#include "Navigation/PathFollowingComponent.h"
#include "BaseBossController.h"
#include "BulletGroupComponent.h"
#include "DamageType_A.h"
#include "DamageType_B.h"
#include "HealthComponent.h"
#include "BounceMovement.h"
#include "MoveStraight.h"
#include "FollowActor.h"
#include "InvincibilityComponent.h"
#include "Kismet/GameplayStatics.h"
#include "TimerManager.h"
#include "Curves/CurveFloat.h"
#include "Boss1ControllerEvents.h"
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
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	float Attack0Speed = 1500;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 0")
	float Attack0Damage = 1;

	// Attack 1
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TSubclassOf<AActor> Attack1BulletGroupABP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TSubclassOf<AActor> Attack1BulletGroupBBP;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TArray<FLocationList> Attack1Pattern;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	TArray<FLocationList> Attack1Pattern2;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 1")
	float Attack1Damage = 10;

	// Attack 2
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	float Attack2ChargeDuration = 5;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	float Attack2AimDuration = 3;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	UCurveFloat* Attack2SpeedCurve;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	float Attack2DashDuration = 25;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	UCurveFloat* Attack2ChargeRotationSpeed;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	TSubclassOf<AActor> Attack2Indicator;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	float DashAttackDamage = 40;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	float DashPushVelocityMultiplier = 1.1;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Attack 2")
	float DashPushUpwardsVelocity = 50;

	UFUNCTION(BlueprintCallable)
	void ProcessDamage(float Amount, TSubclassOf<UDamageType> Type);

	UFUNCTION(BlueprintCallable)
	void OnPossess_Implementation(AActor* Actor) override;

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
	TObjectPtr<UInvincibilityComponent> Invincibility;
	int CurrentAttack;

	void SwitchWeakness();
	AActor* SpawnBulletGroupOnActor(const TSubclassOf<AActor>& blueprint, const TArray<FLocationList>& pattern, float damage = -1);

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

	// Attack 2
	TObjectPtr<UBoxComponent> DashAttackBox;
	TObjectPtr<AActor> Attack2IndicatorInstance;
	ECollisionEnabled::Type DashAttackBoxCollisionType;
	FTimerHandle Attack2ChargeTimer;
	FTimerHandle Attack2DashTimer;
	float Attack2ChargeTime;
	float Attack2DashTime;
	FVector Attack2Aim;
	void BeginAttack2();
	void AbortAttack2();
	void Attack2ChargeUp();
	void Attack2BeginDash();
	void Attack2Dash();
	void PushPlayer(ACharacter* Player, FVector Direction, float Velocity);

	UFUNCTION()
	void DashCollision(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor,
		UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep,
		const FHitResult& SweepResult);
};
