-- This is basically just a wrapper around the built-in Core ability system. Most animation objects have very short cast
-- times so they don't run into each other. A few are suffixed with "_start" and those have very long cast times. See
-- FinishAnimation() below for details. Only long animations can be Finished or Interrupted.

local ANIMATION_TEMPLATES = {}

for propertyName, animationTemplate in pairs(script:GetCustomProperties()) do
	if string.sub(propertyName, 1, 10) == "Animation_" then
		ANIMATION_TEMPLATES[string.sub(propertyName, 11)] = animationTemplate
	end
end

local ANIMATION_MAP = {
	Melee = {
		Axe = {"1hand_melee_slash_left", "1hand_melee_slash_right"},
		Mace = {"1hand_melee_slash_left", "1hand_melee_slash_right"},
		Sword = {"1hand_melee_slash_left", "1hand_melee_slash_right"},
		Dagger = {"1hand_melee_thrust", "1hand_melee_thrust", "1hand_melee_slash_right"},
		Greatsword = {"2hand_sword_slash_left", "2hand_sword_slash_right"},
		Warhammer = {"2hand_melee_slash_right"},
		Default = {"unarmed_punch_left", "unarmed_punch_right"},
	},
	Slam = {
		Axe = {"1hand_melee_slash_vertical"},
		Mace = {"1hand_melee_slash_vertical"},
		Sword = {"1hand_melee_slash_vertical"},
		Dagger = {"1hand_melee_slash_vertical"},
		Greatsword = {"2hand_sword_slash_vertical"},
		Warhammer = {"2hand_melee_slash_vertical"},
		Default = {"unarmed_shove"},
	},
	Stab = {
		Greatsword = {"2hand_sword_thrust"},
		Default = {"1hand_melee_thrust"},
	},
	Bash = {
		Shield = {"1hand_melee_shield_bash"},
		Default = {"unarmed_punch_right"},
	},
	Bolt = {
		Staff = {"2hand_staff_magic_bolt"},
		Default = {"unarmed_magic_bolt"},
	},
	Magic = {
		Staff = {"2hand_staff_magic_up"},
		Default = {"unarmed_magic_up"},
	},
	Spin = {
		Default = {"2hand_sword_slash_spin"},
	},
	Dance = {
		Default = {"unarmed_dance"},
	},
	Drink = {
		Default = {"unarmed_drink"},
	},
	Roll = {
		Default = {"unarmed_roll"},
	},
	Shout = {
		Default = {"unarmed_shout"},
	},
	Stomp = {
		Default = {"unarmed_stomp"},
	},
	Throw = {
		Default = {"unarmed_throw"},
	},
	Use = {
		Default = {"unarmed_use"},
	},
	Bandage = {
		Default = {"unarmed_use_bandage"},
	},
	Wave = {
		Default = {"unarmed_wave"},
	},
}

local IS_CLIENT = pcall(Game.GetLocalPlayer)

-- Server only
-- {<dirty> - bool, referenceCount - int, itemType - string, animationObjects - array of CoreObjects}
-- Dirty flag is used so the inventory event (from a server context script) can queue up changes, and we can process
-- them in a context that can spawn networked objects.
local playerAnimationKeys = {}	-- Player -> table | string -> table

local API = {}

-- Server
function API.AddAnimationReference(player, animationKey)
	-- This function's order is super important. If the wait is in the middle, you can get multiple tasks on startup
	-- that then create double objects without the reference count being correct. We are depending on the fact that a
	-- user can't realistically get rid of their talents before the inventory is loaded.
	Task.Spawn(function()
		local inventory = nil

		while not inventory do
			inventory = player.serverUserData.inventory
			Task.Wait()
		end

		if playerAnimationKeys[player][animationKey] then
			playerAnimationKeys[player][animationKey].referenceCount = playerAnimationKeys[player][animationKey].referenceCount + 1
		else
			local equippedItemType = "Default"
			local data = {animationObjects = {}}

			for itemType, _ in pairs(ANIMATION_MAP[animationKey]) do
				if inventory:HasEquippedItemType(itemType) then
					equippedItemType = itemType
					break
				end
			end

			for _, animation in pairs(ANIMATION_MAP[animationKey][equippedItemType]) do
				local animationObject = World.SpawnAsset(ANIMATION_TEMPLATES[animation])
				animationObject.owner = player
				animationObject.name = animationKey
				table.insert(data.animationObjects, animationObject)
				local startAnimation = animation .. "_start"

				if ANIMATION_TEMPLATES[startAnimation] then	-- Spawn the start animation too if we have it
					local startAnimationObject = World.SpawnAsset(ANIMATION_TEMPLATES[startAnimation])
					startAnimationObject.owner = player
					startAnimationObject.name = animationKey .. "Start"
					table.insert(data.animationObjects, startAnimationObject)
				end
			end

			data.itemType = equippedItemType
			data.referenceCount = 1
			playerAnimationKeys[player][animationKey] = data
		end
	end)
end

-- Server
-- This means we switched equipment, so we should keep our reference count, but destroy all the objects and spawn new ones
function RecreateAnimation(player, animationKey)
	local oldData = playerAnimationKeys[player][animationKey]
	oldData.dirty = false
	local referenceCount = oldData.referenceCount

	for _, animationObject in pairs(oldData.animationObjects) do
		animationObject:Destroy()
	end

	local inventory = player.serverUserData.inventory
	assert(inventory)
	local equippedItemType = "Default"
	local data = {animationObjects = {}}

	for itemType, _ in pairs(ANIMATION_MAP[animationKey]) do
		if inventory:HasEquippedItemType(itemType) then
			equippedItemType = itemType
			break
		end
	end

	for _, animation in pairs(ANIMATION_MAP[animationKey][equippedItemType]) do
		local animationObject = World.SpawnAsset(ANIMATION_TEMPLATES[animation])
		animationObject.owner = player
		animationObject.name = animationKey
		table.insert(data.animationObjects, animationObject)
		local startAnimation = animation .. "_start"

		if ANIMATION_TEMPLATES[startAnimation] then	-- Spawn the start animation too if we have it
			local startAnimationObject = World.SpawnAsset(ANIMATION_TEMPLATES[startAnimation])
			startAnimationObject.owner = player
			startAnimationObject.name = animationKey .. "Start"
			table.insert(data.animationObjects, startAnimationObject)
		end
	end

	data.itemType = equippedItemType
	data.referenceCount = referenceCount
	playerAnimationKeys[player][animationKey] = data
end

-- Server
function API.RemoveAnimationReference(player, animationKey)
	assert(playerAnimationKeys[player][animationKey])

	if playerAnimationKeys[player][animationKey].referenceCount > 1 then
		playerAnimationKeys[player][animationKey].referenceCount = playerAnimationKeys[player][animationKey].referenceCount - 1
	else
		for _, animationObject in pairs(playerAnimationKeys[player][animationKey].animationObjects) do
			animationObject:Destroy()
		end

		playerAnimationKeys[player][animationKey] = nil
	end
end

-- Client
function API.PlayAnimation(animationKey, castId, isStart)
	local player = Game.GetLocalPlayer()
	local animationName = animationKey
	local possibleAnimationObjects = {}

	if isStart then
		animationName = animationName .. "Start"
	end

	for _, animationObject in pairs(player:GetAbilities()) do
		if animationObject.name == animationName then
			table.insert(possibleAnimationObjects, animationObject)
		end
	end

	-- We can't guarantee everything has replicated, so we don't error if we can't find one
	if #possibleAnimationObjects > 0 then
		local animationObject = possibleAnimationObjects[math.random(#possibleAnimationObjects)]

		if isStart then
			local eventHandle = nil

			eventHandle = animationObject.castEvent:Connect(function(ability)
				-- This has to be in a cast event handler or it doesn't work. The only place we can encode an id is in the
				-- HitPosition vector, as ugly as that is.
				local abilityTarget = AbilityTarget.New()
				abilityTarget:SetHitPosition(Vector3.New(castId, 0.0, 0.0))
				ability:SetTargetData(abilityTarget)
				eventHandle:Disconnect()
				eventHandle = nil
			end)
		end

		animationObject:Activate()
	end
end

-- Client
-- Animations that are expected to have a cast time use two abilities. One has a very long cast time, and the second has
-- a very short cast time. When we decide the cast time is done, we just activate the second one, and it interrupts the
-- first smoothly. The second ability also doubles as the instant cast (and main) version of that animation.
function API.FinishAnimation(castId)
	local player = Game.GetLocalPlayer()
	-- Find the playing animation to finish
	for _, animationObject in pairs(player:GetAbilities()) do
		local hitPosition = animationObject:GetTargetData():GetHitPosition()

		if animationObject:GetCurrentPhase() == AbilityPhase.CAST and hitPosition.x == castId then
			assert(string.sub(animationObject.name, -5) == "Start")
			local finishAnimationName = string.sub(animationObject.name, 1, -6)
			local finishAnimationObject = nil

			for _, candidateAnimationObject in pairs(player:GetAbilities()) do
				if candidateAnimationObject.name == finishAnimationName and candidateAnimationObject.animation == animationObject.animation then
					finishAnimationObject = candidateAnimationObject
					break
				end
			end

			if finishAnimationObject then
				-- We don't need the castId stuff here, because this isn't interruptable
				finishAnimationObject:Activate()
			else
				-- It may not have replicated, but we don't want to be stuck animating for a while
				warn(string.format("Tried to finish animation %s but couldn't find matching finish", animationObject.name))
			end

			return
		end
	end
	-- This case hit a few times in testing. I don't know the setup, but missing an animation is fine (instead of a script error)
end

-- Server
function API.InterruptAnimation(player, castId)
	-- We may not find one because the cast may have finished on the server already.
	for _, animationObject in pairs(player:GetAbilities()) do
		local hitPosition = animationObject:GetTargetData():GetHitPosition()

		if animationObject:GetCurrentPhase() == AbilityPhase.CAST and hitPosition.x == castId then
			animationObject:Interrupt()
			break
		end
	end
end

-- Server
function OnPlayerJoined(player)
	local inventory = nil
	playerAnimationKeys[player] = {}

	while not inventory do
		inventory = player.serverUserData.inventory
		Task.Wait()
	end

    inventory.itemEquippedEvent:Connect(function(slotIndex, previousItem, newItem)
    	local previousType = previousItem and previousItem:GetType()
    	
		for animationKey, data in pairs(playerAnimationKeys[player]) do
			local defaulted = (data.itemType == "Default" and (not previousType or not ANIMATION_MAP[animationKey][previousType]))

			if defaulted or data.itemType == previousType then
				playerAnimationKeys[player][animationKey].dirty = true
			end
		end
	end)
end

-- Server
function OnPlayerLeft(player)
	playerAnimationKeys[player] = nil
end

-- Server
function Tick()
	for player, animationData in pairs(playerAnimationKeys) do
		for animationKey, data in pairs(animationData) do
			if data.dirty then
				local casting = false

				for _, animationObject in pairs(data.animationObjects) do
					if animationObject:GetCurrentPhase() == AbilityPhase.CAST then
						casting = true
						break
					end
				end

				if not casting then
					RecreateAnimation(player, animationKey)
				end
			end
		end
	end
end

if not IS_CLIENT then
	Game.playerJoinedEvent:Connect(OnPlayerJoined)
	Game.playerLeftEvent:Connect(OnPlayerLeft)

	local tick = Task.Spawn(Tick)
	tick.repeatCount = -1
end

return API
