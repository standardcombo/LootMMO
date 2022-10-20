local ItemThemes = require(script:GetCustomProperty("ItemSystems_ItemThemes"))
local TEMPLATE_ITEM_STAT = script:GetCustomProperty("TemplateItemHoverStat")
local PANEL_WITH_STATS = script:GetCustomProperty("ViewWithStats"):WaitForObject()
local PANEL_SANS_STATS = script:GetCustomProperty("ViewSansStats"):WaitForObject()
local ROOT = script.parent

local view = {}

-------------------------------------------------------------------------------
function view:Init()
    self:InitPanel(PANEL_WITH_STATS)
    self:InitPanel(PANEL_SANS_STATS)
    self.itemHoverStatEntries = {}
end

-------------------------------------------------------------------------------
function view:InitPanel(panel)
    panel.clientUserData.baseHeight = panel.height
    panel.clientUserData.pointer = panel:GetCustomProperty("Pointer"):WaitForObject()
    panel.clientUserData.borderRoot = panel:GetCustomProperty("BorderRoot"):WaitForObject()
    panel.clientUserData.title = panel:GetCustomProperty("Title"):WaitForObject()
    panel.clientUserData.classification = panel:GetCustomProperty("Classification"):WaitForObject()
    panel.clientUserData.description = panel:GetCustomProperty("Description"):WaitForObject()
    panel.clientUserData.salvageValue = panel:GetCustomProperty("SalvageValue"):WaitForObject()
    panel.clientUserData.statOffsetY = panel:GetCustomProperty("StatOffsetY")
    panel.clientUserData.statOffsetXBase = panel:GetCustomProperty("StatOffsetXBase")
    panel.clientUserData.statOffsetXBonus = panel:GetCustomProperty("StatOffsetXBonus")
    panel.clientUserData.pointer.visibility = ROOT:GetCustomProperty("ShouldShowPointer") and Visibility.INHERIT or Visibility.FORCE_OFF
    if panel:GetCustomProperty("StatsRoot") then
        panel.clientUserData.statsRoot = panel:GetCustomProperty("StatsRoot"):WaitForObject()
    end
    -- The stats panel has a couple extra elements.
    if panel:GetCustomProperty("EnhancementLevel") then
        panel.clientUserData.enhancementLevel = panel:GetCustomProperty("EnhancementLevel"):WaitForObject()
        panel.clientUserData.enhancementLevelBaseColor = panel.clientUserData.enhancementLevel:GetColor()
        panel.clientUserData.limitBreakStars = {}
        for _,star in ipairs(panel:GetCustomProperty("StarsRoot"):WaitForObject():GetChildren()) do
            table.insert(panel.clientUserData.limitBreakStars, star)
        end
        panel.clientUserData.limitBreakStarBaseColor = panel:GetCustomProperty("StarUnfilledColor")
        panel.clientUserData.starSpacing = panel:GetCustomProperty("StarSpacing")
        panel.clientUserData.starsRoot = panel:GetCustomProperty("StarsRoot"):WaitForObject()
    end
    panel.clientUserData.grayOut = panel:GetCustomProperty("GrayOut"):WaitForObject()
end

-----------------------------------------------------------------------------------------------------------------
function view:EnsureSufficientHoverStatEntries(numRequired)
    for i=1,numRequired do
        if not self.itemHoverStatEntries[i] then
            local entry = World.SpawnAsset(TEMPLATE_ITEM_STAT, { parent = PANEL_WITH_STATS.clientUserData.statsRoot })
            entry.clientUserData.icon = entry:GetCustomProperty("StatIcon"):WaitForObject()
            entry.clientUserData.value = entry:GetCustomProperty("StatValue"):WaitForObject()
            entry.clientUserData.enhancementBonus = entry:GetCustomProperty("StatEnhancementBonus"):WaitForObject()
            entry.clientUserData.valueBaseColor = entry.clientUserData.value:GetColor()
            entry.clientUserData.bonusBaseColor = entry.clientUserData.enhancementBonus:GetColor()
            entry.clientUserData.iconBaseColor = entry.clientUserData.icon:GetColor()
            table.insert(self.itemHoverStatEntries, entry)
        end
    end
end

-------------------------------------------------------------------------------
function view:DrawPanelWithStats()
    local panel = PANEL_WITH_STATS
    local item = self.itemToView
    panel.clientUserData.title.text = item:GetName()
    panel.clientUserData.classification.text = string.format("%s %s", item:GetRarity(), item:GetType())
    panel.clientUserData.description.text = item:GetDescription()
    panel.clientUserData.salvageValue.text = string.format("Salvage value: %d shards", item:GetSalvageQuantity())
    -- Sometimes the external client wants us to highlight changes from a comparison.
    local compareStats = ROOT.clientUserData.itemToCompare and ROOT.clientUserData.itemToCompare:GetStatsEnhanced()
    local compareEnhancementLevel = ROOT.clientUserData.itemToCompare and ROOT.clientUserData.itemToCompare:GetEnhancementLevel()
    local compareLimitBreakLevel = ROOT.clientUserData.itemToCompare and ROOT.clientUserData.itemToCompare:GetLimitBreakLevel()
    -- Attributes.
    local stats = item:GetStatsEnhanced()
    local statsBase = item:GetStatsBase()
    self:EnsureSufficientHoverStatEntries(#stats)
    local offsetYBase = 0
    local offsetYBonus = 0
    for i,entry in ipairs(self.itemHoverStatEntries) do
        -- It is expected that the comparison item has matching stat structure.
        local compareStatInfo = compareStats and compareStats[i]
        local statInfo = stats[i]
        local statInfoBase = statsBase[i]
        if statInfo then
            entry.visibility = Visibility.INHERIT
            entry.clientUserData.icon:SetImage(ItemThemes.GetStatIcon(statInfo.name))
            entry.clientUserData.value.text = ItemThemes.GetItemStatFormattedValue(statInfo.name, statInfo.value)
            if statInfo.isBase then
                entry.x = panel.clientUserData.statOffsetXBase
                entry.y = panel.clientUserData.statOffsetY + offsetYBase
                offsetYBase = offsetYBase + entry.height
            else
                entry.x = panel.clientUserData.statOffsetXBonus
                entry.y = panel.clientUserData.statOffsetY + offsetYBonus
                offsetYBonus = offsetYBonus + entry.height
            end
            -- Show stat enhancement bonus if present.
            local enhancementBonus = statInfoBase and statInfo.value - statInfoBase.value or 0
            if enhancementBonus > 0 then
                entry.clientUserData.enhancementBonus.text = string.format("(%d)", statInfoBase.value)
            else
                entry.clientUserData.enhancementBonus.text = ""
            end
            -- Show color based on comparison.
            if compareStatInfo and compareStatInfo.value < statInfo.value then
                entry.clientUserData.value:SetColor(ItemThemes.COLOR_GOOD)
                entry.clientUserData.icon:SetColor(ItemThemes.COLOR_GOOD)
            else
                entry.clientUserData.value:SetColor(entry.clientUserData.valueBaseColor)
                entry.clientUserData.icon:SetColor(entry.clientUserData.iconBaseColor)
            end
        else
            entry.visibility = Visibility.FORCE_OFF
        end
    end
    panel.height = panel.clientUserData.baseHeight + math.max(offsetYBase, offsetYBonus)
    -- Colors.
    local rarityColor = ItemThemes.GetRarityColor(item:GetRarity())
    panel.clientUserData.pointer:SetColor(rarityColor)
    panel.clientUserData.classification:SetColor(rarityColor)
    for _,control in ipairs(panel.clientUserData.borderRoot:FindDescendantsByType("UIImage")) do
        control:SetColor(rarityColor)
    end
    -- Show enhancement level and stars if applicable.
    local enhancementSuffix = item:IsFullyEnhanced() and " (MAX)" or ""
    panel.clientUserData.enhancementLevel.text = "Level " .. tostring(item:GetEnhancementLevel()) .. enhancementSuffix
    local numStars = item:GetLimitBreakLevel()
    local numStarsMax = item:GetMaxLimitBreakLevel()
    local starsMidpoint = (numStarsMax + 1) / 2
    -- If the star level has changed use special coloring.
    local starFillColor = rarityColor
    if compareLimitBreakLevel and compareLimitBreakLevel < numStars then starFillColor = ItemThemes.COLOR_GOOD end
    for i,star in ipairs(panel.clientUserData.limitBreakStars) do
        if i <= numStarsMax then
            star.visibility = Visibility.INHERIT
            star.x = (i - starsMidpoint) * panel.clientUserData.starSpacing
            star:SetColor(i <= numStars and starFillColor or panel.clientUserData.limitBreakStarBaseColor)
        else
            star.visibility = Visibility.FORCE_OFF
        end
    end
    -- See if the enhancement level has changed.
    if compareEnhancementLevel and compareEnhancementLevel < item:GetEnhancementLevel() then
        panel.clientUserData.enhancementLevel:SetColor(ItemThemes.COLOR_GOOD)
    else
        panel.clientUserData.enhancementLevel:SetColor(panel.clientUserData.enhancementLevelBaseColor)
    end
    -- Draw the gray out if requested.
    panel.clientUserData.grayOut.visibility = ROOT.clientUserData.shouldGrayOut and Visibility.INHERIT or Visibility.FORCE_OFF
end

-------------------------------------------------------------------------------
function view:DrawPanelSansStats()
    local panel = PANEL_SANS_STATS
    local item = self.itemToView
    panel.clientUserData.title.text = item:GetName()
    panel.clientUserData.classification.text = string.format("%s %s", item:GetRarity(), item:GetType())
    panel.clientUserData.description.text = item:GetDescription()
    if item:GetSalvageQuantity() then
        panel.clientUserData.salvageValue.text = string.format("Salvage value: %d shards", item:GetSalvageQuantity())
    else 
        panel.clientUserData.salvageValue.text = ""
    end
    -- Colors.
    local color = ItemThemes.GetRarityColor(item:GetRarity())
    panel.clientUserData.pointer:SetColor(color)
    panel.clientUserData.classification:SetColor(color)
    for _,control in ipairs(panel.clientUserData.borderRoot:FindDescendantsByType("UIImage")) do
        control:SetColor(color)
    end
    -- Draw the gray out if requested.
    panel.clientUserData.grayOut.visibility = ROOT.clientUserData.shouldGrayOut and Visibility.INHERIT or Visibility.FORCE_OFF
end

-------------------------------------------------------------------------------
function view:Update()
    if ROOT.clientUserData.forceUpdate or self.itemToView ~= ROOT.clientUserData.itemToView then
        ROOT.clientUserData.forceUpdate = nil
        self.itemToView = ROOT.clientUserData.itemToView
        if self.itemToView then
            -- UI properties.
            ROOT.visibility = Visibility.INHERIT
            ROOT.x = ROOT.clientUserData.viewPositionX or ROOT.x
            ROOT.y = ROOT.clientUserData.viewPositionY or ROOT.y
            -- Display information.
            if self.itemToView:HasStats() then
                PANEL_WITH_STATS.visibility = Visibility.INHERIT
                PANEL_SANS_STATS.visibility = Visibility.FORCE_OFF
                self:DrawPanelWithStats()
            else
                PANEL_WITH_STATS.visibility = Visibility.FORCE_OFF
                PANEL_SANS_STATS.visibility = Visibility.INHERIT
                self:DrawPanelSansStats()
            end
        else
            ROOT.visibility = Visibility.FORCE_OFF
        end
    end
end

-------------------------------------------------------------------------------
view:Init()
function Tick(dt)
    view:Update()
end
