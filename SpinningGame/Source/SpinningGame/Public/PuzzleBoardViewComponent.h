// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "PuzzleBoard.h"
#include "TimerManager.h"
#include "PuzzleBoardViewComponent.generated.h"

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UPuzzleBoardViewComponent : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UPuzzleBoardViewComponent();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "PuzzleBoard")
	TArray<FComponentReference> BoardComponents;

	void AnimateRotation(BoardCorner Corner, CornerRotation Rotation, float Duration);

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

private:
	static const int CornerSize = 4;
	TObjectPtr<USceneComponent> Board[3][3];

	FTimerHandle AnimationHandle;
	float AnimationDuration;
	float AnimationTimePassed;
	FVector AnimationCenter;
	TObjectPtr<USceneComponent> AnimatingTiles[CornerSize];
	FVector AnimationSources[CornerSize];
	FVector AnimationDestinations[CornerSize];
	void AnimateCorner();
	void FinishAnimation();
};
