local CONSTANT_LOOP = script:GetCustomProperty("ConstantLoop")

local thing = script.parent

while Task.Wait() do
  if not Object.IsValid(thing) then break end

  thing:SetWorldRotation(Rotation.New(0, 0, thing:GetWorldRotation().z))
  if not CONSTANT_LOOP then break end
end
