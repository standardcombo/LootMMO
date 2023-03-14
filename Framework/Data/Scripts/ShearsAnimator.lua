---@type Ability
local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
---@type Folder
local LEFT_PART = script:GetCustomProperty("LeftPart"):WaitForObject()
---@type Folder
local RIGHT_PART = script:GetCustomProperty("RightPart"):WaitForObject()
---@type Audio
local CREATURE_CLAWS_BLADE_SCRAPE_SLICE_01_SFX = script:GetCustomProperty("Creature Claws Blade Scrape Slice 01 SFX"):WaitForObject()

local openRot = Rotation.New(0,0,0)
local closedRot = Rotation.New(0,8,0)
local handles = {}

function OnExecute()
    local ttl = ABILITY:GetPhaseTimeRemaining()/2
    CREATURE_CLAWS_BLADE_SCRAPE_SLICE_01_SFX:Play()
    LEFT_PART:RotateTo(-closedRot,ttl,true)
    RIGHT_PART:RotateTo(closedRot,ttl,true)
    Task.Wait(ttl)
    LEFT_PART:RotateTo(openRot,ttl,true)
    RIGHT_PART:RotateTo(openRot,ttl,true)
end

function Cleanup()
    for _,h in ipairs(handles)do
        h:Disconnect()
    end
    handles = nil
end

table.insert(handles,ABILITY.executeEvent:Connect(OnExecute))
table.insert(handles,ABILITY.destroyEvent:Connect(Cleanup))