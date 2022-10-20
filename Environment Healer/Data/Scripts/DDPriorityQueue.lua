--[[
    DDPathfinding
    v0.8.0
    by: truedarkdev (DarkDev#3167 at discord)

    This is an altered version made by DarkDev, based on the original PriorityQueue made by Lucas de Morais Siqueira.
]]--

--[[  Priority Queue implemented in lua, based on a binary heap.

Copyright (C) 2017 Lucas de Morais Siqueira <lucas.morais.siqueira@gmail.com>

License: zlib

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgement in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
]]--

local TYPE_BHEAP = 1
local TYPE_BHEAP_OPTIMIZED = 2

local type = TYPE_BHEAP_OPTIMIZED

local DDPriorityQueue = {}
DDPriorityQueue.__index = DDPriorityQueue

function DDPriorityQueue.New()
    local pq = setmetatable({}, DDPriorityQueue)
    pq:initialize()
    return pq
end

if type == TYPE_BHEAP then
    function DDPriorityQueue:initialize()
        --[[  Initialization.

        Example:
            PriorityQueue = require("priority_queue")
            pq = PriorityQueue()
        ]]--
        self.heap = {}
        self.num = 0
    end

    function DDPriorityQueue:empty()
        return self.num == 0
    end

    function DDPriorityQueue:reset()
        self.heap = {}
        self.num = 0
    end

    function DDPriorityQueue:size()
        return self.num
    end

    function DDPriorityQueue:swim()
        -- Swim up on the tree and fix the order heap property.
        local heap = self.heap
        local i = self.num
        local floor = math.floor

        while floor(i / 2) > 0 do
            local half = floor(i / 2)
            if heap[i][2] < heap[half][2] then
                heap[i], heap[half] = heap[half], heap[i]
            end
            i = half
        end
    end

    function DDPriorityQueue:put(v, p)
        --[[ Put an item on the queue.

        Args:
            v: the item to be stored
            p(number): the priority of the item
        ]]--
        --

        self.heap[self.num + 1] = {v, p}
        self.num = self.num + 1
        self:swim()
    end

    function DDPriorityQueue:sink()
        -- Sink down on the tree and fix the order heap property.
        local size = self.num
        local heap = self.heap
        local i = 1

        while (i * 2) <= size do
            local mc = self:min_child(i)
            if heap[i][2] > heap[mc][2] then
                heap[i], heap[mc] = heap[mc], heap[i]
            end
            i = mc
        end
    end

    function DDPriorityQueue:min_child(i)
        if (i * 2) + 1 > self.num then
            return i * 2
        else
            if self.heap[i * 2][2] < self.heap[i * 2 + 1][2] then
                return i * 2
            else
                return i * 2 + 1
            end
        end
    end

    function DDPriorityQueue:pop()
        -- Remove and return the top priority item
        local heap = self.heap
        local retval = heap[1][1]
        heap[1] = heap[self.num]
        heap[self.num] = nil
        self.num = self.num - 1
        self:sink()
        return retval
    end
end -- type == TYPE_BHEAP

if type == TYPE_BHEAP_OPTIMIZED then
    function DDPriorityQueue:initialize()
        self.heap = {}
        self.num = 0
    end

    function DDPriorityQueue:empty()
        return self.num == 0
    end

    function DDPriorityQueue:size()
        return self.num
    end

    function DDPriorityQueue:reset()
        self.num = 0
    end

    function DDPriorityQueue:put(dataInt36Bit, priorityInt28Bit)
        local heap = self.heap
        self.num = self.num + 1
        heap[self.num] = (priorityInt28Bit << 36) + dataInt36Bit

        -- Swim the new value to its correct place in the heap
        local i = self.num
        local half = i // 2
        while half > 0 do
            local child = heap[i]
            local parent = heap[half]
            if child < parent then
                -- Swap child and parent
                heap[i], heap[half] = parent, child
            else
                return
            end
            i = half
            half = i // 2
        end
    end

    function DDPriorityQueue:pop()
        -- Remove and return the top priority item
        local heap = self.heap

        local packData = heap[1]
        local value = packData & 0xFFFFFFFFF -- (36bit)
        heap[1] = heap[self.num]
        self.num = self.num - 1

        -- Sink down on the tree and fix the order heap property
        local size = self.num
        local i = 1

        local ii = i * 2
        while ii <= size do
            local iiAdd = ii + 1
            local leftChild = heap[ii]
            local rightChild = heap[iiAdd]
            local parent = heap[i]

            -- Get which of the children is the lowest
            if (iiAdd > size) or (leftChild < rightChild) then
                if parent > leftChild then
                    -- Swap leftChild and parent
                    heap[i], heap[ii] = leftChild, parent
                else
                    return value
                end
                i = ii
            else
                if parent > rightChild then
                    -- Swap rightChild and parent
                    heap[i], heap[iiAdd] = rightChild, parent
                else
                    return value
                end
                i = iiAdd
            end

            ii = i * 2
        end

        return value
    end
end -- type == TYPE_BHEAP_OPTIMIZED

return DDPriorityQueue