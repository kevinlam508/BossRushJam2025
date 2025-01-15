// Fill out your copyright notice in the Description page of Project Settings.


#include "BounceMovement.h"

// Sets default values for this component's properties
UBounceMovement::UBounceMovement()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UBounceMovement::BeginPlay()
{
	Super::BeginPlay();

	// ...
	GetOwner()->OnActorHit.AddDynamic(this, &UBounceMovement::OnHit);
}

void UBounceMovement::OnComponentDestroyed(bool HeirarchyDestroy)
{
	GetOwner()->OnActorHit.RemoveDynamic(this, &UBounceMovement::OnHit);
}


// Called every frame
void UBounceMovement::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
	if (!IsMoving)
	{
		return;
	}

	FVector location = GetOwner()->GetActorLocation();
	location += Speed * DeltaTime * BounceMoveDirection;
	GetOwner()->SetActorLocation(location,
		true);
}

void UBounceMovement::MoveTowards(FVector& Direction)
{
	BounceMoveDirection = Direction;
	IsMoving = true;
	LastBounce = nullptr;
}

void UBounceMovement::OnHit(AActor* SelfActor, AActor* OtherActor, FVector NormalImpulse, const FHitResult& Hit)
{
	HandleWallBounce(OtherActor, Hit);
	HandlePlayerHit(OtherActor, Hit);
}

void UBounceMovement::HandleWallBounce(AActor* OtherActor, const FHitResult& Hit)
{
	if (LastBounce == OtherActor)
	{
		return;
	}
	LastBounce = OtherActor;

	bool isWallHit = OtherActor->ActorHasTag(FName(TEXT("Wall")));
	if (!isWallHit)
	{
		return;
	}
	
	FVector normal = Hit.Normal;
	BounceMoveDirection = FMath::GetReflectionVector(BounceMoveDirection, normal);

}

void UBounceMovement::HandlePlayerHit(AActor* OtherActor, const FHitResult& Hit)
{
	bool isPlayerHit = OtherActor->ActorHasTag(FName("Player"));
	if (!isPlayerHit)
	{
		return;
	}

	UCharacterMovementComponent* moveComponent = OtherActor->GetComponentByClass<UCharacterMovementComponent>();
	moveComponent->Launch(-Hit.Normal * PlayerPushStrength);
}

void UBounceMovement::Stop()
{
	IsMoving = false;
}

