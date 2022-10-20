local Lootbox_CHEST = script:GetCustomProperty('Lootbox_Chest')
local Lootbox_WORLD = script:GetCustomProperty('Lootbox_World')
local TEXTURA_ATLAS_API = require(script:GetCustomProperty('TexturaAtlasApi'))
local LOCAL_PLAYER = Game.GetLocalPlayer()
local LootBoxRender = {}
local spawnedChest
local transform
local StillTrap 
local function CloneChest()
    if Object.IsValid(spawnedChest) then
        transform = spawnedChest:GetTransform()
        spawnedChest:Destroy()
    end

    local newChest = World.SpawnAsset(Lootbox_CHEST)
    newChest:SetTransform(transform)

    return newChest
end
local function MoveChest(endPosition, chest)
    if not endPosition or not chest then
        return
    end
    endPosition = endPosition + Vector3.UP * 20
    chest:ScaleTo(Vector3.New(0.15), 2)
    chest:MoveTo(endPosition, 2)
    Task.Wait(2)
    chest:Destroy()
end

function LootBoxRender:PayOut(data, position)
    local newChest = CloneChest()

    Task.Spawn(
        function()
            MoveChest(position, newChest)
        end
    )
end

function LootBoxRender:SpawnChest(data)
    if Object.IsValid(spawnedChest) then
        spawnedChest:Destroy()
    end
    spawnedChest = World.SpawnAsset(Lootbox_CHEST, {scale = Vector3.New(0.3), rotation = Rotation.New(0, 0, -90)})
    spawnedChest:SetWorldPosition(data.PotPosition + (Vector3.UP * 150) + (Vector3.FORWARD) + (-Vector3.RIGHT * 85))
    Task.Spawn(function()
        spawnedChest.collision = Collision.FORCE_OFF
        local transform = spawnedChest:GetTransform()
        while Object.IsValid(spawnedChest) do 
            spawnedChest:SetTransform(transform)
            spawnedChest:SetVelocity(Vector3.ZERO)
            Task.Wait()
        end
    end,2)
    return spawnedChest
end

function LootBoxRender:Open(Lootbox)
    Task.Spawn(
        function()
            local newChest = CloneChest()
            local View = LOCAL_PLAYER:GetViewWorldPosition()
            local rot = LOCAL_PLAYER:GetViewWorldRotation()

            local endPos = View + (rot * Vector3.FORWARD) * 200
            newChest:MoveTo(endPos, 2)
            Task.Wait(1.8)
            local worldRender =
                World.SpawnAsset(Lootbox_WORLD, {position = newChest:GetWorldPosition(), scale = Vector3.New(0.05)})

            Task.Spawn(
                function()
                    local endTime = time() + 5
                    while time() <= endTime and Object.IsValid(newChest) do
                        newChest:SetWorldPosition(endPos)
                        newChest:SetVelocity(Vector3.ZERO)
                        newChest:SetRotation(Rotation.New(0, 0, -90))
                        Task.Wait()
                    end
                    worldRender:Destroy()
                    newChest:Destroy()
                end
            )
            if Object.IsValid(newChest) then
                newChest.clientUserData.Chest:Open()
            end
            Task.Wait(1)
            worldRender:MoveTo(View + (rot * Vector3.FORWARD) * 70, 1)
            worldRender:SetRotation(rot)
            TEXTURA_ATLAS_API:SetUIImage(
                worldRender,
                Lootbox.portalLink,
                Lootbox.index,
                Lootbox.position,
                Lootbox.scale,
                {width = 512, height = 512}
            )

        end
    )
end

return LootBoxRender
