--[[
	Quest Objectives UI (content panel)
	v1.0.2 - 2022/10/24
	by: standardcombo
]]

local ROW_PROTOTYPE = script:GetCustomProperty("RowPrototype"):WaitForObject()
local ROW_SPACING = 3

local container = ROW_PROTOTYPE.parent
local rowTopY = ROW_PROTOTYPE.y
local rowDefaultHeight = ROW_PROTOTYPE.height

local rows = {}
local rowPool = {}

function GET(obj, key)
	local property = obj.clientUserData[key]
	if property then
		return property
	end
	property = obj:GetCustomProperty(key):WaitForObject()
	obj.clientUserData[key] = property
	return property
end


-- Callback to parent UI, informing a reward was claimed
-- <objective table, row UIPanel>
OnClaimReward = nil


function Clear()
	for _,row in ipairs(rows) do
		RecycleRow(row)
	end
	rows = {}
	
	--container.height = 0
end


function AddObjective(obj)
	return InsertObjective(obj, #rows + 1)
end


function InsertObjective(obj, index)
	return InsertRow(SetupRow(NewRow(), obj), index)
end


function RemoveObjective(obj)

end


function UpdateObjective(obj)

end


function GetSelectedRow()
	for _,r in ipairs(rows) do
		if r.clientUserData.objective.isSelected then
			return r
		end
	end
	return nil
end


function SetRowStateDefault(row)
	GET(row, "AutoNavIndicator").visibility = Visibility.INHERIT
	GET(row, "SelectedBorder").visibility = Visibility.FORCE_OFF
	GET(row, "CompletedBorder").visibility = Visibility.FORCE_OFF
	GET(row, "CompletedIcon").visibility = Visibility.FORCE_OFF
	GET(row, "UIButton").visibility = Visibility.INHERIT
	GET(row, "RewardPanel").visibility = Visibility.FORCE_OFF
end

function SetRowStateSelected(row)
	GET(row, "AutoNavIndicator").visibility = Visibility.INHERIT
	GET(row, "SelectedBorder").visibility = Visibility.INHERIT
	GET(row, "CompletedBorder").visibility = Visibility.FORCE_OFF
	GET(row, "CompletedIcon").visibility = Visibility.FORCE_OFF
	GET(row, "UIButton").visibility = Visibility.INHERIT
	GET(row, "RewardPanel").visibility = Visibility.FORCE_OFF
end

function SetRowStateCompleted(row)
	GET(row, "AutoNavIndicator").visibility = Visibility.FORCE_OFF
	GET(row, "SelectedBorder").visibility = Visibility.FORCE_OFF
	GET(row, "CompletedBorder").visibility = Visibility.INHERIT
	GET(row, "CompletedIcon").visibility = Visibility.INHERIT
	GET(row, "UIButton").visibility = Visibility.INHERIT
	GET(row, "RewardPanel").visibility = Visibility.FORCE_OFF

	local obj = row.clientUserData.objective
	if obj.count > 0 then
		row.clientUserData.Counter.text = obj.count .." of ".. obj.count
	end
end

function SetRowStateReward(row)
	GET(row, "AutoNavIndicator").visibility = Visibility.FORCE_OFF
	GET(row, "SelectedBorder").visibility = Visibility.FORCE_OFF
	GET(row, "CompletedBorder").visibility = Visibility.FORCE_OFF
	GET(row, "CompletedIcon").visibility = Visibility.FORCE_OFF
	GET(row, "UIButton").visibility = Visibility.FORCE_OFF
	GET(row, "RewardPanel").visibility = Visibility.INHERIT
end


function OnRowButtonPressed(button)
	local row = button.parent
	local obj = row.clientUserData.objective
	
	-- Update the selection borders
	for _,r in ipairs(rows) do
		if r == row then
			GET(r, "SelectedBorder").visibility = Visibility.INHERIT
		else
			GET(r, "SelectedBorder").visibility = Visibility.FORCE_OFF
		end
	end
	
	-- Tell the quest system to select this objective
	_G.QuestController.SelectObjective(Game.GetLocalPlayer(), obj)
end

function OnRewardButtonClicked(button)
	local row = button.parent.parent
	local obj = row.clientUserData.objective
	
	OnClaimReward(obj, row)
end


function NewRow()
	if #rowPool > 0 then
		local row = rowPool[1]
		row.opacity = 1
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
	
	if obj.hasReward then
		description.text = "Completed!"
	else
		description.text = obj.description
	end
	
	if obj.count <= 0 or obj.hasReward then
		counter.visibility = Visibility.FORCE_OFF
		counter.text = ""
	else
		counter.visibility = Visibility.INHERIT
		UpdateRowProgress(row)
	end
	
	if row.clientUserData.UIButton == nil then
		local button = GET(row, "UIButton")
		button.pressedEvent:Connect(OnRowButtonPressed)
		
		description.clientUserData.defaultHeight = description.height
	end
	
	if row.clientUserData.RewardButton == nil then
		local button = GET(row, "RewardButton")
		button.clickedEvent:Connect(OnRewardButtonClicked)
	end
	
	if obj.hasReward then
		SetRowStateReward(row)

	elseif obj.isSelected then
		SetRowStateSelected(row)
	else
		SetRowStateDefault(row)
	end
	
	return row
end

function UpdateRowProgress(row)
	local obj = row.clientUserData.objective
	local progress = _G.QuestController.GetObjectiveProgress(Game.GetLocalPlayer(), obj)
	row.clientUserData.Counter.text = progress .." of ".. obj.count
end

function InsertRow(row, index)
	table.insert(rows, index, row)
	
	row.x = ROW_PROTOTYPE.x
	
	ScheduleVerticalRecalculation()
	
	return row
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
	local description = GET(row, "Description")
	local counter = GET(row, "Counter")
	
	local descriptionDefaultHeight = description.clientUserData.defaultHeight
	local size = description:ComputeApproximateSize()
	
	row.height = rowDefaultHeight - descriptionDefaultHeight + size.y
	
	if counter.text == "" then
		row.height = row.height - counter.height
	end

	local rewardPanel = GET(row, "RewardPanel")
	if rewardPanel.visibility == Visibility.INHERIT then
		--local margin = GET(row, "Name").y
		row.height = row.height + rewardPanel.height-- + margin
	end
end


function RecycleRow(row)
	row.visibility = Visibility.FORCE_OFF
	row.parent = nil
	table.insert(rowPool, row)
end
RecycleRow(ROW_PROTOTYPE)


function FindRowForObjective(obj)
	for _,row in ipairs(rows) do
		local rowObj = row.clientUserData.objective
		if rowObj == obj then
			return row
		end
	end
	return nil
end

