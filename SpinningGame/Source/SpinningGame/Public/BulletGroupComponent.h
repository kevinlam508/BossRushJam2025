// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/SceneComponent.h"
#include "Engine/DamageEvents.h" 
#include "TimerManager.h"
#include "BulletGroupComponent.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(
	FOnBulletDestroy,
	FVector,
	Location
);

USTRUCT(BlueprintType)
struct FLocationList
{
	GENERATED_BODY()

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	TArray<FVector> Row;
};

struct BulletInfo
{
	FVector Destination;
	TObjectPtr<USceneComponent> Component;
};

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class SPINNINGGAME_API UBulletGroupComponent : public USceneComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UBulletGroupComponent();

	UPROPERTY(BlueprintAssignable)
	FOnBulletDestroy OnBulletDestroy;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Bullet")
	float SpawnInAnimationDuration = 0.3;
	
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Bullet")
	float Damage = 5;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;
	
	// nth element of the pattern is how many and where the nth child of this component will be spawned
	void SetPattern(const TArray<FLocationList>& Pattern);	

private:
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Bullet", meta = (AllowPrivateAccess = true))
	float SpawnInTime;
	FTimerHandle SpawnInTimer;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Bullet", meta = (AllowPrivateAccess = true))
	int DestroyedBulletCount;

	TArray<BulletInfo> Info;

	TObjectPtr<USceneComponent> DeepDuplicateChildComponent(TObjectPtr<USceneComponent> ToDuplicate, TObjectPtr<USceneComponent> Parent);
	void AddBullet(TObjectPtr<USceneComponent> BulletRoot, FVector Location);

	UFUNCTION()
	void OnBulletOverlap(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor,
		UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep,
		const FHitResult& SweepResult);

	void SpawnInAnimation();

	void DestroyComponentHeirarch(USceneComponent* component);
};
