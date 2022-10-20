local API_A = require(script:GetCustomProperty("APIAbility"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local ABILITY_TOOLTIP = script:GetCustomProperty("AbilityToolTip"):WaitForObject()
local ABILITY_DRAG_TOGGLE = script:GetCustomProperty("AbilityDragToggle"):WaitForObject()
local SOCKET_TEMPLATE = script:GetCustomProperty("SocketTemplate")
local BUTTON_TEMPLATE = script:GetCustomProperty("ButtonTemplate")

local NUMBER_OF_SLOTS = ROOT:GetCustomProperty("NumberOfSlots")
local SLOT_BINDINGS = {}

for i = 1, NUMBER_OF_SLOTS do
	SLOT_BINDINGS[i] = ROOT:GetCustomProperty("Binding" .. tonumber(i))
end

local SOCKET_WIDTH = 95.0
local LAYOUT_TIMOUT = 5.0
local LOCAL_PLAYER = Game.GetLocalPlayer()

local USER_FACING_BINDINGS =
{
	ability_primary = "M1",
	ability_secondary = "M2",
	ability_1 = "Q",
	ability_2 = "E",
	ability_ult = "R",
	ability_feet = "LShift",
	ability_extra_0 = "0",
	ability_extra_1 = "1",
	ability_extra_2 = "2",
	ability_extra_3 = "3",
	ability_extra_4 = "4",
	ability_extra_5 = "5",
	ability_extra_6 = "6",
	ability_extra_7 = "7",
	ability_extra_8 = "8",
	ability_extra_9 = "9",
	ability_extra_10 = "LCtrl",
	ability_extra_11 = "RCtrl",
	ability_extra_12 = "LShift",
	ability_extra_13 = "RShift",
	ability_extra_14 = "LAlt",
	ability_extra_15 = "RAlt",
	ability_extra_16 = "Return",
	ability_extra_17 = "Space",
	ability_extra_18 = "Caps",
	ability_extra_19 = "Tab",
	ability_extra_20 = "Q",
	ability_extra_21 = "W",
	ability_extra_22 = "E",
	ability_extra_23 = "R",
	ability_extra_24 = "T",
	ability_extra_25 = "Y",
	ability_extra_26 = "U",
	ability_extra_27 = "I",
	ability_extra_28 = "O",
	ability_extra_29 = "P",
	ability_extra_30 = "A",
	ability_extra_31 = "S",
	ability_extra_32 = "D",
	ability_extra_33 = "F",
	ability_extra_34 = "G",
	ability_extra_35 = "H",
	ability_extra_36 = "J",
	ability_extra_37 = "K",
	ability_extra_38 = "L",
	ability_extra_39 = "Z",
	ability_extra_40 = "X",
	ability_extra_41 = "C",
	ability_extra_42 = "V",
	ability_extra_43 = "B",
	ability_extra_44 = "N",
	ability_extra_45 = "M",
	ability_extra_46 = "Up",
	ability_extra_47 = "Dn",
	ability_extra_48 = "Lt",
	ability_extra_49 = "Rt",
	ability_extra_50 = "F1",
	ability_extra_51 = "F2",
	ability_extra_52 = "F3",
	ability_extra_53 = "F4",
	ability_extra_54 = "F5",
	ability_extra_55 = "F6",
	ability_extra_56 = "F7",
	ability_extra_57 = "F8",
	ability_extra_58 = "F9",
	ability_extra_59 = "F10",
	ability_extra_60 = "F11",
	ability_extra_61 = "F12",
	ability_extra_62 = "Ins",
	ability_extra_63 = "Home",
	ability_extra_64 = "Pg Up",
	ability_extra_65 = "Pg Dn",
	ability_extra_66 = "Del",
	ability_extra_67 = "End"
}

local LAYOUT_SAVE_PERIOD = 1.0

local buttonData = {}			-- int -> table {abilityName = string, button = CoreObject}
local draggingIndex = 0
local isDraggingEnabled = false	-- When true, the action bar icons can be re-arranged.
local wasCursorVisible = false	-- Last frame, for change detection
local layoutSaved = true		-- If we have sent the layout to the server to be persisted since it last changed
local layoutLoaded = false
local lastLayoutSaveTime = 0.0	-- Rate limit our updates. Users won't notice most of the time

function TryTriggerActionAtIndex(index)
	local abilityName = buttonData[index].abilityName

	if abilityName and API_A.CanTrigger(abilityName) then
		API_A.Trigger(abilityName)
	end
end

function PlaceInSocket(uiObject, socketIndex)
	uiObject.x = (socketIndex - (NUMBER_OF_SLOTS + 1) / 2) * SOCKET_WIDTH
	uiObject.y = 0.0
	uiObject:GetCustomProperty("BindingText"):WaitForObject().text = USER_FACING_BINDINGS[SLOT_BINDINGS[socketIndex]]
	uiObject.clientUserData.socketIndex = socketIndex
end

function SpawnAbilityButton(abilityName, socketIndex)
	local button = World.SpawnAsset(BUTTON_TEMPLATE, {parent = PANEL})
	PlaceInSocket(button, socketIndex)
	local icon = button:GetCustomProperty("Icon"):WaitForObject()
	local abilityData = API_A.GetAbilityData(abilityName)
	icon:SetImage(abilityData.icon)
	button:GetCustomProperty("CooldownTimeText"):WaitForObject().text = ""
	button.clientUserData.disabledIndicator = button:GetCustomProperty("DisabledIndicator"):WaitForObject()
	button.clientUserData.activateButton = button:GetCustomProperty("ActivateButton"):WaitForObject()
	button.clientUserData.activateButton.clickedEvent:Connect(function()
		TryTriggerActionAtIndex(button.clientUserData.socketIndex)
	end)
	return button
end

function SortCompare(a, b)
	if a.abilityName and b.abilityName then
		return a.abilityName < b.abilityName
	else
		return a.abilityName ~= nil
	end
end

function UpdateLayoutString()
	local abilityList = {}

	for i, data in pairs(buttonData) do
		abilityList[i] = {abilityName = data.abilityName, index = i}
	end

	table.sort(abilityList, SortCompare)

	local abilityCount = 0

	for _, listEntry in ipairs(abilityList) do
		if listEntry.abilityName then
			abilityCount = abilityCount + 1
		end
	end

	local layoutString = string.format("v2|%d|", abilityCount)

	for _, listEntry in ipairs(abilityList) do
		layoutString = layoutString .. string.char(listEntry.index + string.byte("a") - 1)
	end

	API_RE.BroadcastToServer("SABL", layoutString)
	layoutSaved = true
	lastLayoutSaveTime = os.clock()
end

function OnLoadActionBarLayout(layoutString)
	if not layoutString then
		layoutLoaded = true
		return
	end

	function GetAbilityCount()
		local result = 0

		for _, data in ipairs(buttonData) do
			if data.abilityName then
				result = result + 1
			end
		end

		return result
	end

	local version = 1

	if string.sub(layoutString, 1, 1) == "v" then
		local delimiterIndex = string.find(layoutString, "|", 1, true)
		version = tonumber(string.sub(layoutString, 2, delimiterIndex - 1))
	end

	if version == 1 then
		-- We don't have all our abilities yet, or they were already changed
		local expectedAbilitycount = tonumber(string.sub(layoutString, 1, 1))
		local timeOutStart = os.clock()

		while os.clock() < timeOutStart + LAYOUT_TIMOUT and GetAbilityCount() ~= expectedAbilitycount do
			Task.Wait()
		end

		layoutLoaded = true

		-- Did we give up? If we don't have the right number, the string is meaningless so we do nothing
		if os.clock() < timeOutStart + LAYOUT_TIMOUT then
			local tempData = {}

			for i, data in pairs(buttonData) do
				tempData[i] = data
			end

			table.sort(tempData, SortCompare)

			for i = 1, NUMBER_OF_SLOTS do
				local newIndex = tonumber(string.sub(layoutString, i + 1, i + 1))

				if not newIndex then
					newIndex = i
				end

				buttonData[newIndex] = tempData[i]

				if buttonData[newIndex].button then
					PlaceInSocket(buttonData[newIndex].button, newIndex)
				end
			end
		end
	elseif version == 2 then
		-- We don't have all our abilities yet, or they were already changed
		local matchStart, matchEnd, countString = string.find(layoutString, "|(%d+)|")
		local expectedAbilitycount = tonumber(countString)
		local timeOutStart = os.clock()

		while os.clock() < timeOutStart + LAYOUT_TIMOUT and GetAbilityCount() ~= expectedAbilitycount do
			Task.Wait()
		end

		layoutLoaded = true

		-- Did we give up? If we don't have the right number, the string is meaningless so we do nothing
		if os.clock() < timeOutStart + LAYOUT_TIMOUT then
			local tempData = {}

			for i, data in pairs(buttonData) do
				tempData[i] = data
			end

			table.sort(tempData, SortCompare)

			for i = 1, NUMBER_OF_SLOTS do
				local newIndex = string.byte(string.sub(layoutString, i + matchEnd, i + matchEnd)) - string.byte("a") + 1

				if not newIndex then
					newIndex = i
				end

				buttonData[newIndex] = tempData[i]

				if buttonData[newIndex].button then
					PlaceInSocket(buttonData[newIndex].button, newIndex)
				end
			end
		end
	else
		error("Unknown layout string version")
	end
end


function GetSocketIndexAtCursorPosition()
	-- This depends on the panel being both anchored and docked at Bottom Center and the buttons being anchored and
	-- docked at Middle Center of the panel. We unfortunately cannot access those properties from script.
	local cursorPosition = UI.GetCursorPosition()
	local screenSize = UI.GetScreenSize()
	local localX = cursorPosition.x - screenSize.x / 2.0 - PANEL.x
	local localY = cursorPosition.y - screenSize.y + PANEL.height / 2.0 - PANEL.y

	-- Sockets are basically square
	if localY > SOCKET_WIDTH / 2.0 or localY < -SOCKET_WIDTH / 2.0 then
		return 0
	end

	local index = CoreMath.Round(localX / SOCKET_WIDTH + (NUMBER_OF_SLOTS + 1) / 2)

	if index < 1 or index > NUMBER_OF_SLOTS then
		return 0
	end

	return index
end

function SetupAbilityToolTip()
	ABILITY_TOOLTIP.clientUserData.abilityName = ""
	ABILITY_TOOLTIP.clientUserData.name = ABILITY_TOOLTIP:GetCustomProperty("AbilityNameText"):WaitForObject()
	ABILITY_TOOLTIP.clientUserData.requirement = ABILITY_TOOLTIP:GetCustomProperty("AbilityRequirementText"):WaitForObject()
	ABILITY_TOOLTIP.clientUserData.description = ABILITY_TOOLTIP:GetCustomProperty("AbilityDescriptionText"):WaitForObject()
	ABILITY_TOOLTIP.clientUserData.cooldown = ABILITY_TOOLTIP:GetCustomProperty("AbilityCooldownText"):WaitForObject()
end

function HideAbilityToolTip()
	ABILITY_TOOLTIP.parent = World.GetRootObject()
	ABILITY_TOOLTIP.visibility = Visibility.FORCE_OFF
end

function DrawAbilityToolTip()
	local socketIndex = GetSocketIndexAtCursorPosition()
	local socketData = buttonData[socketIndex]

	if socketData and socketData.button then
		ABILITY_TOOLTIP.visibility = Visibility.INHERIT
		ABILITY_TOOLTIP.parent = socketData.button
		-- Update the ability(talent) information.
		local abilityData = API_A.GetAbilityData(socketData.abilityName)
		local abilityCooldown = API_A.GetAbilityCooldown(socketData.abilityName)
		ABILITY_TOOLTIP.clientUserData.abilityName = socketData.abilityName
		ABILITY_TOOLTIP.clientUserData.name.text = socketData.abilityName
		ABILITY_TOOLTIP.clientUserData.description.text = abilityData.description
		ABILITY_TOOLTIP.clientUserData.cooldown.text = string.format("cooldown: %2.1fs", abilityCooldown)
		ABILITY_TOOLTIP.clientUserData.requirement.text = ""

		if abilityData.equippedItemConstraints then
			ABILITY_TOOLTIP.clientUserData.requirement.text = string.format("requires:  %s", table.concat(abilityData.equippedItemConstraints, ", "))
			local isDisabled = socketData.button.clientUserData.disabledIndicator.visibility ~= Visibility.FORCE_OFF
			ABILITY_TOOLTIP.clientUserData.requirement:SetColor(isDisabled and Color.RED or Color.WHITE)
		end
	else
		HideAbilityToolTip()
	end
end

function SetupAbilityDragToggle()
	-- The icon is the only thing that changes when drawing the button.
	ABILITY_DRAG_TOGGLE.clientUserData.lockIcon = ABILITY_DRAG_TOGGLE:GetCustomProperty("LockIcon"):WaitForObject()
	ABILITY_DRAG_TOGGLE.clientUserData.status = ABILITY_DRAG_TOGGLE:GetCustomProperty("ToolTipStatusText"):WaitForObject()
	local button = ABILITY_DRAG_TOGGLE:GetCustomProperty("LockButton"):WaitForObject()
	local sfx = ABILITY_DRAG_TOGGLE:GetCustomProperty("ClickSound"):WaitForObject()
	local tooltip = ABILITY_DRAG_TOGGLE:GetCustomProperty("ToolTip"):WaitForObject()
	button.clickedEvent:Connect(function()
		isDraggingEnabled = not isDraggingEnabled
		sfx:Play()
	end)
	button.hoveredEvent:Connect(function() tooltip.visibility = Visibility.INHERIT end)
	button.unhoveredEvent:Connect(function() tooltip.visibility = Visibility.FORCE_OFF end)
end

function DrawAbilityDragToggle()
	ABILITY_DRAG_TOGGLE.visibility = Visibility.INHERIT
	local color = ABILITY_DRAG_TOGGLE.clientUserData.lockIcon:GetColor()
	-- The lock icon is "grayed out" when dragging is enabled.
	color.a = isDraggingEnabled and 0.4 or 0.9
	ABILITY_DRAG_TOGGLE.clientUserData.lockIcon:SetColor(color)
	ABILITY_DRAG_TOGGLE.clientUserData.status.text = isDraggingEnabled and "UNLOCKED" or "LOCKED"
end

function ReleaseDraggingButton()
	if draggingIndex ~= 0 then
		local dropIndex = GetSocketIndexAtCursorPosition()
		local data = buttonData[draggingIndex]

		if dropIndex ~= draggingIndex and dropIndex ~= 0 then
			buttonData[draggingIndex] = buttonData[dropIndex]
			buttonData[dropIndex] = data

			if buttonData[draggingIndex].abilityName then
				PlaceInSocket(buttonData[draggingIndex].button, draggingIndex)
			end
		end

		data.button.parent = PANEL

		if dropIndex == 0 then
			PlaceInSocket(data.button, draggingIndex)
		else
			PlaceInSocket(data.button, dropIndex)
		end

		draggingIndex = 0
		layoutSaved = false
	end
end

function OnBindingPressed(player, binding)
	-- Moving icons
	if UI.IsCursorVisible() and binding == "ability_primary" then
		local index = GetSocketIndexAtCursorPosition()

		if index ~= 0 and buttonData[index].abilityName then
			if layoutLoaded and isDraggingEnabled then
				-- The action bar is unlocked, and a mouse-press indicates a desire to drag&drop.
				draggingIndex = index
				local button = buttonData[draggingIndex].button
				button.parent = CONTAINER
			end
		end
	end

	-- Using abilities
	for i, slotBinding in pairs(SLOT_BINDINGS) do
		if slotBinding == binding then
			TryTriggerActionAtIndex(i)
			return
		end
	end
end

function OnBindingReleased(player, binding)
	if binding == "ability_primary" then
		if draggingIndex ~= 0 then
			ReleaseDraggingButton()
		end
	end
end

function OnAbilityGained(player, abilityName)
	assert(player == LOCAL_PLAYER)
	local socketFound = false

	for i, data in pairs(buttonData) do
		if not data.abilityName then
			data.abilityName = abilityName
			data.button = SpawnAbilityButton(abilityName, i)
			socketFound = true
			break
		end
	end

	if not socketFound then
		warn(string.format("New ability %s on local player. Action bar is full.", abilityName))
	end
	
	layoutSaved = false
end

function OnAbilityRemoved(player, abilityName)
	assert(player == LOCAL_PLAYER)

	for i, data in pairs(buttonData) do
		if data.abilityName == abilityName then
			if ABILITY_TOOLTIP.clientUserData.abilityName == abilityName then
				HideAbilityToolTip()
			end

			data.button:Destroy()
			buttonData[i] = {}
			return
		end
	end

	layoutSaved = false
end

function Tick(deltaTime)
	-- Show the disabled indicator for any abilities whose equipment requirements are not met.
	for _, data in pairs(buttonData) do
		if data.button then
			if data.abilityName and not API_A.AreEquipmentConstraintsSatisfied(LOCAL_PLAYER, data.abilityName) then
				data.button.clientUserData.disabledIndicator.visibility = Visibility.INHERIT
			else
				data.button.clientUserData.disabledIndicator.visibility = Visibility.FORCE_OFF
			end
		end
	end

	-- Update button interaction state.	When the action bar is locked, players can "click-to-activate" their abilities.
	local canClickToActivate = not isDraggingEnabled

	for i, data in pairs(buttonData) do
		if data.abilityName and data.button then
			data.button.clientUserData.activateButton.isEnabled = canClickToActivate
		end
	end

	-- Updating cooldown displays
	for _, data in pairs(buttonData) do
		if data.abilityName then
			local progressIndicator = data.button:GetCustomProperty("ProgressIndicator"):WaitForObject()
			local cooldownTimeText = data.button:GetCustomProperty("CooldownTimeText"):WaitForObject()
            local cooldownData = API_A.GetVisibleCooldownData(data.abilityName)

            -- Update the shadow
            if not cooldownData then
	        	progressIndicator.visibility = Visibility.FORCE_OFF
	        	cooldownTimeText.visibility = Visibility.FORCE_OFF
	        else
	        	progressIndicator.visibility = Visibility.INHERIT
	        	cooldownTimeText.visibility = Visibility.INHERIT
            	cooldownTimeText.text = string.format("%.1f", cooldownData.remaining)

            	local cooldownRatio = cooldownData.remaining / cooldownData.total
                local shadowAngle = CoreMath.Clamp(1.0 - cooldownRatio, 0.0, 1.0) * 360.0
				local rightShadow = data.button:GetCustomProperty("RightShadow"):WaitForObject()
				local leftShadow = data.button:GetCustomProperty("LeftShadow"):WaitForObject()

                if shadowAngle <= 180.0 then
                    leftShadow.rotationAngle = 0.0
                    rightShadow.visibility = Visibility.INHERIT
                    rightShadow.rotationAngle = shadowAngle
                else
                    leftShadow.rotationAngle = shadowAngle - 180.0
                    rightShadow.visibility = Visibility.FORCE_OFF
                end
	        end
		end
	end

	-- Move dragging button
	if draggingIndex ~= 0 then
		local button = buttonData[draggingIndex].button
		local cursorPosition = UI.GetCursorPosition()
		local screenSize = UI.GetScreenSize()
		button.x = cursorPosition.x - screenSize.x / 2.0
		button.y = cursorPosition.y - screenSize.y / 2.0
	end

	-- Update ability tooltip when not dragging.
	if draggingIndex == 0 then
		DrawAbilityToolTip()
	else
		HideAbilityToolTip()
	end

	-- Update the drag toggle button visuals.
	DrawAbilityDragToggle()

	-- Catch cursor changing visibility
	local isCursorVisible = UI.IsCursorVisible()

	if wasCursorVisible and not isCursorVisible then
		ReleaseDraggingButton()
	end

	wasCursorVisible = isCursorVisible
	local clock = os.clock()

	if not layoutSaved and clock >= lastLayoutSaveTime + LAYOUT_SAVE_PERIOD then
		UpdateLayoutString()
	end
end

local socketTemplateWidth = nil

for i = 1, NUMBER_OF_SLOTS do
	local socketTemplate = World.SpawnAsset(SOCKET_TEMPLATE, {parent = PANEL})
	PlaceInSocket(socketTemplate, i)
	socketTemplateWidth = socketTemplate.width

	buttonData[i] = {}
end

PANEL.width = SOCKET_WIDTH * (NUMBER_OF_SLOTS - 1) + socketTemplateWidth

-- Setup additional UI components.
SetupAbilityToolTip()
SetupAbilityDragToggle()

LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
LOCAL_PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)
API_RE.Connect("AbilityGained", OnAbilityGained)
API_RE.Connect("AbilityRemoved", OnAbilityRemoved)
API_RE.Connect("LABL", OnLoadActionBarLayout)

API_RE.BroadcastToServer("RFABL")	-- Ready for action bar layout. This pattern is dumb, but will work.
