-- Internal custom properties --
local PANEL = script:GetCustomProperty('Panel'):WaitForObject()
local ICON = script:GetCustomProperty('Icon'):WaitForObject()
local COUNTDOWN_TEXT = script:GetCustomProperty('CountdownText'):WaitForObject()
local NAME_TEXT = script:GetCustomProperty('NameText'):WaitForObject()
local PROGRESS_INDICATOR = script:GetCustomProperty('ProgressIndicator'):WaitForObject()
local RIGHT_SHADOW = script:GetCustomProperty('RightShadow'):WaitForObject()
local LEFT_SHADOW = script:GetCustomProperty('LeftShadow'):WaitForObject()
local ACTIVE_FRAME = script:GetCustomProperty('ActiveFrame'):WaitForObject()
local ACTIVE_FLASH = script:GetCustomProperty('ActiveFlash'):WaitForObject()
local DURATION_BAR = script:GetCustomProperty('DurationIndicator'):WaitForObject()
local LEVEL_TEXT = script:GetCustomProperty('LevelText'):WaitForObject()

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local DEFAULT_IMAGE = ICON:GetImage()

-- Variables
local currentAbility = nil
local executeDuration = 0.0
local recoveryDuration = 0.0
local cooldownDuration = 0.0

local cooldownOverride = nil
local networkedEventListener = nil

function OnAbilityIconSet(thisAbility)
    if not thisAbility:IsA('Ability') then
        return
    end
    currentAbility = thisAbility
    if thisAbility.icon then
        ICON:SetImage(thisAbility.icon)
    else
        ICON:SetImage(DEFAULT_IMAGE)
    end

    local ability = currentAbility:GetCurrentAbility() 
    executeDuration = ability.executePhaseSettings.duration
    recoveryDuration = ability.recoveryPhaseSettings.duration
    cooldownDuration = ability.cooldownPhaseSettings.duration

    DURATION_BAR.progress = 0 
end

-- nil Tick(float)
-- Checks for changes to the players abiltiies, or icons on those abilities
function Tick(deltaTime) 
    if currentAbility and currentAbility.owner and Object.IsValid(currentAbility.owner) then
        local ability = currentAbility:GetCurrentAbility()  
        local currentPhase = ability:GetCurrentPhase()
        local phaseTimeRemaining = ability:GetPhaseTimeRemaining()
        PANEL.visibility = Visibility.INHERIT

        -- Update the level text for the ability
        NAME_TEXT.text = currentAbility.name

        -- Show/hide DURATION_BAR
        if DURATION_BAR.progress == 0 then
            DURATION_BAR.visibility = Visibility.FORCE_OFF
            NAME_TEXT.visibility = Visibility.INHERIT
        else
            DURATION_BAR.visibility = Visibility.INHERIT
            NAME_TEXT.visibility = Visibility.FORCE_OFF
        end

        if currentPhase == AbilityPhase.READY or currentPhase == AbilityPhase.CAST then
            PROGRESS_INDICATOR.visibility = Visibility.FORCE_OFF
        else
            PROGRESS_INDICATOR.visibility = Visibility.INHERIT

            local cd
            if cooldownOverride and cooldownOverride > 0 then
                cd = cooldownOverride
            else
                cd = 0
            end
            if cd > cooldownDuration then
                cd = cooldownDuration
            end

            -- For a player, execute, recovery and cooldown are together displayed as the ability's cooldown
            local cooldownRemaining

            if currentPhase == AbilityPhase.COOLDOWN then
                local elapsedPhaseTime = cooldownDuration - phaseTimeRemaining
                cooldownRemaining = cd - elapsedPhaseTime
            elseif currentPhase == AbilityPhase.EXECUTE then
                cooldownRemaining = cd + recoveryDuration + phaseTimeRemaining
            else -- Recovery
                cooldownRemaining = cd + phaseTimeRemaining
            end

            if cooldownRemaining < 0 then
                cooldownRemaining = 0
            end

            local totalCooldown = executeDuration + recoveryDuration + cd
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
end
Events.Connect('Set Ability Icon', OnAbilityIconSet)
