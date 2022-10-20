
Task.Wait()
local ROOT = script:FindAncestorByType("Damageable")
local maxArmor = ROOT:GetCustomProperty("Armor")
ROOT.clientUserData.maxArmor = maxArmor