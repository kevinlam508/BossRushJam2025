// Copyright Epic Games, Inc. All Rights Reserved.

#include "SpinningGameGameMode.h"
#include "SpinningGameCharacter.h"
#include "UObject/ConstructorHelpers.h"

ASpinningGameGameMode::ASpinningGameGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
