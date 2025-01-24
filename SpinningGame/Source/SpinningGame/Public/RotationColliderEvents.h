// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "RotationColliderEvents.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(
	FOnToggleRotationColliders,
	bool,
	On);

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API URotationColliderEvents : public UActorComponent
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintAssignable)
	FOnToggleRotationColliders OnToggleRotationColliders;

};
