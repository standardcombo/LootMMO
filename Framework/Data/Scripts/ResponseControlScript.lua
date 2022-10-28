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

local function CleanUpChoices()
    for k,v in ipairs(ButtonEvents) do
        v:Disconnect()
    end
    for k,v in ipairs(SpawnedButtons) do 
        v:Destroy()
    end
    ButtonEvents = {}
    SpawnedButtons = {}
    return true
end

local function ResponseChosen(button)
    local BName = button.name
    print(BName, "This was the response chosen")
    if CleanUpChoices() then
        print("I should Send out this info or something",BName)
    end
end

local function GetResponse(key, duration)
    print(key, duration, "We should be able to get a preset reponse from this")
    local row = ResponseData[key]
    if row ~= nil then
        print("found the thing in data", row)
        local Responses =  row.Messages
        local screenSize = UI.GetScreenSize()
        TargetWidth = CoreMath.Round(screenSize.x)

        -- lay out the possible responses
        for k, v in pairs(Responses) do
            ResponseCount = ResponseCount + 1
            print(k,v.Messages, "Possible responses")
            table.insert(ResponseNames, k)
            table.insert(ResponsesTable, v.Messages)
            
        end
        -- take the responses and create generic buttons based on how many exist
        for i = 1, ResponseCount do 
            SpawnedButtons[i] = World.SpawnAsset(ResponseTemplate,{parent = TargetPanel})
            local TEXT = SpawnedButtons[i]:FindChildByName("ResponseText")
            local PositionFormula = ((TargetWidth/ResponseCount)*i)
            print(i, TargetWidth, ResponseCount, "position:", PositionFormula)
            SpawnedButtons[i].name = ResponseNames[i]
            SpawnedButtons[i].x = PositionFormula
            TEXT.text = ResponsesTable[i]
            ButtonEvents[i] = SpawnedButtons[i].clickedEvent:Connect(ResponseChosen)
        end
    else
        print("No Response Data found for:", key)
    end
end


Events.Connect("Talking.GetResponse", GetResponse)