local parent = script.parent
assert(Object.IsValid(parent), script.name .. ' should have a parent.')

local equipment = script:FindAncestorByType("Equipment")
assert(Object.IsValid(equipment), script.name .. ' should be in an Equipment hierarchy.')

parent.isTeamColorUsed = true

local currentTeam = 0

function Tick(deltaTime)

    if not Object.IsValid(equipment) then return end

    if equipment.owner == Game:GetLocalPlayer() or
    not Object.IsValid(equipment.owner) then
        parent.isTeamColorUsed = false
        currentTeam = 0
        return
    end

    if equipment.owner and currentTeam ~= equipment.owner.team then
        parent.isTeamColorUsed = true
        parent.team = equipment.owner.team
        currentTeam = equipment.owner.team
    end
end