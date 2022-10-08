local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local UNLOCK_BACKGROUND = script:GetCustomProperty('UnlockBackGround'):WaitForObject()
local ABILITY_POINTS = script:GetCustomProperty('AbilityPoints'):WaitForObject()
local MAIN_CLASS_SELECT = script:GetCustomProperty('MainClassSelect'):WaitForObject()
local SUB_CLASS_SELECT = script:GetCustomProperty('SubClassSelect'):WaitForObject()

local AppState   = _G["AppState"]
local EquipAPI   = _G['Character.EquipAPI']
local ClassAPI   = _G["Character.Classes"]
local AbilityAPI = _G["Ability.Equipment"]

local LOCAL_PLAYER = Game.GetLocalPlayer()
local lastState = nil

local Priority = {
	MAIN_CLASS_SELECT,
	SUB_CLASS_SELECT,
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
		table.insert(wantsToUpdate, MAIN_CLASS_SELECT)
	end


	-------------------------
	--Check for SubClass --
	if progression:GetProgressionKey("SubClassSelect") and class:IsMainClass() then
		table.insert(wantsToUpdate, SUB_CLASS_SELECT)
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
			Events.Broadcast("Ability_Close")
			for index, value in ipairs(Priority) do
				value.visibility = Visibility.FORCE_OFF
			end
		end,
		[Visibility.INHERIT] = function()
			Events.Broadcast("Ability_Close")
			for index, value in ipairs(Priority) do
				value.visibility = Visibility.FORCE_OFF
			end
			Events.Broadcast("Ability_OpenPanel", wantsToUpdate[1])
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

function Refresh()
	Toggle(ROOT.visibility)
end

function PanelComplete()
	if AppState.GetLocalState() == AppState.Ability then
		Events.Broadcast("OpenAbilities")
	end
end

Events.Connect("Ability_PanelRefresh", Refresh)
Events.Connect("Ability_PanelComplete", PanelComplete)
