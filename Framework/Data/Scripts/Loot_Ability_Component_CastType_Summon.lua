local LOOT_ABILITY_COMPONENT_CAST_TYPE_CLASS =
    require(script:GetCustomProperty('Loot_Ability_Component_CastType_Class'))

local Component = setmetatable({}, {__index = LOOT_ABILITY_COMPONENT_CAST_TYPE_CLASS})

local DEFAULT_RANGE = 1000
function Component:Update(ability)
    if not ability:IsA('Ability') then
        return
    end
    local playerViewRotation = LOCAL_PLAYER:GetViewWorldRotation()
    local playerViewPosition = LOCAL_PLAYER:GetViewWorldPosition()
    local playerViewDirection = Quaternion.New(playerViewRotation):GetForwardVector()
    local playerPosition = LOCAL_PLAYER:GetWorldPosition()
    local AP = playerPosition - playerViewPosition
    local AB = playerViewDirection
    playerViewPosition = playerViewPosition + (AP .. AB) / (AB .. AB) * AB

    local PlacementRange = DEFAULT_RANGE

    PlacementRange = ability.range or DEFAULT_RANGE
    --print("PlacementRange: "..PlacementRange)
    local forwardVector = playerViewRotation * Vector3.FORWARD

    local edgeOfRange = playerViewPosition + forwardVector * PlacementRange
    local hr = World.Raycast(playerViewPosition, edgeOfRange, {ignorePlayers = true})

    local resultPosition, resultNormal, resultIsVisibleInHierarchy
    if hr ~= nil and hr.other ~= nil then
        resultPosition = hr:GetImpactPosition()
        resultNormal = hr:GetImpactNormal()
        resultIsVisibleInHierarchy = hr.other:IsVisibleInHierarchy()
    else
        -- Couldn't find a legal spot nearby, so we're probably out of range.  Try
        -- to find a spot at the edge of the range:
        hr = World.Raycast(edgeOfRange, edgeOfRange - Vector3.New(0, 0, 100000), {ignorePlayers = true})
        if hr ~= nil and hr.other ~= nil then
            resultPosition = hr:GetImpactPosition()
            resultNormal = hr:GetImpactNormal()
            resultIsVisibleInHierarchy = hr.other:IsVisibleInHierarchy()
        elseif SpecialAbility.owner and Object.IsValid(SpecialAbility.owner) then
            resultPosition = SpecialAbility.owner:GetWorldPosition()
            resultNormal = Vector3.UP
            resultIsVisibleInHierarchy = true
        end
    end
    -- Now, do a final raycast from the player to the target point, to check for walls
    local secondHit = World.Raycast(playerPosition, resultPosition, {ignorePlayers = true})
    if
        secondHit ~= nil and secondHit.other ~= hr.other and secondHit.other and
            not secondHit.other:IsVisibleInHierarchy()
     then -- OR SOME OTHER METHOD OF DETERMINING IT'S A WALL
        resultPosition = secondHit:GetImpactPosition()
        resultNormal = secondHit:GetImpactNormal()
        resultIsVisibleInHierarchy = secondHit.other:IsVisibleInHierarchy()
    end
    return resultPosition, resultNormal, resultIsVisibleInHierarchy
end

return Component
