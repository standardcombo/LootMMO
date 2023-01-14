--[[
	Reward Toast - Client
	v1.0
	by: standardcombo
	
	Pop animated UI cards showing rewards or other icon + text information.
	
	
	Setup
	=====
	Drop a copy of the Reward Toast UI template into the hierarchy.
	
	
	Usage
	=====
	From server-to-client:
		Events.BroadcastToPlayer(player, "RewardToast", data)
	
	From client-to-client:
		Events.Broadcast("RewardToast", data)
		
	where `data` has the schema:
		{
			type = "<Rarity>", ("Common", "Rare", "Epic" or "Legendary")
			message = "<name of the reward or other text>",
			icon = <UI image asset ID>,
			level = <optional int>, (number that appears in the corner)
			flipH = <optional bool>, (flips the icon horizontally)
			flipV = <optional bool>, (flips the icon vertically)
			sfx = <Audio asset ID>, (optional, played when the card appears)
		}
		
	
	Example
	=======
	local COIN_ICON = script:GetCustomProperty("CoinIcon")
	
	function ShowCoinReward(player, amount)
		local data = {
			type = "Common",
			message = amount .. " Coins",
			icon = COIN_ICON,
			flipH = true,
		}
		Events.BroadcastToPlayer(player, "RewardToast", data)
	end
	
	
	Testing
	=======
	There is a code block at the bottom for testing the UI animations.
	Uncomment the block and press number keys 1-4 to add rows and test.
	When done, comment the code again, so players can't use this.
	
	
	To Modify the Style
	===================
	1. Enable visibility of the main UI Panel.
	2. Edit each of the prototype rows to set a new style.
	3. Apply changes to the prototype rows by right-clicking them and 
	   choosing "Update template from this".
	4. Disable visibility of the main UI Panel.
	
]]

_G.RewardToast = script.context

local UIPANEL = script:GetCustomProperty("UIPanel"):WaitForObject()
local PROTOTYPE_ROW_LEGENDARY = script:GetCustomProperty("PrototypeRowLegendary"):WaitForObject()
local PROTOTYPE_ROW_EPIC = script:GetCustomProperty("PrototypeRowEpic"):WaitForObject()
local PROTOTYPE_ROW_RARE = script:GetCustomProperty("PrototypeRowRare"):WaitForObject()
local PROTOTYPE_ROW_COMMON = script:GetCustomProperty("PrototypeRowCommon"):WaitForObject()

local EVENT_NAME = "RewardToast" --Pass data table {type, icon, message}

local DURATION_COMMON = 2
local DURATION_RARE = 3
local DURATION_EPIC = 3.5
local DURATION_LEGENDARY = 4
local FADE_TIME = 0.5
local LERP_SPEED = 10

local allPools = {}
function CreatePoolForRowType(prototypeRow)
	allPools[prototypeRow] = {prototypeRow}
	prototypeRow.visibility = Visibility.FORCE_OFF
end
CreatePoolForRowType(PROTOTYPE_ROW_LEGENDARY)
CreatePoolForRowType(PROTOTYPE_ROW_EPIC)
CreatePoolForRowType(PROTOTYPE_ROW_RARE)
CreatePoolForRowType(PROTOTYPE_ROW_COMMON)

UIPANEL.visibility = Visibility.INHERIT

local defaultRowHeight = PROTOTYPE_ROW_LEGENDARY.height

local activeRows = {}


function ShowRewardToast(data)
	AddRow(SetupRow(data))
end
Events.Connect(EVENT_NAME, ShowRewardToast)


function IsBusy()
	return #activeRows > 0 and activeRows[1].clientUserData.time > 0
end

function Tick(deltaTime)
	local y = 0
	local t = deltaTime * LERP_SPEED
	
	for i,row in ipairs(activeRows) do
		-- Height
		row.clientUserData.fHeight = CoreMath.Lerp(row.clientUserData.fHeight, defaultRowHeight, t)
		row.height = CoreMath.Round(row.clientUserData.fHeight)
		
		-- Position
		row.y = y
		y = y + row.height
		
		-- Time
		row.clientUserData.time = row.clientUserData.time - deltaTime
		
		if row.clientUserData.time <= 0 then
			row.opacity = CoreMath.Lerp(row.opacity, 0, t)
			
			if i == #activeRows and row.clientUserData.time < -FADE_TIME then
				table.remove(activeRows, i)
				RecycleRow(row)
			end
		end
	end
end


function ResetRow(row)
	row.visibility = Visibility.INHERIT
	row.height = 0
	row.y = 0
	row.opacity = 1
	row.clientUserData.fHeight = 0
	row.clientUserData.time = 0
end

function AddRow(row)
	table.insert(activeRows, 1, row)
end

function SetupRow(data)
	local row = _MakeRow(data.type)
	ResetRow(row)
	
	-- Icon
	if data.icon then
		local rowIcon = row:GetCustomProperty("Icon"):WaitForObject()
		rowIcon:SetImage(data.icon)
		rowIcon.isFlippedHorizontal = data.flipH or false
		rowIcon.isFlippedVertical = data.flipV or false
	end
	
	-- Message
	if data.message then
		local rowText = row:GetCustomProperty("Message"):WaitForObject()
		rowText.text = data.message
	end
	
	-- Level
	local levelFrame = row:GetCustomProperty("LevelFrame"):WaitForObject()
	if data.level then
		levelFrame.visibility = Visibility.INHERIT
		local levelText = row:GetCustomProperty("LevelText"):WaitForObject()
		levelText.text = tostring(data.level)
	else
		levelFrame.visibility = Visibility.FORCE_OFF
	end

	-- SFX
	if data.sfx then
		local sfx = World.SpawnAsset(data.sfx)
		sfx.isSpatializationEnabled = false
		sfx.isAttenuationEnabled = false
		sfx.isOcclusionEnabled = false
		sfx:Play()
		sfx.lifeSpan = 2
	end
	
	-- Add extra time duration, based on rarity
	if data.type == "Rare" then
		row.clientUserData.time = DURATION_RARE
		
	elseif data.type == "Epic" then
		row.clientUserData.time = DURATION_EPIC
		
	elseif data.type == "Legendary" then
		row.clientUserData.time = DURATION_LEGENDARY
	else
		row.clientUserData.time = DURATION_COMMON
	end
	
	return row
end

function _MakeRow(type)
	-- "Common"
	local prototypeRow = PROTOTYPE_ROW_COMMON
	
	if type == "Rare" then
		prototypeRow = PROTOTYPE_ROW_RARE
		
	elseif type == "Epic" then
		prototypeRow = PROTOTYPE_ROW_EPIC
		
	elseif type == "Legendary" then
		prototypeRow = PROTOTYPE_ROW_LEGENDARY
	end
	
	local pool = allPools[prototypeRow]
	
	local row
	if #pool > 0 then
		row = pool[1]
		table.remove(pool, 1)
	else
		local template = prototypeRow.sourceTemplateId
		row = World.SpawnAsset(template, {parent = UIPANEL})
	end
	row.clientUserData.prototype = prototypeRow
	return row
end

function RecycleRow(row)
	row.visibility = Visibility.FORCE_OFF
	local prototypeRow = row.clientUserData.prototype
	local pool = allPools[prototypeRow]
	table.insert(pool, row)
end


--[[ Debug Test
Game.GetLocalPlayer().bindingPressedEvent:Connect(function(player, action)
	if action == "ability_extra_1" then
		Events.Broadcast(EVENT_NAME, {type = "Common", message = "13 Coins"})
		
	elseif action == "ability_extra_2" then
		Events.Broadcast(EVENT_NAME, {type = "Rare"})
		
	elseif action == "ability_extra_3" then
		Events.Broadcast(EVENT_NAME, {type = "Epic"})
		
	elseif action == "ability_extra_4" then
		Events.Broadcast(EVENT_NAME, {type = "Legendary"})
	end
end)
--]]

