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
DEFINITIONS
-----------------------------------------

** TOOL:
Is a Core Equipment that is being dynamically spawned when a player enters a node proximity.
The tool holds an ability to animate and control the harvesting process.

Tool is defined in a "HarvestingTools" table, where the column "Type" defines the
tool for use with a NODE (NODE custom property "ToolReq" has to be equal the tool "Type" value)
Tool level is optional, for now, only level 1 is being used and there is no game logic connected
to different tool levels. The harvesting system checks if the tool level is > 0 to allow for
node harvesting.

Each tool needs an equipment template to hold the tool geometry and harvesting tool ability.

** NODE:
Is a Core object, that holds all required data to allow for harvesting. Each node is a local context template with
a trigger that controls the player proximity to a node. Note template is not replicated by default and uses the
:ForceReplication() method on dynamic property changed event.
Node geometry is being spawned inside the local context for both client and server, based on node richenss changes.

    Custom properties of a Node:
        ToolReq - a string of a tool type that allows the node harvesting
        SwingsToHarvest - number of an ability activations to harvest a node
        RewardPerUse - reward for each mining success, LootMMO item drop language
        Type - Node type, to define the different nodes that do spawn in this place
        Richness - how many times the node can be harvested. This connets directly to the spawned node geometry
        Owner - if the node is being harvested, this value will be a harvesting player.id
        OriginRow - table row number of a node template spawned, for reference if needed

Nodes are defined in a table "HarvestingNodes". "Type" column defines where the node could appear during runtime, based on
"WeightChance" column value. (i.e. if a node of "vein" type is about to be spawned, either coal or iron could spawn in that particular place)
Each node needs a local context geometry to be defined in a standalone table that links to the "NodeStageGeoTable" column, to spawn
apporpiate geometry for each of the richness levels the node could gain.

** SETUP:
To allow for nodes spawning, it is required to place node objects (based on the node types that are in game) as child objects
in a NODES group in the HarvestingSystem group. These nodes do represent ALL ALLOWED spawn points for each node type and are
saved and removed when the game instance starts. The server handles the node spawning after that, based on the HarvestingSystem
custom properties (To control the nodes spawning and respawning, read the Custom properties TooTips on HarvestingSystem group).
Note that, it is not needed to place all the node templates on stage. The node spawn point is defined by a WorldTransform and 
Node type custom property value (i.e. if the node spawn point holds iron vein template to mark the spot, a coal could spawn there too,
as it is the same 'vein' type).

]]
script:Destroy()