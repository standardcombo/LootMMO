local ROOT = script:GetCustomProperty('Root'):WaitForObject()
while not ROOT.clientUserData.Connect do
    Task.Wait()
end
while not _G['Character.EquipAPI'] do
    Task.Wait()
end

local OFFSET = script:GetCustomProperty('Offset')
local ART = script:GetCustomProperty('Art'):WaitForObject()
local Star_Ratings = _G['Star_Rating']
local EquipAPI = _G['Character.EquipAPI']
local LOCAL_PLAYER = Game.GetLocalPlayer()

local statUpdateEvent = nil
local currentEquipment = nil

function GetStar(stat)
    return Star_Ratings[math.floor(stat - OFFSET / 3) + 2]
end

function UpdateStars()
    if not currentEquipment then
        return
    end
    local equipmentname = currentEquipment.name
    local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
    if not character then
        return
    end
    local stat = character:GetComponent('Stats')
    local abilityLevel = stat:GetStat(equipmentname)
    local star = GetStar(abilityLevel)
    if star and star['Art'] then
        ART:SetImage(star['Art'])
    end
end

function UpdateEquipment(equipment)
    currentEquipment = equipment
    UpdateStars()
end

local EquipEvent =
    EquipAPI.playerEquippedEvent:Connect(
    function(character, player)
        if player ~= LOCAL_PLAYER then
            return
        end
        local stat = character:GetComponent('Stats')
        statUpdateEvent = stat.statUpdateEvent:Connect(UpdateStars)
    end
)

script.destroyEvent:Connect(
    function()
        if statUpdateEvent then
            statUpdateEvent:Disconnect()
        end
        if EquipEvent then
            EquipEvent:Disconnect()
        end
    end
)

ROOT.clientUserData.Connect(UpdateEquipment)
