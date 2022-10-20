--[[
	Food Equipment - Client
	by: standardcombo
	v1.1.1
--]]

local EQUIPMENT = script:FindAncestorByType("Equipment")
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()
local MODEL_ROOT = script:GetCustomProperty("ModelRoot"):WaitForObject()
local IK_ROOT = script:GetCustomProperty("IKRoot"):WaitForObject()
local IK_ANCHOR = script:GetCustomProperty("IKAnchor"):WaitForObject()
local IK_BONE = script:GetCustomProperty("IKBone")
local PRIMARY_SFX = script:GetCustomProperty("PrimarySFX"):GetObject()
local PRIMARY_CHANCE = script:GetCustomProperty("PrimaryChance")
local SECONDARY_SFX = script:GetCustomProperty("SecondarySFX"):GetObject()
local SECONDARY_PERIOD = script:GetCustomProperty("SecondaryPeriod")

local BINDING = SERVER_SCRIPT:GetCustomProperty("ActionBinding")

local PLAYER = Game.GetLocalPlayer()

local itemId = nil
local model = nil
local isActive = false
local usesRemaining = 0
local secondaryCountdown = 0

local pressedListener = nil
local releasedListener = nil


function Tick(deltaTime)
	if isActive then
		if SECONDARY_SFX then
			secondaryCountdown = secondaryCountdown - deltaTime
			if secondaryCountdown <= 0 then
				secondaryCountdown = SECONDARY_PERIOD
				
				SECONDARY_SFX:Play()
			end
		end
	end
end


function Start()
	isActive = true
	secondaryCountdown = SECONDARY_PERIOD
	
	IK_ROOT:AttachToPlayer(EQUIPMENT.owner, IK_BONE)
	_G.IkStack.Add(EQUIPMENT.owner, IK_ANCHOR)
	
	-- Random chance to play the primary sound
	if PRIMARY_SFX and math.random() < PRIMARY_CHANCE then
		PRIMARY_SFX:Play()
	end
end


function Stop()
	isActive = false
	
	_G.IkStack.Remove(EQUIPMENT.owner, IK_ANCHOR)
end


function OnBindingPressed(player, action)
	if player ~= EQUIPMENT.owner then return end
	if EQUIPMENT:GetCustomProperty("usesRemaining") <= 0 then return end
	
	if action == BINDING then
		Start()
	end
end
pressedListener = PLAYER.bindingPressedEvent:Connect(OnBindingPressed)


function OnBindingReleased(player, action)
	if player ~= EQUIPMENT.owner then return end
	
	if action == BINDING then
		Stop()
	end
end
releasedListener = PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)


function OnPropertyChanged(obj, propName, newValue)
	if propName == "itemId" then
		itemId = EQUIPMENT:GetCustomProperty("itemId")
		if model == nil and itemId ~= "" then
			local itemDefinition = _G.Consumables.GetDefinition(itemId)
			model = World.SpawnAsset(itemDefinition.model, {parent = MODEL_ROOT})
		end
		
	elseif propName == "usesRemaining" then
		usesRemaining = EQUIPMENT:GetCustomProperty("usesRemaining")
	end

	if PLAYER == EQUIPMENT.owner then return end
	
	if propName == "isActive" then
		if EQUIPMENT:GetCustomProperty("isActive") then
			if not isActive then
				Start()
			end
			
		elseif isActive then
			Stop()
		end
	end
end
EQUIPMENT.customPropertyChangedEvent:Connect(OnPropertyChanged)
OnPropertyChanged(EQUIPMENT, "itemId")


EQUIPMENT.unequippedEvent:Connect(function(equip, player)
	if Object.IsValid(player) then
		_G.IkStack.Remove(player, IK_ANCHOR)
	end
end)


script.destroyEvent:Connect(function()
	if Object.IsValid(EQUIPMENT.owner) then
		_G.IkStack.Remove(EQUIPMENT.owner, IK_ANCHOR)
	end
	
	if Object.IsValid(IK_ROOT) then
		IK_ROOT:Destroy()
	end

	if pressedListener then
		pressedListener:Disconnect()
		pressedListener = nil
	end
	if releasedListener then
		releasedListener:Disconnect()
		releasedListener = nil
	end
end)

