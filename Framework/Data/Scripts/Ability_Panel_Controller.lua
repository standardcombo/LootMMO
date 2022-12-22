--[[
	v1.0.1 - 2022/11/14
	by: blaking707, CommanderFoo
--]]
local EVENT_SHOW_CLASS_SELECT = "ClassSelection.Show"
local EVENT_CLASS_SELECTED = "ClassSelection.Selected"
local EVENT_SHOW_ABILITIES = "Abilities.Show"
local EVENT_HIDE_ABILITIES = "Abilities.Hide"
local EVENT_ABILITIES_CLOSED = "Abilities.Closed"
local EVENT_OPEN_ABILITIES = "OpenAbilities" --EventAppstateConnect


local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local ABILITIES = script:GetCustomProperty("Abilities"):WaitForObject()
--local UNLOCK_BACKGROUND = script:GetCustomProperty("UnlockBackGround"):WaitForObject()
local CLASS_SELECT = script:GetCustomProperty("ClassSelect"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()

--local CLOSE_EVENT = "Ability_Close"
--local PREPARE_TO_CLOSE = "Ability_Prepare"
--local OPEN_EVENT = "Ability_OpenPanel"

local AppState    = _G["AppState"]
local EquipAPI    = _G['Character.EquipAPI']
local ClassAPI    = _G["Character.Classes"]
local AbilityAPI  = _G["Ability.Equipment"]
local cursorStack = _G.CursorStack

local LOCAL_PLAYER = Game.GetLocalPlayer()


local STATES = {
	hidden = 1,
	classSelect = 2,
	subclassSelect = 3,
	abilities = 4,
}
local currentState = STATES.hidden


function SetState(newState)
	if currentState == newState then return end
	
	-- Set cursor state
	if currentState == STATES.hidden then
		cursorStack:Enable()

	elseif newState == STATES.hidden then
		cursorStack:Disable()
	end

	-- Exit previous state
	if currentState == STATES.classSelect then
		-- nothing
		
	elseif currentState == STATES.abilities then
		-- nothing

	elseif currentState == STATES.abilities then
		-- nothing
	end
	
	-- Enter new state
	if newState == STATES.hidden then
		-- Causes it to close, due to the AppStateCloseHook
		-- Similar to pressing [H] again
		AppState.SetLocalState(AppState.Ability)

	elseif newState == STATES.classSelect then
		Events.Broadcast(EVENT_SHOW_CLASS_SELECT)
		
	elseif newState == STATES.subclassSelect then
		Events.Broadcast(EVENT_SHOW_CLASS_SELECT)
		
	elseif newState == STATES.abilities then
		Events.Broadcast(EVENT_SHOW_ABILITIES)
	end
	
	currentState = newState
end

local function CheckPendingClassOrSubclassAndSetState()
	local CurrentCharacter = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	if not CurrentCharacter then
		return false
	end
	
	local progression = CurrentCharacter:GetComponent('Progression')
	local class = CurrentCharacter:GetComponent("Class")

	--Check for MainClass --
	if progression:GetProgressionKey("ClassSelect") and not class:HasClass() then
		SetState(STATES.classSelect)
		return true
	end

	--Check for SubClass --
	if progression:GetProgressionKey("SubClassSelect") and class:IsMainClass() then
		SetState(STATES.subclassSelect)
		return true
	end
	return false
end

function Show()
	if not CheckPendingClassOrSubclassAndSetState() then
		SetState(STATES.abilities)
	end
end

function Hide()
	SetState(STATES.hidden)
end

-- Called when the key shortcut for abilities is pressed
Input.actionPressedEvent:Connect(function(player, action)
    if action == "OpenAbility" then
		if currentState == STATES.abilities and CLOSE_BUTTON.visibility == Visibility.INHERIT then
			-- We're in a normal ability screen, with no unlocking or upgrade animation active
			Hide() --Changes app state
			Events.Broadcast(EVENT_HIDE_ABILITIES) --Tell the Abilities screen to hide itself too
		else
			-- Let the `EventAppstateConnect` component decide if we should change app state or not
        	Events.Broadcast(EVENT_OPEN_ABILITIES)
		end
    end
end)

Events.Connect(AppState.EnterKey, function(_, newState, oldstate)
	if newState == AppState.Ability and oldstate ~= AppState.Ability then
		Show()
	end
end)

Events.Connect(AppState.ExitKey, function(_, oldstate, newState)
	if oldstate == AppState.Ability and newState ~= AppState.Ability then
		Hide()
	end
end)

Events.Connect(EVENT_CLASS_SELECTED, function(classChoice)
	Task.Wait()
	SetState(STATES.abilities)
end)

Events.Connect(EVENT_ABILITIES_CLOSED, function(classChoice)
	Task.Wait()
	
	if not CheckPendingClassOrSubclassAndSetState() then
		SetState(STATES.hidden)
	end
end)

