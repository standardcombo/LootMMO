local ABILITY_STUDY_GLOBAL = require(script:GetCustomProperty('AbilityStudy_Global'))
local returnCall = ABILITY_STUDY_GLOBAL.returnCalls
local WaitingForReturn = false

local function HandleRecall(recall,ErrorCode)
    local Handlers = {
        [returnCall.Error] = function(ErrorCode)
        end,
        [returnCall.Success] = function()
        end
    }
    if Handlers[recall] then
        Handlers[recall]()
    end
    WaitingForReturn = false
end

local function Study(slot)



end
 