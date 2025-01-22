// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "TimerManager.h"
#include "InvincibilityComponent.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(
	FOnInvicibleStateChange,
	bool,
	NewIsInvincible);

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UInvincibilityComponent : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UInvincibilityComponent();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Invincibility")
	float DefaultDuration = 0.5;

	UPROPERTY(BlueprintAssignable)
	FOnInvicibleStateChange OnInvicibleStateChange;

	UFUNCTION(BlueprintCallable)
	bool GetIsInvincible() const;

	UFUNCTION(BlueprintCallable)
	void StartInvincibility();

	UFUNCTION(BlueprintCallable)
	void StartInvincibilityWithDuration(float Duration);

	UFUNCTION(BlueprintCallable)
	void EndInvincibilityEarly();

private:
	bool IsInvincible;
	FTimerHandle InvincibilityTimer;

	void ChangeInvincibility(bool NewState);
	void EndInvincibility();
};
