local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local UNLOCK_BACKGROUND = script:GetCustomProperty('UnlockBackGround'):WaitForObject()
local ABILITY_POINTS = script:GetCustomProperty('AbilityPoints'):WaitForObject()
local CLASS_SELECT = script:GetCustomProperty("classSelect"):WaitForObject()

local CLOSE_EVENT = "Ability_Close"
local PREPARE_TO_CLOSE = "Ability_Prepare"
local OPEN_EVENT = "Ability_OpenPanel"

local AppState    = _G["AppState"]
local EquipAPI    = _G['Character.EquipAPI']
local ClassAPI    = _G["Character.Classes"]
local AbilityAPI  = _G["Ability.Equipment"]
local cursorStack = _G.CursorStack

local LOCAL_PLAYER = Game.GetLocalPlayer()
local lastState    = nil
local isConnected  = false

local STATES = {
	closed = 1,
	open = 2,
	closing = 3,
}
local state = STATES.closed

local Priority = {
	CLASS_SELECT,
	UNLOCK_BACKGROUND,
	ABILITY_POINTS
}
local wantsToUpdate = {
	ABILITY_POINTS
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
				if AbilityAPI.GetEntry(ClassAPI.GetClass(class:GetClass())[AbilityTable[i]]) then
					return true
				end
			end
		end
	end

	if CheckTrue() then
		table.insert(wantsToUpdate, UNLOCK_BACKGROUND)
	end

	-------------------------
	table.insert(wantsToUpdate, ABILITY_POINTS)
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

local function SetState(newState)
	if state == newState then return end
	state = newState
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
				while state == STATES.closing and time <= .65 do
					time = time + Task.Wait()
				end
				if state == STATES.closing then
					SetState(STATES.closed)
				end
			end,
			[STATES.closed] = function()
				if isConnected then
					cursorStack:Disable()
					isConnected = false
				end
				ROOT.visibility = Visibility.FORCE_OFF
				Toggle(ROOT.visibility)
			end,
		}
		if actions[state] then
			actions[state]()
		end
	end

	StateUpdated()
end

function Refresh()
	Toggle(ROOT.visibility)
end

function PanelComplete()
	if AppState.GetLocalState() == AppState.Ability then
		Events.Broadcast("OpenAbilities")
	end
end

Events.Connect(AppState.EnterKey, function(_, newState, oldstate)
	if newState == AppState.Ability and oldstate ~= AppState.Ability then
		SetState(STATES.open)
	end
end)

Events.Connect(AppState.ExitKey, function(_, oldstate, newState)
	if oldstate == AppState.Ability and newState ~= AppState.Ability then
		if state == STATES.open then
			SetState(STATES.closing)
		end
	end
end)

Events.Connect("Ability_PanelRefresh", Refresh)
Events.Connect("Ability_PanelComplete", PanelComplete)
