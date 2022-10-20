local Root = script:GetCustomProperty('Root'):WaitForObject()
local DataFolder = Root:GetCustomProperty('DataFolder'):WaitForObject()
local AttributeFolder = Root:GetCustomProperty('AttributeFolder'):WaitForObject()
local DatabaseName = Root:GetCustomProperty('DatabaseName') 

--- @type Card_Database_API
local DatabaseAPI = require(script:GetCustomProperty('DatabaseAPI')).NewDatabase(DatabaseName)
 
function SetUp()
    for _, category in pairs(AttributeFolder:GetChildren()) do
        for _, attribute in pairs(category:GetChildren()) do
            DatabaseAPI:NewAttribute(attribute, category.name)
        end
    end
    Task.Wait()
    DatabaseAPI:CheckRegisteredComponents()
    DatabaseAPI:WaitUntilSetupState('cardSetup') 
    for key, card in pairs(DataFolder:GetChildren()) do
        DatabaseAPI:RegisterNewCard(card)
    end
    DatabaseAPI:CompleteSetups('databaseSetup')

    Task.Wait()
    DatabaseAPI:CompleteSetups('renderSetup')
end

SetUp()
