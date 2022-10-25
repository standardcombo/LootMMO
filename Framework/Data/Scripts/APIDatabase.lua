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
    This script parses and stores data. Data can be provided from multiple sources and will be consolidated into a
    single traversable set.
--]]

-- Private Variables
local changeHandlers = {}
local currentHandleId = 0

---@class APIDatabase
local API = {}

local DATA_TYPE = "dataType"


---Registers a callback that will fire each time data is added to the Database. 
---A handle id is returned that can be used to unregister the callback later.
---@param handler function
---@return integer
function API.RegisterDataChangeHandler(handler)
    currentHandleId = currentHandleId + 1
    changeHandlers[currentHandleId] = handler

    return currentHandleId
end

---Unregisters a callback using the supplied handle id.
---@param handleId integer
function API.UnregisterDataChangeHandler(handleId)
    changeHandlers[handleId] = nil
end

---Iterates over a CoreObject and its children and converts the hierarchy and custom properties into a
---set of nested data. Data can optionally be added to the database.
---@param coreObject CoreObject
---@param includeCoreObject boolean
---@param appendData boolean
---@return table
function API.ParseCoreObject(coreObject, includeCoreObject, appendData)
    local data = {}

    if includeCoreObject then
        ParseData_R(coreObject, data)
    else
        for _, child in pairs(coreObject:GetChildren()) do
            ParseData_R(child, data)
        end
    end

    if appendData then
        API.AppendData(data)
    end

    if includeCoreObject then
        return data[coreObject.name]
    else
        return data
    end
end

---Appends a set of data to the Database. Will merge data in without overwriting nested structures.
---@param data table
function API.AppendData(data, root)
    if root ~= nil then
        assert(type(root) == "string")
        data = {[root] = data}
    end
    AddData_R(data, API)

    for _, handler in pairs(changeHandlers) do
        handler()
    end
end

---Prints all data into the Event Log.
function API.PrintData()
    PrintData_R(API, 0)
end

--- Checks if a property in a table matches the filter
function IsMatch(dataRoot, property, filter)
    -- This is for 'or' tags. This can be expanded later to support AND and minus etc
    local searchTags = { CoreString.Split(filter, ",", { removeEmptyResults  = true }) }
    for i, tag in ipairs(searchTags) do
        searchTags[i] = CoreString.Trim(tag)
    end

    local tagString = dataRoot[property]
    local success = false
    if tagString and type(tagString) == "string" then
        local tagSet = {}
        for _, tag in ipairs({CoreString.Split(tagString, ",", { removeEmptyResults  = true })}) do
            tagSet[CoreString.Trim(tag)] = true
        end
        for _, searchTag in ipairs(searchTags) do
            if tagSet[searchTag] then
                success = true
            end
        end
    end
    return success
end

--- Checks if any of the values in a table have a property that matches the filter
function FindMatches(dataRoot, property, filter)
    -- This is for 'or' tags. This can be expanded later to support AND and minus etc
    local searchTags = { CoreString.Split(filter, ",", { removeEmptyResults  = true }) }
    for i, tag in ipairs(searchTags) do
        searchTags[i] = CoreString.Trim(tag)
    end
    local results = {}
    for key, value in pairs(dataRoot) do
        if type(value) == "table" then
            local tagString = value[property]
            local success = false
            if tagString and type(tagString) == "string" then
                local tagSet = {}
                for _, tag in ipairs({CoreString.Split(tagString, ",", { removeEmptyResults  = true })}) do
                    tagSet[CoreString.Trim(tag)] = true
                end
                for _, searchTag in ipairs(searchTags) do
                    if tagSet[searchTag] then
                        success = true
                    end
                end
            end
            if success then
                results[key] = value
            end
        end
    end
    return results
end

function Find(dataRoot, predicate)
    local results = {}
    for key, value in pairs(dataRoot) do
        if type(value) == "table" then
            if predicate(key, value) then
                results[key] = value
            end
        end
    end
    return results
end

function db_pairs_iter(t, k)
    local v
    repeat
        k, v = next(t, k)
    until k == nil or (type(k) == "string" and type(v) == "table")
    return k, v
end

function db_pairs(t)
    return db_pairs_iter, t, nil
end


---Recursive function that iterates over an object and its children converting their custom properties into a
---set of nested data.
---@param object table
---@param dataRoot table
function ParseData_R(object, dataRoot)
    if string.sub(object.name, 1, 2) ~= "--" and object.GetCustomProperties and object.GetChildren then
        -- Get the id
        local id = object.name

        -- Create a node
        dataRoot[id] = {}

        -- Parse custom properties
        local props = object:GetCustomProperties()
        for propName, propValue in pairs(props) do
            if type(propValue) == "userdata" and propValue:IsA("CoreObjectReference") then
                if propValue.isAssigned then
                    -- Use a timeout in case a client reference is being waited for on the server
                    dataRoot[id][propName] = propValue:WaitForObject(0.1)
                else
                    dataRoot[id][propName] = nil
                end
            else
                dataRoot[id][propName] = propValue
            end
        end

        -- Recurse down the tree
        for index, child in ipairs(object:GetChildren()) do
            ParseData_R(child, dataRoot[id])
            dataRoot[index] = dataRoot[id]
        end

        -- Add functions
        dataRoot.__type = DATA_TYPE
        dataRoot.IsMatch = IsMatch
        dataRoot.FindMatches = FindMatches
        dataRoot.Find = Find
    end
end

---Recursive function that iterates over data and adds it to the Database by key.
---@param data table
---@param dataRoot table
function AddData_R(data, dataRoot)
    if not dataRoot then return end

    -- We are copying from a table that is marked as 'data' so we setup functions
    if data.__type == DATA_TYPE then
        local newAppendedEntries = {}
        for key, value in pairs(data) do
            if type(key) ~= "number" then
                if type(value) == "table" then
                    if not dataRoot[key] then
                        dataRoot[key] = {}
                        newAppendedEntries[value] = dataRoot[key]
                    end
                    AddData_R(value, dataRoot[key])
                else
                    dataRoot[key] = value
                end
            end
        end

        -- For any new entries, also put them in as an index
        for index, value in pairs(data) do
            if newAppendedEntries[value] then
                dataRoot[#dataRoot+1] = newAppendedEntries[value]
            end
        end
        -- Add functions
        dataRoot.IsMatch = IsMatch
        dataRoot.FindMatches = FindMatches
        dataRoot.Find = Find

        -- Override the pairs so we don't loop both the array indexes and the table pairs
        local mt = {
            __pairs = db_pairs,
        }
        setmetatable(dataRoot, mt)
    else
        -- Otherwise do a regular deep copy
        for key, value in pairs(data) do
            if type(value) == "table" then
                if not dataRoot[key] then
                    dataRoot[key] = {}
                end
                AddData_R(value, dataRoot[key])
            else
                dataRoot[key] = value
            end
        end
    end

end

---Recursive function that iterates over data and prints it to the Event Log.
---@param dataRoot table
---@param indent number
function PrintData_R(dataRoot, indent)
    if not dataRoot then return end

    local indentString = string.rep("    ", indent)
    for key, value in pairs(dataRoot) do
        if type(value) == "function" then
            -- Ignore
        elseif type(value) == "table" then
            print(indentString .. key)
            PrintData_R(value, indent + 1)
        else
            print(indentString .. key .. " = " .. tostring(value))
        end
    end
end

return API