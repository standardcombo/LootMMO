local Item = require(script:GetCustomProperty("Item"))
local ItemThemes = require(script:GetCustomProperty("ItemThemes"))
local UpgradesCostBasis = require(script:GetCustomProperty("UpgradesCostBasis"))
local UPGRADES_VIEW = script:GetCustomProperty("UpgradesView"):WaitForObject()
local INVENTORY_VIEW = script:GetCustomProperty("InventoryView"):WaitForObject()
local FULL_PANEL_SHEEN = script:GetCustomProperty("FullPanelSheen"):WaitForObject()
local PRIMARY_ITEM_ROOT = script:GetCustomProperty("PrimaryItemRoot"):WaitForObject()
local PREVIEW_ITEM_ROOT = script:GetCustomProperty("ItemPreviewRoot"):WaitForObject()
local CONFIRMATION_ROOT = script:GetCustomProperty("ConfirmationRoot"):WaitForObject()
local CONTINUE_BUTTON = script:GetCustomProperty("ButtonContinue"):WaitForObject()
local DRAG_DROP_HITBOX = script:GetCustomProperty("DragDropHitbox"):WaitForObject()

local SFX_ItemSelected = script:GetCustomProperty("SFX_ItemSelected")
local SFX_UpgradeEnhanced = script:GetCustomProperty("SFX_UpgradeEnhanced")
local SFX_UpgradeLimitBroken = script:GetCustomProperty("SFX_UpgradeLimitBroken")
local SFX_ButtonHover = script:GetCustomProperty("SFX_ButtonHover")
local SFX_ButtonClick = script:GetCustomProperty("SFX_ButtonClick")

local LOCAL_PLAYER = Game.GetLocalPlayer()

-----------------------------------------------------------------------------------------------------------------
-- Wait for inventory to load.
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory
local Database = inventory.database

------------------------------------------------------------------------------------------------
local function PlaySound(sfx)
    World.SpawnAsset(sfx, { parent = script })
end

------------------------------------------------------------------------------------------------
local view = {}

------------------------------------------------------------------------------------------------
function view:Init()
    self:SetupDragDropHitbox()
    self:SetupPrimaryItemRoot()
    self:SetupPreviewItemRoot()
    self:SetupConfirmationRoot()
    self:SetupContinueButton()
end

-----------------------------------------------------------------------------------------------------------------
function view:SetupDragDropHitbox()
    -- ATTENTION: If the UI is changed, the hitbox must also be moved. This one is coded much more inflexibly than
    -- those in the inventory. All anchors are assumed to be bottom-right.
    local hitboxBRX1 = DRAG_DROP_HITBOX.x + UPGRADES_VIEW.x
    local hitboxBRX2 = hitboxBRX1 - DRAG_DROP_HITBOX.width
    local hitboxBRY1 = DRAG_DROP_HITBOX.y + UPGRADES_VIEW.y
    local hitboxBRY2 = hitboxBRY1 - DRAG_DROP_HITBOX.height
    function self:IsCursorOverHitbox()
        local cursorPositionTL = UI.GetCursorPosition()                -- TopLeft position
        local cursorPositionBR = cursorPositionTL - UI.GetScreenSize() -- BotRight position
        return hitboxBRX1 >= cursorPositionBR.x and cursorPositionBR.x >= hitboxBRX2 and
               hitboxBRY1 >= cursorPositionBR.y and cursorPositionBR.y >= hitboxBRY2
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:SetupPrimaryItemRoot()
    self.primaryItemBackground = PRIMARY_ITEM_ROOT:GetCustomProperty("Background"):WaitForObject()
    self.primaryItemGlow = PRIMARY_ITEM_ROOT:GetCustomProperty("Gradient"):WaitForObject()
    self.primaryItemIcon = PRIMARY_ITEM_ROOT:GetCustomProperty("Icon"):WaitForObject()
    self.primaryItemNotAllowed = PRIMARY_ITEM_ROOT:GetCustomProperty("NotAllowed"):WaitForObject()
    self.primaryItemButton = PRIMARY_ITEM_ROOT:GetCustomProperty("Button"):WaitForObject()
    self.primaryItemInstructions = PRIMARY_ITEM_ROOT:GetCustomProperty("Instructions"):WaitForObject()
    self.primaryItemInstructionsBaseColor = self.primaryItemInstructions:GetColor()
    self.primaryItemInstructionsBaseText = self.primaryItemInstructions.text
    self.primaryItemIndicators = {
        PRIMARY_ITEM_ROOT:GetCustomProperty("IndicatorLeft"):WaitForObject(),
        PRIMARY_ITEM_ROOT:GetCustomProperty("IndicatorRight"):WaitForObject(),
        PRIMARY_ITEM_ROOT:GetCustomProperty("IndicatorTop"):WaitForObject(),
        PRIMARY_ITEM_ROOT:GetCustomProperty("IndicatorBottom"):WaitForObject(),
    }
    for _,indicator in ipairs(self.primaryItemIndicators) do
        indicator.clientUserData.baseX = indicator.x
        indicator.clientUserData.baseY = indicator.y
    end
    self.primaryItemButton.hoveredEvent:Connect(function() PlaySound(SFX_ButtonHover) end)
    self.primaryItemButton.clickedEvent:Connect(function()
        PlaySound(SFX_ButtonClick)
        self:MakePrimaryItemSelection(nil)
    end)
end

-----------------------------------------------------------------------------------------------------------------
function view:SetupPreviewItemRoot()
    self.previewItemBefore = PREVIEW_ITEM_ROOT:GetCustomProperty("ItemPreviewBefore"):WaitForObject()
    self.previewItemAfter = PREVIEW_ITEM_ROOT:GetCustomProperty("ItemPreviewAfter"):WaitForObject()
    self.previewItemArrow = PREVIEW_ITEM_ROOT:GetCustomProperty("Arrow"):WaitForObject()
    self.previewItemAfterBaseX = self.previewItemAfter.x
end

-----------------------------------------------------------------------------------------------------------------
function view:SetupConfirmationRoot()
    self.confirmationCostDisplay = CONFIRMATION_ROOT:GetCustomProperty("CostDisplay"):WaitForObject()
    self.confirmationCostDisplayIcon = self.confirmationCostDisplay:GetCustomProperty("Icon"):WaitForObject()
    self.confirmationCostDisplayName = self.confirmationCostDisplay:GetCustomProperty("Name"):WaitForObject()
    self.confirmationCostDisplayAmount = self.confirmationCostDisplay:GetCustomProperty("Amount"):WaitForObject()
    self.confirmationCostDisplayBackground = self.confirmationCostDisplay:GetCustomProperty("Background"):WaitForObject()
    self.confirmationEnhanceRoot = CONFIRMATION_ROOT:GetCustomProperty("ButtonActivateUpgrade"):WaitForObject()
    self.confirmationEnhanceButton = self.confirmationEnhanceRoot:GetCustomProperty("Button"):WaitForObject()
    self.confirmationLimitBreakRoot = CONFIRMATION_ROOT:GetCustomProperty("ButtonActivateLimitBreak"):WaitForObject()
    self.confirmationLimitBreakButton = self.confirmationLimitBreakRoot:GetCustomProperty("Button"):WaitForObject()

    self.confirmationEnhanceButton.clickedEvent:Connect(function() self:PerformUpgrade() end)
    self.confirmationLimitBreakButton.clickedEvent:Connect(function() self:PerformUpgrade() end)

    self.confirmationEnhanceButton.hoveredEvent:Connect(function() PlaySound(SFX_ButtonHover) end)
    self.confirmationLimitBreakButton.hoveredEvent:Connect(function() PlaySound(SFX_ButtonClick) end)
end

-----------------------------------------------------------------------------------------------------------------
function view:SetupContinueButton()
    CONTINUE_BUTTON.hoveredEvent:Connect(function() PlaySound(SFX_ButtonHover) end)
    CONTINUE_BUTTON.clickedEvent:Connect(function() 
        PlaySound(SFX_ButtonClick)
        self:ContinueUpgrading()
    end)
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
function view:PerformDragDropAction(inventorySlotIndex)
    local draggedItem = inventory:GetItem(inventorySlotIndex)
    if draggedItem:CanUpgrade() and self:IsCursorOverHitbox() then
        self:MakePrimaryItemSelection(inventorySlotIndex)
        return true
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:PerformClickAction(inventorySlotIndex)
    local clickedItem = inventory:GetItem(inventorySlotIndex)
    if clickedItem:CanUpgrade() then
        self:MakePrimaryItemSelection(inventorySlotIndex)
        return true
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:SetDraggingSlotOrigin(inventorySlotIndex)
    if inventorySlotIndex then
        self.inventoryDraggingItem = inventory:GetItem(inventorySlotIndex)
    else
        self.inventoryDraggingItem = nil
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:HasUsurpedInventorySlotItem(inventorySlotIndex)
    return inventorySlotIndex and self.selectedPrimaryItemSlotIndex == inventorySlotIndex
end

-----------------------------------------------------------------------------------------------------------------
function view:Open()
    if not self.isOpen then
        self.isOpen = true
        UPGRADES_VIEW.visibility = Visibility.INHERIT
        self:MakePrimaryItemSelection(nil)
        self:BeginInventoryExternalInteraction()
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:Close()
    self.isOpen = nil
    UPGRADES_VIEW.visibility = Visibility.FORCE_OFF
    self:EndInventoryExternalInteraction()
end

------------------------------------------------------------------------------------------------
function view:Update(dt)
    if not UPGRADES_VIEW.clientUserData.isVisible then
        self:Close()
    else
        self:Open()
        local updateMethod = "UPDATE_" .. self.currentState
        if self[updateMethod] then self[updateMethod](self, dt) end
        self:DrawPrimaryItemSlot()
        self:DrawConfirmationCostDisplay()
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:MakePrimaryItemSelection(inventorySlotIndex)
    local item = inventorySlotIndex and inventory:GetItem(inventorySlotIndex)
    if item then
        self.selectedPrimaryItemSlotIndex = inventorySlotIndex
        self.selectedPrimaryItem = item
        self.isContinuationUpgrade = nil
        self:GOTO("AwaitingUpgradeConfirmation")
        -- Some nice sfx.
        PlaySound(SFX_ItemSelected)
        PlaySound(ItemThemes.GetItemSFX(item:GetType()))
    else
        self.selectedPrimaryItemSlotIndex = nil
        self.selectedPrimaryItem = nil
        self:GOTO("AwaitingPrimaryItem")
    end
end

------------------------------------------------------------------------------------------------
function view:PerformUpgrade()
    assert(self.selectedPrimaryItemSlotIndex)
    local sfx = self.selectedPrimaryItem:IsNextUpgradeLimitBreak() and SFX_UpgradeLimitBroken or SFX_UpgradeEnhanced
    PlaySound(sfx)
    inventory:ExecuteItemUpgrade(self.selectedPrimaryItemSlotIndex)
    self:GOTO("CompletingUpgrade")
end

------------------------------------------------------------------------------------------------
function view:ContinueUpgrading()
    if self.selectedPrimaryItem:CanUpgrade() then
        self.isContinuationUpgrade = true
        self:GOTO("AwaitingUpgradeConfirmation")
    else
        self:MakePrimaryItemSelection(nil)
    end
end

------------------------------------------------------------------------------------------------
function view:GOTO(stateName)
    self.currentState = stateName
    self.elapsed = 0
    self:Update(0)
end

------------------------------------------------------------------------------------------------
function view:UPDATE_AwaitingPrimaryItem(dt)
    self.elapsed = self.elapsed + dt
    -- First time through setup.
    if self.elapsed == 0 then
        -- Root panel state.
        PRIMARY_ITEM_ROOT.visibility = Visibility.INHERIT
        PREVIEW_ITEM_ROOT.visibility = Visibility.FORCE_OFF
        CONFIRMATION_ROOT.visibility = Visibility.FORCE_OFF
        CONTINUE_BUTTON.visibility = Visibility.FORCE_OFF
        self.primaryItemButton.visibility = Visibility.FORCE_OFF
    end
    -- Appearance depends on whether the currently dragged item can be upgraded or not.
    if not self.inventoryDraggingItem or self.inventoryDraggingItem:CanUpgrade() then
        -- Standard instructions.
        local instructionsAlpha = 0.5 + 0.2 * math.sin(2 * math.pi * self.elapsed / 4.0)
        local instructionsColor = self.primaryItemInstructionsBaseColor
        instructionsColor.a = instructionsAlpha
        self.primaryItemInstructions:SetColor(instructionsColor)
        self.primaryItemInstructions.text = self.primaryItemInstructionsBaseText
        self.primaryItemInstructions.visibility = Visibility.INHERIT
        -- Inviting indicators.
        local indicatorDilation = 1 + 0.4 * math.sin(2 * math.pi * self.elapsed / 1.8)
        for _,indicator in ipairs(self.primaryItemIndicators) do
            indicator.visibility = Visibility.INHERIT
            indicator.x = indicator.clientUserData.baseX * indicatorDilation
            indicator.y = indicator.clientUserData.baseY * indicatorDilation
        end
        -- Full visibility of slot.
        self.primaryItemNotAllowed.visibility = Visibility.FORCE_OFF
    else
        -- Error message.
        local errorMessage = "This item cannot be upgraded!"
        if self.inventoryDraggingItem:IsFullyEnhanced() and self.inventoryDraggingItem:IsFullyLimitBroken() then
            errorMessage = "This item has maxed out upgrades!"
        end
        self.primaryItemInstructions:SetColor(ItemThemes.COLOR_BAD)
        self.primaryItemInstructions.text = errorMessage
        self.primaryItemInstructions.visibility = Visibility.INHERIT
        -- No indicators.
        for _,indicator in ipairs(self.primaryItemIndicators) do indicator.visibility = Visibility.FORCE_OFF end
        -- Obscured visibility of slot.
        self.primaryItemNotAllowed.visibility = Visibility.INHERIT
    end
end

------------------------------------------------------------------------------------------------
function view:UPDATE_AwaitingUpgradeConfirmation(dt)
    self.elapsed = self.elapsed + dt
    -- First time through setup.
    if self.elapsed == 0 then
        -- Root panel state.
        PRIMARY_ITEM_ROOT.visibility = Visibility.INHERIT
        PREVIEW_ITEM_ROOT.visibility = Visibility.INHERIT
        CONFIRMATION_ROOT.visibility = Visibility.INHERIT
        CONTINUE_BUTTON.visibility = Visibility.FORCE_OFF
        -- Primary slot can now be clicked to remove the item.
        self.primaryItemButton.visibility = Visibility.INHERIT
        -- Primary slot appearance no longer needs instructions or indicators.
        self.primaryItemInstructions.visibility = Visibility.FORCE_OFF
        for _,indicator in ipairs(self.primaryItemIndicators) do indicator.visibility = Visibility.FORCE_OFF end
        -- Setup the item preview.
        self.selectedPrimaryItemPreview = self.selectedPrimaryItem:Clone()
        self.selectedPrimaryItemPreview:Upgrade()
        self.selectedPrimaryItemRarityColor = ItemThemes.GetRarityColor(self.selectedPrimaryItem:GetRarity())
        self.previewItemBefore.visibility = Visibility.INHERIT
        self.previewItemBefore.clientUserData.itemToView = self.selectedPrimaryItem
        self.previewItemBefore.clientUserData.forceUpdate = true
        self.previewItemAfter.visibility = Visibility.INHERIT
        self.previewItemAfter.clientUserData.itemToView = self.selectedPrimaryItemPreview
        self.previewItemAfter.clientUserData.itemToCompare = self.selectedPrimaryItem
        self.previewItemAfter.clientUserData.forceUpdate = true
        self.previewItemAfter.x = self.previewItemAfterBaseX
        self.previewItemArrow.visibility = Visibility.INHERIT
        -- Set the sheen color.
        local rarityColor = ItemThemes.GetRarityColor(self.selectedPrimaryItem:GetRarity())
        local sheenColor = Color.New(rarityColor)
        sheenColor.a = FULL_PANEL_SHEEN:GetColor().a
        FULL_PANEL_SHEEN:SetColor(sheenColor)
    end
    -- Confirmation elements depend on whether this is an enhancement or a limit break.
    if self.selectedPrimaryItem:CanUpgrade() then
        if self.selectedPrimaryItem:IsNextUpgradeEnhancement() then
            self.confirmationEnhanceRoot.visibility = Visibility.INHERIT
            self.confirmationLimitBreakRoot.visibility = Visibility.FORCE_OFF
        else
            self.confirmationEnhanceRoot.visibility = Visibility.FORCE_OFF
            self.confirmationLimitBreakRoot.visibility = Visibility.INHERIT
        end
    end
    -- Buttons don't work when it can't be afforded.
    if inventory:CanExecuteItemUpgrade(self.selectedPrimaryItemSlotIndex) then
        self.confirmationEnhanceButton.isInteractable = true
        self.confirmationLimitBreakButton.isInteractable = true
    else
        self.confirmationEnhanceButton.isInteractable = false
        self.confirmationLimitBreakButton.isInteractable = false
    end
    -- Animate sheen on item selection.
    if not self.isContinuationUpgrade then
        self:_AnimateSheen(1.0)
    end
end

------------------------------------------------------------------------------------------------
function view:UPDATE_CompletingUpgrade(dt)
    self.elapsed = self.elapsed + dt
    -- First time through setup.
    if self.elapsed == 0 then
        -- Root panel state.
        PRIMARY_ITEM_ROOT.visibility = Visibility.INHERIT
        PREVIEW_ITEM_ROOT.visibility = Visibility.INHERIT
        CONFIRMATION_ROOT.visibility = Visibility.FORCE_OFF
        CONTINUE_BUTTON.visibility = Visibility.INHERIT
        -- Primary slot can now be clicked to remove the item.
        self.primaryItemButton.visibility = Visibility.INHERIT
        -- Disable most of the preview elements.
        self.previewItemBefore.visibility = Visibility.FORCE_OFF
        self.previewItemArrow.visibility = Visibility.FORCE_OFF
    end
    -- Slide the new item towards center.
    local DURATION = 0.4
    if self.elapsed < DURATION then
        self.previewItemAfter.x = CoreMath.Lerp(self.previewItemAfterBaseX, 0, self.elapsed / DURATION)
        self:_AnimateSheen(DURATION)
    end
end

------------------------------------------------------------------------------------------------
function view:DrawPrimaryItemSlot()
    if self.selectedPrimaryItem then
        self.primaryItemBackground.visibility = Visibility.INHERIT
        self.primaryItemIcon.visibility = Visibility.INHERIT
        self.primaryItemGlow:SetColor(ItemThemes.GetRarityColor(self.selectedPrimaryItem:GetRarity()))
        self.selectedPrimaryItem:ApplyIconImageSettings(self.primaryItemIcon)
    else
        self.primaryItemBackground.visibility = Visibility.FORCE_OFF
        self.primaryItemIcon.visibility = Visibility.FORCE_OFF
    end
end

------------------------------------------------------------------------------------------------
function view:DrawConfirmationCostDisplay()
    if self.selectedPrimaryItem and CONFIRMATION_ROOT.visibility ~= Visibility.FORCE_OFF then
        -- Display the upgrade cost.
        local itemToSpend, cost = UpgradesCostBasis.AppraiseItemUpgrade(self.selectedPrimaryItem)
        local heldAmount = inventory:CountStackableTotal(itemToSpend)
        itemToSpend:ApplyIconImageSettings(self.confirmationCostDisplayIcon)
        self.confirmationCostDisplayName.text = itemToSpend:GetName()
        self.confirmationCostDisplayAmount.text = string.format("%d / %d", heldAmount, cost)
        self.confirmationCostDisplayAmount:SetColor(heldAmount >= cost and ItemThemes.COLOR_GOOD or ItemThemes.COLOR_BAD)
        local backgroundColor = ItemThemes.GetRarityColor(itemToSpend:GetRarity())
        backgroundColor.a = self.confirmationCostDisplayBackground:GetColor().a
        self.confirmationCostDisplayBackground:SetColor(backgroundColor)
    end
end

------------------------------------------------------------------------------------------------
function view:_AnimateSheen(duration, delay)
    delay = delay or 0
    local elapsed = self.elapsed - delay
    if elapsed < duration then
        local fraction = -0.5 + elapsed / duration
        FULL_PANEL_SHEEN.visibility = Visibility.INHERIT
        FULL_PANEL_SHEEN.x = fraction * (UPGRADES_VIEW.width + 0.5 * FULL_PANEL_SHEEN.width)
        FULL_PANEL_SHEEN.y = fraction * (UPGRADES_VIEW.height + 0.5 * FULL_PANEL_SHEEN.height) * -1
    else
        FULL_PANEL_SHEEN.visibility = Visibility.FORCE_OFF
    end
end

------------------------------------------------------------------------------------------------
view:Init()
function Tick(dt)
    view:Update(dt)
end