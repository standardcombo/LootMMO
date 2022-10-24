local Trigger = script.parent
local function CheckListForPlayer(player)
    local BOOL = false
    for k,v in pairs(_G.VersusRegistered) do
        if v == player then 
            BOOL = true
        end
    end
    return BOOL
end
local function OnInteracted(trigger, other)
    if not other:IsA("Player") then return end
    if not CheckListForPlayer(other) then 
        print("player entered into vs registration")
        table.insert(_G.VersusRegistered, other)
    else
        local Key
        for k,v in pairs(_G.VersusRegistered) do
            if v == other then 
                Key = k
            end
        end
        if Key == nil then return end
        print("player removed from vs registration")
        table.remove(_G.VersusRegistered, Key)
    end
end

Trigger.interactedEvent:Connect(OnInteracted)