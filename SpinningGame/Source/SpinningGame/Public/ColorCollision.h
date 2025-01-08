// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "ColorCollision.generated.h"


UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UColorCollision : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UColorCollision();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	FName BlueCollisionProfileName;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	FName RedCollisionProfileName;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Orbit Controls")
	FName NeutralCollisionProfileName;


	UFUNCTION(BlueprintCallable, Category = "Collision Color Change")
	void ToBlue();

	UFUNCTION(BlueprintCallable, Category = "Collision Color Change")
	void ToRed();

	UFUNCTION(BlueprintCallable, Category = "Collision Color Change")
	void ToNeutral();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

private: 

	TArray<UPrimitiveComponent*> ChildColliders;
	
	void ChangeToCollisionProfile(const FName& profileName);
};
