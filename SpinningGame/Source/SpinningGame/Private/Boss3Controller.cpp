// Fill out your copyright notice in the Description page of Project Settings.


#include "Boss3Controller.h"

void ABoss3Controller::OnPossess_Implementation(AActor* Actor)
{
	BoardView = Actor->GetComponentByClass<UPuzzleBoardViewComponent>();
}

void ABoss3Controller::RotateBoardCorner(const FName& CornerName, const TSubclassOf<UDamageType>& DamageType)
{
	BoardCorner corner = BoardCorner::TopRight;
	if (CornerName == FName("TopRight"))
	{
		corner = BoardCorner::TopRight;
	}
	else if (CornerName == FName("TopLeft"))
	{
		corner = BoardCorner::TopLeft;
	}
	else if (CornerName == FName("BottomRight"))
	{
		corner = BoardCorner::BottomRight;
	}
	else if (CornerName == FName("BottomLeft"))
	{
		corner = BoardCorner::BottomLeft;
	}

	CornerRotation rotation = DamageType == UDamageType_A::StaticClass()
		? CornerRotation::CounterClockwise
		: CornerRotation::Clockwise;

	// Ignore rotations while rotating
	if (BoardView->IsAnimating())
	{
		return;
	}

	Board.RotateCorner(corner, rotation);
	BoardView->AnimateRotation(corner, rotation, RotationAnimationDuration);
}

void ABoss3Controller::Setup(float Duration)
{
	Super::Setup(Duration);
	RandomizeBoard();
}

void ABoss3Controller::EndVulnerability()
{
	Super::EndVulnerability();
	RandomizeBoard();
}

void ABoss3Controller::RandomizeBoard()
{
	Board.RandomizeBoard();
	BoardView->SetPattern(Board, RandomizePiecesAnimationDuration);
}
