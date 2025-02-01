// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "FollowActor.generated.h"


UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UFollowActor : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UFollowActor();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Follow Actor")
	float FollowWeight = 1;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Follow Actor")
	float MaxSpeed = -1;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Follow Actor")
	bool FaceTarget = false;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Follow Actor")
	TObjectPtr<AActor> Target;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

		
};
