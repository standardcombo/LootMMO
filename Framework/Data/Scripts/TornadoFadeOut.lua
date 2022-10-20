local Root = script.parent
local Visual = script:GetCustomProperty('Visual'):WaitForObject()
local Audio = script:GetCustomProperty('Audio'):WaitForObject()
local Decal = Root:FindChildByType('Decal')

while Root:GetCustomProperty('lifespan') == 0 and Root:GetCustomProperty('decaleScale') do
    Task.Wait()
end

local lifeSpan = Root:GetCustomProperty('lifespan')
Task.Spawn(
    function()
        if Object.IsValid(Root) and Object.IsValid(Visual) then
            Audio:FadeOut(1)
            Visual:ScaleTo(Vector3.ZERO, 1)
        end
    end,
    lifeSpan - 1.3
) 

local DecalScale = Root:GetCustomProperty('decaleScale')
local defaultScale = Decal:GetWorldScale()
Decal:SetWorldScale(Vector3.New(DecalScale, DecalScale, defaultScale.z))
