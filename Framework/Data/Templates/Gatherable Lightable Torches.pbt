Assets {
  Id: 14318715397185159384
  Name: "Gatherable Lightable Torches"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1875646568325520319
      Objects {
        Id: 1875646568325520319
        Name: "Gatherable Lightable Torches"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9572204608989662689
        ChildIds: 2947611807335669788
        ChildIds: 6349748105440124287
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
        Id: 9572204608989662689
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
        ParentId: 1875646568325520319
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
        Id: 2947611807335669788
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
        ParentId: 1875646568325520319
        ChildIds: 8540753781362007509
        ChildIds: 17444678467148536906
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
              SubObjectId: 6349748105440124287
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
        Id: 8540753781362007509
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
        ParentId: 2947611807335669788
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2947611807335669788
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
        Id: 17444678467148536906
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
        ParentId: 2947611807335669788
        ChildIds: 17517769470234627095
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
        Id: 17517769470234627095
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
        ParentId: 17444678467148536906
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2947611807335669788
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
        Id: 6349748105440124287
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
        ParentId: 1875646568325520319
        ChildIds: 7893027281379068611
        ChildIds: 17000074796034565184
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
        Id: 7893027281379068611
        Name: "Geo"
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
        ParentId: 6349748105440124287
        ChildIds: 1716470761607520547
        ChildIds: 6677563736913599555
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
        Id: 1716470761607520547
        Name: "Fantasy Castle Wall 01"
        Transform {
          Location {
            X: 14.7816162
            Y: -1059.83423
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
        ParentId: 7893027281379068611
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
        CoreMesh {
          MeshAsset {
            Id: 4927017302746496390
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6677563736913599555
        Name: "Fantasy Castle Wall 01"
        Transform {
          Location {
            X: 14.7816162
            Y: -259.834229
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7893027281379068611
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
        CoreMesh {
          MeshAsset {
            Id: 4927017302746496390
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17000074796034565184
        Name: "Gatherables Group (Open Me, Custom Properties)"
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
        ParentId: 6349748105440124287
        ChildIds: 11749040634566505319
        ChildIds: 3788186289016135244
        ChildIds: 2389877409023652564
        ChildIds: 16467939923154419514
        ChildIds: 1959123848180792467
        UnregisteredParameters {
          Overrides {
            Name: "cs:Respawn"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnPlayerMinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:RespawnPlayerMaxDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:RespawnWhenNotVisible"
            Bool: false
          }
          Overrides {
            Name: "cs:RandomSpawn"
            Bool: false
          }
          Overrides {
            Name: "cs:RandomSpawnPercent"
            Float: 0
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
        Id: 11749040634566505319
        Name: "GatherableGroup"
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
        ParentId: 17000074796034565184
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 17000074796034565184
            }
          }
          Overrides {
            Name: "cs:Group"
            ObjectReference {
              SubObjectId: 17000074796034565184
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
        Id: 3788186289016135244
        Name: "Gatherable Torch"
        Transform {
          Location {
            X: -6.84753418
            Y: -903.445801
            Z: 357.861206
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17000074796034565184
        ChildIds: 14873756200753124179
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Torch"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "flint and steel"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use Flint and Steel to light torches"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 841534158063459245
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
            Float: 0
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 15649134424493033105
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: false
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: false
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: false
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 0
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 0
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
              Id: 11544525649964440319
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 12253245889118394451
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
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
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
        Id: 14873756200753124179
        Name: "Geo (Art)"
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
        ParentId: 3788186289016135244
        ChildIds: 13684337116142974897
        ChildIds: 12432989015508425696
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
        Id: 13684337116142974897
        Name: "Torch Holder Metal"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14873756200753124179
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
            Id: 8051704384849725746
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12432989015508425696
        Name: "Torch Metal"
        Transform {
          Location {
            X: -22.0324192
            Z: -4.8069458
          }
          Rotation {
            Pitch: 22.7674923
            Yaw: -2.45019037e-05
            Roll: -5.78685e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14873756200753124179
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
            Id: 11863947712482205091
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2389877409023652564
        Name: "Gatherable Torch"
        Transform {
          Location {
            X: -6.84753418
            Y: -491.703369
            Z: 357.861206
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17000074796034565184
        ChildIds: 192010799727923824
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Torch"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "flint and steel"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use Flint and Steel to light torches"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 841534158063459245
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
            Float: 0
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 15649134424493033105
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: false
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: false
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: false
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 0
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 0
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
              Id: 11544525649964440319
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 12253245889118394451
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
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
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
        Id: 192010799727923824
        Name: "Geo (Art)"
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
        ParentId: 2389877409023652564
        ChildIds: 9247542940706579630
        ChildIds: 9963909323189653385
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
        Id: 9247542940706579630
        Name: "Torch Holder Metal"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 192010799727923824
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
            Id: 8051704384849725746
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9963909323189653385
        Name: "Torch Metal"
        Transform {
          Location {
            X: -22.0324192
            Z: -4.8069458
          }
          Rotation {
            Pitch: 22.7674923
            Yaw: -2.45019037e-05
            Roll: -5.78685e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 192010799727923824
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
            Id: 11863947712482205091
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16467939923154419514
        Name: "Gatherable Torch"
        Transform {
          Location {
            X: -6.84753418
            Y: -52.3359375
            Z: 357.861206
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17000074796034565184
        ChildIds: 179400648038844027
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Torch"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "flint and steel"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use Flint and Steel to light torches"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 841534158063459245
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
            Float: 0
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 15649134424493033105
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: false
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: false
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: false
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 0
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 0
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
              Id: 11544525649964440319
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 12253245889118394451
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
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
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
        Id: 179400648038844027
        Name: "Geo (Art)"
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
        ParentId: 16467939923154419514
        ChildIds: 10754626652757674638
        ChildIds: 5879859992379335974
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
        Id: 10754626652757674638
        Name: "Torch Holder Metal"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 179400648038844027
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
            Id: 8051704384849725746
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5879859992379335974
        Name: "Torch Metal"
        Transform {
          Location {
            X: -22.0324192
            Z: -4.8069458
          }
          Rotation {
            Pitch: 22.7674923
            Yaw: -2.45019037e-05
            Roll: -5.78685e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 179400648038844027
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
            Id: 11863947712482205091
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1959123848180792467
        Name: "Gatherable Torch"
        Transform {
          Location {
            X: -6.84753418
            Y: 367.32959
            Z: 357.861206
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17000074796034565184
        ChildIds: 16208217934013556856
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Torch"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "flint and steel"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 0
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use Flint and Steel to light torches"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 841534158063459245
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
            Float: 0
          }
          Overrides {
            Name: "cs:RespawnEffects"
            AssetReference {
              Id: 15649134424493033105
            }
          }
          Overrides {
            Name: "cs:RespawnEffectsOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DropOnGather"
            Bool: false
          }
          Overrides {
            Name: "cs:DropEveryGather"
            Bool: false
          }
          Overrides {
            Name: "cs:DropForAllPlayers"
            Bool: false
          }
          Overrides {
            Name: "cs:SinglePlayerDrops"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 0
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 0
          }
          Overrides {
            Name: "cs:DropTimeoutSeconds"
            Float: 0
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
              Id: 11544525649964440319
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 12253245889118394451
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
            Name: "cs:DestroyGatheredStateDelaySeconds:tooltip"
            String: "Waits this amount of seconds before destroying a Gatherable with a \"GatheredState\" to respawn other Gatherables."
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds:subcategory"
            String: "Respawn"
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
        Id: 16208217934013556856
        Name: "Geo (Art)"
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
        ParentId: 1959123848180792467
        ChildIds: 12222805524040868306
        ChildIds: 17629716601024602796
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
        Id: 12222805524040868306
        Name: "Torch Holder Metal"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16208217934013556856
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
        CoreMesh {
          MeshAsset {
            Id: 8051704384849725746
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17629716601024602796
        Name: "Torch Metal"
        Transform {
          Location {
            X: -22.0324192
            Z: -4.8069458
          }
          Rotation {
            Pitch: 22.7674923
            Yaw: -2.45019037e-05
            Roll: -5.78685e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16208217934013556856
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
            Id: 11863947712482205091
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 4927017302746496390
      Name: "Fantasy Castle Wall 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_wall_001"
      }
    }
    Assets {
      Id: 8051704384849725746
      Name: "Torch Holder Metal"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torch_holder_001"
      }
    }
    Assets {
      Id: 11863947712482205091
      Name: "Torch Metal"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torch_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Gatherables"
}
