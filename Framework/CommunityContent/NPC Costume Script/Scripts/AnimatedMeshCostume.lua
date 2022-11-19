
local MESH = script.parent:FindDescendantByType("AnimatedMesh")

local allObjects = script.parent:GetChildren()

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

-- TEST
--MESH:PlayAnimation("1hand_melee_slash_right", {shouldLoop = true})

----[[
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