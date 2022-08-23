--- @type database
local LOOT_ABILITY_DATABASE = require(script:GetCustomProperty('Loot_Ability_Database'))
LOOT_ABILITY_DATABASE:WaitUntilSetup()
local LOOT_ABILITY_SPAWN_API = require(script:GetCustomProperty('Loot_Ability_SpawnAPI'))
function EquipPlayer(player, ability)
end

function UnEquipPlayer(player)
end

Game.playerLeftEvent:Connect(UnEquipPlayer)
