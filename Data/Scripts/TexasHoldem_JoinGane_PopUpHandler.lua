local UI_CURSOR_HANDLER = require(script:GetCustomProperty('UI_CursorHandler'))
local TEXAS_POKER_SINGLETON_POPUP = require(script:GetCustomProperty('TexasPoker_Singleton_Popup'))
local popup = script.parent

if Object.IsValid(TEXAS_POKER_SINGLETON_POPUP.main) then
    popup:Destroy()
else
    TEXAS_POKER_SINGLETON_POPUP.main = popup
end

UI_CURSOR_HANDLER:RegisterOpen(script)
script.destroyEvent:Connect(
    function()
        UI_CURSOR_HANDLER:UnRegisterOpen(script)
    end
)
