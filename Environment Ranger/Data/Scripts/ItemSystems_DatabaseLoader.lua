local Database = require(script:GetCustomProperty("ItemSystems_Database"))
Database:_Init()
Database:WaitUntilLoaded()
print(string.format("%s Item Database Loaded!", script.isClientOnly and "Client" or "Server"))
