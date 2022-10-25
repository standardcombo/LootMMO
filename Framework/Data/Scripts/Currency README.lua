--[[
      _____
     / ____|
    | |    _   _ _ __ _ __ ___ _ __   ___ _   _
    | |   | | | | '__| '__/ _ \ '_ \ / __| | | |
    | |___| |_| | |  | | |  __/ | | | (__| |_| |
     \_____\__,_|_|  |_|  \___|_| |_|\___|\__, |
                                           __/ |
    ------------------------------        |___/
    ---        OVERVIEW        ---
    ------------------------------

    Currency is a drop in system that provides ready to go Player Currency management without any code required. It
    also provides a full API for creators with scripting knowledge to allow them to expand on or change how the
    Currency works.

    Any amount of Currencies can be added to a game and you can use them for more than just visible currency amounts.
    For example, a Currency could be used to track the scores in a game.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---         SETUP          ---
    ------------------------------

    Currency can be added to your game by dragging out the Currency template. This template comes with settings and a UI
    for a Currency. The settings can be found on the Currency template if you select it in your hierarchy. The UI can be
    moved, modified or deleted.

    1. CurrencyId

        - The id of the Currency. Must be unique within a scene.

    2. Name

        - The name of the Currency.

    3. StorageKey

        - An optional Shared Storage Key to save Currency data into. Default is Local Storage.

    4. StartingAmount

        - The amount of this Currency a new Player will start with.

    5. MaxAmount

        - The maximum amount of this currency a Player can have. 0 means no maximum.

    6. DropTemplate

        - The template to use to display the dropped item in world.

    7. DropItemPickupTemplate

        - The Item Pickup Template to use if this Currency is dropped in world.

    8. VerboseLogs

        - If true, more detailed logs will be printed to the Event Log if errors or warnings occur.

    9. IconCameraId

        - If "Is3DIcon" is true, this should match the "CameraId" of an "Icon Generator" in the scene.

    10. IconAsset

        - The image or template to use for an icon. If "IsKitbashed2DIcon" is true, this should be a UI template. If
        "Is3DIcon" is true, this should be a 3D object template. If "IsImageIcon" is true, this should be an
        image/brush asset.

    11. IsKitbashed2DIcon

        - If true, the "IconAsset" should point to a UI template. This template will be spawned as the icon.

    12. Is3DIcon

        - If true, the "IconAsset" should point to a 3D object template. An image of this template will be used as the
        icon.

    13. IsImageIcon

        - If true, the "IconAsset" should point to an image/brush asset. This will be used as the icon.

    ------------------------------
    ---         ADMIN          ---
    ------------------------------

    The Currency Admin system will listen for chat commands from specific admin players. You can use commands to do
    most common Currency actions like adding and removing Currency from players. Commands will fail gracefully if they
    cannot be done. Commands can only be run on online Players.

    The Currency Admin lives in the Framework Dependencies template. This template should come in with anything that
    depends on it.

    Add Player ids to the "AdminIds" Custom Property on "Admin" to give them access to the commands. These should be
    comma separated.

    Commands must be entered in the following format:

        /cur command param=value param=value param=value

    The params can be added in any order, but /cur command must appear as the first two items in the space separated
    string.

    Valid commands are:
        - /cur help
        - /cur list [player]
        - /cur add [player, cur, amount]
        - /cur remove [player, cur, amount]
        - /cur clear [player, cur, reset]

    Valid params are:
        - player    - The Player name or id (Optional, defaults to yourself)
        - cur       - The Currency id (Optional, defaults to first Currency found)
        - amount    - The amount (Varies by command)
        - reset     - A boolean (Used for clear command)

    Examples:
        - /cur help                                             - Writes instructions in chat to the admin
        - /cur list player=Booradley                            - Lists all of Booradley's Currency ids and amounts in chat to the admin
        - /cur add player=Booradley cur=coins amount=60         - Gives 60 coins to Booradley
        - /cur add amount=5                                     - Gives 5 of the first available Currency to the admin
        - /cur remove                                           - Clears the first available Currency for the admin
        - /cur clear player=6a5a4cf446bd43e58f2219d529206490    - Clears the first available Currency for Booradley
        - /cur clear cure=coins reset=true                      - Clears the coins Currency for the admin and resets it to the starting amount

    ------------------------------
    ---        EVENTS          ---
    ------------------------------

    Currency sends Events as it changes. These Events are outlined below:

    1. APICurrency.Events.CurrencyRegistered = "CUR_registered"

        - Handler = function(currencyId) - Server Only

        - Sent when an Currency is registered on the server.

    2. APICurrency.Events.CurrencyUnregistered = "CUR_unregistered"

        - Handler = function(currencyId) - Server Only

        - Sent when an Currency is unregistered on the server.

    3. APICurrency.Events.CurrencyLoaded = "CUR_loaded"

        - Handler = function(player, currencyId) - Server / Client

        - Sent when an Currency is loaded on both server and the client for the Player that loaded the Currency.

    4. APICurrency.Events.CurrencySaved = "CUR_saved"

        - Handler = function(player, currencyId) - Server Only

        - Sent on the server each time an Currency for a Player is saved.

    5. APICurrency.Events.CurrencyAdded = "CUR_added"

        - Handler = function(player, currencyId, amountAdded) - Server / Client

        - Sent each time an amount is added to a Currency for a Player. This event sends on the server as well as the
        client for the Player in question.

    6. APICurrency.Events.CurrencyRemoved = "CUR_removed"

        - Handler = function(player, currencyId, amountRemoved) - Server / Client

        - Sent each time an amount is removed from a Currency for a Player. This event sends on the server as well as
        the client for the Player in question.

    7. APICurrency.Events.CurrencySet = "CUR_wasSet"

        - Handler = function(player, currencyId, amountSet) - Server / Client

        - Sent each time a Currency is set to a specific amount for a Player. This event sends on the server as well as
        the client for the Player in question.

    ------------------------------
    ---   CHANGING THE ART     ---
    ------------------------------

    The default Currency comes with a basic UI to display the Currency amount. The hierarchy for the UI is quite simple
    and should be easy to update with your own art. You can also feel free to delete the ClientContext if you do not
    want the Currency to show a UI.

        Currency
        |__ ClientContext
            |__ UI Container
                |__ Panel
                    |__ Background
                    |__ Icon
                    |__ Amount
--]]