--[[
    ------------------------------
    ---        OVERVIEW        ---
    ------------------------------

	These examples come with quite a bit of UI that can be adjusted to your preference.

	Tips: Use the icon in the top left that looks like a rectangle with a pointer to enter UI editing mode. Then if you
    click a piece of UI, it will highlight that UI's location in the heiarchy, that is probably the fastest way to find
    what you need in most cases.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---      FINDING UI        ---
    ------------------------------

    You can customize the settings on many of the UI elements through custom properties, you can also change art,
    fonts, and colors of items by looking in the following locations:

    --- In The Hierarchy ---

        Managers
        |___ Framework Dependencies
        |	|___ Error Feedback
        |___ Inventory and Hotbar
        |	|___ UI
        |		|___ Main Container
        |		|	|___ Hotbar
        |		|	|___ Inventory Icon
        |		|___ Tooltip Container
        |___ Currency

        UI
        |___ Player Lot Name UI
        |___ Reset Data Tool
        |___ Icon Generator
        |___ Tool Display
        |___ Interaction Display

    Error Feedback: If you would like to style or relocate this error message, look here. You can also make errors show
    up in chat and control the fade with the custom properties on this item.

    Inventory and Hotbar: This contains the hotbar visible on the bottom of the screen, as well as the icon you use to
    open the inventory. The little tooltip for hoving over inventory items is here too, the visibility is forced off so
    turn that back on to edit it! (To change the inventory hotkey, use "OpenBinding" and "CloseBinding" in Inventory
    Settings.)

    Currency: Find the currency settings and the art for your currency here (for art, look under "ClientContext"). You
    can add more currencies by duplicating this, changing the custom properties, and moving the UI art over a bit.

    Player Lot Name UI: This item has custom properties to control the text for the Player Lot name display. If you look
    under its ClientContext folder you will find the visuals for it.

    Reset Data Tool: This is very useful while testing, but once you are ready to publish you should disable it so it no
    longer shows (and hitting F1 will be disabled). To do so, uncheck the "Enabled" custom property.

    Icon Generator: This is a photo booth for icons. Look inside and you can see that there is a plane that acts as the
    backdrop for your icons (It's using the render to texture system to make icons out of 3d objects). If you are using
    UI textures as icons, then this will not be used.

    Tool Display: This is the stuff down in the bottom left of the screen that shows the ability hotkey and the rotation
    keys. Again, there are custom properties on it and the art is under it in a ClientContext folder.

    Interaction Display: This is where the settings and visuals for the interaction display tool tip can be found. This
    is the tool tip that shows up when you are hovering over various things in your scene.

--]]