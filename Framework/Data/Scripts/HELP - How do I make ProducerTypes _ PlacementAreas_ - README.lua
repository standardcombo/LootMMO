--[[
    ------------------------------
    ---        OVERVIEW        ---
    ------------------------------

	Some connections between items in your hierarchy are made through custom properties where you drag in a reference,
	others are made through unique IDs of some kind. The rest are generally made through using "Types", which are a 
	kind of tag. Below I will explain the most common ways we use types with Producers and Buffs.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---    PRODUCER TYPES      ---
    ------------------------------

    First, lets take a look at the Soil Mound Producer in your hierarchy:

    Global Database
    |___ Placeables
    	|___ Soil Mound

    Open up the Properties Panel, and scroll down to the very bottom to the "Script - ProducerBase" section. You will
    notice that the box "IsProducerBase" is checked, that is what makes it able to have Producers grown in it. The next
    field is "ProducerBaseType" which is set to "soil". Any Producer you want to grow in this soil mound must be looking
    for the matching type.

    Let's go look at the data on the producer now:

    Global Database
    |___ Producers
    	|___ Red Fruit Bush

    Open up the custom properties on your "Red Fruit Bush" Producer. Right near the top of the list, you will see the
    field "ValidProducerBaseTypes". Notice, that field is set to "soil" as well. That is what is making the connection
    between the two items.

    So to add your own types, just use the same word in both fields. (It's best to keep them short and easy to spell
    and understand.)

    ------------------------------
    ---    PLACEMENT AREAS     ---
    ------------------------------

    Placement Areas use the same system as described above, you will just find the custom properties in slightly
    different locations. Let's take a look at where to find these custom properties:

    Global Database
    |___ Placeables
    	|___ Campfire Ring

   In the Campfire Ring's custom properties, scroll down until you see the orange "Placement" section. Now find the
   "PlacementAreaTypes". In this particular example, this item can be placed on both "Dirt" and "Paved" areas, so
   there are two words seperated by a comma. For a tilled dirt patch, you might want just the world "Dirt" there,
   for an fancy indoor decorative item, you might want to make up a tag like "InteriorFloor".

   Now the Campfire Ring is looking for that tag, but how does the paved area say what it is? Let's go take a look
   at the paved area in the scene.

    Player Lots
    |___ Lot1
    	|___ Paved (Placeable Area)

    If you select the Paved (Placeable Area) group, you will see it has a custom property called "AreaType". That lets
    you define the tag that your Placeable item is looking for. Also, inside the paved area is a script called
    "PlacementArea". That script has a custom property called "ComponentRoot" that is a reference  to the folder it is
    contained in. Your Placement area must have this to work!

    Use this system for all sorts of fun things, make snowmen only placeable outside in the snow, make rice only
    plantable in special feilds that can be flooded, etc... Have fun :)

]]--