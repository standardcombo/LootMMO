--[[
	Ability Display Client Optimized
	Responsible for showing the HUD abilities information, including cooldowns, icons, and names.
	By: CommanderFoo, standardcombo, Luapi
	Version: 2.0.2
]]
local ABILITY_DISPLAY = script:GetCustomProperty("AbilityDisplay"):WaitForObject()

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

local PANELS = {}
local currentAbilities = {}
local connections = {}

function OnChildAdded(_, equipment)
	if equipment.owner == LOCAL_PLAYER then
		while not Object.IsValid(equipment) do
			Task.Wait()
		end
		SetEquipment(equipment)
		local abilityBindingName = equipment:GetCustomProperty("AbilityBinding")
		PANELS[abilityBindingName].visibility = Visibility.INHERIT

		local potion_data = _G['Potions.Equipment'].FindByAssetIdName(equipment.clientUserData.ability.name)

		if potion_data ~= nil then
			PANELS[abilityBindingName].clientUserData.NAME_TEXT.text = potion_data.name
			PANELS[abilityBindingName].clientUserData.PROGRESS_INDICATOR.visibility = Visibility.FORCE_OFF
			local icon = _G['Potions.Equipment'].GetIcon(potion_data.id)
			PANELS[abilityBindingName].clientUserData.SetIcon(icon, PANELS[abilityBindingName])
		else
			PANELS[abilityBindingName].clientUserData.NAME_TEXT.text = equipment.clientUserData.ability.name
		end
	end
end

function OnChildRemoved(_,equipment)
	if equipment.owner == LOCAL_PLAYER then
		if not Object.IsValid(equipment.clientUserData.ability) then
			local abilityBindingName = equipment:GetCustomProperty("AbilityBinding")
			PANELS[abilityBindingName].clientUserData.PROGRESS_INDICATOR.visibility = Visibility.FORCE_OFF
			PANELS[abilityBindingName].visibility = Visibility.FORCE_OFF
			Unequip(equipment)
		end
	end
end

Task.Spawn(function()
	while not LOCAL_PLAYER:GetPrivateNetworkedData("equipmentContainer") do
		Task.Wait()
	end
	local equipmentContainer = LOCAL_PLAYER:GetPrivateNetworkedData("equipmentContainer")
	for _, equipment in ipairs(equipmentContainer:GetChildren()) do --Initial check for equipment
		OnChildAdded(_, equipment)
	end
	equipmentContainer.childAddedEvent:Connect(OnChildAdded)
	equipmentContainer.childRemovedEvent:Connect(OnChildRemoved)
end)

function SetIcon(Icon,panel)
	if Icon then
		panel.clientUserData.ICON:SetImage(Icon)
	else
		panel.clientUserData.ICON:SetImage(panel.clientUserData.DEFAULT_IMAGE)
	end
end

function SetActionName(panel)
	if panel then
		for _, child in pairs(panel.clientUserData.ACTION_NAME:GetChildren()) do
			if panel.name ~= "Shift" then
				child.text = Input.GetActionInputLabel(panel.name)
			else
				child.text = panel.name
			end
		end
	end
end

function Unequip(equipment)
	equipment.clientUserData = {}
end

function OnCooldown(ability)
	local cd = ability.clientUserData.cooldownDuration
	local bindingName = ability.clientUserData.binding
	local abilityName = ability.name
	PANELS[bindingName].clientUserData.PROGRESS_INDICATOR.visibility = Visibility.INHERIT

	-- local abilityPhases = {"READY","CAST","EXECUTE","RECOVERY","COOLDOWN"}
	-- print(abilityName, abilityPhases[ability:GetCurrentPhase() + 1],ability:GetCurrentPhase() + 1)

	Task.Spawn(function()
		local startTime = time()
		while Object.IsValid(ability) do
			local currentTime = time()
			local phaseTimeRemaining = cd - (currentTime - startTime)
			local phaseTimeElapsed = cd - phaseTimeRemaining

			ability.clientUserData.cooldownRemaining = cd - phaseTimeElapsed
			if ability.clientUserData.cooldownRemaining < 0.1 then
				ability.clientUserData.cooldownRemaining = 0
				PANELS[bindingName].clientUserData.PROGRESS_INDICATOR.visibility = Visibility.FORCE_OFF
				break
			end

			PANELS[bindingName].clientUserData.COUNTDOWN_TEXT.text = string.format('%.1f', ability.clientUserData.cooldownRemaining)

			-- Update the shadow
			if cd > 0.3 then
				local shadowAngle = CoreMath.Clamp(1.0 - ability.clientUserData.cooldownRemaining / cd, 0.0, 1.0) * 360.0

				if shadowAngle <= 180.0 then
					PANELS[bindingName].clientUserData.LEFT_SHADOW.rotationAngle = 0.0
					PANELS[bindingName].clientUserData.RIGHT_SHADOW.visibility = Visibility.INHERIT
					PANELS[bindingName].clientUserData.RIGHT_SHADOW.rotationAngle = shadowAngle
				else
					PANELS[bindingName].clientUserData.LEFT_SHADOW.rotationAngle = shadowAngle - 180.0
					PANELS[bindingName].clientUserData.RIGHT_SHADOW.visibility = Visibility.FORCE_OFF
				end
			end
			Task.Wait()
		end
	end)
end

function SetEquipment(equipment)
	local checkLoopCount = 0
    local maxTries = 10
    -- Check if the equipment is valid, if CalculateModifier is set up, and if the ability is valid
    while checkLoopCount < maxTries do
        checkLoopCount = checkLoopCount + 1
        if equipment:IsA('Equipment') and equipment.clientUserData.CalculateModifier then
            break
        end
        if checkLoopCount > maxTries then
            error("Equipment is not valid, CalculateModifier is not set up, or ability is not valid")
            return
        end
    end
	for _, func in pairs(connections) do
		func(equipment)
	end
	Task.Wait() -- Wait for the ability to load
	local ability = equipment:FindChildByType('Ability')
	local reasonableWaitCount = 20
	local currentWaitCount = 0
	while not ability do
		Task.Wait()
		ability = equipment:FindChildByType('Ability')
		currentWaitCount = currentWaitCount + 1
		if currentWaitCount > reasonableWaitCount then break end
	end
	if not ability then error(equipment.name .. " is missing its ability.") return end
	currentAbilities[ability] = ability
	equipment.clientUserData.ability = ability
	ability.clientUserData.binding = equipment:GetCustomProperty("AbilityBinding")
	ability.clientUserData.CooldownEvent = currentAbilities[ability].cooldownEvent:Connect(OnCooldown, ability)
	ability.clientUserData.executeDuration = currentAbilities[ability].executePhaseSettings.duration
	ability.clientUserData.recoveryDuration = currentAbilities[ability].recoveryPhaseSettings.duration
	while equipment.clientUserData.CalculateModifier == nil do Task.Wait() end --wait for the case that RootCalculation_Api.lua is not done yet
	ability.clientUserData.cooldownDuration = equipment.clientUserData.CalculateModifier('Cooldown') or ability.cooldownPhaseSettings.duration
	PANELS[equipment:GetCustomProperty("AbilityBinding")].clientUserData.DURATION_BAR.progress = 0
end

function ConnectEquipment(func)
	if not connections[func] then
		connections[func] = func
	end
end

function GetEquipment()
	print("GetEquipment")
	--return currentEquipment
end

-- Loop through Children of ABILITY_DISPLAY except if name is Attack
for _, PANEL in pairs(ABILITY_DISPLAY:GetChildren()) do
	if PANEL.name ~= "Attack" then
		PANELS[PANEL.name] = PANEL
		PANEL.clientUserData.ICON = PANEL:GetCustomProperty('Icon'):WaitForObject()
		PANEL.clientUserData.DEFAULT_IMAGE = PANEL.clientUserData.ICON:GetImage()
		PANEL.clientUserData.COUNTDOWN_TEXT = PANEL:GetCustomProperty('CountdownText'):WaitForObject()
		PANEL.clientUserData.NAME_TEXT = PANEL:GetCustomProperty('NameText'):WaitForObject()
		PANEL.clientUserData.PROGRESS_INDICATOR = PANEL:GetCustomProperty('ProgressIndicator'):WaitForObject()
		PANEL.clientUserData.RIGHT_SHADOW = PANEL:GetCustomProperty('RightShadow'):WaitForObject()
		PANEL.clientUserData.LEFT_SHADOW = PANEL:GetCustomProperty('LeftShadow'):WaitForObject()
		PANEL.clientUserData.DURATION_BAR = PANEL:GetCustomProperty('DurationIndicator'):WaitForObject()
		PANEL.clientUserData.ACTION_NAME = PANEL:GetCustomProperty('ActionName'):WaitForObject()
		PANEL.clientUserData.SetIcon = SetIcon
		PANEL.clientUserData.SetActionName = SetActionName
		PANEL.clientUserData.SetEquipment = SetEquipment
		PANEL.clientUserData.GetEquipment = GetEquipment
		PANEL.clientUserData.Connect = ConnectEquipment
	end
end