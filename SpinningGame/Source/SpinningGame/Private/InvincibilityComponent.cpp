// Fill out your copyright notice in the Description page of Project Settings.


#include "InvincibilityComponent.h"

// Sets default values for this component's properties
UInvincibilityComponent::UInvincibilityComponent()
{

}

bool UInvincibilityComponent::GetIsInvincible() const
{
	return IsInvincible;
}

void UInvincibilityComponent::StartInvincibility()
{
	StartInvincibilityWithDuration(DefaultDuration);
}

void UInvincibilityComponent::StartInvincibilityWithDuration(float Duration)
{
	if (IsInvincible)
	{
		return;
	}
	ChangeInvincibility(true);

	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	timerManager.SetTimer(InvincibilityTimer, 
		this,
		&UInvincibilityComponent::EndInvincibility,
		Duration);
}

void UInvincibilityComponent::EndInvincibilityEarly()
{
	FTimerManager& timerManager = GetOwner()->GetWorldTimerManager();
	timerManager.ClearTimer(InvincibilityTimer);

	EndInvincibility();
}

void UInvincibilityComponent::ChangeInvincibility(bool NewState)
{
	if (IsInvincible == NewState)
	{
		return;
	}
	IsInvincible = NewState;
	OnInvicibleStateChange.Broadcast(NewState);
}

void UInvincibilityComponent::EndInvincibility()
{
	ChangeInvincibility(false);
}
