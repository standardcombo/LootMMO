local sphere = script.parent
-- Create a rotation along the z axis

local spinRotation = Rotation.New(0, 0, 100)


-- Rotate the coin using our previously defined rotation
sphere:RotateContinuous(spinRotation)