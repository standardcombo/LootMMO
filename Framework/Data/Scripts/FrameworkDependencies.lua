local VERSION = 1

if not _G.FrameworkDependenciesLoaded then
    _G.AreFrameworkDependenciesLoaded = true
    _G.CheckFrameworkVersionUpToDate = function(requiredVersion)
        if VERSION < requiredVersion then
            error("Make sure you have the most up to date Framework Dependencies template added to your project. You may need to delete and re-import it into your project.")
            return false
        end
        return true
    end
else
    error("You can not have more than one copy of \"Framework Dependencies\" in a scene. Please delete any extra copies.")
    return
end