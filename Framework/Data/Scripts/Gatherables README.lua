--[[
      _____       _   _                    _     _
     /  ___|     | | | |                  | |   | |
    | |  __  __ _| |_| |__   ___ _ __ __ _| |__ | | ___  ___
    | | |_ |/ _` | __| '_ \ / _ \ '__/ _` | '_ \| |/ _ \/ __|
    | |__| | (_| | |_| | | |  __/ | | (_| | |_) | |  __/\__ \
     \_____|\__,_|\__|_| |_|\___|_|  \__,_|_.__/|_|\___||___/

    ------------------------------
    ---        OVERVIEW        ---
    ------------------------------

    Gatherables are a quick way to get large amounts of destroyable objects with multiple states into a scene with
    zero code and no additional networked objects.

    Gatherables are groups of interactable objects that players can destroy to receive resources. Each gatherable object
    can have multiple states, drop resources, respawn over time and more.

    All you need to do is drop a Gatherables template into your scene, swap out and create art and configure some values
    to make them look and act the way you want.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---         SETUP          ---
    ------------------------------

    Choose a Gatherable Object in the Gatherables and Inventory Example Project and either modify it directly or
    duplicate its template. If you choose to duplicate it, make sure you add the new template to the scene and modify it
    instead of the original one.

    Gatherable configuration lives in a couple places. One set of properties that control an entire group of objects,
    and each object inside that group.

    ------------------------------
    ---   GATHERABLE GROUPS    ---
    ------------------------------

    The first configuration values can be found in the hierarchy here:

        Gatherable Trees
        |__ Static Context
            |__ Gatherables Group <-- Custom Properties can be found here

    There can be any amount of Gatherable Groups. Feel free to duplicate it and add additional groups with different
    configurations.

    The configuration here deals with respawning and randomly spawning the objects in the group. Check the toolstips
    on the properties for detailed information.

    1. Respawn

        - If true, gathered objects will respawn based on the other respawn properties and their RespawnSeconds property.

    2. RespawnPlayerMinDistance

        - A Gatherable object will not respawn if any Player is closer than this distance.

    3. RespawnPlayerMaxDistance

        - A Gatherable object will ignore Players farther than this distance when making visibility checks to determine
        if it can respawn.

    4. RespawnWhenNotVisible

        - If true, Gatherable objects will only respawn when Players are facing away from them.

    5. RandomSpawn

        - If true, Gatherables will randomly spawn based on the "RandomSpawnPercent".

    6. RandomSpawnPercent

        - The percentage (0 - 100) of Gatherables in this group to spawn at any given time.

    ------------------------------
    ---   GATHERABLE OBJECTS   ---
    ------------------------------

    Each Gatherable object inside the "Gatherable Group" also has its own configurationm values. This lets you customize
    the states, drops and other behaviour per object.

        Gatherable Trees
        |__ Static Context
            |__ Gatherables Group
                |__ Gatherable Tree <-- Custom Properties can be found here

    There can be any amount of Gatherable Objects. Feel free to duplicate them and add additional objects with different
    configurations.

    All of the below data can instead be stored in a Database and be referenced by a single "GatherableId" string
    Custom Property on each Gatherable Object. This data needs to live in a Database under "Gatherables" if you want to
    use this approach.

    --- INTERACTION CONFIG ---

    These values deal with how the Gatherable Object responds to interactions with tools.

    1. ValidGatheringToolTypes

        - A comma separated list of tools that are allowed to gather this. An empty string means any tool will be able
        to gather this.

    2. ToolsConsumedPerGather

        - The number of Tools that are removed from the Inventory each time this Gatherable is gathered.

    3. InteractionError

        - An error that is broadcast if the Player tries to interact wth this Gatherable with the wrong tool.

    4. GatherEffects

        - This template will be spawned every time this is gathered. It is recommended to have a lifespan on this
        template. A default lifespan of 5 seconds will be used if it is set to 0.

    5. GatherEffectsOffset

        - This will move where the "GatherEffects" template spawns. It can be used to position the effect exactly where
        you need it.

    6. SpawnTemplateOnLoad

        - If true, the first state template will be spawned in place of the existing object. This allows you to use
        simple proxy objects in your template to reduce object count.

    --- RESPAWN CONFIG ---

    These values control the respawn behaviour for this gatherable Object.

    1. RespawnSeconds

        - If "Respawn" is true on the parent Gatherables Group, the gatherable will respawn after this amount of seconds
        has passed and it can be respawned.

    2. DestroyGatheredStateDelaySeconds

        - Waits this amount of seconds before destroying a Gatherable with a "GatheredState" to respawn other
        Gatherables.

    3. RespawnEffects

        - If "Respawn" is true on the parent Gatherables Group, this template will be spawned when the gatherable
        respawns.

    4. RespawnEffectsOffset

        - This will move where the "RespawnEffects" template spawns. It can be used to position the effect exactly where
        you need it.

    --- DROPS CONFIG ---

    These values drive the behaviours around dropping items in world or directly into a Players Inventory. You can
    disable drops by not including any drop data in the Gatherable Object hierarchy. More on that can be found below.
    Drops only work if an Inventory has been added to the scene.

    1. DropOnGather

        - If true, gathered objects will drop their contents into the world. Otherwise they will be directly added to
        the highest priority Inventory.

    2. DropEveryGather

        - If true, drops will be created every time this is gathered from. Otherwise, drops will only be created when
        the gatherable is fully gathered.

    3. DropForAllPlayers

        - If true, gathered objects will drop on all clients if DropOnGather is also true.

    4. SinglePlayerDrops

        - If true, gathered object drops will be destroyed on other clients when the first Player picks them up.

    5. MaxPickupsPerDrop

        - The maximum number of Item Pickups to generate for a drop. The amount of dropped items will be split into
        multiple pickups up to this maximum.

    6. DropMinDistance

        - If DropOnGather is true, the minimum distance from the gatherable the drop will appear.

    7. DropMaxDistance

        - If DropOnGather is true, the maximum distance from the gatherable the drop will appear.

    8. DropTimeoutSeconds

        - If DropOnGather is true, the number of seconds the drop will exist in the world.

    9. DropItemPickupTemplate

        - If DropOnGather is true, this Item Pickup template will be spawned in world to contain the drop.

    --- STATES CONFIG ---

    These values control how the Gatherable Object looks. Each object can have up to 32 states, so if you want
    additional states just add Asset Reference Custom Properties and follow the naming convention "State1", "State2",
    etc...

    1. State1

        - One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as
        gather interactions happen.

    2. GatheredState

        - If set, this state will be used when the Gatherable has been fully gathered. Useful for things that need to
        keep a visual presence even after being gathered from.

    ------------------------------
    ---         DROPS          ---
    ------------------------------

    Drops are defined on each Gatherable Object by adding a group of Drop Datas to it as children. There is a Drop Data
    script you can use for this, or you can make sure the correct Custom Properties are on groups you add manually.

    An Inventory must exist in the scene and Item data must exist in a Database for item drops to work. Inventory
    templates come with a preset Database. Likewise a Currency Settings template must exist in the scene for currency
    drops to work.

    Each Drop Data in the "Drops" group will be used to calculate drops when the Gatherable is interacted with.

        Gatherable Trees
        |__ Static Context
            |__ Gatherables Group
                |__ Gatherable Tree
                    |__ Drops
                        |__ Drop 1 <-- Drop data goes here
                        |__ Drop 2 <-- Drop data goes here
                        |__ etc...

    --- DROP DATA CONFIG ---

    Each Drop Data has the following properties. Weighted drops are treated differently than percentage based drops. If
    you set a WeightedChance on a Drop Data the PercentChance will be ignored.

    All drops with WeightedChance will be collected and a single drop will be selected based on the weights. This is
    useful for rarity based drops when you want a guaranteed drop.

    All PercentChance drops will be individually rolled. These drops may or may not drop depending on the roll.

    1. ItemId

        - The id of the item that should be added to a Players Inventory. The item data needs to exist in a Database in
        the scene. If left blank, no item will drop.

    2. CurrencyId

        - The id of the Currency that should be added to a Player. A Currency Settings with the same id needs to exist
        in the scene. If left blank, no Currency will drop.

    3. WeightedChance

        - If greater than 0, this value will be combined with other Drop Data WeightedValues and a single drop will be
        picked from the collection based on the weight of each drop. Useful for rare items.

    4. PercentChance

        - If greater than 0, the percent chance (0 - 100) that this drop will be rewarded to the Player.

    5. MinAmount

        - The minimum amount of the item or Currency to drop.

    6. MaxAmount

        - The maximum amount of the item or Currency to drop.

    ------------------------------
    ---    CHANGING THE ART    ---
    ------------------------------

    Art for Gatherable Objects can be changed two ways. The first is by adding and/or updating a new State Template,
    found in Custom Properties on the Gatherables Object level. State Templates are the customized art for the
    Gatherable Objects.

    State Template Method:

      Gatherable Trees
          |__ Static Contex
              |__ Gatherables Group
                  |__ Gatherable Tree <--- State Template is set here, State1, State2, ...

    Each state template should look something like this:

        Gatherable Tree - State 1
        |__ Art <-- Art goes here

    Add up to 32 state templates. Each time a gather interaction happens the object will switch to the next state
    template in the list.

    The second method to update the art is by disabling the State Template and adding the art under the Gatherable
    Object folder.

    Remember that this art will be destroyed and replaced with a State template at runtime if you have set any State
    templates in the config. The art you include under the Gatherable Object can be thought of as a proxy. You could use
    something as simple as a cube to show the object and reduce your scene object count. Then at runtime the cube will
    get replaced with the actual state template if you have set "SpawnTemplateOnLoad" to true. If "SpawnTemplateOnLoad"
    is false, this initial art will not be swapped out until a gather interaction happens.

       Gatherable Trees
           |__ Static Context
               |__ Gatherables Group
                   |__ Gatherable Tree  <-- Disable SpawnTemplateOnLoad
                       |__ Art <-- Art goes here

    ------------------------------
    ---        EVENTS          ---
    ------------------------------

    Gatherables send Events as they change. They can also be controlled from external scripts with Events.

    --- OUTGOING EVENTS ---

    1. APIGatherables.EVENT_GATHERABLE_GATHERED = "GTH_gathered"

        - Handler = function(player, entry) - Server / Client

        - This event is sent every time a successful gather interaction takes place. "entry" is a table with all of the
        Gatherable Object data and state. See below for the contents of that table.

    2. APIGatherables.EVENT_GATHERABLE_DESTROYED = "GTH_destroyed"

        - Handler = function(player, entry) - Server / Client

        - This event is sent when a Gatherable exits its last state. "entry" is a table with all of the Gatherable
        Object data and state. See below for the contents of that table.

    3. APIGatherables.EVENT_GATHERABLE_RESPAWNED = "GTH_respawned"

        - Handler = function(entry) - Server / Client

        - This event is sent when a Gatherable object respawns. "entry" is a table with all of the Gatherable Object
        data and state. See below for the contents of that table.

    "entry" Table Contents:
    {
        index - The index of this Gatherable Object
        bitIndex - The index of this object in the BitString used for saving data
        gatherableId - If "GatherableId" is set, the Database will be checked for data rather than the object itself
        states - A table of state template ids
        data - The Database or Custom Property data for this object
        gatheredStateIndex - If a GatheredState has been set, the index of this state
        hasTemplatedStates - True if any States have been added to the data
        transform - The transform of the object
        worldTransform - The world transform of the object
        coreObject - A reference to the object instance
        parent - A reference to the object parent
        state -  The current state index of this object
        numberOfStates - The total number of states this object has
        destroyedTime - The time this object was last destroyed
        bitLength - The length of the BitString to use for saving
    }

    --- INCOMING EVENTS ---

    1. APIGatherables.EVENT_RESET_GATHERABLE_GROUP = "GTH_reset"

        - Use = Events.Broadcast(APIGatherables.EVENT_RESET_GATHERABLE_GROUP, gatherableGroupId) - Server / Client

        - This event can be sent from any other script to reset a Gatherable Group to its initial state. The
        gatherableGroupId should be the CoreObject.id of either a single Gatherable Group, or the CoreObject.id of the
        very top level of a collection of Gatherable Groups. If a top level id is used, every Gatherable Group inside it
        will reset.
--]]