// Fill out your copyright notice in the Description page of Project Settings.


#include "TypeCollision.h"


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

void UTypeCollision::ToSuper()
{
	ChangeToCollisionProfile(SuperCollisionProfileName);
}

void UTypeCollision::ChangeToCollisionProfile(const FName& profileName)
{
	for (auto& collider : ChildColliders)
	{
		collider->SetCollisionProfileName(profileName);
	}
}

