local OBJECT = script:GetCustomProperty("Object"):WaitForObject()

Task.Wait()
OBJECT.parent = World.GetRootObject()
