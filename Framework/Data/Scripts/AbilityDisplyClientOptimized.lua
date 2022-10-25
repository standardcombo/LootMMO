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
end

function CalculateCoolDown()
	cooldownDuration = root.clientUserData.calculateModifier()['Cooldown'] or currentAbility.cooldownPhaseSettings.duration
end

function SetEquipment(equipment)
	if not Object.IsValid(equipment) then
		return
	end
	if not equipment:IsA('Equipment') then
		return
	end
	while not equipment.clientUserData.calculateModifier do
		Task.Wait()
		if not Object.IsValid(equipment) then
			return
		end
	end

	for key, value in pairs(connections) do
		value(equipment)
	end

	root = equipment
	currentAbility = equipment:FindChildByType('Ability')
	if not currentAbility then
		return
	end
	ExecuteEvent = currentAbility.executeEvent:Connect(CalculateCoolDown)
	executeDuration = currentAbility.executePhaseSettings.duration
	recoveryDuration = currentAbility.recoveryPhaseSettings.duration
	cooldownDuration =
	equipment.clientUserData.calculateModifier()['Cooldown'] or currentAbility.cooldownPhaseSettings.duration
	DURATION_BAR.progress = 0

end

-- nil Tick(float)
-- Checks for changes to the players abiltiies, or icons on those abilities
function Tick(deltaTime)
	if not Object.IsValid(currentAbility) then
		local equipment = LOCAL_PLAYER:GetEquipment()
		for index, value in ipairs(equipment) do
			if value:GetCustomProperty("AbilityBinding") == PANEL.name then
				SetEquipment(equipment)
				return
			end
		end
		Unequip()
	end
	if not (currentAbility and currentAbility.owner and Object.IsValid(currentAbility.owner)) then
		PANEL.visibility = Visibility.FORCE_OFF
		return
	end
	local ability = currentAbility
	local currentPhase = ability:GetCurrentPhase()

	PANEL.visibility = Visibility.INHERIT

	-- Update the level text for the ability
	NAME_TEXT.text = currentAbility.name
	
	if not (currentPhase == AbilityPhase.COOLDOWN) then
		PROGRESS_INDICATOR.visibility = Visibility.FORCE_OFF
	else
		local phaseTimeRemaining = ability:GetPhaseTimeRemaining()
		local phaseTimeElapsed = ability.cooldownPhaseSettings.duration - phaseTimeRemaining
		PROGRESS_INDICATOR.visibility = Visibility.INHERIT

		local cd = cooldownDuration

		-- For a player, execute, recovery and cooldown are together displayed as the ability's cooldown
		local cooldownRemaining

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
	end
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
