-- Internal custom properties --
local PANEL = script:GetCustomProperty('Panel'):WaitForObject()
local ICON = script:GetCustomProperty('Icon'):WaitForObject()
local COUNTDOWN_TEXT = script:GetCustomProperty('CountdownText'):WaitForObject()
local NAME_TEXT = script:GetCustomProperty('NameText'):WaitForObject()
local PROGRESS_INDICATOR = script:GetCustomProperty('ProgressIndicator'):WaitForObject()
local RIGHT_SHADOW = script:GetCustomProperty('RightShadow'):WaitForObject()
local LEFT_SHADOW = script:GetCustomProperty('LeftShadow'):WaitForObject()
local ACTION_NAME = script:GetCustomProperty('ActionName'):WaitForObject()
-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local DEFAULT_IMAGE = ICON:GetImage()

-- Variables
local CooldownEvent
local currentAbility = nil
local executeDuration = 0.0
local recoveryDuration = 0.0
local cooldownDuration = 0.0
local waitForAbilityTask = nil
local cooldownRemaining

function OnCooldown()
    local cd = cooldownDuration
	PROGRESS_INDICATOR.visibility = Visibility.INHERIT
    -- For a player, execute, recovery and cooldown are together displayed as the ability's cooldown
	Task.Spawn(function()
		while Object.IsValid(currentAbility) do
			local currentPhase = currentAbility:GetCurrentPhase()
            local phaseTimeRemaining = currentAbility:GetPhaseTimeRemaining()
            local phaseTimeElapsed = currentAbility.cooldownPhaseSettings.duration - phaseTimeRemaining

            if currentPhase == AbilityPhase.COOLDOWN then
                local elapsedPhaseTime = phaseTimeElapsed
                cooldownRemaining = cd - elapsedPhaseTime
            elseif currentPhase == AbilityPhase.EXECUTE then
                cooldownRemaining = cd + recoveryDuration + phaseTimeRemaining
            else -- Recovery
                cooldownRemaining = cd
            end
            if cooldownRemaining <= 0.09 then
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

function SetAbility()
    --CooldownEvent = currentAbility.cooldownEvent:Connect(OnCooldown)
    executeDuration = currentAbility.executePhaseSettings.duration
    recoveryDuration = currentAbility.recoveryPhaseSettings.duration
    cooldownDuration = currentAbility.cooldownPhaseSettings.duration
    PANEL.visibility = Visibility.INHERIT

    -- Update the level text for the ability
    NAME_TEXT.text = currentAbility.name
end

function UpdateWeaponIcon()
    if not Object.IsValid(currentAbility) then return end
    local equipment = currentAbility:FindAncestorByType("Equipment")
    if not Object.IsValid(equipment) then return end
    -- Find the correct data for this weapon
    local weaponDefs = _G.Items.GetDefinitionsForCategory("weapon")
    local selectedEntry = nil
    for _, weaponEntry in ipairs(weaponDefs) do
        local templateSplit = CoreString.Split(weaponEntry["equipment"] or "", ":")
        if equipment.sourceTemplateId == templateSplit then
        	selectedEntry = weaponEntry
            break
        end
        templateSplit = CoreString.Split(weaponEntry["equipmentHollow"] or "", ":")
        if equipment.sourceTemplateId == templateSplit then
            selectedEntry = weaponEntry
            break
        end
    end
    -- Set the icon
    if selectedEntry then
        SetIcon(selectedEntry.icon)
        ICON.isFlippedHorizontal = selectedEntry.flipIconH
        ICON.isFlippedVertical = selectedEntry.flipIconV
    end
end

function WaitForAbility()
    if waitForAbilityTask then
        waitForAbilityTask:Cancel()
    end
    waitForAbilityTask = Task.Spawn(function()
        while not Object.IsValid(currentAbility) do
            for _, ability in ipairs(LOCAL_PLAYER:GetAbilities()) do
                if ability.actionName == 'Attack' or ability.actionName == 'Shoot' then
                    currentAbility = ability
                    break
                end
            end
            Task.Wait()
        end
        waitForAbilityTask = nil
        SetAbility()
        UpdateWeaponIcon()
    end)
end

WaitForAbility() --Initial check for ability

-- nil Tick(float)
-- Checks for changes to the players abiltiies, or icons on those abilities
function Tick()
    if waitForAbilityTask then return end
    if not Object.IsValid(currentAbility) then
        currentAbility = nil
    	SetIcon(nil)
        if CooldownEvent then
            CooldownEvent:Disconnect()
            CooldownEvent = nil
        end
        --PANEL.visibility = Visibility.FORCE_OFF
        WaitForAbility()
        return
    end
end

function SetIcon(Icon)
    if Icon then
        ICON:SetImage(Icon)
    else
        ICON:SetImage(DEFAULT_IMAGE)
    end
end

function SetActionName(panel)
    if panel then
        for _, child in pairs(ACTION_NAME:GetChildren()) do
            child.text = panel.name
        end
    end
end

PANEL.clientUserData.SetIcon = SetIcon
PANEL.clientUserData.SetActionName = SetActionName
