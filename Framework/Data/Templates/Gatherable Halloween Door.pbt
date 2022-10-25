Assets {
  Id: 17175491703033228843
  Name: "Gatherable Halloween Door"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4457143167628520274
      Objects {
        Id: 4457143167628520274
        Name: "Gatherable Halloween Door"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12903570020901529722
        ChildIds: 9026708233368757309
        ChildIds: 2513181058148406483
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12903570020901529722
        Name: "Gatherables README"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4457143167628520274
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 9232111493283590371
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9026708233368757309
        Name: "Replicator"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4457143167628520274
        ChildIds: 6650874387540383248
        ChildIds: 4619502399535544143
        UnregisteredParameters {
          Overrides {
            Name: "cs:UserFunctions"
            AssetReference {
              Id: 18146943269460124834
            }
          }
          Overrides {
            Name: "cs:Parent"
            ObjectReference {
              SubObjectId: 2513181058148406483
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6650874387540383248
        Name: "CoreHierarchyReplicatorServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9026708233368757309
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 9026708233368757309
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 13852825441613215519
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4619502399535544143
        Name: "ClientContext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9026708233368757309
        ChildIds: 12002426887685463946
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        NetworkContext {
          MinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12002426887685463946
        Name: "CoreHierarchyReplicatorClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4619502399535544143
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 9026708233368757309
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 5462950747896091420
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2513181058148406483
        Name: "StaticContext (Open Me)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4457143167628520274
        ChildIds: 767004027735894401
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          Type: RuntimeStatic
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 767004027735894401
        Name: "Gatherables Group (Open Me, Custom Properties)"
        Transform {
          Location {
            X: -100
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2513181058148406483
        ChildIds: 15476948478188435084
        ChildIds: 14128836483083704849
        ChildIds: 17849999224415746380
        ChildIds: 13389955134145810728
        ChildIds: 1630904544395062523
        ChildIds: 4731160026759737882
        UnregisteredParameters {
          Overrides {
            Name: "cs:Respawn"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnPlayerMinDistance"
            Float: 200
          }
          Overrides {
            Name: "cs:RespawnPlayerMaxDistance"
            Float: 500
          }
          Overrides {
            Name: "cs:RespawnWhenNotVisible"
            Bool: true
          }
          Overrides {
            Name: "cs:RandomSpawn"
            Bool: true
          }
          Overrides {
            Name: "cs:RandomSpawnPercent"
            Float: 30
          }
          Overrides {
            Name: "cs:Respawn:tooltip"
            String: "If true, harvestable objects will respawn based on the other respawn properties and their RespawnSeconds property."
          }
          Overrides {
            Name: "cs:RespawnPlayerMinDistance:tooltip"
            String: "A harvestable object will not respawn if any Player is closer than this distance."
          }
          Overrides {
            Name: "cs:RespawnPlayerMaxDistance:tooltip"
            String: "A harvestable object will ignore Players farther than this distance when making visibility checks to determine if it can respawn."
          }
          Overrides {
            Name: "cs:RespawnWhenNotVisible:tooltip"
            String: "If true, harvestable objects will only respwn when Players are facing away from them."
          }
          Overrides {
            Name: "cs:RandomSpawn:tooltip"
            String: "If true, gatherables will randomly spawn based on the \"RandomSpawnPercent\"."
          }
          Overrides {
            Name: "cs:RandomSpawnPercent:tooltip"
            String: "The percentage (0 - 100) of Gatherables in this group to spawn at any given time."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15476948478188435084
        Name: "GatherableGroup"
        Transform {
          Location {
            X: -100.000488
            Y: 0.00048828125
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 767004027735894401
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 767004027735894401
            }
          }
          Overrides {
            Name: "cs:Group"
            ObjectReference {
              SubObjectId: 767004027735894401
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 17660571535404121365
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14128836483083704849
        Name: "Gatherable Door"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 767004027735894401
        ChildIds: 6739403573457752295
        ChildIds: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Door"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "hand, look, pointer, camera"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use your hands to open a door"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 17778809856687332974
            }
          }
          Overrides {
            Name: "cs:GatherEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnSeconds"
            Float: 10
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds"
            Float: 5
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: true
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 8
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 50
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 100
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 60
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate"
            AssetReference {
              Id: 8040246261067913342
            }
          }
          Overrides {
            Name: "cs:State1"
            AssetReference {
              Id: 300175183158660498
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 9788723223673057479
            }
          }
          Overrides {
            Name: "cs:DropOnGather:tooltip"
            String: "If true, gathered objects will drop their contents into the world. Otherwise they will be directly added to the highest priority Inventory."
          }
          Overrides {
            Name: "cs:DropForAllPlayers:tooltip"
            String: "If true, gathered objects will drop on all clients if DropOnGather is also true."
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:tooltip"
            String: "If true, gathered object drops will be destroyed on other clients when the first Player picks them up."
          }
          Overrides {
            Name: "cs:DropMinDistance:tooltip"
            String: "If DropOnGather is true, the minimum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes:tooltip"
            String: "A comma separated list of tools that are allowed to gather this. An empty string means any tool will be able to gather this."
          }
          Overrides {
            Name: "cs:GatherEffects:tooltip"
            String: "This template will be spawned every time this is gathered. It is recommended to have a lifespan on this template. A default lifespan of 5 seconds will be used if it is set to 0."
          }
          Overrides {
            Name: "cs:GatherEffectsOffset:tooltip"
            String: "This will move where the \"GatherEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:RespawnSeconds:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, the gatherable will respawn after this amount of seconds has passed and it can be respawned."
          }
          Overrides {
            Name: "cs:RespawnEffects:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, this template will be spawned when the gatherable respawns."
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:tooltip"
            String: "This will move where the \"RespawnEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:DropEveryGather:tooltip"
            String: "If true, drops will be created every time this is gathered from. Otherwise, drops will only be created when the gatherable is fully gathered."
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:tooltip"
            String: "The maximum number of Item Pickups to generate for a drop. The amount of dropped items will be split into multiple pickups up to this maximum."
          }
          Overrides {
            Name: "cs:DropMaxDistance:tooltip"
            String: "If DropOnGather is true, the maximum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:tooltip"
            String: "If DropOnGather is true, the number of seconds the drop will exist in the world."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:tooltip"
            String: "If DropOnGather is true, this Item Pickup template will be spawned in world to contain the drop."
          }
          Overrides {
            Name: "cs:GatheredState:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:GatheredState:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:State1:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:tooltip"
            String: "One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as gather interactions happen."
          }
          Overrides {
            Name: "cs:GatheredState:tooltip"
            String: "If set, this state will be used when the Gatherable has been fully gathered. Useful for things that need to keep a visual presence even after being gathered from."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMaxDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMaxDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMinDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMinDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropEveryGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropEveryGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropOnGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropOnGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnEffects:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffects:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnSeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:InteractionError:tooltip"
            String: "An error that is broadcast if the Player tries to interact wth this Gatherable with the wrong Equipment."
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad:tooltip"
            String: "If true, the first state template will be spawned in place of the existing object. This allows you to use simple proxy objects in your template to reduce object count."
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather:tooltip"
            String: "The number of Tools that are removed from the Inventory each time this Gatherable is gathered."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6739403573457752295
        Name: "Drops"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
            Yaw: -3.05175781e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14128836483083704849
        ChildIds: 9726969975898644133
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 8280669765240006703
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9726969975898644133
        Name: "Candy Corn (Custom Properties, Can Have Multiple)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6739403573457752295
        UnregisteredParameters {
          Overrides {
            Name: "cs:ItemId"
            String: "Candy Corn"
          }
          Overrides {
            Name: "cs:PercentChance"
            Float: 100
          }
          Overrides {
            Name: "cs:MaxAmount"
            Int: 20
          }
          Overrides {
            Name: "cs:MinAmount"
            Int: 10
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 6635439301500212790
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8854941063393406404
        Name: "Geo (Art)"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14128836483083704849
        ChildIds: 15846170219816430900
        ChildIds: 4323586804706456622
        ChildIds: 2646903939594377703
        ChildIds: 2504186778964564279
        ChildIds: 2008075544360058753
        ChildIds: 15234365737136506519
        ChildIds: 17250772644563691792
        ChildIds: 10459553585523569143
        ChildIds: 4530128947387803818
        ChildIds: 5744961369639197538
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15846170219816430900
        Name: "Craftsman Front Door 01"
        Transform {
          Location {
            X: -16.2998657
            Y: -84.5537109
            Z: -198.303741
          }
          Rotation {
            Yaw: 90.0000153
            Roll: -1.03121948
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Door_Handle:id"
            AssetReference {
              Id: 17118136979191323600
            }
          }
          Overrides {
            Name: "ma:Door_Handle:color"
            Color {
              R: 0.593000054
              G: 0.593000054
              B: 0.593000054
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2360206302109331130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.181318447
              G: 0.0852799863
              B: 0.26
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8177613953295784574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4323586804706456622
        Name: "Cube - Bottom-Aligned"
        Transform {
          Location {
            X: -6.581604
            Y: 3.48388672
            Z: -213.096558
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 2.08570862
            Y: 0.0597754121
            Z: 3.28653574
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 675563715440209277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.405000031
              G: 0.128741711
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2646903939594377703
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: -94.6564865
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2264481
            Yaw: -0.00101281179
            Roll: 89.9982224
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2504186778964564279
        Name: "Main Street Window Detail 01"
        Transform {
          Location {
            X: -3.22851586
            Y: 3.56762648
            Z: 117.551758
          }
          Rotation {
            Yaw: 90.0000229
            Roll: 4.185709
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.48772344
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 15689560459329542333
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2008075544360058753
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: 103.107162
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2267
            Yaw: -0.00076059706
            Roll: 89.9977188
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15234365737136506519
        Name: "Cube Bulged"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: -281.146301
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.56180239
            Y: 1.30437326
            Z: 1.62542963
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 4487000158297972604
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17250772644563691792
        Name: "Cube Waisted"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: 51.8768311
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.73586
            Y: 0.821267784
            Z: 5.60324955
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2671657383109992360
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.676000059
              G: 0.676000059
              B: 0.676000059
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14238141181005131574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10459553585523569143
        Name: "Craftsman Roof 01 Eaves"
        Transform {
          Location {
            X: 72.1396484
            Y: 95.4533691
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -0.250756502
            Y: 0.999999464
            Z: 1
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7648717670233836541
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4530128947387803818
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1396484
            Y: -103.22937
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5744961369639197538
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1391525
            Y: 94.5490723
            Z: 387.160736
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8854941063393406404
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17849999224415746380
        Name: "Gatherable Door"
        Transform {
          Location {
            Y: 620.551575
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 767004027735894401
        ChildIds: 3609515226098041108
        ChildIds: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Door"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "hand, look, pointer, camera"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use your hands to open a door"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 17778809856687332974
            }
          }
          Overrides {
            Name: "cs:GatherEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnSeconds"
            Float: 10
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds"
            Float: 5
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: true
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 8
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 50
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 100
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 60
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate"
            AssetReference {
              Id: 8040246261067913342
            }
          }
          Overrides {
            Name: "cs:State1"
            AssetReference {
              Id: 300175183158660498
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 9788723223673057479
            }
          }
          Overrides {
            Name: "cs:DropOnGather:tooltip"
            String: "If true, gathered objects will drop their contents into the world. Otherwise they will be directly added to the highest priority Inventory."
          }
          Overrides {
            Name: "cs:DropForAllPlayers:tooltip"
            String: "If true, gathered objects will drop on all clients if DropOnGather is also true."
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:tooltip"
            String: "If true, gathered object drops will be destroyed on other clients when the first Player picks them up."
          }
          Overrides {
            Name: "cs:DropMinDistance:tooltip"
            String: "If DropOnGather is true, the minimum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes:tooltip"
            String: "A comma separated list of tools that are allowed to gather this. An empty string means any tool will be able to gather this."
          }
          Overrides {
            Name: "cs:GatherEffects:tooltip"
            String: "This template will be spawned every time this is gathered. It is recommended to have a lifespan on this template. A default lifespan of 5 seconds will be used if it is set to 0."
          }
          Overrides {
            Name: "cs:GatherEffectsOffset:tooltip"
            String: "This will move where the \"GatherEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:RespawnSeconds:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, the gatherable will respawn after this amount of seconds has passed and it can be respawned."
          }
          Overrides {
            Name: "cs:RespawnEffects:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, this template will be spawned when the gatherable respawns."
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:tooltip"
            String: "This will move where the \"RespawnEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:DropEveryGather:tooltip"
            String: "If true, drops will be created every time this is gathered from. Otherwise, drops will only be created when the gatherable is fully gathered."
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:tooltip"
            String: "The maximum number of Item Pickups to generate for a drop. The amount of dropped items will be split into multiple pickups up to this maximum."
          }
          Overrides {
            Name: "cs:DropMaxDistance:tooltip"
            String: "If DropOnGather is true, the maximum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:tooltip"
            String: "If DropOnGather is true, the number of seconds the drop will exist in the world."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:tooltip"
            String: "If DropOnGather is true, this Item Pickup template will be spawned in world to contain the drop."
          }
          Overrides {
            Name: "cs:GatheredState:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:GatheredState:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:State1:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:tooltip"
            String: "One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as gather interactions happen."
          }
          Overrides {
            Name: "cs:GatheredState:tooltip"
            String: "If set, this state will be used when the Gatherable has been fully gathered. Useful for things that need to keep a visual presence even after being gathered from."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMaxDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMaxDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMinDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMinDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropEveryGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropEveryGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropOnGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropOnGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnEffects:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffects:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnSeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:InteractionError:tooltip"
            String: "An error that is broadcast if the Player tries to interact wth this Gatherable with the wrong Equipment."
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad:tooltip"
            String: "If true, the first state template will be spawned in place of the existing object. This allows you to use simple proxy objects in your template to reduce object count."
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather:tooltip"
            String: "The number of Tools that are removed from the Inventory each time this Gatherable is gathered."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3609515226098041108
        Name: "Drops"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
            Yaw: -3.05175781e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17849999224415746380
        ChildIds: 16936103238372924847
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 8280669765240006703
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16936103238372924847
        Name: "Candy Corn (Custom Properties, Can Have Multiple)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3609515226098041108
        UnregisteredParameters {
          Overrides {
            Name: "cs:ItemId"
            String: "Candy Corn"
          }
          Overrides {
            Name: "cs:PercentChance"
            Float: 100
          }
          Overrides {
            Name: "cs:MaxAmount"
            Int: 20
          }
          Overrides {
            Name: "cs:MinAmount"
            Int: 10
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 6635439301500212790
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11473578144158543351
        Name: "Geo (Art)"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17849999224415746380
        ChildIds: 1818422529343497197
        ChildIds: 18168061222836173072
        ChildIds: 14474933252081220126
        ChildIds: 4720326402509414640
        ChildIds: 66473845692288018
        ChildIds: 16377595597383507411
        ChildIds: 18042725829941553539
        ChildIds: 2351325149994910123
        ChildIds: 7274439334093639267
        ChildIds: 11539992426964627294
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1818422529343497197
        Name: "Craftsman Front Door 01"
        Transform {
          Location {
            X: -16.2998657
            Y: -84.5537109
            Z: -198.303741
          }
          Rotation {
            Yaw: 90.0000153
            Roll: -1.03121948
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Door_Handle:id"
            AssetReference {
              Id: 17118136979191323600
            }
          }
          Overrides {
            Name: "ma:Door_Handle:color"
            Color {
              R: 0.593000054
              G: 0.593000054
              B: 0.593000054
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2360206302109331130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.181318447
              G: 0.0852799863
              B: 0.26
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8177613953295784574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18168061222836173072
        Name: "Cube - Bottom-Aligned"
        Transform {
          Location {
            X: -6.581604
            Y: 3.48388672
            Z: -213.096558
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 2.08570862
            Y: 0.0597754121
            Z: 3.28653574
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 675563715440209277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.405000031
              G: 0.128741711
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14474933252081220126
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: -94.6564865
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2264481
            Yaw: -0.00101281179
            Roll: 89.9982224
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4720326402509414640
        Name: "Main Street Window Detail 01"
        Transform {
          Location {
            X: -3.22851586
            Y: 3.56762648
            Z: 117.551758
          }
          Rotation {
            Yaw: 90.0000229
            Roll: 4.185709
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.48772344
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 15689560459329542333
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 66473845692288018
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: 103.107162
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2267
            Yaw: -0.00076059706
            Roll: 89.9977188
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16377595597383507411
        Name: "Cube Bulged"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: -281.146301
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.56180239
            Y: 1.30437326
            Z: 1.62542963
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 4487000158297972604
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18042725829941553539
        Name: "Cube Waisted"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: 51.8768311
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.73586
            Y: 0.821267784
            Z: 5.60324955
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2671657383109992360
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.676000059
              G: 0.676000059
              B: 0.676000059
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14238141181005131574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2351325149994910123
        Name: "Craftsman Roof 01 Eaves"
        Transform {
          Location {
            X: 72.1396484
            Y: 95.4533691
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -0.250756502
            Y: 0.999999464
            Z: 1
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7648717670233836541
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7274439334093639267
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1396484
            Y: -103.22937
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11539992426964627294
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1391525
            Y: 94.5490723
            Z: 387.160736
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11473578144158543351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13389955134145810728
        Name: "Gatherable Door"
        Transform {
          Location {
            Y: 1236.69897
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 767004027735894401
        ChildIds: 3828896700406191499
        ChildIds: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Door"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "hand, look, pointer, camera"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use your hands to open a door"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 17778809856687332974
            }
          }
          Overrides {
            Name: "cs:GatherEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnSeconds"
            Float: 10
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds"
            Float: 5
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: true
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 8
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 50
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 100
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 60
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate"
            AssetReference {
              Id: 8040246261067913342
            }
          }
          Overrides {
            Name: "cs:State1"
            AssetReference {
              Id: 300175183158660498
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 9788723223673057479
            }
          }
          Overrides {
            Name: "cs:DropOnGather:tooltip"
            String: "If true, gathered objects will drop their contents into the world. Otherwise they will be directly added to the highest priority Inventory."
          }
          Overrides {
            Name: "cs:DropForAllPlayers:tooltip"
            String: "If true, gathered objects will drop on all clients if DropOnGather is also true."
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:tooltip"
            String: "If true, gathered object drops will be destroyed on other clients when the first Player picks them up."
          }
          Overrides {
            Name: "cs:DropMinDistance:tooltip"
            String: "If DropOnGather is true, the minimum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes:tooltip"
            String: "A comma separated list of tools that are allowed to gather this. An empty string means any tool will be able to gather this."
          }
          Overrides {
            Name: "cs:GatherEffects:tooltip"
            String: "This template will be spawned every time this is gathered. It is recommended to have a lifespan on this template. A default lifespan of 5 seconds will be used if it is set to 0."
          }
          Overrides {
            Name: "cs:GatherEffectsOffset:tooltip"
            String: "This will move where the \"GatherEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:RespawnSeconds:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, the gatherable will respawn after this amount of seconds has passed and it can be respawned."
          }
          Overrides {
            Name: "cs:RespawnEffects:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, this template will be spawned when the gatherable respawns."
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:tooltip"
            String: "This will move where the \"RespawnEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:DropEveryGather:tooltip"
            String: "If true, drops will be created every time this is gathered from. Otherwise, drops will only be created when the gatherable is fully gathered."
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:tooltip"
            String: "The maximum number of Item Pickups to generate for a drop. The amount of dropped items will be split into multiple pickups up to this maximum."
          }
          Overrides {
            Name: "cs:DropMaxDistance:tooltip"
            String: "If DropOnGather is true, the maximum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:tooltip"
            String: "If DropOnGather is true, the number of seconds the drop will exist in the world."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:tooltip"
            String: "If DropOnGather is true, this Item Pickup template will be spawned in world to contain the drop."
          }
          Overrides {
            Name: "cs:GatheredState:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:GatheredState:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:State1:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:tooltip"
            String: "One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as gather interactions happen."
          }
          Overrides {
            Name: "cs:GatheredState:tooltip"
            String: "If set, this state will be used when the Gatherable has been fully gathered. Useful for things that need to keep a visual presence even after being gathered from."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMaxDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMaxDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMinDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMinDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropEveryGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropEveryGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropOnGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropOnGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnEffects:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffects:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnSeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:InteractionError:tooltip"
            String: "An error that is broadcast if the Player tries to interact wth this Gatherable with the wrong Equipment."
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad:tooltip"
            String: "If true, the first state template will be spawned in place of the existing object. This allows you to use simple proxy objects in your template to reduce object count."
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather:tooltip"
            String: "The number of Tools that are removed from the Inventory each time this Gatherable is gathered."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3828896700406191499
        Name: "Drops"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
            Yaw: -3.05175781e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13389955134145810728
        ChildIds: 16668351673172180879
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 8280669765240006703
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16668351673172180879
        Name: "Candy Corn (Custom Properties, Can Have Multiple)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3828896700406191499
        UnregisteredParameters {
          Overrides {
            Name: "cs:ItemId"
            String: "Candy Corn"
          }
          Overrides {
            Name: "cs:PercentChance"
            Float: 100
          }
          Overrides {
            Name: "cs:MaxAmount"
            Int: 20
          }
          Overrides {
            Name: "cs:MinAmount"
            Int: 10
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 6635439301500212790
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11910374786581236164
        Name: "Geo (Art)"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13389955134145810728
        ChildIds: 12240168394089127595
        ChildIds: 17610611901316419981
        ChildIds: 1896152232792762395
        ChildIds: 14341997577468757710
        ChildIds: 14764466334148484780
        ChildIds: 9645973903408014707
        ChildIds: 12704376014539918987
        ChildIds: 5553890624113878633
        ChildIds: 775993214817681849
        ChildIds: 2690938661174678797
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12240168394089127595
        Name: "Craftsman Front Door 01"
        Transform {
          Location {
            X: -16.2998657
            Y: -84.5537109
            Z: -198.303741
          }
          Rotation {
            Yaw: 90.0000153
            Roll: -1.03121948
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Door_Handle:id"
            AssetReference {
              Id: 17118136979191323600
            }
          }
          Overrides {
            Name: "ma:Door_Handle:color"
            Color {
              R: 0.593000054
              G: 0.593000054
              B: 0.593000054
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2360206302109331130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.181318447
              G: 0.0852799863
              B: 0.26
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8177613953295784574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17610611901316419981
        Name: "Cube - Bottom-Aligned"
        Transform {
          Location {
            X: -6.581604
            Y: 3.48388672
            Z: -213.096558
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 2.08570862
            Y: 0.0597754121
            Z: 3.28653574
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 675563715440209277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.405000031
              G: 0.128741711
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1896152232792762395
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: -94.6564865
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2264481
            Yaw: -0.00101281179
            Roll: 89.9982224
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14341997577468757710
        Name: "Main Street Window Detail 01"
        Transform {
          Location {
            X: -3.22851586
            Y: 3.56762648
            Z: 117.551758
          }
          Rotation {
            Yaw: 90.0000229
            Roll: 4.185709
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.48772344
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 15689560459329542333
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14764466334148484780
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: 103.107162
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2267
            Yaw: -0.00076059706
            Roll: 89.9977188
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9645973903408014707
        Name: "Cube Bulged"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: -281.146301
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.56180239
            Y: 1.30437326
            Z: 1.62542963
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 4487000158297972604
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12704376014539918987
        Name: "Cube Waisted"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: 51.8768311
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.73586
            Y: 0.821267784
            Z: 5.60324955
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2671657383109992360
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.676000059
              G: 0.676000059
              B: 0.676000059
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14238141181005131574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5553890624113878633
        Name: "Craftsman Roof 01 Eaves"
        Transform {
          Location {
            X: 72.1396484
            Y: 95.4533691
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -0.250756502
            Y: 0.999999464
            Z: 1
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7648717670233836541
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 775993214817681849
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1396484
            Y: -103.22937
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2690938661174678797
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1391525
            Y: 94.5490723
            Z: 387.160736
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11910374786581236164
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1630904544395062523
        Name: "Gatherable Door"
        Transform {
          Location {
            Y: 1853.82141
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 767004027735894401
        ChildIds: 4528991346815622881
        ChildIds: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Door"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "hand, look, pointer, camera"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use your hands to open a door"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 17778809856687332974
            }
          }
          Overrides {
            Name: "cs:GatherEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnSeconds"
            Float: 10
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds"
            Float: 5
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: true
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 8
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 50
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 100
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 60
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate"
            AssetReference {
              Id: 8040246261067913342
            }
          }
          Overrides {
            Name: "cs:State1"
            AssetReference {
              Id: 300175183158660498
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 9788723223673057479
            }
          }
          Overrides {
            Name: "cs:DropOnGather:tooltip"
            String: "If true, gathered objects will drop their contents into the world. Otherwise they will be directly added to the highest priority Inventory."
          }
          Overrides {
            Name: "cs:DropForAllPlayers:tooltip"
            String: "If true, gathered objects will drop on all clients if DropOnGather is also true."
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:tooltip"
            String: "If true, gathered object drops will be destroyed on other clients when the first Player picks them up."
          }
          Overrides {
            Name: "cs:DropMinDistance:tooltip"
            String: "If DropOnGather is true, the minimum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes:tooltip"
            String: "A comma separated list of tools that are allowed to gather this. An empty string means any tool will be able to gather this."
          }
          Overrides {
            Name: "cs:GatherEffects:tooltip"
            String: "This template will be spawned every time this is gathered. It is recommended to have a lifespan on this template. A default lifespan of 5 seconds will be used if it is set to 0."
          }
          Overrides {
            Name: "cs:GatherEffectsOffset:tooltip"
            String: "This will move where the \"GatherEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:RespawnSeconds:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, the gatherable will respawn after this amount of seconds has passed and it can be respawned."
          }
          Overrides {
            Name: "cs:RespawnEffects:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, this template will be spawned when the gatherable respawns."
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:tooltip"
            String: "This will move where the \"RespawnEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:DropEveryGather:tooltip"
            String: "If true, drops will be created every time this is gathered from. Otherwise, drops will only be created when the gatherable is fully gathered."
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:tooltip"
            String: "The maximum number of Item Pickups to generate for a drop. The amount of dropped items will be split into multiple pickups up to this maximum."
          }
          Overrides {
            Name: "cs:DropMaxDistance:tooltip"
            String: "If DropOnGather is true, the maximum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:tooltip"
            String: "If DropOnGather is true, the number of seconds the drop will exist in the world."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:tooltip"
            String: "If DropOnGather is true, this Item Pickup template will be spawned in world to contain the drop."
          }
          Overrides {
            Name: "cs:GatheredState:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:GatheredState:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:State1:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:tooltip"
            String: "One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as gather interactions happen."
          }
          Overrides {
            Name: "cs:GatheredState:tooltip"
            String: "If set, this state will be used when the Gatherable has been fully gathered. Useful for things that need to keep a visual presence even after being gathered from."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMaxDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMaxDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMinDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMinDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropEveryGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropEveryGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropOnGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropOnGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnEffects:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffects:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnSeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:InteractionError:tooltip"
            String: "An error that is broadcast if the Player tries to interact wth this Gatherable with the wrong Equipment."
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad:tooltip"
            String: "If true, the first state template will be spawned in place of the existing object. This allows you to use simple proxy objects in your template to reduce object count."
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather:tooltip"
            String: "The number of Tools that are removed from the Inventory each time this Gatherable is gathered."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4528991346815622881
        Name: "Drops"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
            Yaw: -3.05175781e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1630904544395062523
        ChildIds: 2171736052449569171
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 8280669765240006703
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2171736052449569171
        Name: "Candy Corn (Custom Properties, Can Have Multiple)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4528991346815622881
        UnregisteredParameters {
          Overrides {
            Name: "cs:ItemId"
            String: "Candy Corn"
          }
          Overrides {
            Name: "cs:PercentChance"
            Float: 100
          }
          Overrides {
            Name: "cs:MaxAmount"
            Int: 20
          }
          Overrides {
            Name: "cs:MinAmount"
            Int: 10
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 6635439301500212790
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4898560629599581194
        Name: "Geo (Art)"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1630904544395062523
        ChildIds: 15067105159043102533
        ChildIds: 12891129729940727781
        ChildIds: 17253847050399807347
        ChildIds: 15449129924920664774
        ChildIds: 7532546777093895847
        ChildIds: 14517969022415419296
        ChildIds: 12076899048631731098
        ChildIds: 523086367655942344
        ChildIds: 14526738105448474082
        ChildIds: 2425365849802539296
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15067105159043102533
        Name: "Craftsman Front Door 01"
        Transform {
          Location {
            X: -16.2998657
            Y: -84.5537109
            Z: -198.303741
          }
          Rotation {
            Yaw: 90.0000153
            Roll: -1.03121948
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Door_Handle:id"
            AssetReference {
              Id: 17118136979191323600
            }
          }
          Overrides {
            Name: "ma:Door_Handle:color"
            Color {
              R: 0.593000054
              G: 0.593000054
              B: 0.593000054
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2360206302109331130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.181318447
              G: 0.0852799863
              B: 0.26
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8177613953295784574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12891129729940727781
        Name: "Cube - Bottom-Aligned"
        Transform {
          Location {
            X: -6.581604
            Y: 3.48388672
            Z: -213.096558
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 2.08570862
            Y: 0.0597754121
            Z: 3.28653574
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 675563715440209277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.405000031
              G: 0.128741711
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17253847050399807347
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: -94.6564865
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2264481
            Yaw: -0.00101281179
            Roll: 89.9982224
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15449129924920664774
        Name: "Main Street Window Detail 01"
        Transform {
          Location {
            X: -3.22851586
            Y: 3.56762648
            Z: 117.551758
          }
          Rotation {
            Yaw: 90.0000229
            Roll: 4.185709
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.48772344
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 15689560459329542333
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7532546777093895847
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: 103.107162
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2267
            Yaw: -0.00076059706
            Roll: 89.9977188
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14517969022415419296
        Name: "Cube Bulged"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: -281.146301
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.56180239
            Y: 1.30437326
            Z: 1.62542963
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 4487000158297972604
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12076899048631731098
        Name: "Cube Waisted"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: 51.8768311
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.73586
            Y: 0.821267784
            Z: 5.60324955
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2671657383109992360
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.676000059
              G: 0.676000059
              B: 0.676000059
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14238141181005131574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 523086367655942344
        Name: "Craftsman Roof 01 Eaves"
        Transform {
          Location {
            X: 72.1396484
            Y: 95.4533691
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -0.250756502
            Y: 0.999999464
            Z: 1
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7648717670233836541
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14526738105448474082
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1396484
            Y: -103.22937
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2425365849802539296
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1391525
            Y: 94.5490723
            Z: 387.160736
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4898560629599581194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4731160026759737882
        Name: "Gatherable Door"
        Transform {
          Location {
            Y: 2509.98486
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 767004027735894401
        ChildIds: 9449213492317917600
        ChildIds: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Door"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "hand, look, pointer, camera"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use your hands to open a door"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 17778809856687332974
            }
          }
          Overrides {
            Name: "cs:GatherEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnSeconds"
            Float: 10
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds"
            Float: 5
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: true
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: true
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 8
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 50
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 100
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 60
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate"
            AssetReference {
              Id: 8040246261067913342
            }
          }
          Overrides {
            Name: "cs:State1"
            AssetReference {
              Id: 300175183158660498
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 9788723223673057479
            }
          }
          Overrides {
            Name: "cs:DropOnGather:tooltip"
            String: "If true, gathered objects will drop their contents into the world. Otherwise they will be directly added to the highest priority Inventory."
          }
          Overrides {
            Name: "cs:DropForAllPlayers:tooltip"
            String: "If true, gathered objects will drop on all clients if DropOnGather is also true."
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:tooltip"
            String: "If true, gathered object drops will be destroyed on other clients when the first Player picks them up."
          }
          Overrides {
            Name: "cs:DropMinDistance:tooltip"
            String: "If DropOnGather is true, the minimum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes:tooltip"
            String: "A comma separated list of tools that are allowed to gather this. An empty string means any tool will be able to gather this."
          }
          Overrides {
            Name: "cs:GatherEffects:tooltip"
            String: "This template will be spawned every time this is gathered. It is recommended to have a lifespan on this template. A default lifespan of 5 seconds will be used if it is set to 0."
          }
          Overrides {
            Name: "cs:GatherEffectsOffset:tooltip"
            String: "This will move where the \"GatherEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:RespawnSeconds:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, the gatherable will respawn after this amount of seconds has passed and it can be respawned."
          }
          Overrides {
            Name: "cs:RespawnEffects:tooltip"
            String: "If \"Respawn\" is true on the parent Gatherables Group, this template will be spawned when the gatherable respawns."
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:tooltip"
            String: "This will move where the \"RespawnEffects\" template spawns. It can be used to position the effect exactly where you need it."
          }
          Overrides {
            Name: "cs:DropEveryGather:tooltip"
            String: "If true, drops will be created every time this is gathered from. Otherwise, drops will only be created when the gatherable is fully gathered."
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:tooltip"
            String: "The maximum number of Item Pickups to generate for a drop. The amount of dropped items will be split into multiple pickups up to this maximum."
          }
          Overrides {
            Name: "cs:DropMaxDistance:tooltip"
            String: "If DropOnGather is true, the maximum distance from the gatherable the drop will appear."
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:tooltip"
            String: "If DropOnGather is true, the number of seconds the drop will exist in the world."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:tooltip"
            String: "If DropOnGather is true, this Item Pickup template will be spawned in world to contain the drop."
          }
          Overrides {
            Name: "cs:GatheredState:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:GatheredState:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:State1:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State1:tooltip"
            String: "One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as gather interactions happen."
          }
          Overrides {
            Name: "cs:GatheredState:tooltip"
            String: "If set, this state will be used when the Gatherable has been fully gathered. Useful for things that need to keep a visual presence even after being gathered from."
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMaxDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMaxDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropMinDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMinDistance:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:SinglePlayerDrops:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropEveryGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropEveryGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:DropOnGather:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropOnGather:subcategory"
            String: "Drops"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnEffects:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnEffects:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:RespawnSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RespawnSeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:InteractionError:tooltip"
            String: "An error that is broadcast if the Player tries to interact wth this Gatherable with the wrong Equipment."
          }
          Overrides {
            Name: "cs:SpawnTemplateOnLoad:tooltip"
            String: "If true, the first state template will be spawned in place of the existing object. This allows you to use simple proxy objects in your template to reduce object count."
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather:tooltip"
            String: "The number of Tools that are removed from the Inventory each time this Gatherable is gathered."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9449213492317917600
        Name: "Drops"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
            Yaw: -3.05175781e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4731160026759737882
        ChildIds: 14029126284418911868
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 8280669765240006703
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14029126284418911868
        Name: "Candy Corn (Custom Properties, Can Have Multiple)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9449213492317917600
        UnregisteredParameters {
          Overrides {
            Name: "cs:ItemId"
            String: "Candy Corn"
          }
          Overrides {
            Name: "cs:PercentChance"
            Float: 100
          }
          Overrides {
            Name: "cs:MaxAmount"
            Int: 20
          }
          Overrides {
            Name: "cs:MinAmount"
            Int: 10
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 6635439301500212790
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3316826200384679416
        Name: "Geo (Art)"
        Transform {
          Location {
            X: 76.3662109
            Y: -1.71533203
            Z: 213.096527
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4731160026759737882
        ChildIds: 8155895334368447776
        ChildIds: 6129393756176455789
        ChildIds: 2317330102242643999
        ChildIds: 1483278607772825329
        ChildIds: 5601754656849674209
        ChildIds: 17692724334111550411
        ChildIds: 2387644518680413030
        ChildIds: 9560955897776283660
        ChildIds: 2036790314148638283
        ChildIds: 3426141488349912878
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8155895334368447776
        Name: "Craftsman Front Door 01"
        Transform {
          Location {
            X: -16.2998657
            Y: -84.5537109
            Z: -198.303741
          }
          Rotation {
            Yaw: 90.0000153
            Roll: -1.03121948
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Door_Handle:id"
            AssetReference {
              Id: 17118136979191323600
            }
          }
          Overrides {
            Name: "ma:Door_Handle:color"
            Color {
              R: 0.593000054
              G: 0.593000054
              B: 0.593000054
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2360206302109331130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.181318447
              G: 0.0852799863
              B: 0.26
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8177613953295784574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6129393756176455789
        Name: "Cube - Bottom-Aligned"
        Transform {
          Location {
            X: -6.581604
            Y: 3.48388672
            Z: -213.096558
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 2.08570862
            Y: 0.0597754121
            Z: 3.28653574
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 675563715440209277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.405000031
              G: 0.128741711
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2317330102242643999
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: -94.6564865
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2264481
            Yaw: -0.00101281179
            Roll: 89.9982224
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1483278607772825329
        Name: "Main Street Window Detail 01"
        Transform {
          Location {
            X: -3.22851586
            Y: 3.56762648
            Z: 117.551758
          }
          Rotation {
            Yaw: 90.0000229
            Roll: 4.185709
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.48772344
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 15689560459329542333
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5601754656849674209
        Name: "Craftsman Roof 01 Beam"
        Transform {
          Location {
            X: -9.67919922
            Y: 103.107162
            Z: -213.096649
          }
          Rotation {
            Pitch: 89.2267
            Yaw: -0.00076059706
            Roll: 89.9977188
          }
          Scale {
            X: 0.435163975
            Y: 1
            Z: 0.488015354
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 334539200272576528
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17692724334111550411
        Name: "Cube Bulged"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: -281.146301
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.56180239
            Y: 1.30437326
            Z: 1.62542963
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 4487000158297972604
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2387644518680413030
        Name: "Cube Waisted"
        Transform {
          Location {
            X: 23.2207
            Y: -0.0930156708
            Z: 51.8768311
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 4.73586
            Y: 0.821267784
            Z: 5.60324955
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2671657383109992360
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.676000059
              G: 0.676000059
              B: 0.676000059
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14238141181005131574
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9560955897776283660
        Name: "Craftsman Roof 01 Eaves"
        Transform {
          Location {
            X: 72.1396484
            Y: 95.4533691
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -0.250756502
            Y: 0.999999464
            Z: 1
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7648717670233836541
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2036790314148638283
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1396484
            Y: -103.22937
            Z: 387.160767
          }
          Rotation {
            Yaw: 90.0000458
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3426141488349912878
        Name: "Craftsman Roof 01 Eaves Corner"
        Transform {
          Location {
            X: 72.1391525
            Y: 94.5490723
            Z: 387.160736
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3316826200384679416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16479509688551459620
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 4247430867898109902
            }
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.045
              G: 0.045
              B: 0.045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.154000014
              G: 0.154000014
              B: 0.154000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11241146599138551813
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 8177613953295784574
      Name: "Craftsman Front Door 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_door_001"
      }
    }
    Assets {
      Id: 17118136979191323600
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 2360206302109331130
      Name: "Wood Painted 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_painted_white_001_uv"
      }
    }
    Assets {
      Id: 198353679974341757
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 675563715440209277
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 334539200272576528
      Name: "Craftsman Roof 01 Beam"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_roof_001_beam"
      }
    }
    Assets {
      Id: 4247430867898109902
      Name: "Stucco Tintable"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_stucco_tint_001_uv"
      }
    }
    Assets {
      Id: 15689560459329542333
      Name: "Main Street Window Detail 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_urb_dtn_mst_part_window_detail_001_ref"
      }
    }
    Assets {
      Id: 4487000158297972604
      Name: "Cube Bulged"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_cube_buldge_001_ref"
      }
    }
    Assets {
      Id: 14238141181005131574
      Name: "Cube Waisted"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_cube_waisted_001_ref"
      }
    }
    Assets {
      Id: 2671657383109992360
      Name: "Brick Multicolor 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_brick_multicolor_old_001_uv"
      }
    }
    Assets {
      Id: 7648717670233836541
      Name: "Craftsman Roof 01 Eaves"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_roof_eaves_001"
      }
    }
    Assets {
      Id: 16479509688551459620
      Name: "Wood Shingles Cedar 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_cedar_shingles_001_uv"
      }
    }
    Assets {
      Id: 11241146599138551813
      Name: "Craftsman Roof 01 Eaves Corner"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_roof_eaves_001_corner"
      }
    }
    Assets {
      Id: 12889861000896994476
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "Gatherables"
}
