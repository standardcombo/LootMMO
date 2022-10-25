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

--[[
    A stripped down version of the Inventory Slot to be used with the drag and drop system.
--]]

-- Internal Variables
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APIIconManager
local ICON_MANAGER = require(script:GetCustomProperty("APIIconManager"))

local ICON = script:GetCustomProperty("Icon"):WaitForObject()
local AMOUNT = script:GetCustomProperty("Amount"):WaitForObject()

-- Private Variables
local iconData
local iconCameraId

function Initialize(inventoryId, data, amount, cameraId)
    iconData = data
    iconCameraId = cameraId

    if iconData then
        ICON.visibility = Visibility.INHERIT
        AMOUNT.text = ""

        if iconData.IsKitbashed2DIcon then
            ICON:SetImage(nil)
            ICON:SetColor(Color.New(0, 0, 0, 0))
            World.SpawnAsset(iconData.IconAsset, { parent = ICON })
        elseif iconData.Is3DIcon then
            ICON_MANAGER.SetIcon(ICON, iconCameraId, iconData.IconAsset, CameraCaptureResolution.SMALL)
        elseif iconData.IsImageIcon then
            ICON:SetImage(iconData.IconAsset)
        else
            ICON:SetImage(INVENTORY.GetSetting(inventoryId, INVENTORY.Setting.DefaultIcon))
        end

        if amount > 1 then
            AMOUNT.text = string.format("x%d", amount)
        else
            AMOUNT.text = ""
        end
    else
        -- This slot is empty
        ICON.visibility = Visibility.FORCE_OFF
        AMOUNT.text = ""
    end
end