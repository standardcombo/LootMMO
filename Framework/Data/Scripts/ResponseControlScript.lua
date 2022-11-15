local ResponseData = require(script:GetCustomProperty("ResponseDataTable"))
local ResponseCount = 0 -- count of the number of responses, for math reasons
local TargetUI = script:GetCustomProperty("TargetContainer"):WaitForObject() -- uicontainer, to spawn the responses in
local TargetPanel = TargetUI:FindChildByName("ReponsePanel")
local TargetWidth = TargetPanel.width
local ResponseTemplate = script:GetCustomProperty("ResponseTemplate") -- asset to be spawned
local ResponseNames = {}
local ResponsesTable = {}
local SpawnedButtons = {}
local ButtonEvents = {}
local LOCAL_PLAYER = Game.GetLocalPlayer()
local ResponsesActive = false

local function parse_message(message)
	local replacements = {

		{ replace = "{name}", with = LOCAL_PLAYER.name },
		{ replace = "{hitpoints}", with = LOCAL_PLAYER.hitPoints },
		{ replace = "{maxhitpoints}", with = LOCAL_PLAYER.maxHitPoints },
		{ replace = "{kills}", with = LOCAL_PLAYER.kills },
		{ replace = "{deaths}", with = LOCAL_PLAYER.deaths }

	}

	for _, r in pairs(replacements) do
		message = string.gsub(message, r.replace, r.with)
	end

	return message
end

local function CleanUpChoices()
    for k,v in ipairs(ButtonEvents) do
        v:Disconnect()
    end
    for k,v in ipairs(SpawnedButtons) do 
        v:Destroy()
    end
    for k,v in ipairs(ButtonEvents) do
        table.remove(ButtonEvents, k)
    end
    for k,v in ipairs(SpawnedButtons) do 
        table.remove(SpawnedButtons, k)
    end
    ButtonEvents = {}
    SpawnedButtons = {}
    ResponsesActive = false
    UI.SetCursorVisible(false)
    UI.SetCanCursorInteractWithUI(false)
    return true
end

local function ResponseChosen(button)
    local BName = button.name
    print(BName, "This was the response chosen")
    if CleanUpChoices() then
        Events.Broadcast("CloseHeads")
        Events.Broadcast("Talking.Heads", BName)
    end
end

local function GetResponse(Responses, duration, name, msg)
    Task.Spawn(function()
        
        msg = parse_message(msg)
        if duration < 0 then
            duration = 4
        end
        if Responses ~= nil then
            ResponseCount = 0 -- set variable back to 0 for count
            -- lay out the possible responses
            for stringIndex, value in pairs(Responses) do
                ResponseCount = ResponseCount + 1
                print(stringIndex, value.Messages, "Possible responses")
                table.insert(ResponseNames, stringIndex)
                table.insert(ResponsesTable, value.Messages)
                
            end
            -- take the responses and create generic buttons based on how many exist
            Task.Wait(duration/2) -- waits for the message to play out mostly before showing responses
            
            for i = 1, ResponseCount do 
                SpawnedButtons[i] = World.SpawnAsset(ResponseTemplate,{parent = TargetPanel})
                local TEXT = SpawnedButtons[i]:FindChildByName("ResponseText")
                local PositionFormula = (0 + 80*i - 80)
                print(i, TargetWidth, ResponseCount, "position:", PositionFormula)
                SpawnedButtons[i].name = ResponseNames[i]
                SpawnedButtons[i].y = PositionFormula
                TEXT.text = ResponsesTable[i]
                ButtonEvents[i] = SpawnedButtons[i].clickedEvent:Connect(ResponseChosen)
            end
            ResponsesActive = true
        else
            print("No Response Data found for:", Responses)
        end
    end)
end


Events.Connect("Talking.GetResponse", GetResponse)
Events.Connect("CloseHeads", CleanUpChoices)

function Tick(dt)
    if ResponsesActive and not UI.IsCursorVisible() then
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
    end
end