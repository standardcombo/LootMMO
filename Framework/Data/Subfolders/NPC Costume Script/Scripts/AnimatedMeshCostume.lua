
local MESH = script.parent:FindDescendantByType("AnimatedMesh")
local FX = script:GetCustomProperty("EffectsGatherStone"):WaitForObject()
local startDelay = 0.75
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
MESH.animationStance = "2hand_sword_idle_ready"
while true do 
	MESH:PlayAnimation("2hand_melee_slash_vertical", {playbackRate = 0.5, shouldLoop = false})
	Task.Wait(startDelay)
	for key, value in pairs(FX:GetChildren()) do
		value:Play()
	end
	Task.Wait(3 - startDelay)
end
--]]