local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local UNLOCK_BACK_GROUND = script:GetCustomProperty('UnlockBackGround'):WaitForObject()
local ABILITY_POINTS = script:GetCustomProperty('AbilityPoints'):WaitForObject()
local MAIN_CLASS_SELECT = script:GetCustomProperty('MainClassSelect'):WaitForObject()
local SUB_CLASS_SELECT = script:GetCustomProperty('SubClassSelect'):WaitForObject()

local EquipAPI = _G['Character.EquipAPI']
local LOCAL_PLAYER = Game.GetLocalPlayer()
local lastState = nil

local Priority = {
    MAIN_CLASS_SELECT,
    SUB_CLASS_SELECT,
    UNLOCK_BACK_GROUND,
    ABILITY_POINTS
}
local wantsToUpdate = {
    ABILITY_POINTS
}

local function CompleteUnlock(type)
    Events.BroadcastToServer('CompletedUnlock', type)
end

local function Check()
    local CurrentCharacter = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
    if not CurrentCharacter then
        return
    end
    local progression = CurrentCharacter:GetComponent('Progression')

    --Check for MainClass --

    -------------------------
end
function Toggle(newState)
    local States = {
        [Visibility.FORCE_OFF] = function()
            for index, value in ipairs(Priority) do
                value.visibility = Visibility.FORCE_OFF
            end
        end,
        [Visibility.INHERIT] = function()
            wantsToUpdate[1].visibility = Visibility.INHERIT
        end
    }

    if States[newState] then
        States[newState]()
    end
end

function Tick()
    if lastState ~= ROOT.visibility then
        lastState = ROOT.visibility
        Toggle(ROOT.visibility)
    end
end
