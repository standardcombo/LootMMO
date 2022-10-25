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
    This is a simple Currency display that shows an icon and amount. It will keep itself synchronized with Currency
    changes. It expects a CurrencyId property on the Component Root.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))
---@type APIIconManager
local ICON_MANAGER = require(script:GetCustomProperty("APIIconManager"))

local ICON = script:GetCustomProperty("Icon"):WaitForObject()
local AMOUNT = script:GetCustomProperty("Amount"):WaitForObject()

local CURRENCY_ID = COMPONENT_ROOT:GetCustomProperty("CurrencyId")

if not CURRENCY_ID or CURRENCY_ID == "" then
    warn("CurrencyId must be set on the Component Root")
    return
end

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Private Variables
local listeners = {}

function Initialize()
    while not CURRENCY.IsCurrencyLoaded(LOCAL_PLAYER, CURRENCY_ID) do
        Task.Wait()
    end

    local iconAsset = CURRENCY.GetSetting(CURRENCY_ID, CURRENCY.Setting.IconAsset)
    local iconCameraId = CURRENCY.GetSetting(CURRENCY_ID, CURRENCY.Setting.IconCameraId)

    ICON.visibility = Visibility.INHERIT
    if CURRENCY.GetSetting(CURRENCY_ID, CURRENCY.Setting.IsKitbashed2DIcon) then
        ICON:SetImage(nil)
        ICON:SetColor(Color.New(0, 0, 0, 0))
        World.SpawnAsset(iconAsset, { parent = ICON })
    elseif CURRENCY.GetSetting(CURRENCY_ID, CURRENCY.Setting.Is3DIcon) then
        ICON_MANAGER.SetIcon(ICON, iconCameraId, iconAsset, CameraCaptureResolution.VERY_SMALL)
    elseif CURRENCY.GetSetting(CURRENCY_ID, CURRENCY.Setting.IsImageIcon) then
        ICON:SetImage(iconAsset)
    else
        ICON.visibility = Visibility.FORCE_OFF
    end

    UpdateCurrencyAmount()

    table.insert(listeners, Events.Connect(CURRENCY.Events.CurrencyAdded, HandleCurrencyChanged))
    table.insert(listeners, Events.Connect(CURRENCY.Events.CurrencyRemoved, HandleCurrencyChanged))
    table.insert(listeners, Events.Connect(CURRENCY.Events.CurrencySet, HandleCurrencyChanged))

    COMPONENT_ROOT.destroyEvent:Connect(Cleanup)
end

function Cleanup()
    for _, listener in ipairs(listeners) do
        listener:Disconnect()
    end

    listeners = {}
end

function UpdateCurrencyAmount()
    AMOUNT.text = tostring(CURRENCY.GetCurrencyAmount(LOCAL_PLAYER, CURRENCY_ID))
end

function HandleCurrencyChanged(player, currencyId, amount)
    if player == LOCAL_PLAYER and currencyId == CURRENCY_ID then
        UpdateCurrencyAmount()
    end
end

Initialize()