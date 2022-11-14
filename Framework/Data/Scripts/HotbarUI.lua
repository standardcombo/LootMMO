local WEAPON = script:GetCustomProperty("Weapon"):WaitForObject()
local AXE = script:GetCustomProperty("Axe"):WaitForObject()
local PICKAXE = script:GetCustomProperty("Pickaxe"):WaitForObject()
local SHOVEL = script:GetCustomProperty("Shovel"):WaitForObject()
local FADE = script:GetCustomProperty("Fade")
local HIGHLIGHT = script:GetCustomProperty("Highlight")
local local_player = Game.GetLocalPlayer()
local currentTool = nil
local ToolIcons = {WEAPON, AXE, PICKAXE, SHOVEL}
local updateTime = 0
local weaponErrorSwitch = true

function Tick(deltaTime)
    updateTime = updateTime + deltaTime
    if updateTime > 2 then 
        updateTime = 0
        UpdateUI()
    end
end

function UpdateUI()
    Task.Wait(0.1)
    local usingTool = false
    for _, equipment in ipairs(local_player:GetEquipment()) do
		if equipment:GetAttachedToSocketName() == "right_prop" then
            usingTool = true
            local name = equipment.name
            if currentTool == name then return end
            currentTool = equipment.name
            RemoveHighlight()
            if name == "AxeTool" then
                HighlightUI(AXE)
            elseif name == "PickaxeTool" then
                HighlightUI(PICKAXE)
            elseif name == "ShovelTool" then
                HighlightUI(SHOVEL)
            else
                HighlightUI(WEAPON)
            end
        end
        weaponErrorSwitch = true
    end
    if usingTool == false and weaponErrorSwitch then
        RemoveHighlight()
        HighlightUI(WEAPON)
        Events.Broadcast("Error", "No weapon equipped")
        weaponErrorSwitch = false
    end
end

function HighlightUI(tool)
    tool:SetColor(HIGHLIGHT)
    local frame = tool:FindChildByName("Highlight")
    frame.visibility = Visibility.FORCE_ON
end

function RemoveHighlight()
    for key, icon in pairs(ToolIcons) do
        icon:SetColor(FADE)
        local frame = icon:FindChildByName("Highlight")
        frame.visibility = Visibility.FORCE_OFF
    end
end

function OnActionPressed(player, action, value)
    if action == "Hotswap" then
        UpdateUI()
    end
end

Input.actionPressedEvent:Connect(OnActionPressed)