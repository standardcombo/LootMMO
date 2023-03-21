local DegrowParent = script.parent
---@type number
local TIMEOUT = script:GetCustomProperty("Timeout")
local degrow = DegrowParent:GetChildren()

local descaleTime = .6
for _,d in ipairs(degrow)do
    d.parent = nil
    Task.Spawn(function ()
        d.collision = Collision.FORCE_OFF
        d:ScaleTo(Vector3.ONE * .01, descaleTime)
        d:MoveTo(d:GetWorldPosition() - Vector3.UP * 100, descaleTime, true)
    end, TIMEOUT)
    Task.Spawn(function() d:Destroy() end,TIMEOUT + descaleTime)
end