local API = {
    registered = {}
}
API.version = 0.1
API.name = 'UI_CursorHandler'
API.desc = 'handler for UI cursor so mouse will be visible with UI open'
local toggleFunc = function()
end

local isOpen = false

--[[if not Environment.IsPreview() then 
    UI.SetCursorLockedToViewport(true)
end ]]
function Open()
    if isOpen then
        return
    end
    isOpen = true
    --if not UI.CanCursorInteractWithUI() or not UI.IsCursorVisible() then
    --UI.SetCanCursorInteractWithUI(true)
    --UI.SetCursorVisible(true)
    _G.CursorStack.Enable()
    --end
    toggleFunc = function()
    end
end

function Close()
    if not isOpen then
        return
    end
    isOpen = false
    --if UI.CanCursorInteractWithUI() or UI.IsCursorVisible() then
    --UI.SetCanCursorInteractWithUI(false)
    --UI.SetCursorVisible(false)
    _G.CursorStack.Disable()
    --end
    toggleFunc = function()
    end
end

function API:Check()
    if #self.registered > 0 then
        Open()
    else
        Close()
    end
end

function API:RegisterOpen(id)
    table.insert(self.registered, id)
    self:Check()
end

function API:UnRegisterOpen(id)
    for key, value in pairs(self.registered) do
        if value == id then
            table.remove(self.registered, key)
            break
        end
    end
    self:Check()
end

--[[
    
    Task.Spawn(
        function()
            toggleFunc()
            Task.Wait()
        end
    ).repeatCount = -1
    
]]
return API
