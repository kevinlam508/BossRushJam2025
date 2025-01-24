// Fill out your copyright notice in the Description page of Project Settings.


#include "PuzzleBoard.h"

PuzzleBoard::PuzzleBoard()
{
	RandomizeBoard();
}

PuzzleBoard::~PuzzleBoard()
{

}

void PuzzleBoard::RandomizeBoard()
{
	// Randomize which value get treated as what
	int randomAssignment[3];
	randomAssignment[0] = FMath::RandRange(0, 2);
	randomAssignment[1] = (randomAssignment[0] + FMath::RandRange(1, 2)) % 3;
	randomAssignment[2] = 3 - randomAssignment[1] - randomAssignment[0];

	// Pick a pattern
	const int* pattern = Patterns[FMath::RandRange(0, 3)];

	int* gridBegin = Grid[0];
	for (int i = 0; i < 9; i++)
	{
		*(gridBegin + i) = randomAssignment[*(pattern + i)];
	}
}

void PuzzleBoard::RotateCorner(BoardCorner Corner, CornerRotation Rotation)
{
	int x;
	int y;

	switch (Rotation)
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

	RotateTiles(x, y, Rotation);
}

bool PuzzleBoard::HasLine() const
{
	return (Grid[0][0] == Grid[0][1] == Grid[0][2])
		|| (Grid[1][0] == Grid[1][1] == Grid[1][2])
		|| (Grid[2][0] == Grid[2][1] == Grid[2][2])
		|| (Grid[0][0] == Grid[1][0] == Grid[2][0])
		|| (Grid[0][1] == Grid[1][1] == Grid[2][1])
		|| (Grid[0][2] == Grid[1][2] == Grid[2][2]);
}

int PuzzleBoard::GetValue(int X, int Y) const
{
	return Grid[Y][X];
}

void PuzzleBoard::RotateTiles(int X, int Y, CornerRotation Rotation)
{
	int& a = Grid[Y][X];
	int& b = Grid[Y][X + 1];
	int& c = Grid[Y + 1][X + 1];
	int& d = Grid[Y + 1][X];

	switch (Rotation)
	{
		case CornerRotation::Clockwise:
			RotateValues(a, b, c, d);
			break;
		case CornerRotation::CounterClockwise:
			RotateValues(d, c, b, a);
			break;
	}
}

void PuzzleBoard::RotateValues(int& A, int& B, int& C, int& D)
{
	int temp = A;
	A = B;
	B = C;
	C = D;
	D = temp;
}
