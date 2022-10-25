--[[
     _____                   _____                           _
    |_   _|                 / ____|                         | |
      | |  ___ ___  _ __   | |  __  ___ _ __   ___ _ __ __ _| |_ ___  _ __
      | | / __/ _ \| '_ \  | | |_ |/ _ \ '_ \ / _ \ '__/ _` | __/ _ \| '__|
     _| || (_| (_) | | | | | |__| |  __/ | | |  __/ | | (_| | || (_) | |
    |_____\___\___/|_| |_|  \_____|\___|_| |_|\___|_|  \__,_|\__\___/|_|

    ------------------------------
    ---        OVERVIEW        ---
    ------------------------------

    The Icon Generator is a drop in component that will render 3D icons for use in UIImage objects. You can have several
    Icon Generators in the scene to allow for rendering icons in different styles. The Icon Generator will automatically
    clear unused icons to make sure only the relevant texture space is being used.

    The Icon Generator can currently only be used via lua. You will need the following to successfully render a 3D icon:

        * A template of your object sized and oriented correctly to fit in the Icon Generators camera bounds.
        * A UIImage to display the rendered icon with.
        * A client script that calls the Icon Manager API to render the icon to the image.

    The Icon Generator is only meant for use with static "single shot" icons. There is currently no support for live
    captures.

    The Icon Generator template can be dropped into a scene and configured. A CameraId is the only required Custom
    property. It must be unique across all Icon Generators.

    The "Icon Generator Example (Single Icon)" template and "Icon Generator Example (Multiple Icons)" templates can be
    dropped into the scene with an "Icon Generator" template (Sharing the same CameraId) for simple examples of the Icon
    Generator working.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---         SETUP          ---
    ------------------------------

    To get the Icon Generator running in your project follow these steps:

        1. Drop the "Icon Generator" template into your scene and move it to an appropriate (hidden) area.

        2. Fill in the "CameraId" Custom Property on the "Icon Generator" object. This id will be used in the script to
           identify which generator to use for your render.

        3. Create a template for the object you want to render.

            3.a. Work on the template inside the Icon Generators "Icon Container" to have a visible bounding box to work
                 within. Once you are finished, save your template and delete it from the container. The blue tinted
                 bounding box indicates a "Safe Area" for what will get rendered into the final icon. The frame on the
                 back also describes the bounds of the final icon.

        4. Create a script to use to render the object to the image.

            4.a. See the "USE" section below for an example script or see "Icon Generator Example" for a reference to
            the below script.

    ------------------------------
    ---          USE           ---
    ------------------------------

    To render the icon and apply it to the UIImage you just run the following script in a ClientContext:

        local ICON_MANAGER = require(script:GetCustomProperty("APIIconManager")) -- Asset Reference pointing to APIIconManager
        local ICON_TEMPLATE = script:GetCustomProperty("IconTemplate") -- Asset Reference pointing to the object template
        local CAMERA_ID = script:GetCustomProperty("CameraId") -- String set to the Camera Id on the Icon Generator you want to use
        local IMAGE = script:GetCustomProperty("Image"):WaitForObject() -- Core Object Reference to a UIImage

        -- Give the Icon Generator a frame to register
        Task.Wait()

        ICON_MANAGER.SetIcon(IMAGE, CAMERA_ID, ICON_TEMPLATE, CameraCaptureResolution.MEDIUM)
--]]