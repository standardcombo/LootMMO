local appstate = _G.AppState

local NEWAPPSTATE = script:GetCustomProperty('appstate')
local EVENT = script:GetCustomProperty('Event')
local MIN_LEVEL = script:GetCustomProperty('MinLevel')

local acceptingVisibilities = {}
if not appstate[NEWAPPSTATE] then
    return
end
for key, value in pairs(script:GetCustomProperties()) do
    if appstate[key] then
        acceptingVisibilities[appstate[key]] = value
    end
end

function CanChange(newState)
    return acceptingVisibilities[newState]
end

function EventTriggered()
	-- Check if current state is a valid transition
    if not appstate[NEWAPPSTATE] then
        return
    end
    if not CanChange(appstate.GetLocalState()) then
    	return
    end
    -- Check player level requirement
    local player = Game.GetLocalPlayer()
    local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
	if char then
		local level = char:GetComponent("Level"):GetLevel()
    	if level < MIN_LEVEL then
    		return
    	end
    end
    -- Change the app state
    appstate.SetLocalState(appstate[NEWAPPSTATE])
end

if EVENT ~= '' then
    Events.Connect(EVENT, EventTriggered)
end
