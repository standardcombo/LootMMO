
local MODIFIERS_PANEL = script:GetCustomProperty("ModifiersPanel"):WaitForObject()
local PROTOTYPE_ROW = script:GetCustomProperty("PrototypeRow"):WaitForObject()
local ROW_TEMPLATE = PROTOTYPE_ROW.sourceTemplateId

local rows = {}
local rowPool = {PROTOTYPE_ROW}
PROTOTYPE_ROW.visibility = Visibility.FORCE_OFF


local function UpdateRow(row, abilityModifier, stats)
	local rowElements = row.clientUserData
	
	local modValue = abilityModifier.calculation(stats, {ignoreCrit = true})
	if type(modValue) == "table" then
		modValue = modValue[1]
	end
	if modValue < 1 then
		modValue = string.format("%.2f%%", modValue)
	elseif modValue < 10 then
		modValue = string.format("%.1f", modValue)
	else
		modValue = string.format("%.0f", modValue)
	end
	
	rowElements.name.text = abilityModifier.name ..":"
	rowElements.value.text = modValue
	rowElements.upgrade.text = ""
	rowElements.formula.text = "(".. abilityModifier.calString ..")"
end

local function BindRowElements(row)
	local rowElements = row.clientUserData
	rowElements.name = row:GetCustomProperty("Name"):WaitForObject()
	rowElements.value = row:GetCustomProperty("Value"):WaitForObject()
	rowElements.upgrade = row:GetCustomProperty("Upgrade"):WaitForObject()
	rowElements.formula = row:GetCustomProperty("Formula"):WaitForObject()
end
BindRowElements(PROTOTYPE_ROW)

local function MakeNewRow()
	local row = World.SpawnAsset(ROW_TEMPLATE, {parent = MODIFIERS_PANEL})
	BindRowElements(row)
	return row
end

local function AddRow()
	local newRow
	if #rowPool > 0 then
		newRow = rowPool[1]
		table.remove(rowPool, 1)
		newRow.visibility = Visibility.INHERIT
	else
		newRow = MakeNewRow()
	end
	newRow.y = PROTOTYPE_ROW.height * #rows
	table.insert(rows, newRow)
	return newRow
end

local function RecycleAllRows()
	for _,r in ipairs(rows) do
		table.insert(rowPool, r)
		r.visibility = Visibility.FORCE_OFF
	end
	rows = {}
end

function SetAbilityData(abilityMods, stats)
	RecycleAllRows()

	for _,mod in ipairs(abilityMods) do
		UpdateRow(AddRow(), mod, stats)
	end
end

