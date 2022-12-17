--[[
	v1.0.1 - 2022/11/14
	by: blaking707, CommanderFoo
--]]
local EVENT_SHOW_CLASS_SELECT = "ClassSelection.Show"
local EVENT_CLASS_SELECTED = "ClassSelection.Selected"
local EVENT_SHOW_ABILITIES = "Abilities.Show"
local EVENT_ABILITIES_CLOSED = "Abilities.Closed"

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
		--CLASS_SELECT.visibility = Visibility.FORCE_OFF
		
	elseif currentState == STATES.abilities then
		--CLASS_SELECT.visibility = Visibility.FORCE_OFF

	elseif currentState == STATES.abilities then
		--ABILITIES.visibility = Visibility.FORCE_OFF
	end
	
	-- Enter new state
	if newState == STATES.hidden then
		-- Causes it to close, due to the AppStateCloseHook
		-- Similar to pressing [H] again
		AppState.SetLocalState(AppState.Ability)

	elseif newState == STATES.classSelect then
		--CLASS_SELECT.visibility = Visibility.INHERIT
		Events.Broadcast(EVENT_SHOW_CLASS_SELECT)
		
	elseif newState == STATES.subclassSelect then
		--CLASS_SELECT.visibility = Visibility.INHERIT
		Events.Broadcast(EVENT_SHOW_CLASS_SELECT)
		
	elseif newState == STATES.abilities then
		--ABILITIES.visibility = Visibility.INHERIT
		Events.Broadcast(EVENT_SHOW_ABILITIES)
	end
	
	currentState = newState
--[[
	local function StateUpdated()
		local actions = {

			[STATES.open] = function()
				if not isConnected then
					cursorStack:Enable()
					isConnected = true
				end
				ROOT.visibility = Visibility.INHERIT
				Toggle(ROOT.visibility)
			end,

			[STATES.closing] = function()
				local time = 0
				Events.Broadcast(PREPARE_TO_CLOSE)
	
				if currentState == STATES.closing then
					SetState(STATES.hidden)
				end
			end,
			[STATES.hidden] = function()
				if isConnected then
					cursorStack:Disable()
					isConnected = false
				end
				ROOT.visibility = Visibility.FORCE_OFF
				Toggle(ROOT.visibility)
			end,
		}
		if actions[currentState] then
			actions[currentState]()
		end
	end
]]
end


function Show()
	local CurrentCharacter = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	if not CurrentCharacter then
		return
	end
	
	local progression = CurrentCharacter:GetComponent('Progression')
	local class = CurrentCharacter:GetComponent("Class")

	--Check for MainClass --
	if progression:GetProgressionKey("ClassSelect") and not class:HasClass() then
		--table.insert(wantsToUpdate, CLASS_SELECT)
		--Events.Broadcast("ClassSelection.Show", false)
		SetState(STATES.classSelect)
		return
	end

	--Check for SubClass --
	if progression:GetProgressionKey("SubClassSelect") and class:IsMainClass() then
		--table.insert(wantsToUpdate, CLASS_SELECT)
		--Events.Broadcast("ClassSelection.Show")
		SetState(STATES.subclassSelect)
		return
	end

	-------------------------
	--Check for UnlockAbility --
--[[
	local function CheckTrue()
		for i = 1, #SlotTable, 1 do
			if progression:GetProgressionKey(SlotTable[i]) and not progression:GetProgressionKey(AcceptTable[i]) then
				local abilityKey = AbilityTable[i]
				local abilityId = ClassAPI.GetClass(class:GetClass())[abilityKey]
				if AbilityAPI.GetEntry(abilityId) then
					return true
				end
			end
		end
	end
]]
	--if CheckTrue() then
		--table.insert(wantsToUpdate, UNLOCK_BACKGROUND)
		SetState(STATES.abilities)
	--end
end

function Hide()
	SetState(STATES.hidden)
end

-- Called when the key shortcut for abilities is pressed
Input.actionPressedEvent:Connect(function(player, action)
    if action == "OpenAbility" then
		if currentState == STATES.abilities and CLOSE_BUTTON.visibility == Visibility.INHERIT then
			-- We're in a normal ability screen, with no unlocking or upgrade animation active
			Events.Broadcast(EVENT_ABILITIES_CLOSED)
		else
			-- Let the `EventAppstateConnect` component decide if we should change app state or not
        	Events.Broadcast("OpenAbilities")
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
	-- TODO: Loop states in case of multiple unlocks available
	SetState(STATES.hidden)
end)



if true then
	return -- End here
end






local Priority = {
	CLASS_SELECT,
	UNLOCK_BACKGROUND,
	ABILITIES
}
local wantsToUpdate = {
	ABILITIES
}

local AcceptTable = {
	"AcceptSlot1",
	"AcceptSlot2",
	"AcceptSlot3",
	"AcceptSlot4",
	"AcceptSlot5",
}

local SlotTable = {
	"AbilitySlot1",
	"AbilitySlot2",
	"AbilitySlot3",
	"AbilitySlot4",
	"AbilitySlot5",
}
local AbilityTable = {
	"Ability1",
	"Ability2",
	"Ability3",
	"Ability4",
	"Ability5",
}
local function CompleteUnlock(type)
	Events.BroadcastToServer('CompletedUnlock', type)
end

local function Check()
	local CurrentCharacter = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	if not CurrentCharacter then
		return
	end
	wantsToUpdate = {}
	local progression = CurrentCharacter:GetComponent('Progression')
	local class = CurrentCharacter:GetComponent("Class")

	--Check for MainClass --
	if progression:GetProgressionKey("ClassSelect") and not class:HasClass() then
		table.insert(wantsToUpdate, CLASS_SELECT)
		Events.Broadcast("ClassSelection.Show", false)
	end


	-------------------------
	--Check for SubClass --
	if progression:GetProgressionKey("SubClassSelect") and class:IsMainClass() then
		table.insert(wantsToUpdate, CLASS_SELECT)
		Events.Broadcast("ClassSelection.Show")
	end

	-------------------------
	--Check for UnlockAbility --

	local function CheckTrue()
		for i = 1, #SlotTable, 1 do
			if progression:GetProgressionKey(SlotTable[i]) and not progression:GetProgressionKey(AcceptTable[i]) then
				local abilityKey = AbilityTable[i]
				local abilityId = ClassAPI.GetClass(class:GetClass())[abilityKey]
				if AbilityAPI.GetEntry(abilityId) then
					return true
				end
			end
		end
	end

	if CheckTrue() then
		table.insert(wantsToUpdate, UNLOCK_BACKGROUND)
	end

	-------------------------
	table.insert(wantsToUpdate, ABILITIES)
	table.sort(wantsToUpdate, function(a, b)
		local aPriority = #Priority
		local bPriority = #Priority

		for index, value in ipairs(Priority) do
			if value == a then
				aPriority = index
			end

			if value == b then
				bPriority = index
			end
		end
		return aPriority < bPriority
	end)
end

function Toggle(newState)
	Check()
	local States = {
		[Visibility.FORCE_OFF] = function()
			Events.Broadcast(CLOSE_EVENT)
			for index, value in ipairs(Priority) do
				value.visibility = Visibility.FORCE_OFF
			end
		end,
		[Visibility.INHERIT] = function()
			Events.Broadcast(CLOSE_EVENT)
			for index, value in ipairs(Priority) do
				value.visibility = Visibility.FORCE_OFF
			end
			Events.Broadcast(OPEN_EVENT, wantsToUpdate[1])
			wantsToUpdate[1].visibility = Visibility.INHERIT
		end
	}

	if States[newState] then
		States[newState]()
	end
end


function Refresh()
	Toggle(ROOT.visibility)
end

--function PanelComplete()
--	if AppState.GetLocalState() == AppState.Ability then
--		Events.Broadcast("OpenAbilities")
--	end
--end

Events.Connect("Ability_PanelRefresh", Refresh)
--Events.Connect("Ability_PanelComplete", PanelComplete)
