local model = script:GetCustomProperty("Model"):WaitForObject()
local logSockets = script:GetCustomProperty("LogSockets")

function Attach()
    local children = script.parent:GetChildren()
    for _, child in pairs(children) do
        if child:IsA("Folder") then
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

if logSockets then
    LogSockets()
end

Task.Wait(1)

--model:PlayAnimation("unarmed_bite", { shouldLoop = true })
--model:PlayAnimation("unarmed_idle_relaxed", { shouldLoop = true })