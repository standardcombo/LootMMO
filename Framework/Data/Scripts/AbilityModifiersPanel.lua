
local MODIFIERS_PANEL = script:GetCustomProperty("ModifiersPanel"):WaitForObject()
local PROTOTYPE_ROW = script:GetCustomProperty("PrototypeRow"):WaitForObject()
local ROW_TEMPLATE = PROTOTYPE_ROW.sourceTemplateId

local rows = {}
local rowPool = {PROTOTYPE_ROW}
PROTOTYPE_ROW.visibility = Visibility.FORCE_OFF


local function UpdateRow(row, abilityModifier, stats, showUpgradeDelta)
	local rowElements = row.clientUserData
	
	local FormatValue = function(value, isPercent)
		if isPercent then
			return string.format("%.0f", value * 100)
			
		elseif value < 10 then
			return string.format("%.2g", value)
		else
			local str = string.format("%.2f", value)
			local length = string.len(str)
			local lastGlyph = string.sub(str, length, length)
			if lastGlyph == "0" then
				str = string.sub(str, 1, length - 1)
			end
			local whole, fraction = CoreString.Split(str, ".")
			if fraction == "0" then
				return whole
			end
			return str
		end
	end
	
	-- Get the numeric value for this modifier
	local modValue = abilityModifier.calculation(stats, {ignoreCrit = true})
	if type(modValue) == "table" then
		modValue = modValue[1]
	end
	-- Convert into a string
	local modStr = FormatValue(modValue, abilityModifier.isPercent)
	if abilityModifier.isPercent then
		modStr = modStr .."%"
	end
	-- In case of upgrade, show the improvement (if any)
	rowElements.upgrade.text = ""
	if showUpgradeDelta then
		local upgradedValue = abilityModifier.calculation(stats, {ignoreCrit = true, upgradeStarRating = true})
		if type(upgradedValue) == "table" then
			upgradedValue = upgradedValue[1]
		end
		local deltaValue = upgradedValue - modValue
		if deltaValue ~= 0 then
			-- Convert into a string
			local deltaStr = FormatValue(deltaValue, abilityModifier.isPercent)
			if deltaValue > 0 then
				deltaStr = "+".. deltaStr
			end
			rowElements.upgrade.text = deltaStr
		end
		Task.Spawn(function()
			local textSize = rowElements.value:ComputeApproximateSize()
			rowElements.value.width = textSize.x
		end)
	end
	
	local modName = abilityModifier.name
	if modName == nil or modName == "" then
		modName = abilityModifier.id
	end
	rowElements.name.text = modName ..":"
	rowElements.value.text = modStr
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

function Clear()
	RecycleAllRows()
end

function SetAbilityData(abilityMods, stats, showUpgradeDelta)
	RecycleAllRows()

	for _,mod in ipairs(abilityMods) do
		UpdateRow(AddRow(), mod, stats, showUpgradeDelta)
	end
end

