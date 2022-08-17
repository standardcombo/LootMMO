
local ROW_PROTOTYPE = script:GetCustomProperty("RowPrototype"):WaitForObject()
local ROW_SPACING = 3

local container = ROW_PROTOTYPE.parent
local rowTopY = ROW_PROTOTYPE.y
local rowDefaultHeight = ROW_PROTOTYPE.height

local rows = {}
local rowPool = {}

function GET(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

-- Callback to parent UI, informing an objective was selected
-- <objective table, row UIPanel>
OnObjectiveSelected = nil


function Clear()
	for _,row in ipairs(rows) do
		RecycleRow(row)
	end
	rows = {}
	
	--container.height = 0
end


function AddObjective(obj)
	InsertObjective(obj, #rows + 1)
end


function InsertObjective(obj, index)
	InsertRow(SetupRow(NewRow(), obj), index)
end


function RemoveObjective(obj)

end


function UpdateObjective(obj)

end


function OnRowButtonPressed(button)
	local row = button.parent
	local obj = row.clientUserData.objective
	
	-- Tell the quest system to select this objective
	_G.QuestController.SelectObjective(Game.GetLocalPlayer(), obj)
	
	-- Update the selection borders
	for _,r in ipairs(rows) do
		if r == row then
			GET(r, "SelectedBorder").visibility = Visibility.INHERIT
		else
			GET(r, "SelectedBorder").visibility = Visibility.FORCE_OFF
		end
	end
	
	-- Inform the change to the parent UI
	OnObjectiveSelected(obj, row)
end


function NewRow()
	if #rowPool > 0 then
		local row = rowPool[1]
		row.visibility = Visibility.INHERIT
		row.parent = container
		
		table.remove(rowPool, 1)
		
		return row
	end
	local rowAssetId = ROW_PROTOTYPE.sourceTemplateId
	local row = World.SpawnAsset(rowAssetId, {parent = container})
	return row
end

function SetupRow(row, obj)
	row.clientUserData.objective = obj
	
	GET(row, "Icon"):SetImage(obj.quest.icon)
	GET(row, "Name").text = obj.name
	
	local description = GET(row, "Description")
	local counter = GET(row, "Counter")
	
	row.clientUserData.description = description
	row.clientUserData.counter = counter
	
	description.text = obj.description
	
	if obj.count <= 0 then
		counter.visibility = Visibility.FORCE_OFF
		counter.text = ""
	else
		counter.visibility = Visibility.INHERIT
		counter.text = 0 .." of ".. obj.count
	end
	
	if row.clientUserData.button == nil then
		local button = GET(row, "UIButton")
		row.clientUserData.button = button
		button.pressedEvent:Connect(OnRowButtonPressed)
		
		description.clientUserData.defaultHeight = description.height
	end
	
	if obj.isSelected then
		GET(row, "SelectedBorder").visibility = Visibility.INHERIT
	else
		GET(row, "SelectedBorder").visibility = Visibility.FORCE_OFF
	end
	GET(row, "CompletedBorder").visibility = Visibility.FORCE_OFF
	
	return row
end

function InsertRow(row, index)
	table.insert(rows, index, row)
	
	row.x = ROW_PROTOTYPE.x
	
	ScheduleVerticalRecalculation()
end


local verticalRecalculationTask = nil
function ScheduleVerticalRecalculation()
	if verticalRecalculationTask == nil then
		verticalRecalculationTask = Task.Spawn(DoVerticalRecalculation)
	end
end
function DoVerticalRecalculation()
	verticalRecalculationTask = nil
	
	y = rowTopY
	for i,r in ipairs(rows) do
		UpdateRowVerticalProperties(r)
		
		r.y = y
		y = y + r.height + ROW_SPACING
	end
	
	container.height = y
end
function UpdateRowVerticalProperties(row)
	local description = row.clientUserData.description
	local counter = row.clientUserData.counter
	
	local descriptionDefaultHeight = description.clientUserData.defaultHeight
	local size = description:ComputeApproximateSize()
	
	row.height = rowDefaultHeight - descriptionDefaultHeight + size.y
	
	if counter.text == "" then
		row.height = row.height - counter.height
	end
end


function RecycleRow(row)
	row.visibility = Visibility.FORCE_OFF
	row.parent = nil
	table.insert(rowPool, row)
end
RecycleRow(ROW_PROTOTYPE)


