// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "PuzzleBoard.h"
#include "PuzzleBoardPieceComponent.h"
#include "TimerManager.h"
#include "PuzzleBoardViewComponent.generated.h"

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UPuzzleBoardViewComponent : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UPuzzleBoardViewComponent();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Puzzle Board")
	float PieceDistance = 270;

	void SetPattern(const PuzzleBoard& BoardData, float Duration);
	void AnimateRotation(BoardCorner Corner, CornerRotation Rotation, float Duration);
	bool IsAnimating() const;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

private:
	static const int CornerSize = 4;
	static const int PieceTypes = 3;
	static const int PieceCountPerType = 3;
	TMultiMap<int, TObjectPtr<UPuzzleBoardPieceComponent>> Pieces;
	TObjectPtr<USceneComponent> Board[3][3];

	// Generic animation
	FTimerHandle AnimationHandle;
	float AnimationDuration;
	float AnimationTimePassed;

	// Set Pattern Animation
	FVector SetPatternSources[PuzzleBoard::Size * PuzzleBoard::Size];
	FVector SetPatternDestinations[PuzzleBoard::Size * PuzzleBoard::Size];
	void SetPatternAnimation();
	void FinishSetPattern();

	// Rotation Animation
	FVector AnimationCenter;
	TObjectPtr<USceneComponent> AnimatingTiles[CornerSize];
	FVector AnimationSources[CornerSize];
	FVector AnimationDestinations[CornerSize];
	void AnimateCorner();
	void FinishAnimation();
};
