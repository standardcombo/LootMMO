local TargetUI = script:GetCustomProperty("TargetContainer"):WaitForObject() -- uicontainer, to spawn the responses in
local TargetPanel = TargetUI:FindChildByName("ReponsePanel")
local ResponseTemplate = script:GetCustomProperty("ResponseTemplate") -- asset to be spawned
local LOCAL_PLAYER = Game.GetLocalPlayer()
local ResponsesActive = false


local function ResponseChosen(button)
    ResponsesActive = false
    UI.SetCursorVisible(false)
    UI.SetCanCursorInteractWithUI(false)
    Events.Broadcast("CloseHeads")
    Events.Broadcast("Talking.Heads", button.name)
    local chatState = button:GetCustomProperty("SetChatState")
    local chatID = button:GetCustomProperty("ChatID")
    if chatState >= 0 then
          --LOCAL_PLAYER:SetResource(chatID..chatState)
    end
end

local function GetResponse(Responses, duration, chatID)
    Task.Spawn(function()
        if duration < 0 then
            duration = 4
        end
        Task.Wait(duration/2) -- waits for the message to play out mostly before showing responses
        local posIndex = 0
        for stringKey, response in pairs(Responses) do
            local responseButton = World.SpawnAsset(ResponseTemplate, {parent = TargetPanel})
            local buttonText = responseButton:FindChildByName("ResponseText")
            responseButton.name = stringKey
            buttonText.text = response.Messages
            responseButton:SetCustomProperty("SetChatState", response.ChangeState)
            responseButton:SetCustomProperty("ChatID", chatID)
            local PositionFormula = (0 + 80*posIndex)
            responseButton.y = PositionFormula
            posIndex = posIndex + 1
        end
        ResponsesActive = true
    end)
end

function Tick(dt)
    if ResponsesActive and not UI.IsCursorVisible() then
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
    end
end

Events.Connect("Talking.GetResponse", GetResponse)
Events.Connect("Responded", ResponseChosen)