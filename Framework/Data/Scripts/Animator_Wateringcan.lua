---@type Ability
local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
---@type Folder
local VFX = script:GetCustomProperty("vfx"):WaitForObject()

local EFFECTS = VFX:GetChildren()
local handles = {}

function OnCast()
    for _,e in ipairs(EFFECTS)do
        e:Play()
    end
    local ttl = ABILITY:GetPhaseTimeRemaining()
    ttl = ttl - .1
    if ttl < 0 then ttl = .1 end
    Task.Wait(ttl)
    for _,e in ipairs(EFFECTS)do
        e:Stop()
    end
end

function Cleanup()
    for _,h in ipairs(handles)do
        h:Disconnect()
    end
    handles = nil
end

table.insert(handles,ABILITY.castEvent:Connect(OnCast))
table.insert(handles,ABILITY.destroyEvent:Connect(Cleanup))