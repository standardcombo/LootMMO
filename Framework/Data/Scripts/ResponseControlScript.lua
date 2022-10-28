local ResponseData = require(script:GetCustomProperty("ResponseDataTable"))
local ResponseCount = 0 -- count of the number of responses, for math reasons
local TargetUI = script:GetCustomProperty("TargetContainer"):WaitForObject() -- uicontainer, to spawn the responses in
local NPCPanel = TargetUI:FindChildByName("NpcPanel")
local NPCName = NPCPanel:FindChildByName("NPCNAME")
local NPCMsg = NPCPanel:FindChildByName("NPCMSG")
local TargetPanel = TargetUI:FindChildByName("ReponsePanel")
local TargetWidth = TargetPanel.width
local ResponseTemplate = script:GetCustomProperty("ResponseTemplate") -- asset to be spawned
local ResponseNames = {}
local ResponsesTable = {}
local SpawnedButtons = {}
local ButtonEvents = {}
local LOCAL_PLAYER = Game.GetLocalPlayer()
local ResponsesActive = false
local EdgeWidth = 50

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
    ButtonEvents = {}
    SpawnedButtons = {}
    NPCPanel.visibility = Visibility.FORCE_OFF
    ResponsesActive = false
    UI.SetCursorVisible(false)
    UI.SetCanCursorInteractWithUI(false)
    return true
end

local function ResponseChosen(button)
    local BName = button.name
    print(BName, "This was the response chosen")
    if CleanUpChoices() then
        print("I should Send out this info or something",BName)
        Events.Broadcast("Talking.Heads", BName)
    end
end

local function GetResponse(key, duration, name, msg)
    Task.Spawn(function()
        
        msg = parse_message(msg)
        print(key, duration, name, msg, "We should be able to get a preset reponse from this")
        local row = ResponseData[key]
        if row ~= nil then
            
            print("found the thing in data", row)
            local Responses =  row.Messages
            local screenSize = UI.GetScreenSize()
            TargetWidth = CoreMath.Round(screenSize.x)
            ResponseCount = 0 -- set variable back to 0 for count
            -- lay out the possible responses
            for k, v in pairs(Responses) do
                ResponseCount = ResponseCount + 1
                print(k,v.Messages, "Possible responses")
                table.insert(ResponseNames, k)
                table.insert(ResponsesTable, v.Messages)
                
            end
            -- take the responses and create generic buttons based on how many exist
            Task.Wait(duration/2) -- waits for the message to play out mostly before showing responses
            
            for i = 1, ResponseCount do 
                SpawnedButtons[i] = World.SpawnAsset(ResponseTemplate,{parent = TargetPanel})
                local TEXT = SpawnedButtons[i]:FindChildByName("ResponseText")
                local PositionFormula = (((TargetWidth-EdgeWidth)/ResponseCount)*i)
                print(SpawnedButtons[i].width, TargetWidth/ResponseCount, "Comparison of button width verse, targeth with ratio")
                if SpawnedButtons[i].width ~= (TargetWidth/ResponseCount) then
                    SpawnedButtons[i].width = CoreMath.Round(TargetWidth/ResponseCount)-EdgeWidth
                end
                print(i, TargetWidth, ResponseCount, "position:", PositionFormula)
                SpawnedButtons[i].name = ResponseNames[i]
                SpawnedButtons[i].x = PositionFormula-SpawnedButtons[i].width
                TEXT.text = ResponsesTable[i]
                ButtonEvents[i] = SpawnedButtons[i].clickedEvent:Connect(ResponseChosen)
            end
            NPCPanel.visibility = Visibility.FORCE_ON
            NPCName.text = name
            NPCMsg.text = msg
            ResponsesActive = true
        else
            print("No Response Data found for:", key)
        end
    end)
end


Events.Connect("Talking.GetResponse", GetResponse)

function Tick(dt)
    if ResponsesActive and not UI.IsCursorVisible() then
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
    end
end