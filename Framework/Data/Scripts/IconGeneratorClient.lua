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
    This script registers iteself with the Icon Manager under a unique "Camera Id".
--]]

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APIIconManager
local ICON_MANAGER = require(script:GetCustomProperty("APIIconManager"))

local CAMERA_ID = COMPONENT_ROOT:GetCustomProperty("CameraId")
local CAMERA = COMPONENT_ROOT:GetCustomProperty("Camera"):WaitForObject()
local ICON_CONTAINER = COMPONENT_ROOT:GetCustomProperty("IconContainer"):WaitForObject()

if not CAMERA_ID or CAMERA_ID == "" then
    warn(string.format("Custom Property \"CameraId\" must be set on Icon Manager: %s", COMPONENT_ROOT.name))
    return
end

local currentIcon

function OnSetupShot(template)
    if Object.IsValid(currentIcon) then
        currentIcon:Destroy()
    end

    currentIcon = World.SpawnAsset(template, { parent = ICON_CONTAINER })
end

function OnCleanupShot()
    if Object.IsValid(currentIcon) then
        currentIcon:Destroy()
        currentIcon = nil
    end
end

local functionTable = {
    SetupShot = OnSetupShot,
    CleanupShot = OnCleanupShot
}

ICON_MANAGER.RegisterCamera(CAMERA_ID, CAMERA, functionTable)