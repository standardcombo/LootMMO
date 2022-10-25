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
    This file contains some helper functions which allow instances to have a 'parentId' field and the code
    inside this file will build a node tree, and also fill out the parent and children fields of an instance
    For networking and storage, we never send a list of all the children and parents, we simply allow the instance
    to have a 'parentId' field which can hold the 'id' of another instance. If there is no parentId, then we assume
    the instance is not parented to another instance.
--]]


---@class APICoreHierarchyTreeHelper
local API = {}

---@class node
---@field children table<node, any>
---@field instance instance
---@field parent node


---Takes a set of instances, and builds a tree
---@param instances table<instances, any>
---@return node
---@return table<instance, node>
function API.GetInstanceTree(instances)
    local root = {} ---@type node
    root.children = {} ---@type table<node, any>
    local instanceToNode = {} ---@type table<instance, node>
    local idToNode = {} ---@type table<integer, node>

    for instance in pairs(instances) do
        local node = {}---@type node
        node.children = {}
        node.instance = instance
        node.parent = root
        instanceToNode[instance] = node
        idToNode[instance.id] = node
    end

    for instance, node in pairs(instanceToNode) do
        -- If we have a parentId that exists or is greater than 0 then find the parnet
        if instance.parentId and instance.parentId > 0 then
            -- todo. If the parentId couldnt be found, it means the parent was destroyed and the child still exists
            local parentNode = idToNode[instance.parentId]
            node.parent = parentNode
            parentNode.children[node] = true
        else
            -- No parent found so put it on the root
            root.children[node] = true
            node.parent = root
        end
    end

    -- Assuming everything went well and there were no errors, maybe we should simply copy over
    -- the children and parent to all the instances
    return root, instanceToNode
end

---Updates the children and parent fields by looking at the 'parentId' on each instance
---@param instances table<instance, any>
function API.UpdateInstanceChildrenAndParent(instances)
    local root, instanceToNode = API.GetInstanceTree(instances)

    for instance, node in pairs(instanceToNode) do
        instance.parent = node.parent.instance

        -- Copy the children over
        instance.children = {}
        for childNode in pairs(node.children) do
            instance.children[childNode.instance] = true
        end
    end
end

---Sorts a set of instances so the parents are first
---@param instances table<instance, any>
---@return instance[]
function API.SortParentsFirst(instances)
    local sortedTable = {}
    local i = next(instances)
    while i do
        while i.parent and instances[i.parent] do
            i = i.parent
        end
        table.insert(sortedTable, i)
        instances[i] = nil -- remove from set
        i = next(instances) -- get any item from set
    end
    return sortedTable
end


return API