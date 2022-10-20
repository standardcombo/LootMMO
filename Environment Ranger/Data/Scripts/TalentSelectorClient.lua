local UTILITY = require(script:GetCustomProperty("TalentSelectorUtility"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local API_A = require(script:GetCustomProperty("APIAbility"))
local API_PP = require(script:GetCustomProperty("APIPlayerPassives"))

local TALENT_TREES = script:GetCustomProperty("TalentTrees"):WaitForObject()
local PLAYER_STATE_GROUP = script:GetCustomProperty("PlayerStateGroup"):WaitForObject()
local TALENTS_VIEW_ROOT = script:GetCustomProperty("TalentsViewRoot"):WaitForObject()
local TALENTS_PANEL = script:GetCustomProperty("TalentsPanel"):WaitForObject()
local TOOLTIP_PANEL = script:GetCustomProperty("TooltipPanel"):WaitForObject()
local TOOLTIP_NAME_TEXT = script:GetCustomProperty("TooltipNameText"):WaitForObject()
local TOOLTIP_PASSIVE_TEXT = script:GetCustomProperty("TooltipPassiveText"):WaitForObject()
local TOOLTIP_DESCRIPTION_TEXT = script:GetCustomProperty("TooltipDescriptionText"):WaitForObject()
local TOOLTIP_COST_TEXT = script:GetCustomProperty("TooltipCostText"):WaitForObject()
local TOOLTIP_REQUIRED_LEVEL_TEXT = script:GetCustomProperty("TooltipRequiredLevelText"):WaitForObject()
local TOOLTIP_STATE_TEXT = script:GetCustomProperty("TooltipStateText"):WaitForObject()
local TOOLTIP_BORDER_ROOT = script:GetCustomProperty("TooltipBorderRoot"):WaitForObject()
local BACKGROUND_PANEL = script:GetCustomProperty("BackgroundPanel"):WaitForObject()
local TALENT_TREE_PANEL_TEMPLATE = script:GetCustomProperty("TalentTreePanelTemplate")
local TALENT_BUTTON_TEMPLATE = script:GetCustomProperty("TalentButtonTemplate")
local TALENT_REQUIREMENT_ARROW_TEMPLATE = script:GetCustomProperty("TalentRequirementArrowTemplate")

local N_USABLE_TREES = TALENT_TREES:GetCustomProperty("NUsableTrees")

local SFX_ButtonClick = script:GetCustomProperty("SFX_ButtonClick")
local SFX_ButtonFail = script:GetCustomProperty("SFX_ButtonFail")
local SFX_ButtonHover = script:GetCustomProperty("SFX_ButtonHover")

local MAX_TOTAL_WIDTH = 1920.0
local TREE_HEIGHT = 700
local MAX_BUTTON_SIZE = 80.0
local BUTTON_PADDING = 0.5 * MAX_BUTTON_SIZE
local MIN_TREE_PADDING = 0.5 * MAX_BUTTON_SIZE	-- If at maximum button size, can be scaled down proportionally

local LOCAL_PLAYER = Game.GetLocalPlayer()

local tooltipTalentData = nil
local talentTreesVisible = false
local previousTalentStrings = {}				-- Local player only, string treeName -> string
local talentTreePanels = {}

local function PlaySound(sfx)
	World.SpawnAsset(sfx, { parent = script })
end

function ShowTalentTrees()
	TALENTS_VIEW_ROOT.visibility = Visibility.INHERIT
	TALENTS_PANEL.visibility = Visibility.INHERIT
	talentTreesVisible = true
end

function HideTalentTrees()
	TALENTS_VIEW_ROOT.visibility = Visibility.FORCE_OFF
	TALENTS_PANEL.visibility = Visibility.FORCE_OFF
	TOOLTIP_PANEL.visibility = Visibility.FORCE_OFF
	tooltipTalentData = nil
	talentTreesVisible = false
end

function OnButtonClicked(button, talentData, treeMetaData)
	if UTILITY.CanPlayerAcquireTalent(LOCAL_PLAYER, talentData) then
		PlaySound(SFX_ButtonClick)
		local treeOrder = UTILITY.TALENT_TREE_DATA[talentData.treeName].order
		API_RE.BroadcastToServer("TryLearnTalent", treeOrder, talentData.treeX, talentData.treeY)
	else
		PlaySound(SFX_ButtonFail)
	end
end

function OnButtonHovered(button, talentData, treeMetaData)
	PlaySound(SFX_ButtonHover)
	local cursorPosition = UI.GetCursorPosition()
	local screenSize = UI.GetScreenSize()
	cursorPosition.x = math.min(cursorPosition.x, screenSize.x - TOOLTIP_PANEL.width)
	cursorPosition.y = math.min(cursorPosition.y, screenSize.y - TOOLTIP_PANEL.height)
	TOOLTIP_PANEL.x = cursorPosition.x
	TOOLTIP_PANEL.y = cursorPosition.y
	TOOLTIP_PANEL.visibility = Visibility.INHERIT
	TOOLTIP_NAME_TEXT.text = talentData.name

	if talentData.isPassive then
		TOOLTIP_PASSIVE_TEXT.text = "Passive"
	else
		TOOLTIP_PASSIVE_TEXT.text = "Ability"
	end

	TOOLTIP_DESCRIPTION_TEXT.text = talentData.description
	TOOLTIP_COST_TEXT.text = "Cost: " .. talentData.cost
	TOOLTIP_REQUIRED_LEVEL_TEXT.text = "Required level: " .. talentData.requiredLevel
	tooltipTalentData = talentData
	local buttonTemplate = talentData.buttonTemplate
	local highLight = buttonTemplate:GetCustomProperty("Highlight"):WaitForObject()
	highLight.visibility = Visibility.INHERIT

	-- Set the color appropriately.
	TOOLTIP_NAME_TEXT:SetColor(treeMetaData.primaryColor)
	for _,uiImage in ipairs(TOOLTIP_BORDER_ROOT:FindDescendantsByType("UIImage")) do
		uiImage:SetColor(treeMetaData.primaryColor)
	end
end

function OnButtonUnhovered(button, talentData, treeMetaData)
	TOOLTIP_PANEL.visibility = Visibility.FORCE_OFF
	tooltipTalentData = nil
	local buttonTemplate = talentData.buttonTemplate
	local highLight = buttonTemplate:GetCustomProperty("Highlight"):WaitForObject()
	highLight.visibility = Visibility.FORCE_OFF
end

function BuildTalentTreeUI()
	local maxTreeWidth = UTILITY.TREE_WIDTH * MAX_BUTTON_SIZE + (UTILITY.TREE_WIDTH + 1) * BUTTON_PADDING
	local interTreeGapSize = (MAX_TOTAL_WIDTH - maxTreeWidth * N_USABLE_TREES) / (N_USABLE_TREES + 1)
	local treeScale = 1.0

	if interTreeGapSize < MIN_TREE_PADDING then
		local fullSize = maxTreeWidth * N_USABLE_TREES + (N_USABLE_TREES + 1) * MIN_TREE_PADDING
		treeScale = MAX_TOTAL_WIDTH / fullSize
	end

	local buttonGridSize = treeScale * (MAX_BUTTON_SIZE + BUTTON_PADDING)

	local treeDataArray = nil

	while true do
		treeDataArray = {}

		for treeName, treeData in pairs(UTILITY.TALENT_TREE_DATA) do
			if UTILITY.GetPlayerStateTreeHelper(LOCAL_PLAYER, treeName) then
				table.insert(treeDataArray, treeData)
			end
		end

		if #treeDataArray == N_USABLE_TREES then
			break
		end

		Task.Wait()
	end

	function CompareTrees(treeData1, treeData2)
		return treeData1.order < treeData2.order
	end

	table.sort(treeDataArray, CompareTrees)

	local treePositionIndexes = {}

	for i, treeData in pairs(treeDataArray) do
		treePositionIndexes[treeData.name] = i
	end

	-- The complete extent of entire talent tree UI. Used to size the background frame properly.
	local extent = { x0 = math.huge, x1 = -math.huge, y0 = math.huge, y1 = -math.huge }

	for treeName, treeData in pairs(UTILITY.TALENT_TREE_TABLE) do
		if UTILITY.GetPlayerStateTreeHelper(LOCAL_PLAYER, treeName) then
			-- Tree panels
			local treePanel = World.SpawnAsset(TALENT_TREE_PANEL_TEMPLATE, {parent = TALENTS_PANEL})
			treePanel.width = math.floor(treeScale * maxTreeWidth)
			treePanel.height = TREE_HEIGHT
			local index = treePositionIndexes[treeName]
			treePanel.x = math.floor((index - (N_USABLE_TREES + 1) / 2) * treeScale * (maxTreeWidth + MIN_TREE_PADDING))
			treePanel.y = 0
			local treeNameText = treePanel:GetCustomProperty("TreeNameText"):WaitForObject()
			local treeDescriptionText = treePanel:GetCustomProperty("TreeDescriptionText"):WaitForObject()
			treeNameText.text = treeName
			treeNameText:SetColor(UTILITY.TALENT_TREE_DATA[treeName].primaryColor)
			treeDescriptionText.text = UTILITY.TALENT_TREE_DATA[treeName].treeDescription
			local unadjustedTreeHeight = UTILITY.TREE_HEIGHT * MAX_BUTTON_SIZE + (UTILITY.TREE_HEIGHT + 1) * BUTTON_PADDING
			local minTreeHeight = treeScale * unadjustedTreeHeight + treeNameText.height
			local treeBackgroundImage = treePanel:GetCustomProperty("BackgroundImage"):WaitForObject()
			treeBackgroundImage:SetImage(UTILITY.TALENT_TREE_DATA[treeName].backgroundImage)
			local backgroundOffset = UTILITY.TALENT_TREE_DATA[treeName].backgroundOffset
			treeBackgroundImage.x = backgroundOffset.x
			treeBackgroundImage.y = backgroundOffset.y
			local rootViewPanel = treePanel:GetCustomProperty("Panel"):WaitForObject()
			rootViewPanel.height = math.floor(math.max(minTreeHeight, TREE_HEIGHT))

			-- Save some components on the tree data.
			talentTreePanels[treeName] = treePanel

			-- The reset buttons are connected to respec functionality.
			local respecButton = treePanel:GetCustomProperty("RespecButton"):WaitForObject()
			respecButton.clickedEvent:Connect(function()
				PlaySound(SFX_ButtonClick)
				API_RE.BroadcastToServer("RequestTalentTreeRespec")
			end)
			respecButton.hoveredEvent:Connect(function()
				PlaySound(SFX_ButtonHover)
			end)

			-- Update extent.
			extent.x0 = math.min(extent.x0, treePanel.x - treePanel.width / 2)
			extent.x1 = math.max(extent.x1, treePanel.x + treePanel.width / 2)
			extent.y0 = math.min(extent.y0, treePanel.y - treePanel.height / 2)
			extent.y1 = math.max(extent.y1, treePanel.y + treePanel.height / 2)

			local treeMetaData = UTILITY.TALENT_TREE_DATA[treeName]

			for talentName, talentData in pairs(treeData) do
				-- Talent buttons
				local buttonTemplate = World.SpawnAsset(TALENT_BUTTON_TEMPLATE, {parent = rootViewPanel})
				local panel = buttonTemplate:GetCustomProperty("Panel"):WaitForObject()
				panel.width = math.floor(treeScale * MAX_BUTTON_SIZE)
				panel.height = math.floor(treeScale * MAX_BUTTON_SIZE)
				panel.x = math.floor(treeScale * (talentData.treeX * (MAX_BUTTON_SIZE + BUTTON_PADDING) - MAX_BUTTON_SIZE))
				local unadjustedY = talentData.treeY * (MAX_BUTTON_SIZE + BUTTON_PADDING) - MAX_BUTTON_SIZE
				panel.y = math.floor(treeNameText.height + treeDescriptionText.height + treeScale * unadjustedY)
				local button = buttonTemplate:GetCustomProperty("Button"):WaitForObject()
				button:SetImage(talentData.icon)
				button.clickedEvent:Connect(OnButtonClicked, talentData, treeMetaData)
				button.hoveredEvent:Connect(OnButtonHovered, talentData, treeMetaData)
				button.unhoveredEvent:Connect(OnButtonUnhovered, talentData, treeMetaData)
				talentData.buttonTemplate = buttonTemplate

				-- Requirement arrows
				for _, requiredTalentData in pairs(UTILITY.GetRequiredTalentData(talentData)) do
					local xDiff = talentData.treeX - requiredTalentData.treeX
					local yDiff = talentData.treeY - requiredTalentData.treeY

					if xDiff ~= 0 then	-- RequiresAboveRight or RequiresAboveLeft
						local requirementArrow = World.SpawnAsset(TALENT_REQUIREMENT_ARROW_TEMPLATE, {parent = treePanel})
						local arrowPanel = requirementArrow:GetCustomProperty("ArrowPanel"):WaitForObject()
						arrowPanel.height = math.floor(treeScale * BUTTON_PADDING * 1.414)
						arrowPanel.x = panel.x + treeScale * MAX_BUTTON_SIZE / 2.0 - xDiff * buttonGridSize / 2.0
						arrowPanel.y = panel.y - treeScale * BUTTON_PADDING / 2.0
						arrowPanel.rotationAngle = -45.0 * xDiff

						if yDiff > 1 then
							local straightExtension = requirementArrow:GetCustomProperty("StraightExtension"):WaitForObject()
							-- 11 is a magic number, don't know why it works
							straightExtension.height = 11 + math.floor(treeScale * MAX_BUTTON_SIZE * 0.707 + 0.88)
							local verticalExtension = requirementArrow:GetCustomProperty("VerticalExtension"):WaitForObject()
							verticalExtension.visibility = Visibility.INHERIT
							local extensionButtonHeight = (yDiff - 1) * buttonGridSize
							local extensionAdjustmentHeight = 0.88 - treeScale * MAX_BUTTON_SIZE / 2.0 - 5
							verticalExtension.height = math.floor(extensionButtonHeight + extensionAdjustmentHeight)
							verticalExtension.x = arrowPanel.x - xDiff * buttonGridSize / 2.0
							local yAdjustment = 0.88 - verticalExtension.height / 2.0
							verticalExtension.y = arrowPanel.y - buttonGridSize / 2.0 + yAdjustment
						end
					else				-- RequiresAbove
						local requirementArrow = World.SpawnAsset(TALENT_REQUIREMENT_ARROW_TEMPLATE, {parent = treePanel})
						local arrowPanel = requirementArrow:GetCustomProperty("ArrowPanel"):WaitForObject()
						arrowPanel.height = math.floor(treeScale * BUTTON_PADDING)
						arrowPanel.x = panel.x + treeScale * MAX_BUTTON_SIZE / 2.0
						arrowPanel.y = panel.y - treeScale * BUTTON_PADDING / 2.0

						if yDiff > 1 then
							local extensionButtonHeight = (yDiff - 1) * buttonGridSize
							local straightExtension = requirementArrow:GetCustomProperty("StraightExtension"):WaitForObject()
							straightExtension.height = math.floor(extensionButtonHeight)
						end
					end
				end
			end
		end
	end

	-- Size the background according to extent.
	local backgroundPadding =  2 * MIN_TREE_PADDING
	BACKGROUND_PANEL.width = math.ceil(backgroundPadding + extent.x1 - extent.x0)
	BACKGROUND_PANEL.height = math.ceil(backgroundPadding + extent.y1 - extent.y0)
end

-- Return true if a tree should be grayed out.
local function ShouldGrayOutTree(currentTreeName, treeName)
	return currentTreeName ~= "" and currentTreeName ~= treeName
end

function Tick(deltaTime)
	-- The visibility of talent trees is controlled by the high-level UI controller.
	-- All prior visibility logic is preserved.
	if TALENTS_VIEW_ROOT.clientUserData.isVisible then
		ShowTalentTrees()
	else
		HideTalentTrees()
	end

	-- Begin populating tree information.
	for treeName, treeData in pairs(UTILITY.TALENT_TREE_TABLE) do
		local treeHelper = UTILITY.GetPlayerStateTreeHelper(LOCAL_PLAYER, treeName)

		if treeHelper then
			local talentString = treeHelper:GetCustomProperty("TalentString")
			local previousString = previousTalentStrings[treeName]

			if talentString ~= previousString then
				for _, talentData in pairs(treeData) do
					local index = talentData.index
					local newHaveTalent = string.sub(talentString, index, index) == "1"
					local previousHaveTalent = previousString and string.sub(previousString, index, index) == "1"

					-- New talent
					if newHaveTalent and not previousHaveTalent then
						for _, abilityName in pairs(talentData.abilityNames) do
							API_A.GivePlayerAbility(LOCAL_PLAYER, abilityName)
						end

						for _, passive in pairs(talentData.passives) do
							API_PP.GivePlayerPassive(LOCAL_PLAYER, passive)
						end
					end

					-- Removed talent
					if not newHaveTalent and previousHaveTalent then
						for _, abilityName in pairs(talentData.abilityNames) do
							API_A.RemovePlayerAbility(LOCAL_PLAYER, abilityName)
						end

						for _, passive in pairs(talentData.passives) do
							API_PP.RemovePlayerPassive(LOCAL_PLAYER, passive)
						end
					end
				end

				previousTalentStrings[treeName] = talentString
			end
		end
	end

	if not talentTreesVisible then
		return
	end
	
	local playerStateHelper = UTILITY.GetPlayerStateHelper(LOCAL_PLAYER)
	local currentTreeName = playerStateHelper:GetCustomProperty("TreeName")
	local numUnspentTalentPoints = UTILITY.GetPlayerTalentPoints(LOCAL_PLAYER)

	-- Draw various panel-specific elements.
	for treeName,treeData in pairs(UTILITY.TALENT_TREE_TABLE) do
		local treePanel = talentTreePanels[treeName]
		local treeUnspentPoints = treePanel:GetCustomProperty("UnspentPointsText"):WaitForObject()
		local treeRespecButton = treePanel:GetCustomProperty("RespecButton"):WaitForObject()
		local treeGrayOut = treePanel:GetCustomProperty("GrayOut"):WaitForObject()
		if treeName == currentTreeName then
			treeUnspentPoints.text = string.format("unspent: %d", numUnspentTalentPoints)
			treeUnspentPoints.visibility = Visibility.INHERIT
			treeRespecButton.visibility = Visibility.INHERIT
		else
			treeUnspentPoints.visibility = Visibility.FORCE_OFF
			treeRespecButton.visibility = Visibility.FORCE_OFF
		end
		-- Gray out needs to additionally *not* occur when no tree is selected.
		treeGrayOut.visibility = ShouldGrayOutTree(currentTreeName, treeName) and Visibility.INHERIT or Visibility.FORCE_OFF
	end

	-- Draw items on each tree.
	for treeName, treeData in pairs(UTILITY.TALENT_TREE_TABLE) do
		if UTILITY.GetPlayerStateTreeHelper(LOCAL_PLAYER, treeName) then
			for _, talentData in pairs(treeData) do
				local buttonTemplate = talentData.buttonTemplate
				local button = buttonTemplate:GetCustomProperty("Button"):WaitForObject()
				local check = buttonTemplate:GetCustomProperty("Check"):WaitForObject()
				local checkCorners = buttonTemplate:GetCustomProperty("CheckCorners"):WaitForObject()

				-- If the tree is grayed out, none of the buttons should be interactable.
				button.isInteractable = not ShouldGrayOutTree(currentTreeName, treeName)
				
				if UTILITY.CanPlayerAcquireTalent(LOCAL_PLAYER, talentData) then
					local t = (1.0 + math.sin(5.0 * os.clock())) / 2.0
					local color = Color.Lerp(Color.WHITE, Color.New(0.15, 0.15, 0.15), t)
					button:SetButtonColor(color)
					button:SetHoveredColor(color)
					button:SetPressedColor(color)
				elseif UTILITY.DoesPlayerHaveTalent(LOCAL_PLAYER, talentData) then
					button:SetButtonColor(Color.WHITE)
					button:SetHoveredColor(Color.WHITE)
					button:SetPressedColor(Color.WHITE)
				else
					button:SetButtonColor(Color.New(0.15, 0.15, 0.15))
					button:SetHoveredColor(Color.New(0.15, 0.15, 0.15))
					button:SetPressedColor(Color.New(0.15, 0.15, 0.15))
				end

				if UTILITY.DoesPlayerHaveTalent(LOCAL_PLAYER, talentData) then
				    check:SetColor(UTILITY.TALENT_TREE_DATA[treeName].primaryColor) 
				    checkCorners:SetColor(UTILITY.TALENT_TREE_DATA[treeName].primaryColor) 
					check.visibility = Visibility.INHERIT
				else
					check.visibility = Visibility.FORCE_OFF
				end
			end
		end
	end

	-- Tooltip is suppressed on grayed out trees.
	if tooltipTalentData and not ShouldGrayOutTree(currentTreeName, tooltipTalentData.treeName) then
		if UTILITY.DoesPlayerHaveTalent(LOCAL_PLAYER, tooltipTalentData) then
			TOOLTIP_STATE_TEXT:SetColor(Color.SAPPHIRE)
			TOOLTIP_STATE_TEXT.text = "Talent known"
		else
			local canLearn, errorMessage = UTILITY.CanPlayerAcquireTalent(LOCAL_PLAYER, tooltipTalentData)

			if canLearn then
				TOOLTIP_STATE_TEXT:SetColor(Color.EMERALD)
				TOOLTIP_STATE_TEXT.text = "Click to learn"
			else
				TOOLTIP_STATE_TEXT:SetColor(Color.RUBY)
				TOOLTIP_STATE_TEXT.text = errorMessage
			end
		end
	end
end

UTILITY.InitializeTalentTreeData(TALENT_TREES, PLAYER_STATE_GROUP, true)
BuildTalentTreeUI()
HideTalentTrees()
