local costumeEquipmentTemplate = script:GetCustomProperty("CostumeEquipmentTemplate"):WaitForObject()

local guyTemplate = costumeEquipmentTemplate:GetCustomProperty("GuyTemplate")
local galTemplate = costumeEquipmentTemplate:GetCustomProperty("GalTemplate")
local shoulderMarker = costumeEquipmentTemplate:GetCustomProperty("ShoulderMarker")

local allowLiveSwapping = costumeEquipmentTemplate:GetCustomProperty("AllowLiveSwapping")
local changeInterval = costumeEquipmentTemplate:GetCustomProperty("ChangeInterval")
local allowPreview = costumeEquipmentTemplate:GetCustomProperty("AllowPreview")

local localPlayer = Game.GetLocalPlayer() -- local player used for for determining costume preview.

local costumeOwner = nil -- player who equipped the costume.

local playerType = 0 -- 0 for not checked, 1 for gal, -1 for guy.
local ownerType = 0

local currentCostume = nil -- guy or gal template that has been spawned in.
local equippedCostume = nil

local attachedItems = {} -- parts of the costume that are equipped on the player.

local preview = nil -- preview task
local equipped = nil -- equipped task

function GetShortId(obj) -- breaks the id into just the costume name.
    if obj then
    
        return string.sub(obj, string.find(obj , ":") + 1)
            			
    else
        
        return nil
        
    end
end

function InitializeCostumeManager() -- setup preview and equip costumes to each player if the player joined the game late.

	if allowPreview and allowLiveSwapping then
	
		currentCostume = World.SpawnAsset(galTemplate, {parent = script.parent})
		
		preview = Task.Spawn(PreviewTask)
		preview.repeatCount = -1
		preview.repeatInterval = changeInterval
		
	elseif allowPreview then
	
		currentCostume = World.SpawnAsset(galTemplate, {parent = script.parent})
		
		CheckPlayerType(localPlayer)
		
		costumeOwner = localPlayer
		
		CheckPlayerType(localPlayer)

		PreviewTask()
		
	else
	
		costumeOwner = localPlayer
	
		CheckPlayerType(costumeOwner)
	
	end
	
	if costumeEquipmentTemplate.owner then
	
		OnEquipCostume(costumeEquipmentTemplate, costumeEquipmentTemplate.owner)
		
	end

end

function OnEquipCostume(costume, player) -- end preview task, set owner,set owner type, destroy preview, and spawn and equip costume.

	if preview then
	
		preview:Cancel()
		preview = nil
		
	end
	
	costumeOwner = player
	
	CheckPlayerType(costumeOwner)	

	if Object.IsValid(currentCostume) then
			
		currentCostume:Destroy()
				
	end
			
	if ownerType == 1 then
			
		equippedCostume = World.SpawnAsset(galTemplate)
					
	elseif ownerType == -1 then
								
		equippedCostume = World.SpawnAsset(guyTemplate)
					
	end	
	
	for idx, child in pairs(equippedCostume:GetChildren()) do
	
  	child:AttachToPlayer(player, child.name)
  	table.insert(attachedItems, child)
  	
  end
  
 	if allowLiveSwapping then
		
		equipped = Task.Spawn(ChangeEquippedTask)
		equipped.repeatCount = -1
		equipped.repeatInterval = changeInterval
		
	end

end

function OnUnequipCostume(costume, player) -- preview + equipped tasks, destroy attached costume, and spawn preview if allowed.

	costumeOwner = nil

	if preview then
	
		preview:Cancel()
		preview = nil
		
	end

	if equipped then
		
		equipped:Cancel()
		equipped = nil
		
	end

	for idx, child in pairs(attachedItems) do

	 	child:Detach()
		child:Destroy()
		attachedItems[idx] = nil
      
	end 
	
  equippedCostume:Destroy()

	if allowPreview and allowLiveSwapping then
	
		currentCostume = World.SpawnAsset(galTemplate, {parent = script.parent})
		
		preview = Task.Spawn(PreviewTask)
		preview.repeatCount = -1
		preview.repeatInterval = changeInterval
		
	elseif allowPreview then
	
		currentCostume = World.SpawnAsset(galTemplate, {parent = script.parent})
	
		PreviewTask()
	
	end	

end

function CheckPlayerType(player) -- checks if player is a guy or gal by checking shoulder width.

	local attached = player:GetAttachedObjects()
	
	local leftShoulderMarker = nil
	local rightShoulderMarker = nil
	
	local shoulderWidth = 0
	
	if not leftShoulderMarker then -- spawn marker if it is not on the player
	
		leftShoulderMarker = World.SpawnAsset(shoulderMarker)
		leftShoulderMarker.lifeSpan = 1
		leftShoulderMarker:AttachToPlayer(player, "left_shoulder")
		
	end
	
	if not rightShoulderMarker then -- spawn marker if it is not on the player

		rightShoulderMarker = World.SpawnAsset(shoulderMarker)
		rightShoulderMarker.lifeSpan = 1
		rightShoulderMarker:AttachToPlayer(player, "right_shoulder")
		
	end
	
	shoulderWidth = (leftShoulderMarker:GetWorldPosition() - rightShoulderMarker:GetWorldPosition()).size
	
	leftShoulderMarker:Detach()
	leftShoulderMarker:Destroy()
	
	rightShoulderMarker:Detach()
	rightShoulderMarker:Destroy()
	
	-- gal shoulder width is average 32, guy shoulder width is average 47, midpoint is 39.5
	
	if shoulderWidth <= 39 then -- player is a gal
	
		if player == costumeOwner then
		
			ownerType = 1
			
			return
			
		end
		
		playerType = 1
		
		
	elseif shoulderWidth > 39 then -- player is a guy
	
		if player == costumeOwner then
		
			ownerType = -1
			
			return
			
		end
		
		playerType = -1
		
	end
		
end

function PreviewTask() -- task to show preview of costume.

	if allowLiveSwapping then
		
		CheckPlayerType(localPlayer)
	
	end
		
	if playerType == 1 and GetShortId(currentCostume.id) ~= GetShortId(galTemplate) then -- change to gal template if player changed to gal and the current is not the gal template.
		
		if Object.IsValid(currentCostume) then
			
			currentCostume:Destroy()
				
		end
		
		currentCostume = World.SpawnAsset(galTemplate, {parent = script.parent})
			
	elseif playerType == -1 and GetShortId(currentCostume.id) ~= GetShortId(guyTemplate) then -- change to guy template if player changed to guy and the current is not the guy template.
		
		if Object.IsValid(currentCostume) then
			
			currentCostume:Destroy()
				
		end
		
		currentCostume = World.SpawnAsset(guyTemplate, {parent = script.parent})
			
	end

end

function ChangeEquippedTask() -- task to change costume when player changes type (works like the preview task with the added step of equiping the costume).

	CheckPlayerType(costumeOwner)

	if ownerType == 1 and GetShortId(equippedCostume.id) ~= GetShortId(galTemplate) then
		
		for idx, child in pairs(attachedItems) do
			
	   	child:Detach()
	   	child:Destroy()
	   	attachedItems[idx] = nil
     
	  end
	  	  
	  equippedCostume:Destroy()	
	  
		equippedCostume = World.SpawnAsset(galTemplate, {parent = script.parent})	
		
		for idx, child in pairs(equippedCostume:GetChildren()) do

	  	child:AttachToPlayer(costumeOwner, child.name)
	  	table.insert(attachedItems, child)
	  	
	  end
			
	elseif ownerType == -1 and GetShortId(equippedCostume.id) ~= GetShortId(guyTemplate) then
		
		for idx, child in pairs(attachedItems) do

	 		child:Detach()
	  	child:Destroy()
	  	attachedItems[idx] = nil
	        
	  end
	  
	  equippedCostume:Destroy()
	  
		equippedCostume = World.SpawnAsset(guyTemplate, {parent = script.parent})
		
		for idx, child in pairs(equippedCostume:GetChildren()) do

	  	child:AttachToPlayer(costumeOwner, child.name)  
	  	table.insert(attachedItems, child)
	  	
	  end
			
	end

end

costumeEquipmentTemplate.equippedEvent:Connect(OnEquipCostume)
costumeEquipmentTemplate.unequippedEvent:Connect(OnUnequipCostume)
InitializeCostumeManager()