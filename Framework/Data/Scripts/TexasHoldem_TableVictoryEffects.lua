local VFX = script:GetCustomProperty('VFX')
if not VFX then
    return
end

local VFXSpawn

local function SpawnVFX(playername, HandValue)
    if Object.IsValid(VFXSpawn) then
        return
    end
    --flush or higher
    if HandValue <= 4 then
        VFXSpawn = World.SpawnAsset(VFX, {parent = script})
    end
end

Events.Connect('TexasHoldem_Winner', SpawnVFX)
