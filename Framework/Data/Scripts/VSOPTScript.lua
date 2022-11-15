local Trigger = script.parent
local TIME = time()
--[[ -- server function
local function CheckListForPlayer(player)
    local BOOL = false
    for k,v in pairs(_G.VersusRegistered) do
        if v == player then 
            BOOL = true
        end
    end
    return BOOL
end
]]

function OnInteracted(trigger, other)
	if other:IsA("Player") then
        if time() - TIME <= 7 then return end
        TIME = time()
        local Data = other:GetPrivateNetworkedData("VSR")
        if Data == nil then Data = "-" end
        if Data == "-" then
		    Events.Broadcast("Talking.Heads", "VS+")
        elseif Data == "+" then
            Events.Broadcast("Talking.Heads", "VS-")
        end
	end
end

--[[
local function OnInteracted(trigger, other)
    if not other:IsA("Player") then return end
    if not CheckListForPlayer(other) then 
        print("player entered into vs registration")
        Events.Broadcast("VS+", other)
    else
        local Key
        for k,v in pairs(_G.VersusRegistered) do
            if v == other then 
                Key = k
            end
        end
        if Key == nil then return end
        print("player removed from vs registration")
        Events.Broadcast("VS-", other)
    end
end


]]
Trigger.interactedEvent:Connect(OnInteracted)