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
    This script simply registers to a buff target and listens for the buff being added or removed to visually
    changed a target object
--]]

---@type APIBuffs
local BUFFS = require(script:GetCustomProperty("APIBuffs"))

local BUFF_ID = script:GetCustomProperty("BuffId")
local OBJECT_TO_PLAY_STOP = script:GetCustomProperty("ObjectToPlayStop"):WaitForObject()
local INCLUDE_DESCENDANTS = script:GetCustomProperty("IncludeDescendants")

if OBJECT_TO_PLAY_STOP == nil then
    warn (script.id, "Object to affect was nil so this script won't do anything")
    return
end

-- Wait in case something hasnt registered itself to the buffs yet
if BUFFS.FindTargetByAncestors(script) == nil then
    Task.Wait()
end

if not BUFFS.IsValidBuff(BUFF_ID) then
    warn (script.id, "The buffId was invalid")
    return
end

local BUFF_TARGET = BUFFS.FindTargetByAncestors(script)

if BUFF_TARGET == nil then
    warn (script.id, "No buff target was found")
    return
end

---@type Audio[]|Vfx[]
local effects = {}
local handlers

function CacheEffects(coreObject)
    if coreObject:IsA("Vfx") or coreObject:IsA("Audio") or coreObject:IsA("SmartAudio") then
        table.insert(effects, coreObject)
    end
    if INCLUDE_DESCENDANTS then
        for _, child in ipairs(coreObject:GetChildren()) do
            CacheEffects(child)
        end
    end
end

function ActivateEffects()
    for _, effect in ipairs(effects) do
        effect:Play()
    end
end

function DeactivateEffects()
    for _, effect in ipairs(effects) do
        effect:Stop()
    end
end

function OnBuffChanged(targetId, buffId)
    if targetId == BUFF_TARGET and buffId == BUFF_ID then
        UpdateEffects()
    end
end

function UpdateEffects()
    if BUFFS.HasBuff(BUFF_TARGET, BUFF_ID) then
        ActivateEffects()
    else
        DeactivateEffects()
    end
end

function OnDestroy()
    for _, handler in ipairs(handlers) do
        handler:Disconnect()
    end
    handlers = nil
end

-- Collect effects
CacheEffects(OBJECT_TO_PLAY_STOP)

UpdateEffects()

local targetEvents = BUFFS.GetTargetEvents(BUFF_TARGET)

handlers = {
    targetEvents.buffAddedEvent:Connect(OnBuffChanged),
    targetEvents.buffChangedEvent:Connect(OnBuffChanged),
    targetEvents.buffRemovedEvent:Connect(OnBuffChanged)
}

script.destroyEvent:Connect(OnDestroy)