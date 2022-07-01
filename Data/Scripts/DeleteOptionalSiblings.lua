
local CHANCE_TO_DESTROY = script:GetCustomProperty("ChanceToDestroy")

for _,obj in ipairs(script.parent:GetChildren()) do
	if obj == script 
	or math.random() < CHANCE_TO_DESTROY then
		--if obj:IsA("Vfx") then
			obj.visibility = Visibility.FORCE_OFF
		--else
		--	obj:Destroy()
		--end
	end
end
