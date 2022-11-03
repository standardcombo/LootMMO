local LPlayer = Game.GetLocalPlayer()
local CONTAINERROOT = script:GetCustomProperty("ContainerROOT"):WaitForObject() -- UI contrainer
local VisibilityToggle = CONTAINERROOT:GetCustomProperty("VisibilityToggle"):WaitForObject()
local ButtonControlWindow = CONTAINERROOT:GetCustomProperty("ButtonControlWindow"):WaitForObject()

local DungeonButtonTemplate = script:GetCustomProperty("DungeonButtonTemplate") -- template to spawn for dungeon selection
local DDB = require(script:GetCustomProperty("DungeonDataBase")) -- database of dungeon info
local SelectionsActive = false
local EdgeDistance = 25
local SpawnedButtons = {}
local SpawnedButtonEvents = {}
--ScrollSize = 300xButtons
local function CleanUpSpawns()
    for k,v in pairs(SpawnedButtonEvents) do
        v:Disconnect()
    end
    for k,v in pairs(SpawnedButtons) do
        v:Destroy()
    end
    SpawnedButtons = {}
    SpawnedButtonEvents = {}
    SelectionsActive = false
    VisibilityToggle.visibility = Visibility.FORCE_OFF
    UI.SetCanCursorInteractWithUI(false)
    UI.SetCursorVisible(false)
end

local function SelectionMade(button)
    print("dungeon selection made", button.name)
    Events.BroadcastToServer("CloseMenuSelection",button.name)
    CleanUpSpawns()
end

local function OpenDungeonSelectionMenu(dungeon)
    print("opening dungeon selection menu for:", dungeon)
    VisibilityToggle.visibility = Visibility.FORCE_ON
    SelectionsActive = true
    local ButtonLength = 3
    for i= 1, ButtonLength do 
        SpawnedButtons[i] = World.SpawnAsset(DungeonButtonTemplate, {parent = ButtonControlWindow})
        local NameText = SpawnedButtons[i]:FindChildByName("DUNGEONNAME") -- headline text
        local StageText = SpawnedButtons[i]:FindChildByName("STAGENAME") -- second row text
        local BGIShade = SpawnedButtons[i]:FindChildByName("BGIShade") -- Background color
        NameText.text = dungeon
        StageText.text = "Stage "..tostring(i)
        SpawnedButtons[i].name = dungeon.."|"..i
        SpawnedButtons[i].y =  ((i-1)*(SpawnedButtons[i].height+EdgeDistance))
        SpawnedButtonEvents[i] = SpawnedButtons[i].clickedEvent:Connect(SelectionMade)
    end
    ButtonControlWindow.height = (SpawnedButtons[1].height+EdgeDistance)*ButtonLength

end

local function UpdateData(key)
    if key == "OpenDungeonMenu" then
        local data = LPlayer:GetPrivateNetworkedData(key)
        if data == nil then return end
        OpenDungeonSelectionMenu(data)
    end
end

local function UpdateKey(player,key)
    if key ~= "OpenDungeonMenu" then return end
    UpdateData(key)
end

LPlayer.privateNetworkedDataChangedEvent:Connect(UpdateKey)
function Tick(dt)
    if SelectionsActive and not UI.IsCursorVisible() then
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
    end
end