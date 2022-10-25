--[[
Copyright 2021 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This can be added to an object with an Ability to make it control Audio or Vfx by listening to various Ability
    callbacks. Add this script to the object in a ClientContext and setup the Custom Properties.

    Note: Effects can either be an Audio/Vfx object or a group containing 1 or more Audio/Vfx objects. This will play
    every effect it finds in that group.

    If "OwnerOnly" is true then the effects will only run on the client that owns the Ability.
--]]

local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local EFFECTS = script:GetCustomProperty("Effects"):WaitForObject()
local OWNER_ONLY = script:GetCustomProperty("OwnerOnly")
local PLAY_ON_READY = script:GetCustomProperty("PlayOnReady")
local PLAY_ON_CAST = script:GetCustomProperty("PlayOnCast")
local PLAY_ON_EXECUTE = script:GetCustomProperty("PlayOnExecute")
local PLAY_ON_RECOVERY = script:GetCustomProperty("PlayOnRecovery")
local PLAY_ON_COOLDOWN = script:GetCustomProperty("PlayOnCooldown")
local STOP_ON_READY = script:GetCustomProperty("StopOnReady")
local STOP_ON_CAST = script:GetCustomProperty("StopOnCast")
local STOP_ON_EXECUTE = script:GetCustomProperty("StopOnExecute")
local STOP_ON_RECOVERY = script:GetCustomProperty("StopOnRecovery")
local STOP_ON_COOLDOWN = script:GetCustomProperty("StopOnCooldown")
local TOGGLE_ON_READY = script:GetCustomProperty("ToggleOnReady")
local TOGGLE_ON_CAST = script:GetCustomProperty("ToggleOnCast")
local TOGGLE_ON_EXECUTE = script:GetCustomProperty("ToggleOnExecute")
local TOGGLE_ON_RECOVERY = script:GetCustomProperty("ToggleOnRecovery")
local TOGGLE_ON_COOLDOWN = script:GetCustomProperty("ToggleOnCooldown")

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Private Variables
local allEffects = {}

function HandleAbilityReady(ability)
    if not OWNER_ONLY or ability.owner == LOCAL_PLAYER then
        if PLAY_ON_READY then
            PlayEffects()
        elseif STOP_ON_READY then
            StopEffects()
        elseif TOGGLE_ON_READY then
            ToggleEffects()
        end
    end
end

function HandleAbilityCast(ability)
    if not OWNER_ONLY or ability.owner == LOCAL_PLAYER then
        if PLAY_ON_CAST then
            PlayEffects()
        elseif STOP_ON_CAST then
            StopEffects()
        elseif TOGGLE_ON_CAST then
            ToggleEffects()
        end
    end
end

function HandleAbilityExecuted(ability)
    if not OWNER_ONLY or ability.owner == LOCAL_PLAYER then
        if PLAY_ON_EXECUTE then
            PlayEffects()
        elseif STOP_ON_EXECUTE then
            StopEffects()
        elseif TOGGLE_ON_EXECUTE then
            ToggleEffects()
        end
    end
end

function HandleAbilityRecovery(ability)
    if not OWNER_ONLY or ability.owner == LOCAL_PLAYER then
        if PLAY_ON_RECOVERY then
            PlayEffects()
        elseif STOP_ON_RECOVERY then
            StopEffects()
        elseif TOGGLE_ON_RECOVERY then
            ToggleEffects()
        end
    end
end

function HandleAbilityCooldown(ability)
    if not OWNER_ONLY or ability.owner == LOCAL_PLAYER then
        if PLAY_ON_COOLDOWN then
            PlayEffects()
        elseif STOP_ON_COOLDOWN then
            StopEffects()
        elseif TOGGLE_ON_COOLDOWN then
            ToggleEffects()
        end
    end
end

function SetupEffects()
    AddEffects(EFFECTS)
    return #allEffects > 0
end

function AddEffects(object)
    if object:IsA("Audio") then
        table.insert(allEffects, object)
    end

    if object:IsA("Vfx") then
        table.insert(allEffects, object)
    end

    for _, child in ipairs(object:GetChildren()) do
        AddEffects(child)
    end
end

function StopEffects()
    for _, effect in ipairs(allEffects) do
        if Object.IsValid(effect) then
            effect:Stop()
        end
    end
end

function PlayEffects()
    for _, effect in ipairs(allEffects) do
        if Object.IsValid(effect) then
            effect:Play()
        end
    end
end

function ToggleEffects()
    for _, effect in ipairs(allEffects) do
        if Object.IsValid(effect) then
            if effect.isPlaying then
                effect:Stop()
            else
                effect:Play()
            end
        end
    end
end

if not EFFECTS then
    warn(string.format("Effects must be set on %s (%s)", script.name, script.id))
    return
end

if not SetupEffects() then
    warn(string.format("There must be at least one Audio or Vfx object set on %s (%s)", script.name, script.id))
    return
end

ABILITY.readyEvent:Connect(HandleAbilityReady)
ABILITY.castEvent:Connect(HandleAbilityCast)
ABILITY.executeEvent:Connect(HandleAbilityExecuted)
ABILITY.recoveryEvent:Connect(HandleAbilityRecovery)
ABILITY.cooldownEvent:Connect(HandleAbilityCooldown)