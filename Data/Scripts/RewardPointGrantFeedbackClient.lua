local Ease3D = require(script:GetCustomProperty("Ease3D"))
local EFFECT_ASSET = script:GetCustomProperty("EffectAsset")
local UTIL = require(script:GetCustomProperty("CoreWorldUtilities"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

local DEFAULT_LIFESPAN = 5
local MESH_ANIMATION_DURATION = 0.8

function OnRewardPointGranted(player, amount, color)
    if player == nil then
        player = LOCAL_PLAYER
    end

    if not player.isSpawned then return end

    local instance = World.SpawnAsset(EFFECT_ASSET)
    instance:AttachToPlayer(player, "root")

    if instance.lifeSpan == 0 then
        instance.lifeSpan = DEFAULT_LIFESPAN
    end

    local mesh = instance:GetCustomProperty("Mesh"):WaitForObject()
    local startSound = instance:GetCustomProperty("StartSound"):WaitForObject()
    local vfx = instance:GetCustomProperty("VFX"):WaitForObject()
    local endSound = instance:GetCustomProperty("EndSound"):WaitForObject()

    mesh:SetPosition(Vector3.UP * 300)
    mesh:SetScale(Vector3.ONE * .8)
    mesh.visibility = Visibility.INHERIT

    Ease3D.EasePosition(mesh, Vector3.UP * 100, MESH_ANIMATION_DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.IN)
    Ease3D.EaseScale(mesh, Vector3.ZERO, MESH_ANIMATION_DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.IN)

    vfx:Play()
    --startSound:Play()

    Task.Wait(MESH_ANIMATION_DURATION)
    --endSound:Play()

    if amount and player == LOCAL_PLAYER then
        if not color then
            color = Color.WHITE
        end
        UI.ShowFlyUpText(string.format("+%s RP", UTIL.FormatNumber(amount)), player:GetWorldPosition(), {duration = 3, color = color, isBig = true})
    end
end

Events.Connect("RPGranted", OnRewardPointGranted)
