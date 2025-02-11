// Fill out your copyright notice in the Description page of Project Settings.


#include "BulletGroupComponent.h"

// Sets default values for this component's properties
UBulletGroupComponent::UBulletGroupComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UBulletGroupComponent::BeginPlay()
{
	Super::BeginPlay();
}


// Called every frame
void UBulletGroupComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);
}

void UBulletGroupComponent::SetPattern(const TArray<FLocationList>& Pattern)
{
	TArray<TObjectPtr<USceneComponent>> bulletTemplates
		= GetAttachChildren();

	for (int i = 0; i < Pattern.Num(); i++)
	{
		TArray<FVector> instances = Pattern[i].Row;
		if (instances.Num() == 0)
		{
			bulletTemplates[i]->DestroyComponent();
			continue;
		}

		for (int j = 1; j < instances.Num(); j++)
		{
			TObjectPtr<USceneComponent> newInstance = DeepDuplicateChildComponent(bulletTemplates[i], this);
			AddBullet(newInstance, instances[j]);
		}
		// Use template itself as a bullet
		AddBullet(bulletTemplates[i], instances[0]);
	}

	GetOwner()->RegisterAllComponents();
	GetOwner()->GetWorldTimerManager().SetTimer(
		SpawnInTimer,
		this,
		&UBulletGroupComponent::SpawnInAnimation,
		1.0 / 60,
		true,
		0
	);
}

TObjectPtr<USceneComponent> UBulletGroupComponent::DeepDuplicateChildComponent(TObjectPtr<USceneComponent> ToDuplicate, TObjectPtr<USceneComponent> Parent)
{
	USceneComponent* copy = DuplicateObject(ToDuplicate, GetOwner());
	
	
	copy->AttachToComponent(Parent, 
		FAttachmentTransformRules(
			EAttachmentRule::KeepRelative, true));

	TObjectPtr<USceneComponent> result = TObjectPtr<USceneComponent>(copy);
	for (auto& child : ToDuplicate->GetAttachChildren())
	{
		DeepDuplicateChildComponent(child, result);
	}

	return result;
}

void UBulletGroupComponent::AddBullet(TObjectPtr<USceneComponent> BulletRoot, FVector Location)
{
	// Start bullet at relative center, will animate out to actual position
	BulletRoot->SetRelativeLocation(FVector(0, 0, 0));

	UPrimitiveComponent* primitiveComponent = Cast<UPrimitiveComponent>(BulletRoot);
	if (primitiveComponent != nullptr)
	{
		primitiveComponent->OnComponentBeginOverlap.AddDynamic(this, &UBulletGroupComponent::OnBulletOverlap);
	}

	Info.Add(BulletInfo(Location, BulletRoot));
}

void UBulletGroupComponent::OnBulletOverlap(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor,
	UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep,
	const FHitResult& SweepResult)
{
	if (OtherActor->ActorHasTag(FName("Player")))
	{
		// Only damage the main collider of player
		if (OtherComp->ComponentHasTag(FName("Main")))
		{
			FDamageEvent event;
			OtherActor->TakeDamage(Damage,
				event,
				nullptr,
				nullptr);
		}
	}

	if (OverlappedComponent != nullptr)
	{
		OverlappedComponent->OnComponentBeginOverlap.RemoveDynamic(this, &UBulletGroupComponent::OnBulletOverlap);
		OnBulletDestroy.Broadcast(OverlappedComponent->GetComponentLocation());
	}
	// Destroy bullets as they collide
	DestroyedBulletCount++;
	//OverlappedComponent->DestroyComponent(false);
	DestroyComponentHeirarch(OverlappedComponent);
	// Last bullet, destroy actor
	if (DestroyedBulletCount == Info.Num())
	{
		GetOwner()->Destroy();
	}
}

void UBulletGroupComponent::DestroyComponentHeirarch(USceneComponent* Component)
{
	TArray<USceneComponent*> children;
	Component->GetChildrenComponents(true, children);
	for (auto& child : children)
	{
		child->DestroyComponent(false);
	}

	Component->DestroyComponent(false);
}

void UBulletGroupComponent::SpawnInAnimation()
{
	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	float elapsed = timerManager.GetTimerElapsed(SpawnInTimer);
	SpawnInTime += elapsed;

	// Over time, snap to end position and stop
	if (SpawnInTime > SpawnInAnimationDuration)
	{
		timerManager.ClearTimer(SpawnInTimer);
		for (auto& bullet : Info)
		{
			bullet.Component->SetRelativeLocation(bullet.Destination);
		}
	}
	else
	{
		for (auto& bullet : Info)
		{
			bullet.Component->SetRelativeLocation(
				FMath::Lerp(FVector(0, 0, 0),
					bullet.Destination,
					SpawnInTime / SpawnInAnimationDuration));
		}
	}
}