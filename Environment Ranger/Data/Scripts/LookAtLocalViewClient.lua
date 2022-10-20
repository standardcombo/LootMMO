for _, objectReference in pairs(script:GetCustomProperties()) do
	objectReference:WaitForObject():LookAtLocalView(false)
end
