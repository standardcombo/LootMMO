---@class CC_Util
local Util = {}

local registry = {}

Util.version = 0.2

Util.errorCodes = {
    ['Success'] = 1,
    ['NotFound'] = 2,
    ['OutOfDate'] = 3
}

Util.errorMessages = {
    [Util.errorCodes['Success']] = 'Found library.',
    [Util.errorCodes['NotFound']] = 'No library found.',
    [Util.errorCodes['OutOfDate']] = 'Version is out of date. Please update CC_UTIL or library to the latest version'
}

---Register new libraries to CC_Util
--- @param name string
--- @param Tble table
--- @return Tble
function Util:Register(name, Tble)
    if not name then
        return
    end
    if registry[name] then
        warn('Overwriting constant' .. name)
    end
    registry[name] = Tble

    return registry[name]
end

---Remove a library from CC_Util
--- @param name string
function Util:Remove(name)
    warn('library Getting removed')
    registry[name] = nil
end

function Util:Getlibrary(name)
    return registry[name]
end

---Waits for a library to be added and returns the libary
--- @param name string
--- @param version number
--- @param timeout number
--- @return table
function Util:WaitForlibrary(name, version, timeout)
    version = version or 0
    local time = 0
    local warnBeenCalled = false
    while not registry[name] do
        if timeout and time >= timeout then
            return Util.errorCodes['NotFound']
        end
        time = time + Task.Wait()
        if time >= 2 and not warnBeenCalled then
            warn(name .. ' is not found')
            warnBeenCalled = true
        end
    end
    local lib = registry[name]
    local ver = lib.version
    local errcode = Util.errorCodes['Success']
    if version > ver then
        errcode = Util.errorCodes['OutOfDate']
        warn(Util.errorMessages[errcode])
    end
    return lib, errcode
end

_G.CC_Util = Util
return Util
