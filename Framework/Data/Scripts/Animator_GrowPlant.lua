local PLANTS = script:GetChildren()
local GrowTime = 2

for _,plant in ipairs(PLANTS)do
    local origPos = plant:GetWorldPosition()
    local origScale = plant:GetWorldScale()
    plant:SetWorldPosition(origPos - Vector3.UP * 50)
    plant:SetWorldScale(Vector3.ONE * .1)
    plant:MoveTo(origPos,GrowTime)
    plant:ScaleTo(origScale,GrowTime)
end