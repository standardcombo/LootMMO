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
local WorldSpawnCard = script:GetCustomProperty('WorldSpawnCard')
local CardCC_Class_Card = require(script:GetCustomProperty('CardCC_Class_Card'))

function GrabUtils()
    local endtime = time() + 1
    while not _G.CC_Util do
        -- statements
        Task.Wait()
        if endtime < time() then
            error('No CC_Util found')
            return
        end
    end
    return _G.CC_Util
end

local utils = GrabUtils()
local luaEvents = utils:WaitForlibrary('Lua Event', 1)

---@class CardContructor
local Contructor = {}

Contructor.cloneCardEvent = luaEvents.New()
function Contructor.Clone(MainCard)
    local self = setmetatable({}, {__index = MainCard})
    self.listeners = {}
    self.data = {}
    for key, value in pairs(MainCard.data) do
        self.data[key] = value
    end
    self.updateEvent = luaEvents.New()
    if Environment.IsClient() then
        self.updateTick =
            Task.Spawn(
            function() 
                if self.updateEvent.isUsed then
                    self.updateEvent:Trigger(self)
                end     
                Task.Wait()
            end
        )
        self.updateTick.repeatCount = -1
    end
    
    Contructor.cloneCardEvent:Trigger(self)
    return self
end
Contructor.newCardEvent = luaEvents.New()
function Contructor.New(gameObject, database)
    local self = setmetatable({}, {__index = database.cardTemplate})
    local properties = gameObject:GetCustomProperties()
    self.data = {
        ability = {
            activate = function(self, ...)
                return
            end
        },
        image = nil,
        front = nil,
        back = nil
    }

    for key, value in pairs(properties) do
        if type(value) == 'string' then
            local attr = value:sub(1, 1)
            if attr == '@' then
                if database then
                    local data = value:sub(2, #value)
                    local category, attribute = CoreString.Split(data, '-')

                    local attrtable = database:GetAttribute(category, attribute)
                    if attrtable then
                        value = attrtable
                    end
                end
            else
                local id = CoreString.Split(value, ':')
                if #id >= 14 and #id <= 18 then
                    pcall(
                        function()
                            value = require(value)
                        end
                    )
                end
            end
        end

        if self[key] then
            self[key] = value
        end
        self.data[key] = value
    end

    Contructor.newCardEvent:Trigger(database, self)
    return self
end

return Contructor
