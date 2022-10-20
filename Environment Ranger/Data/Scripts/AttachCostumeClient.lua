local COSTUME_FOLDER = script:GetCustomProperty("CostumeFolder"):WaitForObject()
local ANIMATED_MESH = script:GetCustomProperty("AnimatedMesh"):WaitForObject()

for _, socketFolder in pairs(COSTUME_FOLDER:GetChildren()) do
	ANIMATED_MESH:AttachCoreObject(socketFolder, socketFolder.name)
end
