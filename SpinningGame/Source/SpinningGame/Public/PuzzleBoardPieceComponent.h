// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "PuzzleBoardPieceComponent.generated.h"


UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UPuzzleBoardPieceComponent : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UPuzzleBoardPieceComponent();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "PuzzleBoard")
	int Type;
};
