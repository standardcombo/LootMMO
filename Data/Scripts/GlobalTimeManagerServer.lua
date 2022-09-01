local API_GLOBAL_OBJECT = require(script:GetCustomProperty("APIGlobalObject"))

while not API_GLOBAL_OBJECT.IsRegistered() do
    Task.Wait()
end

-- Initialize
API_GLOBAL_OBJECT.SetNetworkedCustomProperty("ServerStartOSTime", os.time())