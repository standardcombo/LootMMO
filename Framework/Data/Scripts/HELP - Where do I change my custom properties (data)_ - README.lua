--[[

    ------------------------------
    ---        OVERVIEW        ---
    ------------------------------

	Some features of these examples may work a little differently than you are used to, this guide is intended to help
	you avoid some issues around the structure of the project and where the settings you can change actually are.

	Unlike in many core games, much of what you see during gameplay doesn't actually exist in the hierarchy while you
	are editing. Instead, templates are spawned in by code after you hit play, and when you load up a new area or place
    a new object. That means that most of your design work is setting up and adjusting the data to decide what to
	spawn, and in making the templates that will be used as visual and collision geometry. You don't need to program to
	use this set of systems, but it is fairly advanced in that you will need to learn where all the data is located.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---    DATA LOCATIONS      ---
    ------------------------------

    Most of the data (settings you can change) can be found in the following locations:
    (The data itself is custom properties on empty script objects.)

    --- In The Hierarchy ---

        Global Database
        |___ Placeable Limits
        |___ Items
        |___ Placeables
        |___ Producers
        |___ Buffs

        Inventory and Currency
        |___ Inventory and Hotbar
            |___ Inventory Settings     <-- Data
                |___ StartingItems      <-- Data

        Inventory and Currency
        |___ Inventory and Hotbar
            |___ Hotbar Settings        <-- Data
                |___ StartingItems      <-- Data

    --- In Project Content ---

    Your tools themselves have some custom properties set on them. Look for things with "Tool" in their name, these are
    Equipment (they will have "networked" after their names in the project content view). Drag them into the scene to
    edit them, don't forget to update the template!

    ------------------------------
    ---   DATA DESCRIPTIONS    ---
    ------------------------------

    1. Placeable Limits

        - Per item limits for how many of that Placeable a Player can add to the world.

    2. Items

        - Anything that shows up in the inventory must have an item data, that will specify the visual look of the item
        when it drops in world, as well as its icon in your inventory. The names of these data items are their ItemIds.
        These IDs will be used to specify drops, and as SourceItemId (like a seed or blueprint) on producers. To make an
        item into a tool, you select "CanEquip" to make an item into a tool. You will also need a Tool (equipment)
        template as mentioned in the Tools section below.

    3. Placeables

        - Anything that can be placed in the world by the player must have one of these. This data includes visual
        templates as needed tools and if the item is a Producer Base or not. (A soil plot on a farm is one example.)

    4. Producers

        - This data is needed for an object that is meant to be fed one type of inventory item and then over time
        produce a new item. Think of a farm plant, give it a seed and it will grow and then produce a fruit. You set a
        "Drops" data below the Producer to specify what you get for growing the plant.

    Example:

        Global Database
            |___ Producers
                |___ BerryBush
                    |___ Drops
                        |___ Berries
                        |___ Broken leaves

    5. Buffs

        - Buffs are a type of data that can be applied to a Producer to change how it builds/grows, how many objects it
        drops, or if it dies. To actually hook up your buffs to Placeables or Producers, you add "InputBuffs" or
        "OutputBuffs" data below the Placeable or Producer that you want it to work with. Check out the "Cooking Spit"
        and "Wood Fire" examples.

    6. Starting items

        - These let you specify what items should show up in that inventory the first time it is opened. So for a hotbar,
        you might want to list the basic Tools here. You choose the ItemId, as well as the slot you want it to show up
        in, and the quantity of that item each Player should start with.

    7. Tools (Templates)

        - These are a little different. They are not data in the hierarchy, but rather custom properties on the
        equipment template itself. To change them, you will need to pull the Tool out into your scene, make the changes
        you need, and then update the template.

   	More details on all of these items and features can be found in the other README files throughout the project. You
    can find these in the "Documentation" folder in the example scenes.

    Have fun! :)

--]]