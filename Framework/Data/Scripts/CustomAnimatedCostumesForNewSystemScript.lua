--[[
	Animated Mesh Costume
	v1.0
	by: standardcombo
	
	Attaches objects to an NPC to customize its visuals.
	
	Automatically detects the animated mesh object that should be setup as
	its sibling in the hierarchy.
	
	Automatically detects siblings with names that match socket names on the
	animated mesh and attaches those groups to the mesh sockets.
	E.g. A group named "head" will attach to the animated mesh's head.
	
	Expects the animated mesh to be in the "bind" stance as the template is
	spawned. If the animated mesh is not in the "bind" stance, then
	attachments will appear out of place.
--]]


local ROOT = script.parent
local SafetyBool = false
if Environment.IsClient() ~= true then
	print("animated mesh costume not in client?")
	SafetyBool = true
end
--local MESH = ROOT:FindDescendantByType("AnimatedMesh") -- original code
-- my new code, thats temporarily replacing the old code.
local MESH = ROOT

local allObjects = ROOT:GetChildren()
Task.Spawn(function() 
	Task.Wait(1)
	if SafetyBool==true then return end
	for _,obj in ipairs(allObjects) do
		if obj:IsA("Folder") then
			local socketName = obj.name
			local pos = obj:GetWorldPosition()
			local rot = obj:GetWorldRotation()
			
			MESH:AttachCoreObject(obj, socketName)
			
			obj:SetWorldPosition(pos)
			obj:SetWorldRotation(rot)
		end
	end
end)
-- TEST
--MESH:PlayAnimation("1hand_melee_slash_right", {shouldLoop = true})

--[[
Task.Wait()
MESH.animationStance = "1hand_melee_idle_ready"

while true do
	MESH:PlayAnimation("1hand_melee_slash_left", {playbackRate = 0.55})
	Task.Wait(0.6)
	MESH:PlayAnimation("1hand_melee_slash_right", {playbackRate = 0.8})
	Task.Wait(1)
	MESH:PlayAnimation("1hand_melee_slash_left", {playbackRate = 0.55})
	Task.Wait(0.6)
	MESH:PlayAnimation("1hand_melee_slash_right", {playbackRate = 0.8})
	Task.Wait(1)
	MESH.animationStance = "unarmed_dance"
	Task.Wait(6)
end
--]]