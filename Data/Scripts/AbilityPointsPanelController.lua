local CLASSAPI = _G['Character.Classes']
local EquipAPI = _G['Character.EquipAPI']
local AbilityAPI = _G['Ability.Equipment']
local Star_Ratings = _G['Star_Rating']

local LOCAL_PLAYER = Game.GetLocalPlayer()
local ABILITY_POINTS = script:GetCustomProperty('AbilityPoints'):WaitForObject()
local ABILITY_RENDER = script:GetCustomProperty('AbilityRender'):WaitForObject()
local ABILITY_NAME = script:GetCustomProperty('AbilityName'):WaitForObject()
local ABILITY_DESCRIPTION = script:GetCustomProperty('AbilityDescription'):WaitForObject()
local ABILITY_PROPERTIES = script:GetCustomProperty('AbilityProperties'):WaitForObject()
local ABILITIESPANEL = script:GetCustomProperty('Abilities'):WaitForObject()

local STARS = script:GetCustomProperty('Stars'):WaitForObject()
local CENTER_PANEL = script:GetCustomProperty('CenterPanel'):WaitForObject()
local LEFT_PANEL = script:GetCustomProperty('Left_Panel'):WaitForObject()
local UPGRADE_BUTTON = script:GetCustomProperty('UpgradeButton'):WaitForObject()
local LOOT_ICON = script:GetCustomProperty('LootIcon')
local POINT_COUNT = script:GetCustomProperty('PointCount'):WaitForObject()

local lastState = Visibility.FORCE_OFF
local SelectedAbility = nil

local map = {
	['Shift'] = 'Ability1',
	['1'] = 'Ability2',
	['2'] = 'Ability3',
	['3'] = 'Ability4',
	['4'] = 'Ability5'
}

function BroadcastUpgrade()
	if not SelectedAbility then
		return
	end
	Events.BroadcastToServer('Ability.Sreciever', SelectedAbility)
end

function GetStar(stat, index)
	return Star_Ratings[math.floor(stat - index / 3) + 2]
end

function UpdateStars(character)
	local stats = character:GetComponent('Stats')

	for index, value in ipairs(STARS:GetChildren()) do
		local starimg = GetStar(stats:GetStat(SelectedAbility), index)
		if starimg and starimg['Art'] then
			value:SetImage(starimg['Art'])
		end
	end
end

function UpdatePoints(character)
	local points = character:GetComponent('Points')
	local pointCount = points:GetUnspentPoints()
	POINT_COUNT.text = tostring(pointCount)
end

function UpdateIcons(classtable)
	for index, panel in ipairs(ABILITIESPANEL:GetChildren()) do
		local mapped = map[panel.name]
		if mapped then
			if classtable[mapped] then
				local image = panel:GetCustomProperty('Icon'):WaitForObject()
				local newIcon = AbilityAPI.GetIcon(classtable[mapped])
				if newIcon then
					image:SetImage(newIcon)
				end
			end
		end
	end
end

function Update()
	local Character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	if not Character then
		return
	end
	local class = Character:GetComponent('Class')
	local classname = class:GetClass()
	if not classname then
		return
	end
	local classtable = CLASSAPI.GetClass(classname)

	UpdateIcons(classtable)
	UpdateStars(Character)
	UpdatePoints(Character)

	local altname = map[SelectedAbility]
	local selection = classtable[altname]
	if not selection or selection == '' or not SelectedAbility or not map[SelectedAbility] then
		ABILITY_RENDER:SetImage(LOOT_ICON)
		ABILITY_NAME.text = 'No ability selected!'
		ABILITY_DESCRIPTION.text = 'Select an ability from the bottom right hand corner.'
		ABILITY_PROPERTIES.text = ''
		UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
		return
	end

	UPGRADE_BUTTON.visibility = Visibility.INHERIT

	local icon = AbilityAPI.GetIcon(selection)
	local desc = AbilityAPI.GetAbility(selection)['description']
	ABILITY_NAME.text = selection or ''
	ABILITY_DESCRIPTION.text = desc or ''
	ABILITY_RENDER:SetImage(icon)
end

function SelectAbility(abilityString)
	SelectedAbility = abilityString
	Update()
end

function Toggle(newState)
	local States = {
		[Visibility.FORCE_OFF] = function()
			SelectAbility(nil)
		end,
		[Visibility.INHERIT] = function()
			Update()
		end
	}

	if States[newState] then
		States[newState]()
	end
end

function Tick()
	if lastState ~= ABILITY_POINTS.visibility then
		lastState = ABILITY_POINTS.visibility
		Toggle(ABILITY_POINTS.visibility)
	end
end

local function ReturnCall()
	if ABILITY_POINTS.visibility ~= Visibility.FORCE_OFF then
		local Character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
		if not Character then
			return
		end
		UpdateStars(Character)
		UpdatePoints(Character)
	end
end

UPGRADE_BUTTON.releasedEvent:Connect(BroadcastUpgrade)

Events.Connect('Ability.SelectSlot', SelectAbility)
Events.Connect('Ability.Ssent', ReturnCall)
