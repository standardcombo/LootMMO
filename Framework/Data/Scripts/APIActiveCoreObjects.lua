---@class APIActiveCoreObjects
local API = {}

API.INHERIT = 0
API.FORCE_ON = 1
API.FORCE_OFF = 2

---@type table<CoreObject, integer>
local coreObjects = {}

---@type table<CoreObject, boolean>
local activeCoreObjects = {}

---@type table<table, CoreObject>
local handlers = {}

-- Internal functions
function RegisterCoreObject(coreObject, active)
    if coreObjects[coreObject] ~= nil then
        warn ("Core object was already registered")
        return
    end
    coreObject.destroyEvent:Connect(function() UnregisterCoreObject(coreObject) end)
    coreObjects[coreObject] = active
end

function UnregisterCoreObject(coreObject)
    coreObjects[coreObject] = nil
end

function UpdateHandlers()
    for handler, coreObject in pairs(handlers) do
        if Object.IsValid(coreObject) then
            local isActive = API.IsActive(coreObject)
            if activeCoreObjects[coreObject] ~= isActive then
                activeCoreObjects[coreObject] = isActive
                handler._method(coreObject, isActive)
            end
        else
            -- Automatic cleanup if the core object was destroyed
            if coreObject then
                activeCoreObjects[coreObject] = nil
            end
            handlers[handler] = nil
        end
    end
end

-- Public functions

---Marks a core object as being active as FORCE_ON, FORCE_OFF, INHERIT. Or you can use a bool
---@param coreObject CoreObject
---@param active integer|boolean
function API.SetActive(coreObject, active)
    if not Object.IsValid(coreObject) then
        warn ("SetActive failed as core object was nil")
        return
    end
    if type(active) == "boolean" then
        active = active and API.INHERIT or API.FORCE_OFF
    end
    if coreObjects[coreObject] == nil then
        RegisterCoreObject(coreObject, active)
    else
        coreObjects[coreObject] = active
    end
    UpdateHandlers()
end

---Check if any core object is active by looping upwards through the parents and seeing how its ancestors are marked
---@param coreObject CoreObject
---@return boolean
function API.IsActive(coreObject)
    if not Object.IsValid(coreObject) then
        warn ("core object was not valid")
        return false
    end
    while coreObject do
        local active = coreObjects[coreObject]
        if active then
            if active == API.FORCE_ON then
                return true
            elseif active == API.FORCE_OFF then
                return false
            end
        end
        coreObject = coreObject.parent
    end
    return true
end

---Allows you to connect a function to be trigger when core objects activation has changed. This will be called
---if any of its parents have had their activation changed
---@param coreObject CoreObject
---@param onActivationChanged func<CoreObject, boolean>
---@return EventHandler @A handler
function API.ConnectToActivationChange(coreObject, onActivationChanged)
    if not Object.IsValid(coreObject) then
        warn ("Cannot connect to activation change as core object was nil")
        return
    end

    ---@class EventHandler
    ---@field Disconnect function

    ---@type EventHandler
    local changeHandler = {}
    changeHandler.Disconnect = function()
        handlers[changeHandler] = nil
    end
    changeHandler._method = onActivationChanged

    handlers[changeHandler] = coreObject

    activeCoreObjects[coreObject] = API.IsActive(coreObject)
    return changeHandler
end


return API


