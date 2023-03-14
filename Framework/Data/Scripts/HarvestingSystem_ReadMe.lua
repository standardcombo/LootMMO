-----------------------------------------
-- HARVESTING SYSTEM FOR LootMMO
-- By Morituri_SK, v 1.0
-----------------------------------------
--
-- ReadMe
--
-----------------------------------------
--[[

This module allows the LootMMO players to use a tool to harvest a node. 
Scripts used:
    - HarvestingSystem_Client.lua
    - HarvestingSystem_Server.lua
    - API_HarvestingSystem.lua
    - HarvestingAbility_Server.lua
    - HarvestingAbility_Client.lua

Tables:
    - HarvestingTools
    - HarvestingNodes
    - Each node needs a table with geometry for each richness value


-----------------------------------------
MAKE SURE
-----------------------------------------

Navigate to MyScripts -> Harvesting
    and make sure all the scripts do have the custom properties connected and none is missing
        (Root == HarvestingSystem)
        (Panels == Adequate panel name in harvesting system client context)
-----------------------------------------
DEFINITIONS
-----------------------------------------

** TOOL:
Is a Core Equipment that is being dynamically spawned when a player enters a node proximity.
The tool holds an ability to animate and control the harvesting process.

Tool is defined in a "HarvestingTools" table, where the column "Type" defines the
tool for use with a NODE (NODE custom property "ToolReq" has to be equal the tool "Type" value)
The Type equals the item id in the "Loot Items" table to be spawned in the player inventory.

***************************
            --TO DO
            Adjust the tools table with the id -> loot items table and type for use with advanced tool levels
***************************

Each tool needs an equipment template to hold the tool geometry and harvesting tool ability.

** NODE:
Is a Core object, that holds all required data to allow for harvesting. Each node is a local context template with
a trigger that controls the player proximity to a node. Note template is not replicated by default and uses the
:ForceReplication() method on dynamic property changed event.
Node geometry is being spawned inside the local context for both client and server, based on node richenss changes.

    Harvesting Nodes table
        Type                - type of a node, this defines where the node can appear at in the world
        FriendlyName        - name to use for client UI tooltip
        WeightChances       - weight chances that this node will appear from all the nodes available of the same type
        Template            - node template itself
        rewards             - rewards granted for the node harvested
        AwardsPerSwing      - if this is true, the node process "rewards" column after each richness decrease,
                                if false, the node process "rewards" column after the node is depleted completely
        NodeStageGeoTable   - table that holds all the different node richness stages geometry, sorted from least to most
        FinishedTemplate    - client context template that will spawn once the node is completely depleted 

    Custom properties of a Node:
        ToolReq - a string of a tool type that allows the node harvesting
        SwingsToHarvest - number of an ability activations to harvest a node
        Type - Node type, to define the different nodes that do spawn in this place
        Richness - how many times the node can be harvested. This connets directly to the spawned node geometry
        Owner - if the node is being harvested, this value will be a harvesting player.id
        OriginRow - table row number of a node template spawned, for reference if needed

    Optional custom properties (see below for the HarvestingSystem custom properties)
    
        GreatnessRequired - optional parameter on the node, the minimal required tool greatness to allow harvesting (Defaults to 0)

        OverrideRespawnTimer - overrides the "RespawnNodesInterval" for this particular node.
                                NOTE that the node could be respawned when there are more nodes of the same type that do allow respawn
                                or the nodes are not being respawned explicitly by type (as the node free space is still available).
                                To absolutely disable the node respawning, it has to be of its own unique type and
                                the nodes respwaning has to be set to respawn by type.

        OverrideRespawnOnPartial - overrides the "RemovePartiallyMinedNodesAfter" for this particular node

        AlwaysSpawn - optional parameter that will make the node always spawn when server instance starts
        

        *In the original lootmmo project, the Grave node does have this properties set to disallow respawn

Nodes are defined in a table "HarvestingNodes". "Type" column defines where the node could appear during runtime, based on
"WeightChance" column value. (i.e. if a node of "vein" type is about to be spawned, either coal or iron could spawn in that particular place)
Each node needs a local context geometry to be defined in a standalone table that links to the "NodeStageGeoTable" column, to spawn
apporpiate geometry for each of the richness levels the node could gain.

** SETUP:
To allow for nodes spawning, it is required to place node objects (based on the node types that are in game) as child objects
in a NODES group in the HarvestingSystem group. These nodes do represent ALL ALLOWED spawn points for each node type and are
saved and removed when the game instance starts. The server handles the node spawning after that, based on the HarvestingSystem
custom properties:

    InitNodesSpawnedPerCent - The percentual amount of nodes that will be populated on runtime (rounds up)
    InitSpawnEvenByType - If the nodes should be eventually distributed among all node types available
                            (i.e. if this is true and 50% of nodes will spawn, the 50% of each node types will spawn
                            if the setting is false, the 50% is chosen randomly among all the nodes available)
    RespawnNodesInterval - The min/max interval in seconds when a node spawns after a node is harvested (set to Vector2.ZERO to disable respawn)
    RespawnByTypeOnly - If the newly respawned node has to be of the same type as the harvested one
    RemovePartiallyMinedNodesAfter - If a player harvests at least once, the node will be destroyed after this many seconds
                                        set to zero to disable removing of partially destoryed nodes
    SpawnOnlyFullNodes - if this is false, the newly spawned nodes could be of any richness from the <1,maxRichness> interval.
                            if true, the newly spawned nodes are always spawned at full richness

Note that, it is not needed to place all the available node templates on stage. The node spawn point is defined by a WorldTransform and 
Node type custom property value (i.e. if the node spawn point holds iron vein template to mark the spot, a coal could spawn there too,
as it is the same 'vein' type).

]]
script:Destroy()