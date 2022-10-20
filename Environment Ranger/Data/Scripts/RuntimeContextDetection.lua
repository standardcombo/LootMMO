-- Crazy that there isn't a builtin way to do this...

return {
    IsClientSide = function()
        return World.FindObjectByName("___RUNTIME_CONTEXT_CLIENT") ~= nil
    end,

    IsServerSide = function()
        return World.FindObjectByName("___RUNTIME_CONTEXT_SERVER") ~= nil
    end,
}