local API_PS = require(script:GetCustomProperty("APIPlayerState"))
local PLAYER_STATE_HELPERS = script:GetCustomProperty("PlayerStateHelpers"):WaitForObject()

API_PS.SetStateHelperGroup(PLAYER_STATE_HELPERS)
