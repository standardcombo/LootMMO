--[[
	NPCAttack - Client
	v1.0.0
	by: standardcombo
	
	The client counterpart for NPCAttackServer. Listens for damage and destroy networked events
	and spawns the appropriate effects for each.
--]]

local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local DAMAGE_FX = script:GetCustomProperty("DamageFX")
local DESTROY_FX = script:GetCustomProperty("DestroyFX")

local STATE_SLEEPING = 0
local STATE_ENGAGING = 1
local STATE_ATTACK_CAST = 2
local STATE_ATTACK_RECOVERY = 3
local STATE_PATROLLING = 4
local STATE_LOOKING_AROUND = 5
local STATE_DEAD_1 = 6
local STATE_DEAD_2 = 7
local STATE_DISABLED = 8
local STATE_STUNNED = 9



function OnPropertyChanged(object, propertyName)
	if propertyName == "CurrentState" then
		local state = ROOT:GetCustomProperty("CurrentState")
		
		if state == STATE_DEAD_1 then
			SpawnAsset(DESTROY_FX, script:GetWorldPosition(), script:GetWorldRotation())

			UpdateColliderTeam(0)
		end
	
	elseif propertyName == "Team" then
		UpdateColliderTeam()
	end
end
ROOT.customPropertyChangedEvent:Connect(OnPropertyChanged)


function GetID()
	if Object.IsValid(ROOT) then
		return ROOT.id
	end
	return nil
end


function OnDamaged(_, _)
	SpawnAsset(DAMAGE_FX, script:GetWorldPosition(), script:GetWorldRotation())
end
ROOT.damagedEvent:Connect(OnDamaged)


function OnDestroyed(obj)
	-- nothing at the moment
end
--ROOT.destroyEvent:Connect(OnDestroyed)


function UpdateColliderTeam(team)
	team = team or ROOT:GetCustomProperty("Team")
	for _,obj in ipairs(script.parent.parent:GetChildren()) do
		if obj:IsA("StaticMesh") then
			obj.team = team
		end
	end
end
UpdateColliderTeam()


function SpawnAsset(template, pos, rot)
	if not template then return end
	
	local spawnedVfx = World.SpawnAsset(template, {position = pos, rotation = rot})
	if spawnedVfx and spawnedVfx.lifeSpan <= 0 then
		spawnedVfx.lifeSpan = 1.5
	end
end

