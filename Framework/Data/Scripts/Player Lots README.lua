--[[
     _____  _                         _           _
    |  __ \| |                       | |         | |
    | |__) | | __ _ _   _  ___ _ __  | |     ___ | |_ ___
    |  ___/| |/ _` | | | |/ _ \ '__| | |    / _ \| __/ __|
    | |    | | (_| | |_| |  __/ |    | |___| (_) | |_\__ \
    |_|    |_|\__,_|\__, |\___|_|    |______\___/ \__|___/
                     __/ |
    ----------------|___/-------------
    ---          OVERVIEW          ---
    ----------------------------------

    Player Lots offer a way for creators to define sections in their game that belong to individual Players. Lots can be
    mixed with several other systems and the main benefits they provide are ownership, permissions and persistence.

    A Player can "own" any number of Player Lots, and Lots can exist only while the owner is online, or stay even after
    they leave the game.

    Lots can even be combined with Areas to let you create pools of Area/Lots that dynamically load and unload as
    Players enter and exit them. This is used to create things like the interior of a Players house that only loads when
    a Player enters it.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ----------------------------------
    ---           SETUP            ---
    ----------------------------------

    Basic Player Lots can be set up fairly easily. The first thing you should do is add a "Player Lot Manager" template
    to your hierarchy. This will let you tweak some settings for a specific group of Player Lots. Select the manager and
    view its properties in the Properties Panel.

        1. LotType

            - This Lot Type should match the Lot Type set on one or more Player Lot Setup templates. Any settings on
            this object will apply to all Lots of this type.

        2. MaxOwnedPerPlayer

            - The maximum amount of Lots of this Lot Type that each Player can own at a time. 0 means any amount.

        3. AssignWhenPlayerJoins

            - If true, the Player will be assigned to a Lot of this Lot Type when they join the game.

        4. ResetLotsWhenPlayerLeaves

            - If true, all Lots of this Lot Type will be reset when the owner of those Lots leaves the game.

    Choose a unique "LotType" for the set of Lots you are creating and fill the other settings in as desired. You should
    consider that if a Player can own x Lots and your max players = y then you should build x * y Lots to make sure
    every Player can have enough Lots if your server is full.

    ----------------------------------
    ---       BUILDING A LOT       ---
    ----------------------------------

    Create a Group in your hierarchy that will represent the Lot and drop a "Player Lot Setup" template into it. Select
    the "Player Lot Setup" template and look at its properties in the Properties Panel.

        1. PlayerLot

            - (Optional) If set, the referenced object will be considered the root of this Player Lot. Otherwise the
            parent of this object will be used.

        2. LotType

            - (Optional) This can be used to assign Players to a specific Lot or group of Lots.

        3. OwnerOnly

            - If true, any dynamic objects on the lot, such as Gatherables and Producers, will only be accessible to the
            owner.

    You should set the "LotType" property to the same value you used in the "Player Lot Manager". Set the other values
    to whatever suits your design.

    Your hierarchy should look something like this:

        Player Lot Manager
        Lot
        |___ Player Lot Setup

    Next you should add at least one "Player Lot Spawn Point" to your Lot if you expect to be teleporting Players to
    their Lots. If Players can just walk around to get from Lot to Lot you can skip this step. Select the Player Lot
    Spawn Point and look at its properties.

        1. PlayerLot

            - (Optional) This should be assigned to a group of objects that represents a Player Lot. This will
            automatically find the Lot it is inside if left blank.

        2. SpawnPointKey

            - (Optional) If set, this will allow portals and other teleport methods to target this spawn point.

    Set the Spawn Point up as desired. It is recommeded to set a SpawnPointKey since this allows for multiple Spawn
    Points on a Lot and can make teleporting Players easier.

    You should now add any other art you want to add to the Lot group. Once your Lot is set up how you want, you should
    duplicate it until you have enough Lots to support your games max players. You can safely put these lots inside
    another folder or group for organization. You can also template your entire Lot before duplicating it, but you will
    need to deinstance the templates you have added to it.

        Player Lot Manager
        Lots
        |___ Lot
        |   |___ Player Lot Setup
        |   |___ Player Lot Spawn Point
        |   |___ etc...
        |___ Lot
        |   |___ Player Lot Setup
        |   |___ Player Lot Spawn Point
        |   |___ etc...
        |___ Lot
        |   |___ Player Lot Setup
        |   |___ Player Lot Spawn Point
        |   |___ etc...
        |___ Lot
        |   |___ Player Lot Setup
        |   |___ Player Lot Spawn Point
        |   |___ etc...
        etc...

    At this point the Lot will work, and if you configured it to auto assign a Lot to a Player on join, that will
    happen, but visually not much is going on. One of the benefits of using Lots is that you can use them to only load
    certain objects while the owner of the Lot is online, or while the Lot is owned. This can reduce total object count
    in your game and help performance.

    ----------------------------------
    ---    LOADING AREA OBJECTS    ---
    ----------------------------------

    To make this happen you can add the "Player Lot Object Loader" template to each Lot. Make sure that its position is
    the same in each Lot so you don't have objects being offset when they load. Select the Player Lot Object Loader and
    check out the properties in the Properties Panel.

        1. RequiresOwnerToLoad

            - If true, will only load the objects if the Player Lot has an owner. Objects will be unloaded if the owner
            is cleared.

        2. RequiresNoOwnerToLoad

            - If true, will only load the objects if the Player Lot does not have an owner. Objects will be unloaded if
            the owner is set.

        3. ServerAsset

            - (Optional) A template to spawn into a Server Context when the Player Lot Loads. This template will be
            destroyed when the Player Lot unloads.

        4. StaticAsset

            - (Optional) A template to spawn into a Static Context when the Player Lot Loads. This template will be
            destroyed when the Player Lot unloads.

        5. ClientAsset

            - (Optional) A template to spawn into a Client Context when the Player Lot Loads. This template will be
            destroyed when the Player Lot unloads.

    The two boolean properties give a lot of flexibility to this loader.

        1. RequiresOwnerToLoad = true, RequiresNoOwnerToLoad = true

            - This isn't very logical and results in nothing ever loading

        2. RequiresOwnerToLoad = true, RequiresNoOwnerToLoad = false

            - Objects will only load if the Lot has an owner.

        3. RequiresOwnerToLoad = false, RequiresNoOwnerToLoad = true

            - Objects will only load if the Lot does not have an owner.

        4. RequiresOwnerToLoad = false, RequiresNoOwnerToLoad = false

            - Objects will always load.

    All you need to do is create the templates you want to load. You can use as many of these loaders as you need in
    each Lot, so if you want to split things up for organizational purposes that is totally fine. This is also a good
    way to get your own scripts to run and get destroyed along with a Lot!

    The templates will be spawned at the position of the loader, so you will need to make sure that your pivot points /
    origins are set up to work with that.

    Your hierarchy will look similar to this:

        Player Lot Manager
        Lots
        |___ Lot
        |   |___ Player Lot Setup
        |   |___ Player Lot Spawn Point
        |   |___ Player Lot Object Loader
        |   |___ etc...
        |___ Lot
        |   |___ Player Lot Setup
        |   |___ Player Lot Spawn Point
        |   |___ Player Lot Object Loader
        |   |___ etc...
        etc...

    ----------------------------------
    --- GATHERABLES AND PRODUCERS  ---
    ----------------------------------

    It's also possible to load Gatherables and Producers in Player Lots. This requires a different kind of Loader called
    a "Player Lot Replicator Loader". Add Gatherable(s) and/or Producer(s) to your Lot (See Gatherables README or
    Producers README) and then add a "Player Lot Replicator Loader" for each one. Select the loader to view its
    properties.

        1. Replicator

            - Loads and unloads the Replicator when the Player Lot loads and unloads.

        2. StorageKey

            - The key to use for storing the data in Player Storage for this Replicator.

        3. Identifier

            - A tag that can be used to limit what can be placed in the Replicator or allow other scripts to pick out
            this specific Replicator.

        4. Populate

            - If true, and the Replicator has objects already existing in its Static Context folder, these objects will
            be added to its internal state and saved.

    You need to drag the "Replicator" group in the Gatherable or Producer setup into this reference. Your heirarchy
    might look something like this.

        Lot
        |___ Player Lot Setup
        |___ Player Lot Spawn Point
        |___ Player Lot Replicator Loader   <-- Reference the Replicator group below in the "Replicator" property
        |___ Gatherable Trees
            |___ Replicator                 <-- This is referenced in the "Replicator" property

    You will need one Player Lot Replicator Loader per Gatherable or Producer setup you have in the Lot.

    ----------------------------------
    ---   MOVING PLAYERS TO LOTS   ---
    ----------------------------------

    To move / teleport a Player to a Lot you will need to add either a "Player Lot Portal - Server" or a "Player Lot
    Portal - Client" template into your scene. These are very similar with the main difference being that the server
    version does not use any networked Events. The client version was added for cases where you want to spawn a Portal
    only on specific clients or something similar.

    Select the Portal and take a look at the properties for it.

        1. LotType

            - (Optional) If set, this portal will move a Player to an available lot that is flagged as being this Lot
            Type. Otherwise, this will teleport the Player to the first Lot found.

        2. SpawnPointKey

            - (Optional) If set when a Player is moved to a Player Lot they will spawn at the Spawn Point that shares
            this key.

        3. AssignPlayerToLot

            - If true, the Player teleporting will be assigned a lot if they don't already own one. Otherwise this will
            teleport them to the lot they own, or to the first lot of the specified Lot Type found.

        4. TakeOverOfflineLots

            - If true, if there are no available unowned Player Lots to assign, a lot owned by an offline Player will be
            used.

    In most cases you will want to set "LotType" to be sure of where you are sending Players. This should be set to a
    Lot Type being used by a set of Lots in your scene. Very basic setups with only one set of Lots could leave this
    blank.

    Set the SpawnPointKey to match the Player Lot Spawn Point key in the target Lots. If it is left blank it will find
    the first available Spawn Point.

    The next booleans will depend on the behaviour that you want for your design. If your Player Lot manager already
    assigns a Lot to the Player when they join, then AssignPlayerToLot doesn't do anything here. You may want the Player
    to pick a Lot out on their own, in which case you would set AssignPlayerToLot to false and use another template to
    let them claim a Lot.

    You can also use the "Teleport To Player Lot Button" for a UI based approach. It shares the above properties and
    also offers the standard icon settings below.

        1. IconCameraId

            - If "Is3DIcon" is true, this should match the "CameraId" of an "Icon Generator" in the scene.

        2. IconAsset

            - The image or template to use for an icon. If "IsKitbashed2DIcon" is true, this should be a UI template. If
            "Is3DIcon" is true, this should be a 3D object template. If "IsImageIcon" is true, this should be an
            image/brush asset.

        3. IsKitbashed2DIcon

            - If true, the "IconAsset" should point to a UI template. This template will be spawned as the icon.

        4. Is3DIcon

            - If true, the "IconAsset" should point to a 3D object template. An image of this template will be used as
            the icon.

        5. IsImageIcon

            - If true, the "IconAsset" should point to an image/brush asset. This will be used as the icon.

        6. Binding

            - (Optional) The binding that should be pressed to teleport the Player.

        7. BindingText

            - (Optional) This text will be displayed as the shortcut key for this button.

        8. ButtonText

            - (Optional) This text will appear over the icon.
            {name} can be used and will be replaced with the destination Area Name.
            {type} can be used and will be replaced with the DestinationAreaKey.

    ----------------------------------
    --- ASSIGNING PLAYERS TO LOTS  ---
    ----------------------------------

    Lots can be assigned to Players automatically or through a Player claiming a specific Lot.

    There are two ways to assign a Player to a Lot automatically. The first way is with the "Player Lot Manager"
    template. You can check the "AssignWhenPlayerJoins" box. The second way is with a "Player Lot Portal". On these you
    can check the "AssignPlayerToLot" box, which will assign a Lot to the Player when they use the Portal if they don't
    already own a Lot of that type.

    To allow a Player to claim one or more Lots themselves, you can use a "Claim Player Lot Zone" template. These can be
    set up to show a message when the Player can no longer claim Lots of that type, or you could load these zones with a
    "Player Lot Object Loader" and set them to unload when the Lot has an owner.

    The "Claim Player Lot Zone" is client only and has the following properties:

        1. PlayerLot

            - (Optional) If set, will claim a specific Lot. Otherwise this will find the Lot this object is inside.

        2. InteractWithTrigger

            - If true, Players will need to interact with the Trigger to claim the Lot.

        3. InteractionText

            - (Optional) If "InteractWithTrigger" is true, this text will be displayed.
            {name} will be replaced by thename of the Lot.
            {type} will be replaced by the Lots type.

        4. CannotClaimText

            - (Optional) If set, this text will display if the Player cannot claim the Lot.
            {name} will be replaced bythe name of the Lot.
            {type} will be replaced by the Lots type.

    You can add one of these templates as a child of your Lot and then adjust the Trigger as needed. If you don't fill
    in the "PlayerLot" property, it will automatically find the Lot is inside.
--]]