Trigger = script.parent
local VFX = script:GetCustomProperty("VFX")
local TEXAS_POKER_SETTINGS = require(script:GetCustomProperty("TexasPoker_Settings"))

function Tick()
    for key, other in pairs(Trigger:GetOverlappingObjects()) do
        if other:IsA("Player") then 
            if other.activeEmote and other:GetResource(TEXAS_POKER_SETTINGS.resource) < TEXAS_POKER_SETTINGS.minBuyin then 
                other:AddResource(TEXAS_POKER_SETTINGS.resource,50)
                World.SpawnAsset(VFX, {position = other:GetWorldPosition() + Vector3.UP*150, networkContext = NetworkContextType.NETWORKED})
            end 
        end 
    end
    Task.Wait(2)
end