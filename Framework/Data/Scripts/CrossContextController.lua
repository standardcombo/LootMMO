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
    This script provides a simple way to run code in different contexts via broadcasts

    Put simply
        - a 'server' script can broadcast to a 'static script' on the host
        - a 'client' script can broadcast to a 'static script' on the client
        - a 'static' script on the host can broadcast to a 'server script'
        - a 'static' script on the client can broadcast to a 'client script'

    This script provides a system where you can either call these global functions:

    _G.StaticContext.SpawnAsset(assetId, optionalParams)  -- returns the core object
    _G.ClientContext.SpawnAsset(assetId, optionalParams) -- returns the core object
    _G.ServerContext.SpawnAsset(assetId, optionalParams) -- returns the core object
    _G.DefaultContext.SpawnAsset(assetId, optionalParams) -- returns the core object

    _G.StaticContext.Destroy(coreObject)
    _G.ClientContext.Destroy(coreObject)
    _G.ServerContext.Destroy(coreObject)
    _G.DefaultContext.Destroy(coreObject)

    _G.StaticContext.Call(function, ...)
    _G.ClientContext.Call(function, ...)
    _G.ServerContext.Call(function, ...)
    _G.DefaultContext.Call(function, ...)

    or use Events.Broadcast()

    "DefaultSpawn"
    "DefaultDestroy"
    "DefaultFunction"

    "StaticSpawn"
    "StaticDestroy"
    "StaticFunction"

    "ClientSpawn"
    "ClientDestroy"
    "ClientFunction"

    "ServerSpawn"
    "ServerDestroy"
    "ServerFunction"

    using the same parameters


    -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
    Single Player Preview Mode work around:

    In published games and multiplayer preview mode, 'static' scripts exists on the host and the client.
    However, in single player preview mode, they only exists on the host, not the client

    In some cases this makes previewing in single player difficult if you wish for a static script to broadcast to a
    client script to spawn a client object - it will work in multiplayer preview mode but not work in single player
    preview mode and this can be very inconvenient. This script works around this restriction by exploiting the fact
    that both client and server server scripts are allowed to reference static objects and access their 'context'

    The server and client versions of this script register their context table to the context table of the static script
    This allows all 3 scripts to have access to each other in single player preview mode

    To run 'client' functions (such as spawning) from the static script, we access the context table that has been set
    and call the AddFunction method which adds that function to the queue to be invoked in the Tick function. To run
    'static' functions from the client script we do the same thing. Server -> Static and Static -> Server work like normal
    with broadcasts.

    One side effect is now default context and server context can broadcast a function to the client context, and it will be called.
    This is due to the script in static context running in a host environment, and theres no way in core to know which environment
    a broadcast was from. If you exploit this, it will work in single player preview mode, but it wont work in multiplayer preview mode
    or in a real published game.
--]]

-- We need some special work arounds in single player mode
local IsSinglePlayer = (Environment.IsLocalGame() and not Environment.IsMultiplayerPreview()) or Environment.IsSinglePlayerPreview()

--- Function thats similar to World.SpawnAsset but it also tables to set the return value
function OnSpawn(assetIdId, optionalParams, ret)
    ret = ret or {}
    ret.value = World.SpawnAsset(assetIdId, optionalParams)
end

--- Allows you to destroy a core object from a different environment
function OnDestroy(coreObject)
    if Object.IsValid(coreObject) then
        coreObject:Destroy()
    end
end

--- Generic function call with optional parameters
function OnFunction(func, ...)
    func(...)
end

function SetupServerGlobals()
    _G.StaticContext = {}
    _G.DefaultContext = {}
    _G.ServerContext = {}
    _G.ClientContext = {}

    function _G.StaticContext.SpawnAsset(assetId, optionalParams)
        local ret = {}
        Events.Broadcast("StaticSpawn", assetId, optionalParams, ret)
        return ret.value
    end

    function _G.DefaultContext.SpawnAsset(assetId, optionalParams)
        local ret = {}
        Events.Broadcast("DefaultSpawn", assetId, optionalParams, ret)
        return ret.value
    end

    function _G.ServerContext.SpawnAsset(assetId, optionalParams)
        local ret = {}
        Events.Broadcast("ServerSpawn", assetId, optionalParams, ret)
        return ret.value
    end

    function _G.ClientContext.SpawnAsset(assetId, optionalParams)
        local ret = {}
        Events.Broadcast("ClientSpawn", assetId, optionalParams, ret)
        Task.Wait()
        return ret.value
    end

    function _G.StaticContext.Destroy(coreObject)
        Events.Broadcast("StaticDestroy", coreObject)
    end

    function _G.DefaultContext.Destroy(coreObject)
        Events.Broadcast("DefaultDestroy", coreObject)
    end

    function _G.ServerContext.Destroy(coreObject)
        Events.Broadcast("ServerDestroy", coreObject)
    end

    function _G.ClientContext.Destroy(coreObject)
        Events.Broadcast("ClientDestroy", coreObject)
    end

    function _G.StaticContext.Call(func, ...)
        Events.Broadcast("StaticFunction", func, ...)
    end

    function _G.DefaultContext.Call(func, ...)
        Events.Broadcast("DefaultFunction", func, ...)
    end

    function _G.ServerContext.Call(func, ...)
        Events.Broadcast("ServerFunction", func, ...)
    end

    function _G.ClientContext.Call(func, ...)
        Events.Broadcast("ClientFunction", func, ...)
    end

end

function SetupClientGlobals()
    _G.StaticContext = {}
    _G.ClientContext = {}

    function _G.StaticContext.SpawnAsset(assetId, optionalParams)
        local ret = {}
        Events.Broadcast("StaticSpawn", assetId, optionalParams, ret)
        Task.Wait()
        return ret.value
    end

    function _G.ClientContext.SpawnAsset(assetId, optionalParams)
        local ret = {}
        Events.Broadcast("ClientSpawn", assetId, optionalParams, ret)
        Task.Wait()
        return ret.value
    end

    function _G.StaticContext.Destroy(coreObject)
        Events.Broadcast("StaticDestroy", coreObject)
    end

    function _G.ClientContext.Destroy(coreObject)
        Events.Broadcast("ClientDestroy", coreObject)
    end

    function _G.StaticContext.Call(func, ...)
        Events.Broadcast("StaticFunction", func, ...)
    end

    function _G.ClientContext.Call(func, ...)
        Events.Broadcast("ClientFunction", func, ...)
    end
end

-- Connect the events
if script.isStatic and script.parent.name ~= "StaticContext" then -- only way to detect the script is in the 'default' context
    Events.Connect("DefaultSpawn", OnSpawn)
    Events.Connect("DefaultDestroy", OnDestroy)
    Events.Connect("DefaultFunction", OnFunction)
    return -- default context returns as it does not need any single player hacks
elseif script.isStatic then
    Events.Connect("StaticSpawn", OnSpawn)
    Events.Connect("StaticDestroy", OnDestroy)
    Events.Connect("StaticFunction", OnFunction)
elseif script.isClientOnly then
    Events.Connect("ClientSpawn", OnSpawn)
    Events.Connect("ClientDestroy", OnDestroy)
    Events.Connect("ClientFunction", OnFunction)
    SetupClientGlobals()
elseif script.isServerOnly then
    Events.Connect("ServerSpawn", OnSpawn)
    Events.Connect("ServerDestroy", OnDestroy)
    Events.Connect("ServerFunction", OnFunction)
    SetupServerGlobals()
end


-- The code below are hacks to make the broadcasts work in single player preview mode like they would in multiplayer mode
if IsSinglePlayer then
    -- We want the static and the client script to have a queue for processing functions in their tick
    if script.isStatic or script.isClientOnly then
        local functionList = {}
        local paramsList = {}

        function AddFunction(func, params)
            table.insert(functionList, func)
            table.insert(paramsList, params)
        end

        function Tick()
            for i, func in ipairs(functionList) do
                -- Use a broadcast instead of invoking the function incase the functions use Task.Wait
                -- We could also use Task.Spawn, however Task.Spawn runs at the end of the frame
                -- where-as broadcasts run immediately
                if script.isStatic then
                    Events.Broadcast("StaticFunction", func, table.unpack(paramsList[i]))
                else
                    Events.Broadcast("ClientFunction", func, table.unpack(paramsList[i]))
                end
            end
            paramsList = {}
            functionList = {}
        end
    end

    -- Allow server to listen to client broadcasts and queue them to the client context
    if script.isServerOnly then
        local crossContextStatic = script:GetCustomProperty("StaticScript"):WaitForObject().context
        crossContextStatic.SERVER_CONTEXT = script.context

        function AddFunctionToClient(func, params)
            crossContextStatic.CLIENT_CONTEXT.AddFunction(func, params)
        end

        function OnClientSpawn(...)
            local params = table.pack(...)
            AddFunctionToClient(OnSpawn, params)
        end

        function OnClientDestroy(...)
            local params = table.pack(...)
            AddFunctionToClient(OnDestroy, params)
        end

        function OnClientFunction(...)
            local params = table.pack(...)
            AddFunctionToClient(OnFunction, params)
        end

        -- Listen for client functions
        Events.Connect("ClientSpawn",  OnClientSpawn)
        Events.Connect("ClientDestroy", OnClientDestroy)
        Events.Connect("ClientFunction", OnClientFunction)

    -- Allow client to listen to static broadcasts and queue them to the static context
    elseif script.isClientOnly then
        local crossContextStatic = script:GetCustomProperty("StaticScript"):WaitForObject().context
        crossContextStatic.CLIENT_CONTEXT = script.context

        function AddFunctionToStatic(func, params)
            crossContextStatic.AddFunction(func, params)
        end

        function OnStaticSpawn(...)
            local params = table.pack(...)
            AddFunctionToStatic(OnSpawn, params)
        end

        function OnStaticDestroy(...)
            local params = table.pack(...)
            AddFunctionToStatic(OnDestroy, params)
        end

        function OnStaticFunction(...)
            local params = table.pack(...)
            AddFunctionToStatic(OnFunction, params)
        end

        -- Listen for static functions
        Events.Connect("StaticSpawn",  OnStaticSpawn)
        Events.Connect("StaticDestroy", OnStaticDestroy)
        Events.Connect("StaticFunction", OnStaticFunction)
    end
end

