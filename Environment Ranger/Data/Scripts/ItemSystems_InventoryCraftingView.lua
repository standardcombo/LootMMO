local Item = require(script:GetCustomProperty("Item"))
local ItemThemes = require(script:GetCustomProperty("ItemThemes"))
local CraftingRecipeMethods = require(script:GetCustomProperty("CraftingRecipeMethods"))
local CRAFTING_VIEW = script:GetCustomProperty("CraftingView"):WaitForObject()
local INVENTORY_VIEW = script:GetCustomProperty("InventoryView"):WaitForObject()
local RECIPE_BROWSER_SCROLL_PANEL = script:GetCustomProperty("RecipeBrowserScrollPanel"):WaitForObject()
local RECIPE_BROWSER_BUTTON_TEMPLATE = script:GetCustomProperty("RecipeBrowserButtonTemplate")
local RECIPE_BROWSER_BUTTON_SPACING = script:GetCustomProperty("RecipeBrowserButtonSpacing")
local RECIPE_BROWSER_CONTROL_PANEL = script:GetCustomProperty("RecipeBrowserControlPanel"):WaitForObject()
local RECIPE_BROWSER_CONTROL_SPACING = script:GetCustomProperty("RecipeBrowserControlSpacing")
local RECIPE_BROWSER_CONTROL_DOT_TEMPLATE = script:GetCustomProperty("RecipeBrowserControlDot")

local SFX_RECIPE_HOVER = script:GetCustomProperty("SFX_RecipeHover")
local SFX_RECIPE_SWIPE = script:GetCustomProperty("SFX_RecipeSwipe")
local SFX_RECIPE_SELECT = script:GetCustomProperty("SFX_RecipeSelect")
local SFX_CRAFTING_IN_PROGRESS = script:GetCustomProperty("SFX_CraftingUI_InProgress")
local SFX_CRAFTING_COMPLETE = script:GetCustomProperty("SFX_CraftingUI_Complete")

local COLOR_BRIGHTNESS_LOCKED = script:GetCustomProperty("IconColorBrightnessLocked")
local COLOR_BRIGHTNESS_HOVERED = script:GetCustomProperty("IconColorBrightnessHovered")
local COLOR_BRIGHTNESS_SELECTED = script:GetCustomProperty("IconColorBrightnessSelected")

local RECIPE_EXECUTION_PANEL = script:GetCustomProperty("RecipeExecutionFlowPanel"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

-----------------------------------------------------------------------------------------------------------------
-- Hardcoded animation parameters.
local BROWSER_SWIPE_DURATION = 0.4

-----------------------------------------------------------------------------------------------------------------
-- Rather than do this programmatically, we hardcode for maximum control.
local S = RECIPE_BROWSER_BUTTON_SPACING // 2
local PAGE_LAYOUTS = {
    [1] = { 
        {0,0},
    },
    [2] = {
        {-S,0}, {S,0},
    },
    [3] = {
        {-2*S,0}, {0,0}, {2*S,0},
    },
    [4] = {
        {-3*S,0}, {-1*S,0}, {1*S,0}, {3*S,0},
    },
    [5] = {
        {-2*S,-S}, {0,-S}, {2*S,-S}, {-S,S}, {S,S},
    },
    [6] = {
        {-2*S,-S}, {0,-S}, {2*S,-S}, {-2*S,S}, {0,S}, {2*S,S},
    },
    [7] = {
        {-3*S,-S}, {-1*S,-S}, {1*S,-S}, {3*S,-S}, {-2*S,S}, {0,S}, {2*S,S},
    },
    [8] = {
        {-3*S,-S}, {-1*S,-S}, {1*S,-S}, {3*S,-S}, {-3*S,S}, {-1*S,S}, {1*S,S}, {3*S,S}
    }
}

-----------------------------------------------------------------------------------------------------------------
-- Different crafts make use of different lower half views at various points during their craft flow.
local LOWER_HALF_VIEWS = {}

-----------------------------------------------------------------------------------------------------------------
local function PlaySound(sfx)
    return World.SpawnAsset(sfx, { parent = script })
end

local function ApplyColorBrightness(uiImage, coefficient)
    uiImage.clientUserData.baseColor = uiImage.clientUserData.baseColor or uiImage:GetColor()
    local towardsColor = coefficient >= 0 and Color.WHITE or Color.BLACK
    uiImage:SetColor(Color.Lerp(uiImage.clientUserData.baseColor, towardsColor, math.abs(coefficient)))
end

-----------------------------------------------------------------------------------------------------------------
-- Wait for inventory to load.
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
while not LOCAL_PLAYER.clientUserData.craftingRecipeManager do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory
local craftingRecipeManager = LOCAL_PLAYER.clientUserData.craftingRecipeManager
local Database = inventory.database

-----------------------------------------------------------------------------------------------------------------
local view = {}

function view:Init()
    self:SetupRecipeBrowser()
    self:SetupRecipeExecutionFlow()
    self:BrowseToPage(1)
    self:Close()
end

-----------------------------------------------------------------------------------------------------------------
function view:SetupRecipeBrowser()
    self.recipeButtons = {}
    self.navigationDots = {}
    local recipeItemDatas = Database:GetCraftingRecipeItemDatas()
    -- First group by pages.
    local firstPage = math.huge
    local finalPage = -math.huge
    local recipeBrowserPages = {}
    for _,itemData in ipairs(recipeItemDatas) do
        local page = itemData.crafting.recipeBookPage
        recipeBrowserPages[page] = recipeBrowserPages[page] or {}
        table.insert(recipeBrowserPages[page], itemData)
        firstPage = math.min(firstPage, page)
        finalPage = math.max(finalPage, page)
    end
    -- Draw each page.
    local pageMedian = (firstPage + finalPage) / 2
    for pageNumber,pageItemDatas in pairs(recipeBrowserPages) do
        local pageOffset = self:ComputeBrowserPageCenterOffset(pageNumber)
        local pageLayout = PAGE_LAYOUTS[#pageItemDatas]
        assert(pageLayout)
        for i,itemData in ipairs(pageItemDatas) do
            local recipeItem = Item.New(itemData)
            local widget = World.SpawnAsset(RECIPE_BROWSER_BUTTON_TEMPLATE, { parent = RECIPE_BROWSER_SCROLL_PANEL })
            local position = pageLayout[i]
            widget.x = position[1] + pageOffset
            widget.y = position[2]
            -- Save the item data so we don't have to track it down every time.
            widget.clientUserData.recipeItem = recipeItem
            -- Recipe browser is fixed at runtime, go ahead and draw all icons properly now.
            local rarityColor = ItemThemes.GetRarityColor(recipeItem:GetRarity())
            widget:GetCustomProperty("RarityGlow"):WaitForObject():SetColor(rarityColor)
            widget.clientUserData.recipeName = widget:GetCustomProperty("Label"):WaitForObject()
            widget.clientUserData.scrollIcon = widget:GetCustomProperty("ScrollIcon"):WaitForObject()
            widget.clientUserData.recipeIcon = widget:GetCustomProperty("RecipeIcon"):WaitForObject()
            local selectButton = widget:GetCustomProperty("SelectionButton"):WaitForObject()
            selectButton.clickedEvent:Connect(function() PlaySound(SFX_RECIPE_SELECT); self:MakeRecipeSelection(widget) end)
            selectButton.hoveredEvent:Connect(function() PlaySound(SFX_RECIPE_HOVER); self.hoveredRecipeWidget = widget end)
            selectButton.unhoveredEvent:Connect(function() self.hoveredRecipeWidget = nil end)
            widget.clientUserData.selectButton = selectButton
            -- Save for later.
            table.insert(self.recipeButtons, widget)
        end
        -- Add a navigation dot for each page.
        local navigationDot = World.SpawnAsset(RECIPE_BROWSER_CONTROL_DOT_TEMPLATE, { parent = RECIPE_BROWSER_CONTROL_PANEL })
        navigationDot.x = math.floor((pageNumber - pageMedian) * RECIPE_BROWSER_CONTROL_SPACING)
        navigationDot.clickedEvent:Connect(function() PlaySound(SFX_RECIPE_SWIPE); self:BrowseToPage(pageNumber) end)
        navigationDot.hoveredEvent:Connect(function() PlaySound(SFX_RECIPE_HOVER) end)
        self.navigationDots[pageNumber] = navigationDot
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:SetupRecipeExecutionFlow()
    self.executionPanelWidgets = {
        defaultInstructions         = RECIPE_EXECUTION_PANEL:GetCustomProperty("DefaultInstructions"):WaitForObject(),
        fullPanelSheen              = RECIPE_EXECUTION_PANEL:GetCustomProperty("FullPanelSheen"):WaitForObject(),
        recipeHeaderPanel           = RECIPE_EXECUTION_PANEL:GetCustomProperty("RecipeHeaderPanel"):WaitForObject(),
        recipeHeaderName            = RECIPE_EXECUTION_PANEL:GetCustomProperty("RecipeHeaderName"):WaitForObject(),
        recipeHeaderDescription     = RECIPE_EXECUTION_PANEL:GetCustomProperty("RecipeHeaderDescription"):WaitForObject(),
        ingredientPanelRoot         = RECIPE_EXECUTION_PANEL:GetCustomProperty("IngredientPanelRoot"):WaitForObject(),
        primaryItemPanel            = RECIPE_EXECUTION_PANEL:GetCustomProperty("PrimaryItemPanel"):WaitForObject(),
        craftItemResultStatsPanel  = RECIPE_EXECUTION_PANEL:GetCustomProperty("CraftItemResultStatsPanel"):WaitForObject(),
    }
    self.ingredientWidgets = {
        [1] = RECIPE_EXECUTION_PANEL:GetCustomProperty("IngredientPanel1"):WaitForObject(),
        [2] = RECIPE_EXECUTION_PANEL:GetCustomProperty("IngredientPanel2"):WaitForObject(),
        [3] = RECIPE_EXECUTION_PANEL:GetCustomProperty("IngredientPanel3"):WaitForObject(),
    }
    for _,widget in pairs(self.ingredientWidgets) do
        widget.clientUserData.background = widget:GetCustomProperty("Background"):WaitForObject()
        widget.clientUserData.backgroundBaseColor = widget.clientUserData.background:GetColor()
        widget.clientUserData.notInUse = widget:GetCustomProperty("NotInUse"):WaitForObject()
        widget.clientUserData.icon = widget:GetCustomProperty("Icon"):WaitForObject()
        widget.clientUserData.name = widget:GetCustomProperty("Name"):WaitForObject()
        widget.clientUserData.amount = widget:GetCustomProperty("Amount"):WaitForObject()
    end
    self.primaryItemBackground = self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("Background"):WaitForObject()
    self.primaryItemGradient = self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("Gradient"):WaitForObject()
    self.primaryItemIcon = self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("Icon"):WaitForObject()
    self.primaryItemNotAllowed = self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("NotAllowed"):WaitForObject()
    self.primaryItemInstructions = self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("Instructions"):WaitForObject()
    self.primaryItemCraftButton = self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("CraftButton"):WaitForObject()
    self.primaryItemIndicators = {
        self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("IndicatorLeft"):WaitForObject(),
        self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("IndicatorRight"):WaitForObject(),
        self.executionPanelWidgets.primaryItemPanel:GetCustomProperty("IndicatorTop"):WaitForObject(),
    }
    for _,indicator in pairs(self.primaryItemIndicators) do
        indicator.clientUserData.baseX = indicator.x
        indicator.clientUserData.baseY = indicator.y
    end
    self.primaryItemCraftButton.clickedEvent:Connect(function() self:GOTO_ExecutePrimaryItemCraft() end)
    -- Results view.
    self.resultStatsTooltipBefore = self.executionPanelWidgets.craftItemResultStatsPanel:GetCustomProperty("ItemTooltipBefore"):WaitForObject()
    self.resultStatsTooltipAfter = self.executionPanelWidgets.craftItemResultStatsPanel:GetCustomProperty("ItemTooltipAfter"):WaitForObject()
    self.resultStatsProgressBar = self.executionPanelWidgets.craftItemResultStatsPanel:GetCustomProperty("ProgressBar"):WaitForObject()
end

-----------------------------------------------------------------------------------------------------------------
function view:ComputeBrowserPageCenterOffset(pageNumber)
    return (pageNumber - 1) * RECIPE_BROWSER_SCROLL_PANEL.width
end

-----------------------------------------------------------------------------------------------------------------
function view:BrowseToPage(pageNumber)
    -- Show the correct page.
    local pageOffset = self:ComputeBrowserPageCenterOffset(pageNumber)
    self.animateBrowserScrollOrigin = RECIPE_BROWSER_SCROLL_PANEL.x
    self.animateBrowserScrollTarget = -pageOffset
    self.animateBrowserScrollCommence = time()
    -- Update navigation buttons.
    for dotPageNumber,dot in pairs(self.navigationDots) do
        if dotPageNumber == pageNumber then
            dot.isInteractable = false
        else
            dot.isInteractable = true
        end
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:MakeRecipeSelection(recipeWidget)
    self.selectedRecipeWidget = recipeWidget
    if recipeWidget.clientUserData.recipeItem:GetCraftingRecipeData().method.type == "MODIFY" then
        self:GOTO_AwaitingPrimaryItemSelection()
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:HideAllExecutionPanelWidgets()
    for k,widget in pairs(self.executionPanelWidgets) do
        widget.visibility = Visibility.FORCE_OFF
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:Open()
    CRAFTING_VIEW.visibility = Visibility.INHERIT
end

-----------------------------------------------------------------------------------------------------------------
function view:Close()
    CRAFTING_VIEW.visibility = Visibility.FORCE_OFF
    self:GOTO_AwaitingRecipeSelection()
end

-----------------------------------------------------------------------------------------------------------------
function view:BeginInventoryExternalInteraction()
    INVENTORY_VIEW.clientUserData.externalInteractionTarget = self
end

-----------------------------------------------------------------------------------------------------------------
function view:EndInventoryExternalInteraction()
    if INVENTORY_VIEW.clientUserData.externalInteractionTarget == self then
        INVENTORY_VIEW.clientUserData.externalInteractionTarget = nil
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:Update(dt)
    if not CRAFTING_VIEW.clientUserData.isVisible then
        self:Close()
    else
        self:Open()
        self:DrawRecipeBrowser()
        self:Animate(dt)
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:DrawRecipeBrowser()
    -- Animate any scrolling.
    if self.animateBrowserScrollTarget and self.animateBrowserScrollTarget ~= RECIPE_BROWSER_SCROLL_PANEL.x then
        local fraction = (time() - self.animateBrowserScrollCommence) / BROWSER_SWIPE_DURATION
        if fraction >= 1 then
            RECIPE_BROWSER_SCROLL_PANEL.x = self.animateBrowserScrollTarget
            self.animateBrowserScrollOrigin = nil
            self.animateBrowserScrollTarget = nil
            self.animateBrowserScrollCommence = nil
        else
            RECIPE_BROWSER_SCROLL_PANEL.x = CoreMath.Lerp(self.animateBrowserScrollOrigin, self.animateBrowserScrollTarget, fraction)
        end
    end
    -- Update icons to reflect unlock and selection status.
    for _,widget in ipairs(self.recipeButtons) do
        local recipeItem = widget.clientUserData.recipeItem
        widget.clientUserData.recipeName.text = recipeItem:GetName()
        recipeItem:ApplyIconImageSettings(widget.clientUserData.scrollIcon, widget.clientUserData.recipeIcon)
        if craftingRecipeManager:IsCraftingRecipeUnlocked(recipeItem:GetIndex()) then
            widget.clientUserData.selectButton.visibility = Visibility.INHERIT
            if widget == self.selectedRecipeWidget then
                -- Widget is currently selected.
                widget.clientUserData.selectButton.isInteractable = false
                ApplyColorBrightness(widget.clientUserData.recipeName, COLOR_BRIGHTNESS_SELECTED)
                ApplyColorBrightness(widget.clientUserData.scrollIcon, COLOR_BRIGHTNESS_SELECTED)
                ApplyColorBrightness(widget.clientUserData.recipeIcon, COLOR_BRIGHTNESS_SELECTED)
            else
                widget.clientUserData.selectButton.isInteractable = true
                if widget == self.hoveredRecipeWidget then
                    -- Widget is currently hovered.
                    ApplyColorBrightness(widget.clientUserData.recipeName, COLOR_BRIGHTNESS_HOVERED)
                    ApplyColorBrightness(widget.clientUserData.scrollIcon, COLOR_BRIGHTNESS_HOVERED)
                    ApplyColorBrightness(widget.clientUserData.recipeIcon, COLOR_BRIGHTNESS_HOVERED)
                else
                    -- Widget is in default state.
                    ApplyColorBrightness(widget.clientUserData.recipeName, 0)
                    ApplyColorBrightness(widget.clientUserData.scrollIcon, 0)
                    ApplyColorBrightness(widget.clientUserData.recipeIcon, 0)
                end
            end
        else
            -- This recipe is not yet discovered.
            widget.clientUserData.selectButton.visibility = Visibility.FORCE_OFF
            widget.clientUserData.recipeName.text = "?????"
            ApplyColorBrightness(widget.clientUserData.recipeName, COLOR_BRIGHTNESS_LOCKED)
            ApplyColorBrightness(widget.clientUserData.scrollIcon, COLOR_BRIGHTNESS_LOCKED)
            ApplyColorBrightness(widget.clientUserData.recipeIcon, COLOR_BRIGHTNESS_LOCKED)
        end
    end
end


-----------------------------------------------------------------------------------------------------------------
-- This is the default state when no recipe is selected. Any time you open the view this is the starting state.
function view:GOTO_AwaitingRecipeSelection()
    self.phase = "AwaitingRecipeSelection"
    self:HideAllExecutionPanelWidgets()
    self:EndInventoryExternalInteraction()
    self.selectedRecipeWidget = nil
    self.executionPanelWidgets.defaultInstructions.visibility = Visibility.INHERIT
    self.updateMethod = function(dt) 
        local blinkColor = self.executionPanelWidgets.defaultInstructions:GetColor()
        blinkColor.a = 0.4 + 0.2 * math.sin(2 * math.pi * time() / 5)
        self.executionPanelWidgets.defaultInstructions:SetColor(blinkColor)
    end
    if self.currentSfx and Object.IsValid(self.currentSfx) then
        self.currentSfx:Destroy()
        self.currentSfx = nil
    end
end

-----------------------------------------------------------------------------------------------------------------
-- Indefinite state where the selected recipe view is revealed. Certain recipes require player interaction to
-- fill in missing ingredients from their inventory.
function view:GOTO_AwaitingPrimaryItemSelection()
    self.phase = "AwaitingPrimaryItemSelection"
    self:HideAllExecutionPanelWidgets()
    local recipeItem = self.selectedRecipeWidget.clientUserData.recipeItem
    self.executionPanelWidgets.defaultInstructions.visibility = Visibility.FORCE_OFF
    -- Header info.
    self.executionPanelWidgets.recipeHeaderPanel.visibility = Visibility.INHERIT
    self.executionPanelWidgets.recipeHeaderName.visibility = Visibility.INHERIT
    self.executionPanelWidgets.recipeHeaderDescription.visibility = Visibility.INHERIT
    self.executionPanelWidgets.recipeHeaderName.text = recipeItem:GetName()
    self.executionPanelWidgets.recipeHeaderDescription.text = recipeItem:GetDescription()
    -- Ingredients.
    self.executionPanelWidgets.ingredientPanelRoot.visibility = Visibility.INHERIT
    local craftingRecipeData = recipeItem:GetCraftingRecipeData()
    for i,widget in ipairs(self.ingredientWidgets) do
        local ingredient = craftingRecipeData.ingredients[i]
        if ingredient and ingredient.item then
            widget.clientUserData.name.text = ingredient.item:GetName()
            widget.clientUserData.amount.text = ""
            widget.clientUserData.icon.visibility = Visibility.INHERIT
            ingredient.item:ApplyIconImageSettings(widget.clientUserData.icon)
            local backgroundColor = ItemThemes.GetRarityColor(ingredient.item:GetRarity())
            backgroundColor.a = widget.clientUserData.backgroundBaseColor.a
            widget.clientUserData.background:SetColor(backgroundColor)
            widget.clientUserData.background.visibility = Visibility.INHERIT
            widget.clientUserData.notInUse.visibility = Visibility.FORCE_OFF
        else
            widget.clientUserData.name.text = ""
            widget.clientUserData.amount.text = ""
            widget.clientUserData.icon.visibility = Visibility.FORCE_OFF
            widget.clientUserData.background.visibility = Visibility.FORCE_OFF
            widget.clientUserData.notInUse.visibility = Visibility.INHERIT
        end
    end
    -- Primary slot.
    self:BeginInventoryExternalInteraction()
    self.executionPanelWidgets.primaryItemPanel.visibility = Visibility.FORCE_OFF
    self.primaryItemInstructions.visibility = Visibility.INHERIT
    self.primaryItemBackground.visibility = Visibility.FORCE_OFF
    self.primaryItemIcon.visibility = Visibility.FORCE_OFF
    self.primaryItemCraftButton.visibility = Visibility.FORCE_OFF
    self.primaryItem = nil
    self.primaryItemInventorySlotIndex = nil
    self.isSufficientIngredients = nil
    -- Sheen animation panel.
    self.executionPanelWidgets.fullPanelSheen.visibility = Visibility.INHERIT
    local sheenColor = ItemThemes.GetRarityColor(recipeItem:GetRarity())
    sheenColor.a = 0.15
    self.executionPanelWidgets.fullPanelSheen:SetColor(sheenColor)
    -- Animations.
    self.updateElapsed = 0
    self.updateMethod = function(dt) self:UPDATE_AwaitingPrimaryItemSelection(dt) end
end

-----------------------------------------------------------------------------------------------------------------
function view:UPDATE_AwaitingPrimaryItemSelection(dt)
    self.updateElapsed = self.updateElapsed + dt
    local recipeItem = self.selectedRecipeWidget.clientUserData.recipeItem
    local craftingRecipeData = recipeItem:GetCraftingRecipeData()
    -- Animate the sheen.
    if self.updateElapsed < 1 then
        local fraction = (self.updateElapsed / 1) - 0.5
        self.executionPanelWidgets.fullPanelSheen.x = fraction * (RECIPE_EXECUTION_PANEL.width + self.executionPanelWidgets.fullPanelSheen.width)
        self.executionPanelWidgets.fullPanelSheen.y = -1 * fraction * (RECIPE_EXECUTION_PANEL.height + self.executionPanelWidgets.fullPanelSheen.height)
    end
    -- Update ingredient amounts.
    local heldIngredientCounts = inventory:ComputeCraftingRecipeIngredientCounts(recipeItem)
    self.isSufficientIngredients = true
    for i,widget in ipairs(self.ingredientWidgets) do
        if craftingRecipeData.ingredients[i] then
            local heldCount = heldIngredientCounts[i]
            local requiredAmount = craftingRecipeData.ingredients[i].amount
            widget.clientUserData.amount.text = string.format("%d / %d", heldCount, requiredAmount)
            widget.clientUserData.amount:SetColor(heldCount >= requiredAmount and ItemThemes.COLOR_GOOD or ItemThemes.COLOR_BAD)
            self.isSufficientIngredients = self.isSufficientIngredients and (heldCount >= requiredAmount)
        end
    end
    -- Animate the various UI elements which indicate for a primary item.
    local draggingItem = self.inventoryDraggingSlotOrigin and inventory:GetItem(self.inventoryDraggingSlotOrigin)
    local shouldShowIndicators = true
    if not self.isSufficientIngredients then
        self.executionPanelWidgets.primaryItemPanel.visibility = Visibility.FORCE_OFF
        self.primaryItem = nil
        self.primaryItemInventorySlotIndex = nil
    else
        self.executionPanelWidgets.primaryItemPanel.visibility = Visibility.INHERIT
        if self.primaryItem and self.isSufficientIngredients then
            self.primaryItemInstructions.visibility = Visibility.FORCE_OFF
            self.primaryItemNotAllowed.visibility = Visibility.FORCE_OFF
            self.primaryItemCraftButton.visibility = Visibility.INHERIT
            shouldShowIndicators = false
        elseif not draggingItem or craftingRecipeData.method:CanRecipeAcceptPrimaryItem(recipeItem, draggingItem) then
            self.primaryItemInstructions.visibility = Visibility.INHERIT
            self.primaryItemNotAllowed.visibility = Visibility.FORCE_OFF
            self.primaryItemCraftButton.visibility = Visibility.FORCE_OFF
        else
            self.primaryItemInstructions.visibility = Visibility.FORCE_OFF
            self.primaryItemNotAllowed.visibility = Visibility.INHERIT
            self.primaryItemCraftButton.visibility = Visibility.FORCE_OFF
            shouldShowIndicators = false
        end
    end

    local indicatorVisibility = shouldShowIndicators and Visibility.INHERIT or Visibility.FORCE_OFF
    local indicatorExpansion = 0.4 * math.sin(2 * math.pi * self.updateElapsed / 2)
    for _,indicator in ipairs(self.primaryItemIndicators) do
        indicator.x = (1 + indicatorExpansion) * indicator.clientUserData.baseX
        indicator.y = (1 + indicatorExpansion) * indicator.clientUserData.baseY
        indicator.visibility = indicatorVisibility
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:GOTO_ExecutePrimaryItemCraft()
    self.executionPanelWidgets.recipeHeaderPanel.visibility = Visibility.FORCE_OFF
    self.executionPanelWidgets.ingredientPanelRoot.visibility = Visibility.FORCE_OFF
    self.executionPanelWidgets.craftItemResultStatsPanel.visibility = Visibility.INHERIT
    self.resultStatsTooltipBefore.visibility = Visibility.INHERIT
    self.resultStatsTooltipAfter.visibility = Visibility.FORCE_OFF
    self.resultStatsProgressBar.visibility = Visibility.INHERIT
    local beforeItem = Item.New(self.primaryItem.data, self.primaryItem:GetStackSize(), self.primaryItem:GetEnhancementLevel())
    beforeItem:CopyStats(self.primaryItem)
    self.resultStatsTooltipAfter.clientUserData.itemToCompareWith = beforeItem
    self.resultStatsTooltipBefore.clientUserData.itemToView = beforeItem
    self.resultStatsTooltipBefore.clientUserData.shouldGrayOut = nil

    self.updateElapsed = 0
    self.updateMethod = function(dt) self:UPDATE_ExecutePrimaryItemCraft(dt) end
    self.currentSfx = PlaySound(SFX_CRAFTING_IN_PROGRESS)
end

-----------------------------------------------------------------------------------------------------------------
function view:UPDATE_ExecutePrimaryItemCraft(dt)
    if self.updateElapsed then
        self.updateElapsed = self.updateElapsed + dt
        if self.updateElapsed < 1.4 then
            self.resultStatsProgressBar.progress = (self.updateElapsed / 1.4)
        else
            PlaySound(SFX_CRAFTING_COMPLETE)
            self.updateElapsed = nil
            inventory:ExecutePrimaryItemCraft(self.selectedRecipeWidget.clientUserData.recipeItem, self.primaryItemInventorySlotIndex)
            self.resultStatsProgressBar.visibility = Visibility.FORCE_OFF
            self.resultStatsTooltipAfter.visibility = Visibility.INHERIT
            self.resultStatsTooltipAfter.clientUserData.itemToView = self.primaryItem
            self.resultStatsTooltipAfter.clientUserData.forceUpdate = true
            self.resultStatsTooltipBefore.clientUserData.shouldGrayOut = true
            self.resultStatsTooltipBefore.clientUserData.forceUpdate = true
            self.resultStatsTooltipAfter.clientUserData.itemToCompareWith = self.beforeItem
            self.selectedRecipeWidget = nil
            self:EndInventoryExternalInteraction()
        end
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:PerformClickAction(inventorySlotIndex)
    self.inventoryClickAction = inventorySlotIndex
    if self.phase == "AwaitingPrimaryItemSelection" then
        local recipeItem = self.selectedRecipeWidget.clientUserData.recipeItem
        local craftingRecipeData = recipeItem:GetCraftingRecipeData()
        local clickedItem = inventory:GetItem(inventorySlotIndex)
        if self.isSufficientIngredients and craftingRecipeData.method:CanRecipeAcceptPrimaryItem(recipeItem, clickedItem) then
            self.primaryItem = clickedItem
            self.primaryItemInventorySlotIndex = inventorySlotIndex
            PlaySound(ItemThemes.GetItemSFX(self.primaryItem:GetType()))
            self.primaryItemBackground.visibility = Visibility.INHERIT
            self.primaryItemGradient:SetColor(ItemThemes.GetRarityColor(self.primaryItem:GetRarity()))
            self.primaryItemIcon.visibility = Visibility.INHERIT
            self.primaryItem:ApplyIconImageSettings(self.primaryItemIcon)
            return true
        end
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:PerformDragDropAction(inventorySlotIndex)
    self.inventoryDragDropSlotOrigin = inventorySlotIndex
    if self.phase == "AwaitingPrimaryItemSelection" then

    end
end

-----------------------------------------------------------------------------------------------------------------
function view:SetDraggingSlotOrigin(inventorySlotIndex)
    self.inventoryDraggingSlotOrigin = inventorySlotIndex
    self:Update(0)
end

-----------------------------------------------------------------------------------------------------------------
function view:HasUsurpedInventorySlotItem(inventorySlotIndex)
    if self.phase == "AwaitingPrimaryItemSelection" then
        return inventorySlotIndex and inventorySlotIndex == self.primaryItemInventorySlotIndex
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:Animate(dt)
    if self.updateMethod then
        self.updateMethod(dt)
    end
end

-----------------------------------------------------------------------------------------------------------------
view:Init()
function Tick(dt)
    view:Update(dt)
end