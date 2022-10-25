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
    This allows Currency setup and configuration in the hierarchy. The Currency API will use default settings for
    anything not configured here aside from the CurrencyId. CurrencyIds must be unique across a project.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))

local CURRENCY_ID = COMPONENT_ROOT:GetCustomProperty("CurrencyId")
local NAME = COMPONENT_ROOT:GetCustomProperty("Name")
local STORAGE_KEY = COMPONENT_ROOT:GetCustomProperty("StorageKey")
local STARTING_AMOUNT = COMPONENT_ROOT:GetCustomProperty("StartingAmount")
local MAX_AMOUNT = COMPONENT_ROOT:GetCustomProperty("MaxAmount")
local DROP_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("DropTemplate")
local PICKUP_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("DropItemPickupTemplate")
local VERBOSE_LOGS = COMPONENT_ROOT:GetCustomProperty("VerboseLogs")
local ICON_CAMERA_ID = COMPONENT_ROOT:GetCustomProperty("IconCameraId")
local ICON_ASSET = COMPONENT_ROOT:GetCustomProperty("IconAsset")
local IS_2D_ICON = COMPONENT_ROOT:GetCustomProperty("IsKitbashed2DIcon")
local IS_3D_ICON = COMPONENT_ROOT:GetCustomProperty("Is3DIcon")
local IS_IMAGE_ICON = COMPONENT_ROOT:GetCustomProperty("IsImageIcon")

if STARTING_AMOUNT < 0 then
    STARTING_AMOUNT = 0
end

if MAX_AMOUNT < 0 then
    MAX_AMOUNT = 0
end

if CURRENCY_ID == "" then
    error("CurrencyId must be set")
    return
end

if Environment.IsServer() and CURRENCY.IsCurrencyRegistered(CURRENCY_ID) then
    error(string.format("CurrencyId: %s has already been registered", CURRENCY_ID))
    return
end

-- Add the currency settings to the Database
local currencyData = {
    Currencies = {
        [CURRENCY_ID] = {
            [CURRENCY.Setting.Name] = NAME,
            [CURRENCY.Setting.StorageKey] = STORAGE_KEY,
            [CURRENCY.Setting.StartingAmount] = STARTING_AMOUNT,
            [CURRENCY.Setting.MaxAmount] = MAX_AMOUNT,
            [CURRENCY.Setting.DropTemplate] = DROP_TEMPLATE,
            [CURRENCY.Setting.DropItemPickupTemplate] = PICKUP_TEMPLATE,
            [CURRENCY.Setting.VerboseLogs] = VERBOSE_LOGS,
            [CURRENCY.Setting.IconCameraId] = ICON_CAMERA_ID,
            [CURRENCY.Setting.IconAsset] = ICON_ASSET,
            [CURRENCY.Setting.IsKitbashed2DIcon] = IS_2D_ICON,
            [CURRENCY.Setting.Is3DIcon] = IS_3D_ICON,
            [CURRENCY.Setting.IsImageIcon] = IS_IMAGE_ICON
        }
    }
}

DATABASE.AppendData(currencyData)

-- Wait for other Databases to append their data
Task.Wait()

if Environment.IsServer() then
    CURRENCY.RegisterCurrency(CURRENCY_ID)
end