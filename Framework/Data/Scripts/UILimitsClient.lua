--[[
Copyright 2021 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal Properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local PRIVATE_NETWORKED_DATA_TEXT = script:GetCustomProperty("PrivateNetworkedDataText"):WaitForObject()
local PRIVATE_NETWORKED_DATA_PROGRESS_BAR = script:GetCustomProperty("PrivateNetworkedDataProgressBar"):WaitForObject()
local INVENTORY_DATA_LABEL = script:GetCustomProperty("InventoryDataLabel"):WaitForObject()
local REPLICATOR_DATA_LABEL = script:GetCustomProperty("ReplicatorDataLabel"):WaitForObject()
local OTHER_DATA_LABEL = script:GetCustomProperty("OtherDataLabel"):WaitForObject()
local LOCAL_STORAGE_TEXT = script:GetCustomProperty("LocalStorageText"):WaitForObject()
local LOCAL_STORAGE_PROGRESS_BAR = script:GetCustomProperty("LocalStorageProgressBar"):WaitForObject()
local BINDING_LABEL = script:GetCustomProperty("BindingLabel"):WaitForObject()

-- User Exposed Properties
local ENABLED = COMPONENT_ROOT:GetCustomProperty("Enabled")
local SHOW_ON_START = COMPONENT_ROOT:GetCustomProperty("ShowOnStart")
local BINDING = COMPONENT_ROOT:GetCustomProperty("Binding")

-- Required APIs
---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))

-- Constants
local EVENT_REQUEST_UPDATE = "RequestLimitsUpdate"
local EVENT_SEND_UPDATE = "LimitsUpdate"
local LOCAL_PLAYER = Game.GetLocalPlayer()
local MAX_PRIVATE_NETWORKED_DATA_SIZE = 32000
local MAX_LOCAL_DATA_SIZE = 32000
local UPDATE_INTERVAL = 1.0
local BINDING_LOOKUP = {
    ability_primary = "M1",
    ability_secondary = "M2",
    ability_1 = "Q",
    ability_2 = "E",
    ability_ult = "R",
    ability_feet = "Shift",
    ability_extra_0 = "0",
    ability_extra_1 = "1",
    ability_extra_2 = "2",
    ability_extra_3 = "3",
    ability_extra_4 = "4",
    ability_extra_5 = "5",
    ability_extra_6 = "6",
    ability_extra_7 = "7",
    ability_extra_8 = "8",
    ability_extra_9 = "9",
    ability_extra_10 = "Ctrl",
    ability_extra_11 = "Ctrl",
    ability_extra_12 = "Shift",
    ability_extra_13 = "Shift",
    ability_extra_14 = "Alt",
    ability_extra_15 = "Alt",
    ability_extra_16 = "Enter",
    ability_extra_17 = "Space",
    ability_extra_18 = "Caps Lock",
    ability_extra_19 = "Tab",
    ability_extra_20 = "Q",
    ability_extra_21 = "W",
    ability_extra_22 = "E",
    ability_extra_23 = "R",
    ability_extra_24 = "T",
    ability_extra_25 = "Y",
    ability_extra_26 = "U",
    ability_extra_27 = "I",
    ability_extra_28 = "O",
    ability_extra_29 = "P",
    ability_extra_30 = "A",
    ability_extra_31 = "S",
    ability_extra_32 = "D",
    ability_extra_33 = "F",
    ability_extra_34 = "G",
    ability_extra_35 = "H",
    ability_extra_36 = "J",
    ability_extra_37 = "K",
    ability_extra_38 = "L",
    ability_extra_39 = "Z",
    ability_extra_40 = "X",
    ability_extra_41 = "C",
    ability_extra_42 = "V",
    ability_extra_43 = "B",
    ability_extra_44 = "N",
    ability_extra_45 = "M",
    ability_extra_46 = "Up",
    ability_extra_47 = "Down",
    ability_extra_48 = "Left",
    ability_extra_49 = "Right",
    ability_extra_50 = "F1",
    ability_extra_51 = "F2",
    ability_extra_52 = "F3",
    ability_extra_53 = "F4",
    ability_extra_54 = "F5",
    ability_extra_55 = "F6",
    ability_extra_56 = "F7",
    ability_extra_57 = "F8",
    ability_extra_58 = "F9",
    ability_extra_59 = "F10",
    ability_extra_60 = "F11",
    ability_extra_61 = "F12",
    ability_extra_62 = "Ins",
    ability_extra_63 = "Home",
    ability_extra_64 = "Page Up",
    ability_extra_65 = "Page Down",
    ability_extra_66 = "Del",
    ability_extra_67 = "End"
}

-- Private Variables
local isShowing = false
local updateTask

function Show()
    updateTask = Task.Spawn(Update)

    PANEL.visibility = Visibility.FORCE_ON
    isShowing = true
end

function Hide()
    if updateTask then
        updateTask:Cancel()
        updateTask = nil
    end

    PANEL.visibility = Visibility.FORCE_OFF
    isShowing = false
end

function Update()
    while true do
        if isShowing then
            RELIABLE_EVENTS.BroadcastToServer(EVENT_REQUEST_UPDATE)
        end

        Task.Wait(UPDATE_INTERVAL)
    end
end

function OnBindingReleased(player, binding)
    if binding == BINDING then
        if isShowing then
            Hide()
        else
            Show()
        end
    end
end

function OnRecievedUpdate(totalInventorySize, totalReplicatorSize, totalOtherSize, totalLocalDataSize, totalInventoryDataSize)
    local networkedDataRatio = (totalInventorySize + totalReplicatorSize + totalOtherSize) / MAX_PRIVATE_NETWORKED_DATA_SIZE
    PRIVATE_NETWORKED_DATA_TEXT.text = string.format("%d / %d - %.2f%%", (totalInventorySize + totalReplicatorSize + totalOtherSize), MAX_PRIVATE_NETWORKED_DATA_SIZE, networkedDataRatio * 100)
    PRIVATE_NETWORKED_DATA_PROGRESS_BAR.progress = networkedDataRatio

    INVENTORY_DATA_LABEL.text = string.format("Inventory Data: %d bytes", totalInventorySize)
    REPLICATOR_DATA_LABEL.text = string.format("Replicator Data: %d bytes", totalReplicatorSize)
    OTHER_DATA_LABEL.text = string.format("Other Data: %d bytes", totalOtherSize)

    local localDataRatio = (totalLocalDataSize + totalInventoryDataSize) / MAX_LOCAL_DATA_SIZE
    LOCAL_STORAGE_TEXT.text = string.format("%d / %d - %.2f%%", (totalLocalDataSize + totalInventoryDataSize), MAX_LOCAL_DATA_SIZE, localDataRatio * 100)
    LOCAL_STORAGE_PROGRESS_BAR.progress = localDataRatio
end

BINDING_LABEL.text = BINDING_LOOKUP[BINDING]

if ENABLED and SHOW_ON_START then
    Show()
else
    Hide()
end

if ENABLED then
    LOCAL_PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)
    Events.Connect(EVENT_SEND_UPDATE, OnRecievedUpdate)
end