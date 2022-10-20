local ItemThemes = require(script:GetCustomProperty("ItemSystems_ItemThemes"))
local LOOT_VIEW = script:GetCustomProperty("LootView"):WaitForObject()
local LOOT_SCROLL_PANEL = script:GetCustomProperty("ScrollPanel"):WaitForObject()
local ITEM_HOVER_VIEW = script:GetCustomProperty("ItemHoverView"):WaitForObject()
local PANEL_CLAIM_INSTRUCTIONS = script:GetCustomProperty("ClaimInstructions"):WaitForObject()
local PANEL_CLAIM_WARNING = script:GetCustomProperty("InventoryFullWarning"):WaitForObject()
local ENTRY_PADDING_BETWEEN = script:GetCustomProperty("PaddingBetween")
local ENTRY_TEMPLATE = script:GetCustomProperty("LootEntryTemplate")
local DEFAULT_ICON = script:GetCustomProperty("DefaultIcon")
local SFX_CLAIM_SUCCESS = script:GetCustomProperty("SFX_ClaimSuccess")
local SFX_CLAIM_FAILURE = script:GetCustomProperty("SFX_ClaimFailure")
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Don't do anything until inventory has loaded.
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory

local function PlaySound(sfx)
    if sfx then
        World.SpawnAsset(sfx, { parent = script })
    end
end

-- The color of disabled buttons. We will read it from the template later.
local COLOR_BUTTON_DISABLED = nil

-- Keep a set of entries which can be re-used.
local view = {}

function view:Init()
    self.lootEntries = {}
    self.lootEntryFreeSet = {}
    self:Clear()
end

function view:NewEntry()
    local entry = World.SpawnAsset(ENTRY_TEMPLATE, { parent = LOOT_SCROLL_PANEL })
    entry.clientUserData.icon = entry:GetCustomProperty("Icon"):WaitForObject()
    entry.clientUserData.iconBorder = entry:GetCustomProperty("IconBorder"):WaitForObject()
    entry.clientUserData.iconGradient = entry:GetCustomProperty("IconGradient"):WaitForObject()
    entry.clientUserData.button = entry:GetCustomProperty("Button"):WaitForObject()
    entry.clientUserData.buttonText = entry:GetCustomProperty("ButtonText"):WaitForObject()
    -- Fine to overwrite this every time, it's the same template so the color won't change.
    COLOR_BUTTON_DISABLED = entry.clientUserData.button:GetDisabledColor()
    -- The button needs a back-reference so that callbacks can act properly.
    entry.clientUserData.button.clientUserData.entry = entry
    -- Connect callbacks.
    entry.clientUserData.button.clickedEvent:Connect(function(button) self:OnClick(button) end)
    entry.clientUserData.button.hoveredEvent:Connect(function(button) self:OnHover(button) end)
    entry.clientUserData.button.unhoveredEvent:Connect(function(button) self:OnUnhover(button) end)
    -- All buttons are interactable at all times.
    entry.clientUserData.button.isInteractable = true
    return entry
end

function view:PrepareLootEntry(lootIndex, lootInfo, isBackpackFull)
    local entry = nil
    for freeEntry,_ in pairs(self.lootEntryFreeSet) do
        entry = freeEntry
        self.lootEntryFreeSet[freeEntry] = nil
        break
    end
    entry = entry or self:NewEntry()
    self.lootEntries[entry] = true
    -- Set the loot index so the button callback can act accordingly.
    entry.clientUserData.lootIndex = lootIndex
    -- Set the icon and name according to the item.
    local stackSize = lootInfo.stackSize
    if stackSize == 1 then
        entry.clientUserData.buttonText.text = lootInfo.item:GetName()
    else
        entry.clientUserData.buttonText.text = string.format("%s (%d)", lootInfo.item:GetName(), stackSize)
    end
    lootInfo.item:ApplyIconImageSettings(entry.clientUserData.icon)
    -- Set the colors according to rarity.
    local color = ItemThemes.GetRarityColor(lootInfo.item:GetRarity())
    entry.clientUserData.iconBorder:SetColor(color)
    entry.clientUserData.iconGradient:SetColor(color)
    entry.clientUserData.buttonText:SetColor(color)
    -- Button appearance depends on whether items can be claimed or not.
    local canLootBeClaimed = nil
    canLootBeClaimed = canLootBeClaimed or (lootInfo.item:IsStackable() and inventory:CanClaimLoot(lootIndex))
    canLootBeClaimed = canLootBeClaimed or (not self.isBackpackFull)
    if canLootBeClaimed then
        color.a = 0.2
        entry.clientUserData.button:SetButtonColor(color)
        color.a = 0.5
        entry.clientUserData.button:SetHoveredColor(color)
        color.a = 0.7
        entry.clientUserData.button:SetPressedColor(color)
    else
        -- In the case where the backpack is full, we fake the button being disabled. We need it to stay enabled however
        -- so that hover events still work.
        local color = Color.New(COLOR_BUTTON_DISABLED)
        color.a = 0.2
        entry.clientUserData.button:SetButtonColor(color)
        color.a = 0.3
        entry.clientUserData.button:SetHoveredColor(color)
        entry.clientUserData.button:SetPressedColor(color)
    end
    return entry
end

function view:Clear()
    for entry,_ in pairs(self.lootEntries) do
        entry.visibility = Visibility.FORCE_OFF
        self.lootEntries[entry] = nil
        self.lootEntryFreeSet[entry] = true
    end
    self.yOffset = 0
    self.numEntries = 0
end

function view:DrawEntry(lootEntry)
    lootEntry.visibility = Visibility.INHERIT
    lootEntry.y = self.yOffset
    self.yOffset = self.yOffset + lootEntry.height + ENTRY_PADDING_BETWEEN
    self.numEntries = self.numEntries + 1
    lootEntry.clientUserData.viewIndex = self.numEntries
end

function view:FinalizeHeight()
    LOOT_SCROLL_PANEL.height = self.yOffset
end

function view:Update()
    if not LOOT_VIEW.clientUserData.isVisible then
        LOOT_VIEW.visibility = Visibility.FORCE_OFF
        return
    end
    -- Clear everything from the last frame.
    self:Clear()
    LOOT_VIEW.visibility = Visibility.INHERIT
    PANEL_CLAIM_INSTRUCTIONS.visibility = Visibility.FORCE_OFF
    PANEL_CLAIM_WARNING.visibility = Visibility.FORCE_OFF
    -- Get all loots for the local player.
    local lootInfos = inventory:GetLootInfos()
    self.isBackpackFull = inventory:IsBackpackFull()
    -- Attach to the view all loots which are still unclaimed.
    local unclaimedLootCount = 0
    for lootIndex,lootInfo in pairs(lootInfos) do
        if not lootInfo.isClaimed then
            unclaimedLootCount = unclaimedLootCount + 1
            local entry = self:PrepareLootEntry(lootIndex, lootInfo, self.isBackpackFull)
            view:DrawEntry(entry)
        end
    end
    view:FinalizeHeight()
    -- Set the warning if backpack is full.
    if unclaimedLootCount > 0 then
        PANEL_CLAIM_INSTRUCTIONS.visibility = self.isBackpackFull and Visibility.FORCE_OFF or Visibility.INHERIT
        PANEL_CLAIM_WARNING.visibility = self.isBackpackFull and Visibility.INHERIT or Visibility.FORCE_OFF
    end
end

function view:OnClick(button)
    local lootIndex = button.clientUserData.entry.clientUserData.lootIndex
    if inventory:CanClaimLoot(lootIndex) then
        inventory:ClaimLoot(lootIndex)
        local claimedItem = inventory:GetLootItem(lootIndex)
        PlaySound(ItemThemes.GetItemSFX(claimedItem:GetType()))
        PlaySound(SFX_CLAIM_SUCCESS)
        -- Close the loot panel when all loot is claimed.
        local wasLastLoot = self.numEntries == 1
        if wasLastLoot then
            LOOT_VIEW.clientUserData.isVisible = false
        else
            -- The UI system has a bug where it doesn't properly fire Unhover/Hover events as buttons are destroyed. Manually handle this case.
            -- If there is a loot below us, we will now be hovering that, otherwise we will be hovering nothing.
            self:OnUnhover(button)
            local entryCurrent = button.clientUserData.entry
            if entryCurrent.clientUserData.viewIndex < self.numEntries then
                local entryBelowIndex = entryCurrent.clientUserData.viewIndex + 1
                for entry,_ in pairs(self.lootEntries) do
                    if entry.clientUserData.viewIndex == entryBelowIndex then
                        self:OnHover(entry.clientUserData.button)
                        break
                    end
                end
            end
        end
    else
        PlaySound(SFX_CLAIM_FAILURE)
    end
end

function view:OnHover(button)
    local lootIndex = button.clientUserData.entry.clientUserData.lootIndex
    local lootItem = inventory:GetLootItem(lootIndex)
    ITEM_HOVER_VIEW.clientUserData.itemToView = lootItem
end

function view:OnUnhover(button)
    ITEM_HOVER_VIEW.clientUserData.itemToView = nil
end

view:Init()
function Tick(dt)
    view:Update()
end