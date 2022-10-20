local API_SK = require(script:GetCustomProperty("APISharedKey"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))

local COMPONENT = script:GetCustomProperty("Component"):WaitForObject()

---------------------------------------------------------------------------------------------------------
local OWNER = nil
while not OWNER do
    Task.Wait()
    for _,player in ipairs(Game.GetPlayers()) do
        if player.id == COMPONENT:GetCustomProperty("PlayerId") then
            OWNER = player
            break
        end
    end
end

---------------------------------------------------------------------------------------------------------
-- Wait until the database has fully loaded to proceed.
Database:WaitUntilLoaded()

-- This is used via lambda capture on both server and client.
local RecipeManager = {}
RecipeManager.unlockedCraftingRecipeIndexes = {}

function RecipeManager:ConsumeDirtyBit()
    local dirtyBit = self.dirtyBit
    self.dirtyBit = nil
    return dirtyBit
end

function RecipeManager:ResetUnlockedCraftingRecipes()
    for k,v in pairs(self.unlockedCraftingRecipeIndexes) do self.unlockedCraftingRecipeIndexes[k] = nil end
    self.dirtyBit = true
end

function RecipeManager:UnlockCraftingRecipe(craftingRecipeIndex)
    if not self.unlockedCraftingRecipeIndexes[craftingRecipeIndex] then
        self.dirtyBit = true
    end
    self.unlockedCraftingRecipeIndexes[craftingRecipeIndex] = true
end

function RecipeManager:IsCraftingRecipeUnlocked(craftingRecipeIndex)
    return self.unlockedCraftingRecipeIndexes[craftingRecipeIndex]
end

function RecipeManager:GetUnlockedCraftingRecipeIndexSet()
    return self.unlockedCraftingRecipeIndexes
end

---------------------------------------------------------------------------------------------------------
-- Load unlocked recipes from storage on startup.
local function ServerLoadCraftingRecipes()
    OWNER.serverUserData.craftingRecipeManager = RecipeManager
    local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), OWNER)
    if playerData.craftingRecipeUnlockHash then
        for craftingRecipeMUID in playerData.craftingRecipeUnlockHash:gmatch("([^,]+),?") do
            local craftingRecipeData = Database:FindItemDataByMUID(craftingRecipeMUID)
            if craftingRecipeData then
                RecipeManager:UnlockCraftingRecipe(craftingRecipeData.index)
            end
        end
    end
end

-- Update stored unlocked recipes and replicate over network to client.
local function ServerUpdateCraftingRecipes()
    -- Only update when necessary.
    if not RecipeManager:ConsumeDirtyBit() then return end
    local hashPartsLong = {}
    local hashPartsMini= {}
    for craftingRecipeIndex,_ in pairs(RecipeManager:GetUnlockedCraftingRecipeIndexSet()) do
        local craftingRecipeData = Database:FindItemDataByIndex(craftingRecipeIndex)
        if craftingRecipeData then
            table.insert(hashPartsLong, craftingRecipeData.muid)
            table.insert(hashPartsMini, tostring(craftingRecipeIndex))
        end
    end
    -- Replicate.
    table.sort(hashPartsMini)
    COMPONENT:SetNetworkedCustomProperty("R", "" .. table.concat(hashPartsMini, ","))
    -- Save to storage.
    local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), OWNER)
    playerData.craftingRecipeUnlockHash = table.concat(hashPartsLong, ",")
    Storage.SetSharedPlayerData(API_SK.GetStorageKey(), OWNER, playerData)
end

local function InitServer()
    ServerLoadCraftingRecipes()
    ServerUpdateCraftingRecipes()
    -- Task to update storage and replicate any time new recipes are unlocked.
    local updateTask = Task.Spawn(function() ServerUpdateCraftingRecipes() end)
    updateTask.repeatCount = -1
    script.destroyEvent:Connect(function() updateTask:Cancel() end)
end

---------------------------------------------------------------------------------------------------------
local isInitialUpdate = true
local function ClientUpdateCraftingRecipes()
    local craftingRecipeHash = COMPONENT:GetCustomProperty("R")
    if craftingRecipeHash == "" then
        RecipeManager:ResetUnlockedCraftingRecipes()
    else
        for token in craftingRecipeHash:gmatch("(%d+),?") do
            local craftingRecipeIndex = tonumber(token)
            if craftingRecipeIndex then
                -- If this is a newly unlocked recipe, broadcast client side event. Ignore initial update when loading stored recipes from server.
                local shouldSendEvent = not isInitialUpdate and not RecipeManager:IsCraftingRecipeUnlocked(craftingRecipeIndex)
                RecipeManager:UnlockCraftingRecipe(craftingRecipeIndex)
                if shouldSendEvent then
                    API_RE.Broadcast("RecipeManager_NewRecipeUnlocked", craftingRecipeIndex)
                end
            end
        end
    end
    -- Initial update has been received.
    isInitialUpdate = nil
end

local function InitClient()
    if OWNER ~= Game.GetLocalPlayer() then return end
    OWNER.clientUserData.craftingRecipeManager = RecipeManager
    COMPONENT.networkedPropertyChangedEvent:Connect(ClientUpdateCraftingRecipes)
    ClientUpdateCraftingRecipes()
end

---------------------------------------------------------------------------------------------------------
if script.isServerOnly then InitServer() end
if script.isClientOnly then InitClient() end