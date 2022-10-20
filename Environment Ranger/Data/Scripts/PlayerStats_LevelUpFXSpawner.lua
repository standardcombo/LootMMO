local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local VFX_LOCAL = script:GetCustomProperty("VFX_LocalPlayer")
local VFX_OTHER = script:GetCustomProperty("VFX_OtherPlayer")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local function SpawnLevelUpForPlayer(player)
    local asset = (player == LOCAL_PLAYER) and VFX_LOCAL or VFX_OTHER
    local vfx = World.SpawnAsset(asset)
    vfx:AttachToPlayer(player, "root")
end

local function OnLocalPlayerLevelUp()
    SpawnLevelUpForPlayer(LOCAL_PLAYER)
end

local function OnStatSheetLevelChanged(statSheet, newLevel, oldLevel)
    if newLevel <= oldLevel then return end

    for _,player in ipairs(Game.GetPlayers()) do
        if player ~= LOCAL_PLAYER and player.clientUserData.statSheet == statSheet then
            SpawnLevelUpForPlayer(player)
            return
        end
    end
end

API_RE.Connect("DisplayLocalPlayerLevelUp", OnLocalPlayerLevelUp)
API_RE.Connect("StatSheet_LevelChanged", OnStatSheetLevelChanged)