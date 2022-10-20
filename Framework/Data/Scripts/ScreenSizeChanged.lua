while not _G.CC_Util do
    Task.Wait()
end
local luaEvents = _G.CC_Util:WaitForlibrary('Lua Event')

local ScreenSize = UI.GetScreenSize()
local ScreenSizeChecker = {
    screensizeUpdated = luaEvents.New()
}
Task.Spawn(function()
    while true do
        if ScreenSize ~= UI.GetScreenSize() then
            ScreenSize = UI.GetScreenSize()
            ScreenSizeChecker.screensizeUpdated:Trigger(ScreenSize)
        end
        Task.Wait()
    end
end)


return ScreenSizeChecker