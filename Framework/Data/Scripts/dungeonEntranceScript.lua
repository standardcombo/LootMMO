local SPAWN_UTILS = require( script:GetCustomProperty("SpawnUtils") )
local DungeonsGroup = script:GetCustomProperty("DungeonsGroup"):WaitForObject() -- group root, where the Dungeon entrances are stored
local DungeonTable = DungeonsGroup:GetChildren()
local DBB = require(script:GetCustomProperty("DungeonDataBase"))
local Entrances = {} -- this is a table, sorted by dungeon name, that gives access to the ROOT Group. unsure of usage atm.
local DungeonMenuOpen = {}

local function SpawnPlayer(player, StageChoice)
    --print("Send the player to a new spawn point")
    --we may need to fire off a dungeon check to see if one is running or something, 
    -- prior to spawning the player into it. depends if we are spawning dungeons , or if their static, etc.
    -- but this area is designed to initate that type of check
    SPAWN_UTILS.SpawnPlayerAt(player, StageChoice.SpawnKey)
    --this is assuming the dungeons end up in world
end

local function CloseMenu(player, Selection)
    --print("Heard closing call", player.name, Selection)
    if DungeonMenuOpen[player.id] then
        DungeonMenuOpen[player.id] = nil
        player:SetPrivateNetworkedData("OpenDungeonMenu", nil)
        if Selection then 
            --print("a selection was made by the player, do something with it.", Selection)
            local SelectA, SelectB = CoreString.Split(Selection, "|")
            local row = DBB[SelectA]
            local num = CoreMath.Round(tonumber(SelectB)) -- idk why this is mad
            local StageChoice = row.Stages[num]
            --print(StageChoice.TestColumn, "<- this should be a sentance, if i was successful, in connecting the database modularly")
            SpawnPlayer(player, StageChoice)
        end
    end
end

local function MenuOpenCheck(trigger, other)
    --print(trigger, other, "interacted")
    if other:IsA("Player") then
        if not DungeonMenuOpen[other.id] then
            local DungeonName = trigger.parent:GetCustomProperty("DungeonName")
            DungeonMenuOpen[other.id] = true
            other:SetPrivateNetworkedData("OpenDungeonMenu", DungeonName)
        end
    end 
end


for k, v in pairs(DungeonTable) do
    local Trigger = v:GetCustomProperty("TriggerEntrance"):WaitForObject()
    local DungeonName =  v:GetCustomProperty("DungeonName")
    if v:GetCustomProperty("Active") then
        --print(DungeonName,"is active, Connecting Events")
        Entrances[DungeonName] = v
        Trigger.interactedEvent:Connect(MenuOpenCheck)
    end
end
Events.ConnectForPlayer("CloseMenuSelection", CloseMenu)

