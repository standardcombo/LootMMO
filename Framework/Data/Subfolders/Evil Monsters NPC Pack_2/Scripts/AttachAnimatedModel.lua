local model = script:GetCustomProperty("Model"):WaitForObject()

function Attach()
    local children = script.parent:GetChildren()
    for _, child in pairs(children) do
        if child:IsA("Folder") then
            --print("Attach " .. child.name)
            model:AttachCoreObject(child, child.name)
        end
    end
end

function LogSockets()
    local sockets = model:GetSocketNames()
    print("Socket Names")
    for _, socket in pairs(sockets) do
        print(socket)
    end
end

Attach()
--LogSockets()

Task.Wait(1)

--model:PlayAnimation("unarmed_bite", { shouldLoop = true })
--model:PlayAnimation("unarmed_idle_relaxed", { shouldLoop = true })