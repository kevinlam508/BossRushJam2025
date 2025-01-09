// Fill out your copyright notice in the Description page of Project Settings.


#include "TypeCollision.h"

// Sets default values for this component's properties
UTypeCollision::UTypeCollision()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UTypeCollision::BeginPlay()
{
	Super::BeginPlay();

	// Grab all UPrimitive children
	TArray<USceneComponent*> temp;
	GetChildrenComponents(true, temp);
	for (auto& child : temp)
	{
		UPrimitiveComponent* collider = Cast<UPrimitiveComponent>(child);
		if (collider != nullptr)
		{
			ChildColliders.Add(collider);
		}
	}
}


// Called every frame
void UTypeCollision::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
}

void UTypeCollision::ToA()
{
	ChangeToCollisionProfile(ACollisionProfileName);
}

void UTypeCollision::ToB()
{
	ChangeToCollisionProfile(BCollisionProfileName);
}

void UTypeCollision::ToNeutral()
{
	ChangeToCollisionProfile(NeutralCollisionProfileName);
}

void UTypeCollision::ChangeToCollisionProfile(const FName& profileName)
{
	for (auto& collider : ChildColliders)
	{
		collider->SetCollisionProfileName(profileName);
	}
}

