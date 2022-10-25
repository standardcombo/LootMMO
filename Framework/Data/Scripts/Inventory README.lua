--[[
     _____                      _
    |_   _|                    | |
      | |  _ ____   _____ _ __ | |_ ___  _ __ _   _
      | | | '_ \ \ / / _ \ '_ \| __/ _ \| '__| | | |
     _| |_| | | \ V /  __/ | | | || (_) | |  | |_| |
    |_____|_| |_|\_/ \___|_| |_|\__\___/|_|   \__, |
                                               __/ |
    ------------------------------            |___/
    ---        OVERVIEW        ---
    ------------------------------

    Inventory is a drop in system that provides ready to go Player Inventory management without any code required. It
    also provides a full API for creators with scripting knowledge to allow them to expand on or change how the
    Inventory works.

    The Inventory comes with a few potential setups. You can use a combined Inventory and Hotbar, Hotbar or individual
    Inventory Settings templates to create the Inventory you want for your game.

    Inventory items can be dragged and dropped across Inventories. Items can also be dropped into the world or destroyed
    by being dropped on the trash icon in the provided UI.

    Clicking Items that have been configured to be Equipment will optionally equip the item. Other custom actions could
    be created by listening for the Events that the Inventory broadcasts.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---         SETUP          ---
    ------------------------------

    Inventory can be added to your game by dragging out an appropriate template. Choose from the following based on what
    you need for your game.

    1. Inventory and Hotbar

        - This is the most full featured Inventory template. It comes with a Player Inventory that can be opened by
        pressing the "I" key. A button on screen that can be used to open the screen is also available. Finally a Hotbar
        is added to the bottom of the screen to let Players manage and equip items without opening a screen.

    2. Hotbar

        - This simpler template only comes with a Hotbar at the bottom of the screen to let Players manage and equip
        items without opening a screen.

    3. Inventory Settings

        - This is a stripped down Inventory meant for more advanced creators to build their own Inventory systems. You
        can have any number of these in a scene and each one will be a separate Inventory. It is up to you to configure
        these to work with each other. The above templates use these as part of their structure.

    4. Container Inventory

        - This is an Inventory that exists in the world. Each player will be able to access this Inventory and maintain
        their own items in it. Think of it like a Player Stash. These container Inventories can also potentially be
        stored inside other Inventories, though the flow for that is not currently avalable.

    ------------------------------
    ---         ADMIN          ---
    ------------------------------

    The Inventory Admin system will listen for chat commands from specific admin players. You can use commands to do
    most common Inventory actions like adding and removing items from players. Commands will fail gracefully if they
    cannot be done. Commands can only be run on online Players.

    The Inventory Admin lives in the Framework Dependencies template. This template should come in with anything that
    depends on it.

    Add Player ids to the "AdminIds" Custom Property on "Admin" to give them access to the commands. These should be
    comma separated.

    Commands must be entered in the following format:

        /inv command param=value param=value param=value

    The params can be added in any order, but /inv command must appear as the first two items in the space separated
    string.

    Valid commands are:
        - /inv help
        - /inv list [player]
        - /inv add [player, inv, slot, item, amount]
        - /inv remove [player, inv, slot, item, amount]
        - /inv clear [player, inv, slot, reset]
        - /inv inspect [player, inv]

    Valid params are:
        - player    - The Player name or id (Optional, defaults to yourself)
        - inv       - The Inventory id (Optional, defaults to first Inventory found)
        - slot      - The slot index (Varies by command)
        - item      - The item id (Varies by command)
        - amount    - The amount (Varies by command)
        - reset     - A boolean (Used for clear command)

    Examples:
        - /inv help                                                             - Writes instructions in chat to the admin
        - /inv list player=Booradley                                            - Lists all of Booradley's Inventory ids in chat to the admin
        - /inv add player=Booradley inv=Inventory2 slot=4 item=water amount=60  - Adds 60 water to Booradley in Inventory 2, slot 4
        - /inv add item=1 amount=5                                              - Adds 5 item id 1 to the admin in the first available Inventory and slot
        - /inv remove slot=2                                                    - Clears the second slot in the first available Inventory for the admin
        - /inv clear player=6a5a4cf446bd43e58f2219d529206490                    - Clears the first available Inventory for Booradley
        - /inv clear inv=hotbar reset=true                                      - Resets the hotbar Inventory for the admin to the starting items
        - /inv inspect inv=bag player=Booradley                                 - Writes the contents of Booradleys bag Inventory in chat to the admin

    ------------------------------
    ---    INVENTORY DATA      ---
    ------------------------------

    Inventory Items require data that defines the item name, how it looks, etc... This data lives in the hierarchy in a
    Database. The steps to create Item data are outlined below.

    --- Creating the Database ---

        1. Create a folder in your hierarchy and name it appropriately. In this example we will use the name "Inventory
        Database".

        2. Add a "DatabaseLoader" script as a child of that folder and set the "Database" Custom Property on the script
        to point at the folder you created.

        3. Add a ClientContext as a child of the folder.

        4. Add another "DatabaseLoader" script to that ClientContext and point the "Database" property to the original
        folder again.

    Your hierarchy should now look something like this:

        Inventory Database
        |___ DatabaseLoader
        |___ ClientContext
            |___ DatabaseLoader (client)

    --- Creating Item Data ---

        1. If one doesn't already exist, create a group as a child of your Database folder called "Items".

        2. Drop an "ItemData" script into that "Items" group as a child.

        3. Give the "ItemData" script a unique name. This is the ID of the Item.

        4. Fill in the Item Data Custom Properties.

            a. Name

                - The name of the item. This shows up in Inventory Tooltips and other UI.

            b. Description

                - The description of the item. This shows up in Inventory Tooltips and other UI.

            --- Inventory ---

            a. IsInventory

                - If true, the item is an inventory. Useful for chests and other containers. See the Container Inventory
                template.

            b. InventoryId

                - If "IsInventory" is true, this should match the Inventory Id defined in a "Container Inventory
                Settings" in your scene.

            --- Drops ---

            a. CanDrop

                - If true, this item can be dropped out of Inventories that support dropping.

            b. DropTemplate

                - The template to use to display the dropped item in world.

            -- Icon ---

            a. IconCameraId

                - If "Is3DIcon" is true, this should match the "CameraId" of an "Icon Generator" in the scene.

            b. IconAsset

                - The image or template to use for an icon. If "IsKitbashed2DIcon" is true, this should be a UI
                template. If "Is3DIcon" is true, this should be a 3D object template. If "IsImageIcon" is true, this
                should be an image/brush asset.

            c. IsKitbashed2DIcon

                - If true, the "IconAsset" should point to a UI template. This template will be spawned as the icon.

            d. Is3DIcon

                - If true, the "IconAsset" should point to a 3D object template. An image of this template will be used
                as the icon.

            e. IsImageIcon

                - If true, the "IconAsset" should point to an image/brush asset. This will be used as the icon.

            --- Equipment ---

            a. CanEquip

                - If true, this item can be equipped from inventories that allow equipping.

            b. EquipmentTemplate

                - The Equipment to spawn and attach to the Player when this item is equipped from an Inventory.

            c. EquipmentVisualTemplate

                - An optional visual asset to spawn into invisible Equipment that supports this feature. This is useful
                for sharing a single Equipment across many items.

    ------------------------------
    ---        EVENTS          ---
    ------------------------------

    Inventory sends Events as it changes. These Events are outlined below:

    1. APIInventory.Events.InventoryRegistered = "INV_registered"

        - Handler = function(inventoryId) - Server Only

        - Sent when an Inventory is registered on the server. Probably not super useful, but could be listened to to
        monitor when container inventories are spawned.

    2. APIInventory.Events.InventoryUnregistered = "INV_unregistered"

        - Handler = function(inventoryId) - Server Only

        - Sent when an Inventory is unregistered on the server.

    3. APIInventory.Events.InventoryLoaded = "INV_loaded"

        - Handler = function(player, inventoryId) - Server / Client

        - Sent when an Inventory is loaded on both server and the client for the Player that loaded the Inventory.

    4. APIInventory.Events.InventorySaved = "INV_saved"

        - Handler = function(player, inventoryId) - Server Only

        - Sent on the server each time an Inventory for a Player is saved.

    5. APIInventory.Events.InventoryAdded = "INV_added"

        - Handler = function(player, inventoryId, itemType, itemId, amountData) - Server / Client

        - Sent each time an Item is added to an Inventory for a Player. This event sends on the server as well as the
        client for the Player in question.

        amountData = {
            slotIndex = amount,
            slotIndex = amount,
            etc...
        }

    6. APIInventory.Events.InventoryRemoved = "INV_removed"

        - Handler = function(player, inventoryId, itemType, itemId, amountData) - Server / Client

        - Sent each time an Item is removed from an Inventory for a Player. This event sends on the server as well as
        the client for the Player in question.

        amountData = {
            slotIndex = amount,
            slotIndex = amount,
            etc...
        }

    7. APIInventory.Events.InventoryTransferred = "INV_transferred"

        - Handler = function(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex) - Server / Client

        - Sent each time an Item is moved from one slot to another in the same or to another Inventory for a Player.
        This event sends on the server as well as the client for the Player in question.

    8. APIInventory.Events.InventoryCleared = "INV_cleared"

        - Handler = function(player, inventoryId, resetToStartingItems) - Server / Client

        - Sent each time an Inventory is cleared for a Player. Clearing an Inventory can optionally reset it to have its
        starting items, so this data is included.

    9. APIInventory.Events.SlotEquipped = "INV_slotEquipped"

        - Handler = function(inventoryId, slotIndex) - Client Only

        - Sent to the client of the Player that equipped the Item in their Inventory.

    10. APIInventory.Events.SlotUnequipped = "INV_slotUnequipped"

        - Handler = function(inventoryId, slotIndex) - Client Only

        - Sent to the client of the Player that unequipped the Item in their Inventory.

    11. APIInventory.Events.SlotClicked = "INV_slotClicked"

        - Handler = function(player, inventoryId, slotIndex) - Client Only

        - Sent from the provided InventoryScreenSlot when clicked. If a custom UI is created this Event will need to be
        sent in the same manner for the action to work.

    12. APIInventory.Events.SlotDropped = "INV_slotDropped"

        - Handler = function(player, sourceInventoryId, sourceSlotIndex, dropTargetId, targetInventoryId, targetSlotIndex) - Client Only

        - Sent from the provided InventoryScreenSlot when dropped. If a custom UI is created this Event will need to be
        sent in the same manner for the action to work.

    ------------------------------
    ---   CHANGING THE ART     ---
    ------------------------------

    The default Inventory comes with some preset art for the Inventory Screen, Hotbar and Inventory Button. Changing
    this art is outlined below:

    --- Inventory Screen ---

    The Inventory Screen template can be found in your Project Content if you drag out one of the Inventory Templates
    listed above.

    Add the Inventory Screen to a UIContainer and select it in your scene. In the Properties Panel you will see a
    variety of settings that you can tweak to modify the look and feel of the screen.

    1. Controller

        - This is used internally and should only be changed by advanced creators if they want to run their own
        Inventory Screen script. A custom script should have the following method on it to work with the system:

            Initialize(inventoryId)

        The Initialize() method will be called when the UIControllerClient opens the screen.

    2. IconCameraId

        - Set this to match the CameraId of an Icon Generator in the scene. 3D Icons rendered in this Inventory Screen
        will use the camera set here.

    3. Title

        - The optional UIText object to use to display this Inventory name.

    4. CloseButton

        - The optional UIButton to use to close this Inventory.

    5. SlotContainer

        - The UIControl to spawn Inventory Slot items into.

    6. SlotTemplate

        - The template to use for Inventory Slots.

    7. InventoryId

        - Optional Inventory id if this screen should open a specific Inventory. Leave this blank if the screen is being
        used to open an Inventory via an Inventory Settings object.

    8. Columns

        - The number of Slots to add before moving down a row.

    9. Padding

        - The padding between Inventory Slots.

    10. UseNumericShortcuts

        - If true, numbers 1-9 will be used to "click" the first 9 slots. This is meant for on screen Hotbar like
        Inventories.

    11. ShortcutActsAsBinding

        - If "UseNumericShortcuts" is true, this is the binding that will be mimicked when a number 1-9 is pressed.

    The hierarchy for the screen is quite simple and should be easy to update with your own art. If you want to maintain
    functionality, be sure to only adjust and add art without removing the Interaction System Components.

        Inventory Screen
        |__ Background
        |   |__ Title
        |   |__ DraggableObjectComponentClient  <-- Interaction System Component to make the screen draggable
        |   |__ Bounds                          <-- Used by the Interaction System for dragging the screen
        |   |__ Scroll Panel
        |   |   |__ Content                     <-- Inventory Screen Slots get spawned here
        |   |__ Close Button
        |__ Trash Background
            |__ ChangeColorComponentClient      <-- Interaction System Component to change the color when a slot is dragged over
            |__ DropTargetComponentClient       <-- Interaction System Component to identify the trash slot
            |__ Border
            |__ Bounds                          <-- Used by the Interaction System for dropping dragged slots

    --- Inventory Screen Slot ---

    The Inventory Screen Slot template can be found in your Project Content if you drag out one of the Inventory
    Templates listed above.

    Add the Inventory Screen Slot to a UIContainer and select it in your scene. In the Properties Panel you will see a
    variety of settings that you can tweak to modify the look and feel of the screen.

    1. Controller

        - This is used internally and should only be changed by advanced creators if they want to run their own
        Inventory Screen Slot script. A custom script should have the following method on it to work with the system:

            Initialize(inventoryId, slotIndex, slotContent, cameraId, binding, actsAsBinding)
            Update(slotContent)
            Clear()

        The Initialize() method will be called when the Slot is created.
        The Update() method will be called whenever that slot is changed by an Inventory action.
        The Clear() method will be called if the Inventory is cleared.

    2. Background

        - The background UIControl for the Slot. This will be hidden if the slot is empty.

    3. Icon

        - The UIImage to use for rendering icons.

    4. Amount

        - The UIText to use to show the amount of the item in the Slot.

    5. Binding

        - The UIText to use to display a numeric shortcut if they are being used.

    6. DragProxyTemplate

        - The template to spawn when dragging this Slot. This template should contain specific logic. See the Inventory
        Screen Slot Drag Proxy tremplate for an example.

    The hierarchy for the slot is quite simple and should be easy to update with your own art. If you want to maintain
    functionality, be sure to only adjust and add art without removing the Interaction System Components.

        Inventory Screen Slot
        |__ DraggableObjectComponentClient  <-- Interaction System Component to make the slot draggable
        |__ DropTargetComponentClient       <-- Interaction System Component to identify the slot as a target for other dragged slots
        |__ BroadcastEventComponentClient   <-- Interaction System Component used to send "click" events
        |__ BroadcastEventComponentClient   <-- Interaction System Component used to send "dropped" events
        |__ ChangeColorComponentClient      <-- Interaction System Component to change colors based on state and when you drag other slots over this one
        |__ ToggleTooltipComponentClient    <-- Interaction System Component used to show tooltips about the item in the slot
        |__ Background
        |__ Icon
        |__ Border
        |__ Amount
        |__ Binding
        |__ Bounds                          <-- Used by the Interaction System for all interactions

    --- Inventory Screen Slot Drag Proxy ---

    The Inventory Screen Slot Drag Proxy template can be found in your Project Content if you drag out one of the
    Inventory Templates listed above. This is the default template used while you are dragging an Inventory Slot around
    the screen.

    Add the Inventory Screen Slot Drag Proxy to a UIContainer and select it in your scene. This template doesn't have
    tweakable properties since it is quite simple.

        Inventory Screen Slot Drag Proxy
        |__ ChangeColorComponentClient      <-- Interaction System Component to change colors while it is being dragged
        |__ Background
        |__ Icon
        |__ Border
        |__ Amount
        |__ Bounds                          <-- Used by the Interaction System for all interactions
--]]