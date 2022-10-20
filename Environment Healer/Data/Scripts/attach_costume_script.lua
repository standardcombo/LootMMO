local sockets = script:GetChildren()
local propFantasyHumanGuy = script:GetCustomProperty("FantasyHumanGuy"):WaitForObject()

for idx, child in pairs(sockets) do  --  for all the socket folders under the script node...
     propFantasyHumanGuy:AttachCoreObject(child, child.name) --  attach each socket folder to their coresponding sockets in the skeleton                                                        
end


