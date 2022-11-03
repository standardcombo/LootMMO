local ROOT = script:GetCustomProperty("ROOT"):WaitForObject() -- group root, where the properties are stored
local EntranceTrigger = ROOT:GetCustomProperty("TriggerEntrance"):WaitForObject() -- core object
local DungeonName = ROOT:GetCustomProperty("DungeonName")

local DungeonMenuOpen = {}

local function CloseMenu(player, Selection)
    print("Heard closing call", player.name, Selection)
    if DungeonMenuOpen[player.id] then
        DungeonMenuOpen[player.id] = nil
        player:SetPrivateNetworkedData("OpenDungeonMenu", nil)
        if Selection then 
            print("a selection was made by the player, do something with it.", Selection)
        end
    end
end

local function MenuOpenCheck(trigger, other)
    print(trigger, other, "interacted")
    if other:IsA("Player") then
        if not DungeonMenuOpen[other.id] then
            DungeonMenuOpen[other.id] = true
            other:SetPrivateNetworkedData("OpenDungeonMenu", DungeonName)
        end
    end 
end

if ROOT:GetCustomProperty("Active") then
    print(DungeonName, "is active, Connecting Events")
    Events.ConnectForPlayer("CloseMenuSelection", CloseMenu)
    EntranceTrigger.interactedEvent:Connect(MenuOpenCheck)
end
