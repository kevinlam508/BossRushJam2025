// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "TypeCollision.generated.h"


UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UTypeCollision : public USceneComponent
{
	GENERATED_BODY()

public:	

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	FName ACollisionProfileName;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	FName BCollisionProfileName;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	FName NeutralCollisionProfileName;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	FName SuperCollisionProfileName;

	UFUNCTION(BlueprintCallable, Category = "Collision Color Change")
	void ToA();

	UFUNCTION(BlueprintCallable, Category = "Collision Color Change")
	void ToB();

	UFUNCTION(BlueprintCallable, Category = "Collision Color Change")
	void ToNeutral();

	UFUNCTION(BlueprintCallable, Category = "Collision Color Change")
	void ToSuper();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

private: 

	TArray<UPrimitiveComponent*> ChildColliders;
	
	void ChangeToCollisionProfile(const FName& profileName);
};
