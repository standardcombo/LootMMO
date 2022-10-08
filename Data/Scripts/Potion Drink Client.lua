local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local POTION = script:GetCustomProperty("Potion")
local spawnedPotion = nil

local function DestroyPotion()
	if Object.IsValid(spawnedPotion) then
		spawnedPotion:Destroy()
		spawnedPotion = nil
	end
end

local function SpawnPotion()
	spawnedPotion = World.SpawnAsset(POTION)
	spawnedPotion:AttachToPlayer(ABILITY.owner, "right_wrist")
end

ABILITY.castEvent:Connect(SpawnPotion)
ABILITY.executeEvent:Connect(DestroyPotion)
