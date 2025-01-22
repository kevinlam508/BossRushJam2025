// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "HealthComponent.generated.h"

// delta, new value
DECLARE_DYNAMIC_MULTICAST_DELEGATE_TwoParams(
	FOnHealthChange, 
	float,
	Delta,
	float,
	NewValue);

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FOnDeath);

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UHealthComponent : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UHealthComponent();

	UPROPERTY(BlueprintAssignable)
	FOnHealthChange OnTakeDamage;

	UPROPERTY(BlueprintAssignable)
	FOnHealthChange OnHeal;

	UPROPERTY(BlueprintAssignable)
	FOnDeath OnDeath;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Health")
	float MaxHealth = 100;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Health")
	float StartingHealth  = 100;

	UFUNCTION(BlueprintCallable, Category = "Health")
	void TakeDamage(float Amount);

	UFUNCTION(BlueprintCallable, Category = "Health")
	void Heal(float Amount);

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

private:
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Health", meta = (AllowPrivateAccess = true))
	float CurrentHealth;
};
