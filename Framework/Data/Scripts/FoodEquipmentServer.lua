--[[
	Food Equipment - Server
	by: standardcombo
	modified by: Luapi
	v1.2
--]] local EQUIPMENT = script.parent

local STANCE = script:GetCustomProperty("AnimationStance")
local BINDING = script:GetCustomProperty("ActionBinding")
local ZERO_USES_DESTROY = script:GetCustomProperty("ZeroUsesDestroy")

local pressedListener = nil
local releasedListener = nil
local leftListener = nil

function OnActionPressed(player, action)
    if action == BINDING and EQUIPMENT:GetCustomProperty("usesRemaining") > 0 then
        EQUIPMENT:SetCustomProperty("isActive", true)

        local usesRemaining = EQUIPMENT:GetCustomProperty("usesRemaining")
        usesRemaining = usesRemaining - 1

        EQUIPMENT:SetCustomProperty("usesRemaining", usesRemaining)

        if usesRemaining == 0 and _G.RewardsAdapter then
            _G.RewardsAdapter.AddXP(player, 2)
        end
    end
end

function OnActionReleased(player, action)
    if action == BINDING then
        EQUIPMENT:SetCustomProperty("isActive", false)

        if ZERO_USES_DESTROY and EQUIPMENT:GetCustomProperty("usesRemaining") <= 0 then
            local itemId = EQUIPMENT:GetCustomProperty("itemId")
            Events.Broadcast("ItemConsumed", player, itemId)
            EQUIPMENT:Destroy()
        end
    end
end

function OnEquippedEvent(equipment, player)
    _G.StanceStack.Add(player, STANCE, script.id)
    pressedListener = Input.actionPressedEvent:Connect(OnActionPressed)
    releasedListener = Input.actionReleasedEvent:Connect(OnActionReleased)
end
EQUIPMENT.equippedEvent:Connect(OnEquippedEvent)

function OnUnequippedEvent(equipment, player)
    if not Object.IsValid(player) then
        return
    end
    if not Object.IsValid(script) then
        return
    end

    _G.StanceStack.Remove(player, STANCE, script.id)

    if Object.IsValid(equipment) then
        equipment:Destroy()
    end
end
EQUIPMENT.unequippedEvent:Connect(OnUnequippedEvent)

leftListener = Game.playerLeftEvent:Connect(function(player)
    if Object.IsValid(EQUIPMENT) and player == EQUIPMENT.owner then
        EQUIPMENT:Destroy()
    end
end)

script.destroyEvent:Connect(function()
    if Object.IsValid(EQUIPMENT) and Object.IsValid(EQUIPMENT.owner) and Object.IsValid(script) then
        _G.StanceStack.Remove(EQUIPMENT.owner, STANCE, script.id)
    end

    if pressedListener then
        pressedListener:Disconnect()
        pressedListener = nil
    end
    if releasedListener then
        releasedListener:Disconnect()
        releasedListener = nil
    end
    if leftListener then
        leftListener:Disconnect()
        leftListener = nil
    end
end)

