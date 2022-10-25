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
    A simple icon generator and cache that supports any amount of unique camera setups. It will capture and cache icons
    in such a way that a single item could be captured in different cameras or at different resolutions without
    overwriting each other. It can also write and return the current space used by captured icons.
--]]

-- Constants
local MAX_PIXELS = 1024 * 1024
local RESOLUTION_MAP = {
    [CameraCaptureResolution.VERY_LARGE] = 1024 * 1024,
    [CameraCaptureResolution.LARGE] = 512 * 512,
    [CameraCaptureResolution.MEDIUM] = 256 * 256,
    [CameraCaptureResolution.SMALL] = 128 * 128,
    [CameraCaptureResolution.VERY_SMALL] = 64 * 64,
}

---@class APIIconManager
local API = {}

local cameras = {}
local captures = {}
local images = {}
local isCapturing = false

---Registers a camera to use to capture icon images.
---@param cameraId string
---@param camera Camera
---@param functionTable table
function API.RegisterCamera(cameraId, camera, functionTable)
    cameras[cameraId] = {
        Camera = camera,
        Functions = functionTable
    }
end

---Returns true if the camera id has been registered.
---@param cameraId string
---@return boolean
function API.IsCameraRegistered(cameraId)
    return cameras[cameraId] ~= nil
end

---Makes a UIImage display a generated icon. This will generate the icon if it is not yet generated.
---Returns true if the icon is successfully set.
---@param image UIImage
---@param cameraId string
---@param template string
---@param resolution CameraCaptureResolution
---@return boolean
function API.SetIcon(image, cameraId, template, resolution)
    if not image or not image:IsA("UIImage") then
        warn("Image must be a UIImage")
        return false
    end

    if not cameraId or cameraId == "" then
        for id, _ in pairs(cameras) do
            cameraId = id
            break
        end
    end

    if not cameraId or not cameras[cameraId] then
        warn(string.format("Could not create icon: %s. Invalid camera id: %s. Please register your camera with API.RegisterCamera() before trying to use it.", template, cameraId))
        return false
    end

    if images[image] then
        API.ClearIcon(image)
    end

    local capture = GetOrCreateIcon(cameraId, template, resolution)
    if not capture then
        return false
    end

    image:SetCameraCapture(capture)

    IncrementReferenceCount(cameraId, template, resolution)

    images[image] = {
        CameraId = cameraId,
        Template = template,
        Resolution = resolution,
        ClearListener = image.destroyEvent:Connect(HandleImageDestroyed)
    }

    return true
end

---This only needs to be called in special cases where you want to clear an icon outside of the cases it would
---automatically be cleared. This is called automatically when an image is reused or destroyed.
---@param image UIImage
---@return boolean
function API.ClearIcon(image)
    if not image or not image:IsA("UIImage") then
        warn("Image must be a UIImage")
        return false
    end

    if not images[image] then
        warn("Image is not being tracked")
        return false
    end

    DecrementReferenceCount(images[image].CameraId, images[image].Template, images[image].Resolution)
    ClearImage(image)

    return true
end

---Prints the current usage into the console and returns a percent (0 - 1) to use elsewhere.
---@param printToLog boolean If true the status will be printed to the Event Log
---@return number
function API.GetStatus(printToLog)
    local usedIcons = 0
    local usedPixels = 0
    for _, icons in pairs(captures) do
        for _, resolutions in pairs(icons) do
            for resolution, captureInfo in pairs(resolutions) do
                if captureInfo.Capture:IsValid() then
                    usedPixels = usedPixels + RESOLUTION_MAP[resolution]
                    usedIcons = usedIcons + 1
                end
            end
        end
    end

    if printToLog then
        print(string.format("Currently using %d icons using %d out of %d total pixels (%.2f%%)", usedIcons, usedPixels, MAX_PIXELS, ((usedPixels / MAX_PIXELS) * 100)))
    end

    return usedPixels / MAX_PIXELS
end

---Clears a tracked image and disconnects the destroy listener.
---@param image CoreObject
function ClearImage(image)
    if images[image] then
        if images[image].ClearListener then
            images[image].ClearListener:Disconnect()
        end
        images[image] = nil
    end
end

---Called when a tracked image has been destroyed. This will cleanup listeners and stop tracking it.
---@param image CoreObject
function HandleImageDestroyed(image)
    if images[image] then
        API.ClearIcon(image)
        ClearImage(image)
    end
end

---Returns true if there is enough texture space to create an icon at a specific resolution.
---@param resolution CameraCaptureResolution
---@return boolean
function CanCreateIcon(resolution)
    local percentUsed = API.GetStatus(false)
    local pixelsUsed = MAX_PIXELS * percentUsed

    return RESOLUTION_MAP[resolution] <= MAX_PIXELS - pixelsUsed
end

---Returns the icon if it is already cached, otherwise creates, caches and returns it.
---@param cameraId string
---@param template string
---@param resolution CameraCaptureResolution
---@return CameraCapture
function GetOrCreateIcon(cameraId, template, resolution)
    if not captures[cameraId] then
        captures[cameraId] = {}
    end

    if not captures[cameraId][template] then
        captures[cameraId][template] = {}
    end

    if not captures[cameraId][template][resolution] then
        while isCapturing do
            Task.Wait()
        end

        local canCreateIcon = CanCreateIcon(resolution)
        if not canCreateIcon then
            -- try to clear some cached but unused space
            for cachedCameraId, icons in pairs(captures) do
                for cachedTemplate, resolutions in pairs(icons) do
                    for cachedResolution, captureInfo in pairs(resolutions) do
                        if captureInfo.References <= 0 then
                            captureInfo.Capture:Release()
                            captures[cachedCameraId][cachedTemplate][cachedResolution] = nil
                            canCreateIcon = CanCreateIcon(resolution)
                        end
                        if canCreateIcon then break end
                    end
                    if canCreateIcon then break end
                end
                if canCreateIcon then break end
            end

            if not canCreateIcon then
                warn(string.format("Could not create icon: %s. Not enough texture space remaining.", template))
                return nil
            end
        end

        isCapturing = true

        cameras[cameraId].Functions.SetupShot(template)

        -- Wait a frame for material to stream in
        Task.Wait()

        local capture = cameras[cameraId].Camera:Capture(resolution)
        cameras[cameraId].Functions.CleanupShot()

        if not capture:IsValid() then
            warn(string.format("Could not create icon: %s. Camera id: %s may be invalid, or all space has been used.", template, cameraId))
            return nil
        end

        captures[cameraId][template][resolution] = {
            Capture = capture,
            References = 0
        }

        isCapturing = false
    end

    return captures[cameraId][template][resolution].Capture
end

---Increments a reference count for a specific icon setup.
---@param cameraId string
---@param template string
---@param resolution CameraCaptureResolution
function IncrementReferenceCount(cameraId, template, resolution)
    local captureInfo = captures[cameraId][template][resolution]
    captureInfo.References = captureInfo.References + 1
end

---Decrements a reference count for a specific icon setup. If the count reaches zero the icon will be released.
---@param cameraId string
---@param template string
---@param resolution CameraCaptureResolution
function DecrementReferenceCount(cameraId, template, resolution)
    local captureInfo = captures[cameraId][template][resolution]
    captureInfo.References = captureInfo.References - 1
end

return API