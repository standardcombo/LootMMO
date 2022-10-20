--[[
    DDPathfinding
    v0.8.0
    by: truedarkdev (DarkDev#3167 at discord)
]]--

if not(script.name == "DDDontAffectNavMesh") then
    warn(string.format("DDDontAffectNavMesh scripts must retain their original name, as otherwise the navmesh generator won't find them. Found incorrect name = \"%s\"", script.name))
end

-- TODO: Would be nice if this could remove itself when not needed anymore
local parent = script.parent
if parent then
    if not(parent:IsA("CoreObject")) or parent:IsA("Player") then
        warn(string.format("\"%s\" have \"%s\" as parent which is not a legal parent, must be CoreObject and can't be a Player!", script.name, parent.name))
        parent = nil
    end
    if not(parent.isClientOnly) and not(parent.isServerOnly) and not (parent.isNetworked) then
        warn(string.format("\"%s\" can't disable navmesh generation for \"%s\" because it can't be modified, it need to either be Networked or be placed in a Server Context!", script.name, parent.name))
        parent = nil
    end
end

function GetDisabledObject()
    return parent
end