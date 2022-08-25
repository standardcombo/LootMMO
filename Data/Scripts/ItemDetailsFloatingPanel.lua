local ICON = script:GetCustomProperty('Icon'):WaitForObject()
local NAME = script:GetCustomProperty('Name'):WaitForObject()
local STATS = script:GetCustomProperty('Stats'):WaitForObject()

function SetItem(item, itemClass)
    local def = _G.Items.GetDefinition(item.name)

    ICON:SetImage(def.icon)
    ICON.isFlippedHorizontal = def.flipIconH
    ICON.isFlippedVertical = def.flipIconV

    NAME.text = item.fullName

    local calculationStats = itemClass:CalculateStats()

    local Stats = {
        ['Wisdom'] = calculationStats['W'],
        ['Agility'] = calculationStats['A'],
        ['Vitality'] = calculationStats['V'],
        ['Attack Power'] = calculationStats['AP'],
        ['Skill Power'] = calculationStats['SP'],
        ['Skill Resist'] = calculationStats['SR'],
        ['Block'] = calculationStats['B'],
        ['Health'] = calculationStats['H']
    }

    local ChatString = ''
    local count = 0
    for key, value in pairs(Stats) do
        if value > 0 then
            count = count + 1
        end
    end
    for key, value in pairs(Stats) do
        if value > 0 then
            ChatString = ChatString .. string.format('+%d %s', value, key)
            count = count - 1
            if count > 0 then
                ChatString = ChatString .. '\n'
            end
        end
    end

    STATS.text = ChatString
    -- TODO: Stat bonuses

    -- TODO: Triggered ability description
end
