// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class SpinningGame : ModuleRules
{
	public SpinningGame(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore", "EnhancedInput" });
	}
}
