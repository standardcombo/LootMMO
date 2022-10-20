local WEAPON = script:GetCustomProperty("Weapon"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

TRIGGER.collision = Collision.FORCE_OFF

WEAPON.equippedEvent:Connect(function()
  if Object.IsValid(WEAPON.owner) and WEAPON.owner == Game.GetLocalPlayer() then
    TRIGGER.collision = Collision.FORCE_ON
  end
end)

WEAPON.unequippedEvent:Connect(function()
  TRIGGER.collision = Collision.FORCE_OFF
end)
