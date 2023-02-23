local DEBRIS_PARENT = script.parent
---@type number
local TIMEOUT = script:GetCustomProperty("Timeout")

if TIMEOUT < 1 then TIMEOUT = 1
elseif TIMEOUT > 10 then TIMEOUT = 10 end

local debris = {}
if DEBRIS_PARENT:IsA("Folder") then
    for _,d in ipairs(DEBRIS_PARENT:GetChildren())do
        if d.isSimulatingDebrisPhysics == true then
            table.insert(debris,d)
        end
    end
else
    debris[1] = DEBRIS_PARENT
end

local descaleTime = .6
for _,d in ipairs(debris)do
    d.parent = nil
    local randomTime = math.random()
    Task.Spawn(function ()
        d.collision = Collision.FORCE_OFF
        d:ScaleTo(Vector3.ONE * .01, descaleTime)
        d:MoveTo(d:GetWorldPosition() - Vector3.UP * 100, descaleTime, true)
    end, TIMEOUT - randomTime)
    Task.Spawn(function() d:Destroy() end,TIMEOUT + descaleTime)
end
