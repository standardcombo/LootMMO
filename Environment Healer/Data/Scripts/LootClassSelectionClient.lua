
local CONNECTING_TEXT = script:GetCustomProperty("ConnectingText"):WaitForObject()
local ROW_PROTOTYPE = script:GetCustomProperty("RowPrototype"):WaitForObject()
local ROW_SPACING = 20

for i = 1,12 do
	Task.Wait(0.2)
	CONNECTING_TEXT.text = "Connecting"
	if i % 4 == 1 then CONNECTING_TEXT.text = CONNECTING_TEXT.text.."." end
	if i % 4 == 2 then CONNECTING_TEXT.text = CONNECTING_TEXT.text..".." end
	if i % 4 == 3 then CONNECTING_TEXT.text = CONNECTING_TEXT.text.."..." end
end
CONNECTING_TEXT.visibility = Visibility.FORCE_OFF
ROW_PROTOTYPE.visibility = Visibility.INHERIT

function GET(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

local rowAssetId = ROW_PROTOTYPE.sourceTemplateId
local container = ROW_PROTOTYPE.parent

local rows = {}
table.insert(rows, ROW_PROTOTYPE)


function OnButtonPressed(button, index)
	for i,row in ipairs(rows) do
		if i == index then
			row.clientUserData.button.isEnabled = false
			GET(row, "SelectedIcon").visibility = Visibility.INHERIT
			
			-- Fire off event to select this loot bag
			Events.Broadcast("SelectLoot", row.clientUserData.tokenId)
		else
			row.clientUserData.button.isEnabled = true
			GET(row, "SelectedIcon").visibility = Visibility.FORCE_OFF
		end
	end
end

function SetupRow(row, class, tokenId)
	row.clientUserData.tokenId = tokenId
	
	local button = GET(row, "UIButton")
	row.clientUserData.button = button
	button.pressedEvent:Connect(OnButtonPressed, #rows)
	
	GET(row, "TokenText").text = "Bag #"..tokenId
	
	if class == 1 then
		GET(row, "ClassText").text = "Warrior"
		GET(row, "IconWarrior").visibility = Visibility.INHERIT
		GET(row, "IconHunter").visibility = Visibility.FORCE_OFF
		GET(row, "IconMage").visibility = Visibility.FORCE_OFF
		
	elseif class == 2 then
		GET(row, "ClassText").text = "Hunter"
		GET(row, "IconWarrior").visibility = Visibility.FORCE_OFF
		GET(row, "IconHunter").visibility = Visibility.INHERIT
		GET(row, "IconMage").visibility = Visibility.FORCE_OFF
		
	elseif class == 3 then
		GET(row, "ClassText").text = "Mage"
		GET(row, "IconWarrior").visibility = Visibility.FORCE_OFF
		GET(row, "IconHunter").visibility = Visibility.FORCE_OFF
		GET(row, "IconMage").visibility = Visibility.INHERIT
	end
end

function AddRow()
	local newRow = World.SpawnAsset(rowAssetId, {parent = container})
	newRow.x = ROW_PROTOTYPE.x
	newRow.y = ROW_PROTOTYPE.y + (ROW_PROTOTYPE.height + ROW_SPACING) * #rows
	
	table.insert(rows, newRow)
	
	return newRow
end

SetupRow(ROW_PROTOTYPE, 3, 1404114)
SetupRow(AddRow(), 1, 1404116)
SetupRow(AddRow(), 1, 1404115)
SetupRow(AddRow(), 2, 1404117)
SetupRow(AddRow(), 1, 1404118)

