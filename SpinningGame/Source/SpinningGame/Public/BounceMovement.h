// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "Engine/StaticMeshActor.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "BounceMovement.generated.h"


UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UBounceMovement : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UBounceMovement();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Bounce")
	float Speed = 500;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Bounce")
	float PlayerPushStrength = 1000;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;
	virtual void OnComponentDestroyed(bool HeirarchyDestroy) override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	void MoveTowards(FVector& Direction);
	void Stop();
	FVector GetDirection() const;

private:

	bool IsMoving;
	AActor* LastBounce;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Bounce", meta = (AllowPrivateAccess = true))
	FVector BounceMoveDirection;

	UFUNCTION()
	void OnHit(AActor* SelfActor, AActor* OtherActor, FVector NormalImpulse, const FHitResult& Hit);

	void HandleWallBounce(AActor* OtherActor, const FHitResult& Hit);
	void HandlePlayerHit(AActor* OtherActor, const FHitResult& Hit);
};
