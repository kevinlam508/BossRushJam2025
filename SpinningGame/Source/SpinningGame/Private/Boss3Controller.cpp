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
	if (IsRotationInProgress)
	{
		return;
	}
	IsRotationInProgress = true; 
	FTimerDelegate delegate;
	delegate.BindLambda([&]()
	{
		IsRotationInProgress = false;
	});
	FTimerManager& timeManager = GetPawn()->GetWorldTimerManager();
	timeManager.SetTimer(
		RotationHandle,
		delegate,
		RotationAnimationDuration,
		false
	);

	Board.RotateCorner(corner, rotation);
	BoardView->AnimateRotation(corner, rotation, RotationAnimationDuration);
}
