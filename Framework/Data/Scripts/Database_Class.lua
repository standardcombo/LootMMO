--- @class database
local database = {
    data = {},
    hasSetup = false
}

function database:AddElement(element)
    table.insert(self.data, element)
end
function database:RemoveElement(key, index)
    local entry = self:GetElementFromKey(key, index)
    if entry then
        for i = 1, #self.data do
            if self.data[i] == entry then
                table.remove(self.data, i)
                return
            end
        end
    end
end

function database:WaitUntilSetup()
    while not self.hasSetup do
        Task.Wait()
    end
end
function database:CompleteSetup()
    self.hasSetup = true
end
function database:GetElementFromKey(key, index)
    for i = 1, #self.data do
        local element = self.data[i]
        if element[key] == index then
            return element
        end
    end
end

local constructor = {}

function constructor:New()
    local newdatabase = setmetatable({}, {__index = database})
    newdatabase.data = {}
    return newdatabase
end

return constructor
