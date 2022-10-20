if not script:GetCustomProperty("Enable") then return end

local API_SK = require(script:GetCustomProperty("APISharedKey"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))

print([[
------------------------------------------------------------------------------------
!!! DEVELOPER CHEATS ENABLED !!!
------------------------------------------------------------------------------------

DROP LOOT
[down-arrow]
Spawns a fully randomized loot drop at the position of the player.

CLEAR INVENTORY
[delete]
Clears all items from the player's inventory. The game must be restarted in order
to take effect.

PRINT INVENTORY
[F8]
Prints a human-readable synopsis of the player's inventory to the console.

ADD EXPERIENCE
[right-arrow]
Increments the player experience by 50.

ADD LEVEL
[up-arrow]
Increments the player level by 1.

RESET LEVEL
[home]
Fully resets the player level.

PRINT STAT SHEET
[F7]
Prints a human-readable synopsis of the player's stat sheet to the console.

TOGGLE GOD MODE
[F10]
Makes the player invulnerable to all damage (or turns it back off)

UNLOCK ALL CRAFTING RECIPES
[page-up]
Discover all crafting recipes for this account.

RESET CRAFTING RECIPES
[page-down]
Un-discover all crafting recipes for this account.

------------------------------------------------------------------------------------
]])

local BINDING_DROP_LOOT             = "ability_extra_47"    -- [down-arrow]
local BINDING_INVENTORY_CLEAR       = "ability_extra_66"    -- [delete]
local BINDING_INVENTORY_PRINT       = "ability_extra_57"    -- [F8]
local BINDING_EXPERIENCE_ADD        = "ability_extra_49"    -- [right-arrow]
local BINDING_LEVEL_ADD             = "ability_extra_46"    -- [up-arrow]
local BINDING_LEVEL_RESET           = "ability_extra_63"    -- [home]
local BINDING_STATSHEET_PRINT       = "ability_extra_56"    -- [F7]
local BINDING_GOD_MODE              = "ability_extra_59"    -- [F10]
local BINDING_CRAFTING_UNLOCK_ALL   = "ability_extra_64"    -- [page-up]
local BINDING_CRAFTING_LOCK_ALL     = "ability_extra_65"    -- [page-down]

local function OnBindingPressed(player, binding)
    if binding == BINDING_DROP_LOOT then
        Database:WaitUntilLoaded()
        local dropKey = "CHEAT"
        local playerPosition = player:GetWorldPosition()
        API_RE.Broadcast("DropLoot", dropKey, playerPosition - 100 * Vector3.UP)
        print("CHEAT: DROP LOOT")
    elseif binding == BINDING_INVENTORY_CLEAR then
        local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), player)
        playerData.inventoryHash = nil
        Storage.SetSharedPlayerData(API_SK.GetStorageKey(), player, playerData)
        print("CHEAT: CLEAR INVENTORY")
    elseif binding == BINDING_INVENTORY_PRINT then
        print(player.serverUserData.inventory)
    elseif binding == BINDING_EXPERIENCE_ADD then
        if not player.serverUserData.statSheet then return end
        player.serverUserData.statSheet:AddExperience(50)
        print("CHEAT: ADD EXPERIENCE")
    elseif binding == BINDING_LEVEL_ADD then
        if not player.serverUserData.statSheet then return end
        local currentExperience = player.serverUserData.statSheet:GetExperience()
        local _,nextLevelExperience = player.serverUserData.statSheet:GetLevelExperienceInterval()
        player.serverUserData.statSheet:AddExperience(math.max(0, nextLevelExperience - currentExperience))
        print("CHEAT: ADD LEVEL")
    elseif binding == BINDING_LEVEL_RESET then
        if not player.serverUserData.statSheet then return end
        player.serverUserData.statSheet:SetExperience(0)
        print("CHEAT: RESET LEVEL")
    elseif binding == BINDING_GOD_MODE then
        player.serverUserData.godMode = not player.serverUserData.godMode
        print("CHEAT: GOD MODE")
    elseif binding == BINDING_STATSHEET_PRINT then
        print(player.serverUserData.statSheet)
    elseif binding == BINDING_CRAFTING_UNLOCK_ALL then
        Database:WaitUntilLoaded()
        for _,recipeItemData in ipairs(Database:GetCraftingRecipeItemDatas()) do
            player.serverUserData.craftingRecipeManager:UnlockCraftingRecipe(recipeItemData.index)
        end
        print("CHEAT: UNLOCK ALL CRAFTING RECIPES")
    elseif binding == BINDING_CRAFTING_LOCK_ALL then
        player.serverUserData.craftingRecipeManager:ResetUnlockedCraftingRecipes()
        print("CHEAT: RESET CRAFTING RECIPES")
    end
end

Game.playerJoinedEvent:Connect(function(player) player.bindingPressedEvent:Connect(OnBindingPressed) end)