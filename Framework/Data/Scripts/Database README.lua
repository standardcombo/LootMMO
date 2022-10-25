--[[
    These Databases can be added anywhere in the hierarchy (In Default Context) and they will automatically
    parse any folders, groups, scripts and their children into a set of nested data. This data can then be
    accessed though the APIDatabase.

    You can have as many of these in your scene as you want. They will all merge their data together where
    you can access it easily in scripts.

    To add data just create a folder, group or script under "Database". This can act as a collection of similar
    datas if it contains children, or it can be a data entry itself if it has Custom Properties.

    Name it in a way that you would like to access it. For example, you could create a group called "Items" and
    it would then be accessable by using the below code on the server or client:

        local DATABASE = require(script:GetCustomProperty("APIDatabase"))
        print(DATABASE.Items) -- This is just an empty table

    Next you can add children to the Items group. Each child will become available in the Database. If the child
    has any Custom properties on it these will automatically become available as well.

        Database
        |___ Items
            |___ Item1 (Name Custom property = "Sword")
            |___ Item2 (Name Custom property = "Shield")

        local DATABASE = require(script:GetCustomProperty("APIDatabase"))
        print(DATABASE.Items["Item1"].Name) -- prints "Sword"
        print(DATABASE.Items.Item2.Name)    -- prints "Shield"

    You can use any combination of folders, groups and scripts and lay out your data however you want.

    NOTE: You can only iterate over the Database with pairs()

    NOTE: If a group has both Custom properties and children, pairs() will include them both so you will need to
    check the type of the value as you iterate if you are only looking for child data:

        local DATABASE = require(script:GetCustomProperty("APIDatabase"))
        for key, value in pairs(DATABASE.Items) do
            if type(value) == "table" then
                -- Found child data
            end
        end
--]]