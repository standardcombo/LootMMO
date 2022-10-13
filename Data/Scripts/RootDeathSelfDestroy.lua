local Damageable =  script:GetCustomProperty("Root"):WaitForObject()
assert(Damageable)

function Tick()
    if Damageable.hitPoints <= 0 then 
        Task.Wait(.3)
        if Object.IsValid(script) then 
            script:Destroy()
        end 
    end 
end 
 