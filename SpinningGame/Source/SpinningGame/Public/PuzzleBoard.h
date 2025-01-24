// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"

UENUM(BlueprintType)
enum BoardCorner
{
	TopLeft,
	TopRight,
	BottomLeft,
	BottomRight
};

UENUM(BlueprintType)
enum CornerRotation
{
	Clockwise,
	CounterClockwise
};

/**
 * 
 */
class SPINNINGGAME_API PuzzleBoard
{
public:
	PuzzleBoard();
	~PuzzleBoard();

	static const int Size = 3;

	void RandomizeBoard();
	void RotateCorner(BoardCorner Corner, CornerRotation Rotation);
	bool HasLine() const;
	int GetValue(int X, int Y) const;

private:

	// Each row is a whole board pattern
	static constexpr const int Patterns[4][9] = 
	{
		{ 1, 1, 0, 2, 0, 2, 2, 0, 1 },
		{ 2, 0, 1, 0, 1, 2, 1, 2, 0 },
		{ 0, 0, 1, 1, 2, 2, 2, 1, 0 },
		{ 1, 0, 1, 0, 2, 2, 2, 1, 0 }
	};

	int Grid[3][3];

	void RotateTiles(int X, int Y, CornerRotation Rotation);
	void RotateValues(int& A, int& B, int& C, int& D);
};
