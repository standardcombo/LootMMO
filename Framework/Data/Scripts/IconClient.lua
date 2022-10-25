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
    This script allows for easy to use and customize icons that display on screen.
--]]

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APIIconManager
local ICON_MANAGER = require(script:GetCustomProperty("APIIconManager"))
local ICON = script:GetCustomProperty("Icon"):WaitForObject()
local BINDING_BG = script:GetCustomProperty("BindingBackground"):WaitForObject()
local BINDING_TEXT = script:GetCustomProperty("BindingText"):WaitForObject()

local ICON_CAMERA_ID = COMPONENT_ROOT:GetCustomProperty("IconCameraId")
local ICON_ASSET = COMPONENT_ROOT:GetCustomProperty("IconAsset")
local IS_2D_ICON = COMPONENT_ROOT:GetCustomProperty("IsKitbashed2DIcon")
local IS_3D_ICON = COMPONENT_ROOT:GetCustomProperty("Is3DIcon")
local IS_IMAGE_ICON = COMPONENT_ROOT:GetCustomProperty("IsImageIcon")
local BINDING = COMPONENT_ROOT:GetCustomProperty("Binding")

-- Wait for Icon Generators to register
Task.Wait()

if IS_2D_ICON then
    ICON:SetImage(nil)
    ICON:SetColor(Color.New(0, 0, 0, 0))
    World.SpawnAsset(ICON_ASSET, { parent = ICON })
elseif IS_3D_ICON then
    ICON_MANAGER.SetIcon(ICON, ICON_CAMERA_ID, ICON_ASSET, CameraCaptureResolution.SMALL)
elseif IS_IMAGE_ICON then
    ICON:SetImage(ICON_ASSET)
else
    ICON.visibility = Visibility.FORCE_OFF
end

if BINDING and BINDING ~= "" then
    BINDING_TEXT.text = BINDING
else
    BINDING_BG.visibility = Visibility.FORCE_OFF
end