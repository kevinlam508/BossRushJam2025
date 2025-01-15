// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BehaviorTree/BTTaskNode.h"
#include "BaseTimedTask.generated.h"

/**
 * 
 */
UCLASS(Abstract)
class SPINNINGGAME_API UBaseTimedTask : public UBTTaskNode
{
	GENERATED_BODY()

public:
	UBaseTimedTask(const FObjectInitializer& objectInitializer);

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Timed Task")
	float Duration = 10;

	virtual uint16 GetInstanceMemorySize() const override;
	virtual EBTNodeResult::Type ExecuteTask(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) override;
	virtual void TickTask(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory, float DeltaSeconds) override;

protected:
	virtual void Begin(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const;
	virtual void End(UBehaviorTreeComponent& OwnerComp, uint8* NodeMemory) const;

private:
	struct Memory
	{
		float TimePassed;
	};
};
