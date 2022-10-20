local RARITY_COLORS = {
    Common      = script:GetCustomProperty("RarityCommon"),
    Uncommon    = script:GetCustomProperty("RarityUncommon"),
    Rare        = script:GetCustomProperty("RarityRare"),
    Epic        = script:GetCustomProperty("RarityEpic"),
    Legendary   = script:GetCustomProperty("RarityLegendary"),
}

local STAT_ICONS = {
    Health          = script:GetCustomProperty("StatIconHealth"),
    HealthPercent   = script:GetCustomProperty("StatIconHealth"),
    Defense         = script:GetCustomProperty("StatIconDefense"),
    Attack          = script:GetCustomProperty("StatIconAttack"),
    Magic           = script:GetCustomProperty("StatIconMagic"),
    CritChance      = script:GetCustomProperty("StatIconCritChance"),
    Haste           = script:GetCustomProperty("StatIconHaste"),
    CDR             = script:GetCustomProperty("StatIconCDR"),
    Tenacity        = script:GetCustomProperty("StatIconTenacity"),
}

local ITEM_STAT_FORMATS = {
    Health          = "%d",
    HealthPercent   = "%d%%",
    Defense         = "%d",
    Attack          = "%d",
    Magic           = "%d",
    CritChance      = "%d",
    Haste           = "%d",
    CDR             = "%d",
    Tenacity        = "%d",
}

local PLAYER_STAT_FORMATS = {
    Health          = "%d",
    Defense         = "%2.1f%%",
    Attack          = "%d",
    Magic           = "%d",
    CritChance      = "%2.1f%%",
    Haste           = "%2.1f%%",
    CDR             = "%2.1f%%",
    Tenacity        = "%d",
}

local PLAYER_STAT_DISPLAY_NAMES = {
    Health          = "Health",
    Defense         = "Defense",
    Attack          = "Attack",
    Magic           = "Magic",
    CritChance      = "Crit Chance",
    Haste           = "Haste",
    CDR             = "Cooldown Reduction",
    Tenacity        = "Tenacity"
}

local PLAYER_STAT_EXPLANATIONS = {
    Health          = "increases hitpoints",
    Defense         = "reduces damage taken",
    Attack          = "increases physical damage dealt",
    Magic           = "increases magical damage dealt",
    CritChance      = "increases critical strike chance",
    Haste           = "increases action speed",
    CDR             = "reduces ability cooldown time",
    Tenacity        = "increases strength of defense abilities",
}

local ITEM_SFX = {
    Armor      = script:GetCustomProperty("SFX_EquipArmor"),
    Axe        = script:GetCustomProperty("SFX_EquipAxe"),
    Boots      = script:GetCustomProperty("SFX_EquipBoots"),
    Dagger     = script:GetCustomProperty("SFX_EquipDagger"),
    Greatsword = script:GetCustomProperty("SFX_EquipGreatsword"),
    Focus      = script:GetCustomProperty("SFX_EquipFocus"),
    Helmet     = script:GetCustomProperty("SFX_EquipHelmet"),
    Mace       = script:GetCustomProperty("SFX_EquipMace"),
    Shield     = script:GetCustomProperty("SFX_EquipShield"),
    Staff      = script:GetCustomProperty("SFX_EquipStaff"),
    Sword      = script:GetCustomProperty("SFX_EquipSword"),
    Trinket    = script:GetCustomProperty("SFX_EquipTrinket"),
    Warhammer  = script:GetCustomProperty("SFX_EquipWarhammer"),
    Wand       = script:GetCustomProperty("SFX_EquipWand"),
}

return {
    GetRarityColor = function(rarity)
        return Color.New(RARITY_COLORS[rarity])
    end,

    GetStatIcon = function(statName)
        return STAT_ICONS[statName]
    end,

    GetItemStatFormattedValue = function(statName, statValue)
        return string.format(ITEM_STAT_FORMATS[statName], statValue)
    end,

    GetPlayerStatFormattedValue = function(statName, statValue)
        return string.format(PLAYER_STAT_FORMATS[statName], statValue)
    end,
    
    GetPlayerStatDisplayName = function(statName)
        return PLAYER_STAT_DISPLAY_NAMES[statName]
    end,

    GetPlayerStatExplanation = function(statName)
        return PLAYER_STAT_EXPLANATIONS[statName]
    end,

    GetItemSFX = function(itemType)
        return ITEM_SFX[itemType]
    end,

    COLOR_GOOD = script:GetCustomProperty("ColorGenericGood"),
    COLOR_BAD  = script:GetCustomProperty("ColorGenericBad"),
}