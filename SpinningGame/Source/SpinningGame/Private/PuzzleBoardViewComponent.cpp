// Fill out your copyright notice in the Description page of Project Settings.


#include "PuzzleBoardViewComponent.h"

// Sets default values for this component's properties
UPuzzleBoardViewComponent::UPuzzleBoardViewComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UPuzzleBoardViewComponent::BeginPlay()
{
	Super::BeginPlay();

	for (auto& child : GetAttachChildren())
	{
		UPuzzleBoardPieceComponent* piece = Cast<UPuzzleBoardPieceComponent>(child);
		if (piece != nullptr)
		{
			Pieces.AddUnique(piece->Type, piece);
		}
	}

	for (int y = 0; y < PuzzleBoard::Size; y++)
	{
		TArray<TObjectPtr<UPuzzleBoardPieceComponent>> piecesOfType;
		Pieces.MultiFind(y, piecesOfType);
		for (int x = 0; x < PuzzleBoard::Size; x++)
		{
			Board[y][x] = piecesOfType[x];
			piecesOfType[x]->SetRelativeLocation(
				FVector(
					PieceDistance * (y - 1),
					PieceDistance * (PuzzleBoard::Size - x - 2),
					0
				)
			);
		}
	}
}


// Called every frame
void UPuzzleBoardViewComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
}

void UPuzzleBoardViewComponent::SetPattern(const PuzzleBoard& BoardData, float Duration)
{
	int useByType[PieceTypes];
	for (int i = 0; i < PieceTypes; i++)
	{
		useByType[i] = 0;
	}

	TArray<TObjectPtr<UPuzzleBoardPieceComponent>> piecesOfType;
	for (int y = 0; y < PuzzleBoard::Size; y++)
	{
		for (int x = 0; x < PuzzleBoard::Size; x++)
		{
			// What piece should go here?
			int desiredType = BoardData.GetValue(x, y);
			
			// Get the next free pieces
			Pieces.MultiFind(desiredType,
				piecesOfType,
				true);
			int useIndex = useByType[desiredType];
			USceneComponent* piece = piecesOfType[useIndex];
			useByType[desiredType]++;

			// Set up animation info
			int animationIndex = desiredType * PuzzleBoard::Size + useIndex;
			SetPatternSources[animationIndex] = piece->GetRelativeLocation();
			SetPatternDestinations[animationIndex]
				= FVector(
					PieceDistance * (y - 1),
					PieceDistance * (PuzzleBoard::Size - x - 2),
					0
				);

			Board[y][x] = piece;
		}
	}

	AnimationDuration = Duration;
	AnimationTimePassed = 0;

	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	timerManager.SetTimer(
		AnimationHandle,
		this,
		&UPuzzleBoardViewComponent::SetPatternAnimation,
		1.0 / 60,
		true
	);
}

bool UPuzzleBoardViewComponent::IsAnimating() const
{
	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	return timerManager.IsTimerActive(AnimationHandle);
}

void UPuzzleBoardViewComponent::SetPatternAnimation()
{
	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	AnimationTimePassed += timerManager.GetTimerElapsed(AnimationHandle);

	// finished, snap to final positions
	if (AnimationTimePassed > AnimationDuration)
	{
		FinishSetPattern();
		return;
	}

	float scalar = AnimationTimePassed / AnimationDuration;
	for (int type = 0; type < PieceTypes; type++)
	{
		TArray<TObjectPtr<UPuzzleBoardPieceComponent>> piecesOfType;
		Pieces.MultiFind(type, piecesOfType, true);
		for (int i = 0; i < PieceCountPerType; i++)
		{
			int animationIndex = type * PieceTypes + i;
			piecesOfType[i]->SetRelativeLocation
				(
					FMath::Lerp(
						SetPatternSources[animationIndex],
						SetPatternDestinations[animationIndex],
						scalar
					)
				);
		}
	}
}

void UPuzzleBoardViewComponent::FinishSetPattern()
{
	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	timerManager.ClearTimer(AnimationHandle);

	for (int y = 0; y < PuzzleBoard::Size; y++)
	{
		TArray<TObjectPtr<UPuzzleBoardPieceComponent>> piecesOfType;
		Pieces.MultiFind(y, piecesOfType, true);
		for (int x = 0; x < PuzzleBoard::Size; x++)
		{
			piecesOfType[x]->SetRelativeLocation(
				SetPatternDestinations[y * PuzzleBoard::Size + x]);
		}
	}
}

void UPuzzleBoardViewComponent::AnimateRotation(BoardCorner Corner, CornerRotation Rotation, float Duration)
{
	int x;
	int y;
	switch (Corner)
	{
		case BoardCorner::TopLeft:
			x = 0;
			y = 0;
			break;
		case BoardCorner::TopRight:
			x = 1;
			y = 0;
			break;
		case BoardCorner::BottomLeft:
			x = 0;
			y = 1;
			break;
		case BoardCorner::BottomRight:
			x = 1;
			y = 1;
			break;
	}

	TObjectPtr<USceneComponent>* TilePointers[4];
	TilePointers[0] = &Board[y][x];
	TilePointers[1] = &Board[y][x + 1];
	TilePointers[2] = &Board[y + 1][x + 1];
	TilePointers[3] = &Board[y + 1][x];

	AnimatingTiles[0] = Board[y][x];
	AnimatingTiles[1] = Board[y][x + 1];
	AnimatingTiles[2] = Board[y + 1][x + 1];
	AnimatingTiles[3] = Board[y + 1][x];

	AnimationCenter = FVector(0, 0, 0);
	for (int i = 0; i < CornerSize; i++)
	{
		AnimationCenter += AnimatingTiles[i]
			->GetRelativeLocation();
	}
	AnimationCenter /= 4;

	for (int i = 0; i < CornerSize; i++)
	{
		AnimationSources[i] = AnimatingTiles[i]
			->GetRelativeLocation();
	}

	TObjectPtr<USceneComponent> temp = nullptr;
	switch (Rotation)
	{
	case CornerRotation::Clockwise:
		for (int i = 0; i < CornerSize; i++)
		{
			AnimationDestinations[i] = AnimatingTiles[(i + 1) % CornerSize]
				->GetRelativeLocation();
		}

		// Rotate pointers on the board
		temp = *(TilePointers[CornerSize - 1]);
		for (int i = CornerSize - 1; i >= 1; i--)
		{
			int j = (i - 1 + CornerSize) % CornerSize;
			*(TilePointers[i]) = *(TilePointers[j]);
		}
		*(TilePointers[0]) = temp;
		break;
	case CornerRotation::CounterClockwise:
		for (int i = 0; i < CornerSize; i++)
		{
			// Add corner size so that negative values loop back to positive
			AnimationDestinations[i] = AnimatingTiles[(i - 1 + CornerSize) % CornerSize]
				->GetRelativeLocation();
		}

		// Rotate pointers on the board
		temp = *(TilePointers[0]);
		for (int i = 0; i < CornerSize - 1; i++)
		{
			int j = (i + 1) % CornerSize;
			*(TilePointers[i]) = *(TilePointers[j]);
		}
		*(TilePointers[CornerSize - 1]) = temp;
		break;
	}

	AnimationDuration = Duration;
	AnimationTimePassed = 0;
	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	timerManager.SetTimer(
		AnimationHandle,
		this,
		&UPuzzleBoardViewComponent::AnimateCorner,
		1.0 / 60,
		true
	);
}

void UPuzzleBoardViewComponent::AnimateCorner()
{
	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	AnimationTimePassed += timerManager.GetTimerElapsed(AnimationHandle);
	
	// finished, snap to final positions
	if (AnimationTimePassed > AnimationDuration)
	{
		FinishAnimation();
		return;
	}

	float scalar = AnimationTimePassed / AnimationDuration;
	for (int i = 0; i < CornerSize; i++)
	{
		FVector toSource = AnimationSources[i] - AnimationCenter;
		FVector toDestination = AnimationDestinations[i] - AnimationCenter;
		float length = toSource.Length();

		AnimatingTiles[i]->SetRelativeLocation(
			AnimationCenter +
			FQuat::Slerp(toSource.ToOrientationQuat(),
				toDestination.ToOrientationQuat(),
				scalar
			).Vector() * length
		);
	}
}

void UPuzzleBoardViewComponent::FinishAnimation()
{
	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	timerManager.ClearTimer(AnimationHandle);

	for (int i = 0; i < CornerSize; i++)
	{
		AnimatingTiles[i]->SetRelativeLocation(
			AnimationDestinations[i]
		);
		AnimatingTiles[i] = nullptr;
	}
}

