local CardCC_CardConstructor = require(script:GetCustomProperty('CardCC_CardConstructor'))
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

--- @class Card_Database_API
local api = {
    name = '',
    database = {},
    attributes = {},
    components = {},
    setups = {
        cardSetup = false,
        databaseSetup = false,
        renderSetup = false
    },
    cloneCardEvent = nil
    
}


local function CompletedSetups(database)
    for key, value in pairs(database.setups) do 
        if value == false then
            return false
        end
    end  
    return true
end

function api:CheckRegisteredComponents()
    for key, value in pairs(self.components) do
        if value == false then
            return false
        end
    end 
    self:CompleteSetups('cardSetup')
    return true
end

function api:ReturnCardById(id)
    for index, card in ipairs(self.database) do
        if card.id == id then
            return card
        end
    end
end

function api:Clone(id)
    local card =  self:ReturnCardById(id)
    if not card then return end 
    local cloneCard = CardCC_CardConstructor.Clone(card)
    cloneCard.destroyEvent = luaEvents.New()
    self.cloneCardEvent:Trigger(cloneCard,self)
    return cloneCard
end

-- Clears out our card database.  Used to make sure there isn't
-- any lingering data from previous games.
function api:ClearCardList()
    self.database = {}
end


--- @return Card
function api:RegisterNewCard(gameObject)
    local newCard = CardCC_CardConstructor.New(gameObject, self)
    table.insert(self.database, newCard)
    self.addedCardEvent:Trigger(newCard,self)
    return newCard
end

function api:NewAttribute(gameObject, catagory)
    local NewAttribute = gameObject:GetCustomProperties()
    self.attributes[catagory] = self.attributes[catagory] or {}
    NewAttribute.name = NewAttribute.name or gameObject.name
    table.insert(self.attributes[catagory], NewAttribute)
end

function api:AddComponent(name)
    self.components[name] = false
end

function api:FinishedAddingComponent(name)
    self.components[name] = true
    self:CheckRegisteredComponents()
end

function api:ReturnAllCards()
    return self.database
end

function api:WaitForCardById(id, timeout)
    local curtime = time()
    timeout = timeout or 1
    repeat
        local find = self:ReturnCardById(id)
        if find then
            return find
        end
        Task.Wait()
    until time() - curtime > timeout
end

function api:PrintCards()
    for index, card in ipairs(self.database) do
        print(card)
    end
end

function api:GetAttribute(catagory, attributename)
    if not self.attributes[catagory] then
        return
    end
    for index, value in ipairs(self.attributes[catagory]) do
        if value.name == attributename then
            return value
        end
    end
end

function api:GetAttributes(catagory)
    return self.attributes[catagory]
end
function api:GetAttibyteByProperty(catagory, property, value)
    if self.attributes[catagory] then
        for key, attribute in ipairs(self.attributes[catagory]) do
            if attribute[property] == value then
                return attribute
            end
        end
    end
end

function api:WaitUntilSetupState(state)
    while not self.setups[state] do
        Task.Wait()
    end
end
function api:CompleteSetups(state)
    if self.setups[state] == nil then
        return
    end
    self.setups[state] = true
end
function api:WaitUntilSetup()
    while not CompletedSetups(self) do
        Task.Wait()
    end
end
api.__index = api

local cardInterface = {
    defaultDatabase = {},
    allDatabases = {}
}
function cardInterface.NewDatabase(name)
    name = name or tostring(#cardInterface.allDatabases + 1)
    local self = setmetatable({}, api)
    self.__index = self
    self.name = name
    self.addedCardEvent = luaEvents.New()
    self.cloneCardEvent = luaEvents.New()
    self.addedAttributeEvent = luaEvents.New()
    self.cardTemplate = setmetatable({}, {__index = CardCC_Class_Card})  
    cardInterface.allDatabases[name] = self
    return self
end
function cardInterface.GetDatabase(name)
    return cardInterface.allDatabases[name]
end
function cardInterface.WaitForDatabase(name, timeOut)
    local endtime = time() + (timeOut or 0)
    while not cardInterface.allDatabases[name] do
        Task.Wait()
        if timeOut and endtime < time() then
            return
        end
    end
    return cardInterface.allDatabases[name]
end
return cardInterface
