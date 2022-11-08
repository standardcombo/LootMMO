-- Internal custom properties --
local PANEL = script:GetCustomProperty('Panel'):WaitForObject()
local ICON = script:GetCustomProperty('Icon'):WaitForObject()
local COUNTDOWN_TEXT = script:GetCustomProperty('CountdownText'):WaitForObject()
local NAME_TEXT = script:GetCustomProperty('NameText'):WaitForObject()
local PROGRESS_INDICATOR = script:GetCustomProperty('ProgressIndicator'):WaitForObject()
local RIGHT_SHADOW = script:GetCustomProperty('RightShadow'):WaitForObject()
local LEFT_SHADOW = script:GetCustomProperty('LeftShadow'):WaitForObject()
local DURATION_BAR = script:GetCustomProperty('DurationIndicator'):WaitForObject()
local ACTION_NAME = script:GetCustomProperty('ActionName'):WaitForObject()
-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local DEFAULT_IMAGE = ICON:GetImage()

local connections = {}

-- Variables
local currentEquipment = nil
local currentAbility = nil
local root = nil
local executeDuration = 0.0
local recoveryDuration = 0.0
local cooldownDuration = 0.0

local ExecuteEvent = nil
local CooldownEvent = nil
local EquipmentContainer = nil

function OnChildAdded(_, child)
	if not Object.IsValid(currentAbility) and child:GetCustomProperty("AbilityBinding") == PANEL.name then
		SetEquipment(child)
		PANEL.visibility = Visibility.INHERIT
		local potion_data = _G['Potions.Equipment'].FindByAssetIdName(currentAbility.name)

		if potion_data ~= nil then
			NAME_TEXT.text = potion_data.name
		else
			NAME_TEXT.text = currentAbility.name
		end
	end
end

function OnChildRemoved(_,child)
	if not Object.IsValid(currentAbility) then
		PANEL.visibility = Visibility.FORCE_OFF
		Unequip()
	end
end

Task.Spawn(function()
	while not EquipmentContainer do
		for _, object in ipairs(LOCAL_PLAYER:GetAttachedObjects()) do --Look for the Equipment Container in the player's attached objects
			if object.name == "Equipment Container" then
				EquipmentContainer = object
				break
			end
		end
		Task.Wait()
	end
	for _, equipment in ipairs(EquipmentContainer:GetChildren()) do --Initial check for equipment
		OnChildAdded(_, equipment)
	end
	EquipmentContainer.childAddedEvent:Connect(OnChildAdded)
	EquipmentContainer.childRemovedEvent:Connect(OnChildRemoved)
end)

function SetIcon(Icon)
	if Icon then
		ICON:SetImage(Icon)
	else
		ICON:SetImage(DEFAULT_IMAGE)
	end
end

function SetActionName(name)
	if name then
		for key, child in pairs(ACTION_NAME:GetChildren()) do
			if name ~= "Shift" then
				child.text = Input.GetActionInputLabel(name)
			else
				child.text = name
			end
		end
	end
end

function Unequip()
	currentEquipment = nil
	currentAbility = nil
	if ExecuteEvent then
		ExecuteEvent:Disconnect()
		ExecuteEvent = nil
	end
	if CooldownEvent then
		CooldownEvent:Disconnect()
		CooldownEvent = nil
	end
end

function CalculateCoolDown()
	cooldownDuration = root.clientUserData.calculateModifier()['Cooldown'] or currentAbility.cooldownPhaseSettings.duration
end

local cooldownRemaining
function OnCooldown()
	local cd = cooldownDuration
	PROGRESS_INDICATOR.visibility = Visibility.INHERIT
	Task.Spawn(function()
		while Object.IsValid(currentAbility) do
			local currentPhase = currentAbility:GetCurrentPhase()
			local phaseTimeRemaining = currentAbility:GetPhaseTimeRemaining()
			local phaseTimeElapsed = currentAbility.cooldownPhaseSettings.duration - phaseTimeRemaining

			-- For a player, execute, recovery and cooldown are together displayed as the ability's cooldown

			if currentPhase == AbilityPhase.COOLDOWN then
				local elapsedPhaseTime = phaseTimeElapsed
				cooldownRemaining = cd - elapsedPhaseTime
			elseif currentPhase == AbilityPhase.EXECUTE then
				cooldownRemaining = cd + recoveryDuration + phaseTimeRemaining
			else -- Recovery
				cooldownRemaining = cd
			end
			if cooldownRemaining < 0 then
				cooldownRemaining = 0
				PROGRESS_INDICATOR.visibility = Visibility.FORCE_OFF
				break
			end

			local totalCooldown = executeDuration + cd
			COUNTDOWN_TEXT.text = string.format('%.1f', cooldownRemaining)

			-- Update the shadow
			if totalCooldown > 0.3 then
				local shadowAngle = CoreMath.Clamp(1.0 - cooldownRemaining / totalCooldown, 0.0, 1.0) * 360.0

				if shadowAngle <= 180.0 then
					LEFT_SHADOW.rotationAngle = 0.0
					RIGHT_SHADOW.visibility = Visibility.INHERIT
					RIGHT_SHADOW.rotationAngle = shadowAngle
				else
					LEFT_SHADOW.rotationAngle = shadowAngle - 180.0
					RIGHT_SHADOW.visibility = Visibility.FORCE_OFF
				end
			end
			Task.Wait()
		end
	end)
end

function SetEquipment(equipment)
	if not Object.IsValid(equipment) then return end
	if not equipment:IsA('Equipment') then return end
	while not equipment.clientUserData.calculateModifier do
		Task.Wait()
		if not Object.IsValid(equipment) then return end
	end

	for _, value in pairs(connections) do
		value(equipment)
	end

	root = equipment
	currentAbility = equipment:FindChildByType('Ability')
	if not currentAbility then
		return
	end
	ExecuteEvent = currentAbility.executeEvent:Connect(CalculateCoolDown)
	CooldownEvent = currentAbility.cooldownEvent:Connect(OnCooldown)
	executeDuration = currentAbility.executePhaseSettings.duration
	recoveryDuration = currentAbility.recoveryPhaseSettings.duration
	cooldownDuration =
	equipment.clientUserData.calculateModifier()['Cooldown'] or currentAbility.cooldownPhaseSettings.duration
	DURATION_BAR.progress = 0

end

function ConnectEquipment(func)
	table.insert(connections, func)
end

function GetEquipment()
	return currentEquipment
end

PANEL.clientUserData.SetIcon = SetIcon
PANEL.clientUserData.SetActionName = SetActionName
PANEL.clientUserData.SetEquipment = SetEquipment
PANEL.clientUserData.GetEquipment = GetEquipment
PANEL.clientUserData.Connect = ConnectEquipment