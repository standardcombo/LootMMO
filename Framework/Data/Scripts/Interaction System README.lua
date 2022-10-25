--[[
    The Interaction System provides creators with a way to quickly create interactive objects without any code. It is
    made up of a group of "Interaction Modules" and a set of "Interaction Components" that work together to manage
    Player input and provide interactivity.

    As a creator you just need to add Interaction Components to your objects and configure them. Each Interaction
    Component has a field for an Interaction Module. Using this field you can quickly switch out the type of input that
    the object will react to. Objects can have any number of Interaction Components under them to allow for more complex
    interactions.

    -------------------------------
    ---- Interaction Settings -----
    -------------------------------

    An optional template called "Interaction Settings" can be dropped into the scene to provide some fine tuning on the
    Interaction Modules. If this template isn't in the scene default settings will be used.

    -------------------------------
    ----- Interaction Modules -----
    -------------------------------

    APITriggerInteractionModule

        This module will react to Trigger interactions by the local Player or all Players depending on the Interaction
        Settings. By default the Trigger module will only react to the local Player in order  to act like the other
        Interaction Modules. If the setting "TriggerLocally" is false then Trigger inputs from all Players will run.
        This can be a useful way to mimic networked play without using any actual networking but it could affect your
        interactions in unexpected ways.

    APIPointerInteractionModule

        This mnodule will react to mouse interactions in world space for the local Player.

    APILookInteractionModule

        This module will react to look direction interactions for the local Player.

    APICursorInteractionModule

        This module will react to cursor interactions on UIControls for the local Player.

    -------------------------------
    --- Interaction Components ----
    -------------------------------

    BroadcastEventComponentClient

        This component will broadcast an event when configured interactions occur. Optional event data can be sent with
        the event through Custom Property configuration or through the lua API.

    ChangeColorComponentClient

        This component will change the color of an object when configured interactions occur.

    SelectableComponentClient

        This component will add or remove the object from a selection set when configured interactions occur.

    SpawnObjectComponentClient

        This component will spawn a template when configured interactions occur.

    ToggleEffectsComponentClient

        This component will play or stop Audio or Vfx when configured interactions occur.

    ToggleVisibilityComponentClient

        This component will show or hide the object when configured interactions occur.

    InteractionComponentTemplateClient

        This component is an example that can be used to create your own components. It shows how each optional callback
        can be used. You should copy and paste the code out of this into your own components and modify it to suit your
        needs.

    -------------------------------
    ---- Interaction Callbacks ----
    -------------------------------

        The following is a list of all available callbacks to Interaction System components:

        - HoverBegin(position, normal)
        - Hover(position, normal)
        - HoverEnd(position, normal)
        - PressBegin(binding, position, normal)
        - PressEnd(binding, position, normal, wasDragging)
        - Selected()
        - Deselected()
        - SetData(component, ...)

        The following callbacks are supported for APICursorModule (UI) only and are considered in development:

        - DragOverBegin()
        - DragOverEnd()
        - DragBegin(position, normal)
        - DragEnd(position, normal)
        - Dropped(position, normal, dropTargetId, ...)

    -------------------------------
    -------- How It Works ---------
    -------------------------------

    Each Interaction Component added to an object will register the "Component Root" with the Interaction Module set on
    it. As the Player makes interactions associated with the Interaction Module, the Interaction Module will call
    optional callbacks on the registered Interaction Components. This allows for an object with multiple Interaction
    Components on it to react to interactions in multiple ways simultaneously.

    For example if you set up the following hierarchy:

    Object
    |___ ClientContext
        |___ Cube
        |___ ChangeColorInteractionComponentClient (Component Root = Object, APIInteractionModule = APITriggerInteractionModule, HoveredColor = Color.RED, DefaultColor = Color.WHITE)
        |___ BroadcastEventComponentClient (Component Root = Object, APIInteractionModule = APITriggerInteractionModule, EventName = "myEvent", BroadcastOnBeginHover = true)
        |___ Trigger (Game Collision = FORCE_ON)

    This would cause the cube to change color to red and broadcast an event when you entered the Trigger.

    Each component has much more configuration options than the example above, so you have a lot of flexibility in how
    you put together these interactions. Components will also try to automatically find required objects like Triggers
    and UIButtons when needed. If these cannot be found a warning will be output into the Event Log.

    Each Interaction Module will track a single current target. A current target is assigned when a target is hovered
    over and cleared when the target is no longer hovered over. Selection sets are also tracked per Interaction Module.
    This can be used to build interactions that involve selecting multiple objects. Each module can have any amount of
    selection sets and a target can be a member of any amount of selection sets.

    All of the above is managed through the use of pre-made Interaction Components. You can build your own components
    and register them with the APIInteractionManager too.

    -------------------------------
    ------ Custom  Components -----
    -------------------------------

    All an Interaction Component needs to work with the APIInteractionManager is a target and a set of optional
    callbacks in a table. InteractionComponentTemplateClient is a fully documented example of how this works. Below you
    can see an example of a custom Interaction Component that only reacts to a press ending:

    ExampleComponentClient.lua

        local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject() -- Core Object Reference
        local INPUT_MODULE = script:GetCustomProperty("APIInteractionModule") -- Asset Reference
        local SUB_TARGET = script:GetCustomProperty("SubTarget"):WaitForObject() -- Core Object Reference
        local PRESS_BINDING = script:GetCustomProperty("PressBinding") -- String

        if INPUT_MODULE == nil or INPUT_MODULE == "" then
            warn(string.format("An Interaction Module must be set on Component: %s (%s)", script.name, script.id))
            return
        end

        local INPUT = require(INPUT_MODULE)

        function OnPressEnd(binding, position, normal, wasDragging)
            if not wasDragging and (PRESS_BINDING == "" or PRESS_BINDING == binding) then
                -- Custom code goes here
                print("Press Ended")
            end
        end

        local functionTable = {
            PressEnd = OnPressEnd
        }

        if not INPUT.RegisterTarget(COMPONENT_ROOT, SUB_TARGET, functionTable) then
            warn(string.format("Could not initialize %s (%s)", script.name, script.id))
            return
        end

        COMPONENT_ROOT.destroyEvent:Connect(INPUT.UnregisterTarget)

    The above Interaction Component, when dragged onto an object in a ClientContext, will automatically register and
    unregister itself with the APIInteractionManager via the selected APIInteractionModule. It will then print "Press
    Ended" each time you press the PRESS_BINDING while the object is the Interaction Modules current target. Depending
    on the selected APIInteractionModule you may need to be in a Trigger, hovering over the object with a mouse or
    looking at the object.

    All included Interaction Modules will register with the manager with the Component Root as the target. The module
    will find the required Trigger, UIButton or colliders automatically. There is an optional SubTarget field on most
    components that will let a user define a specific Trigger, UIButton or Collider hierarchy to use instead. This can
    be used to fine tune interactions and layer inputs on top of each other within a single hierarchy.
--]]