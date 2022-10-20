local STANCE = script:GetCustomProperty("AnimationStance")

local sockets = script:GetChildren()
local mesh = script.parent

for _, child in pairs(sockets) do
  mesh:AttachCoreObject(child, child.name)
end

if STANCE then
  mesh.animationStance = STANCE
end
