local AppState = _G['AppState']

local acceptingAppStates = {
    AppState.Adventure,
    AppState.SocialHub,
    AppState.Inventory,
    AppState.Anvil,
    AppState.Shop,
    AppState.BountyBoard
}

function OpenPanel()
    local function IsAccepted(state)
        for index, value in ipairs(acceptingAppStates) do
            if value == state then
                return true
            end
        end
    end

    if IsAccepted(AppState:GetLocalState()) then
        AppState.SetLocalState(AppState.Ability)
    end
end

function ClosePanel()
end

Events.Connect('OpenAbilities', OpenPanel)
