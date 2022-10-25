Assets {
  Id: 17656044970284613005
  Name: "Gatherable Chest"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1875646568325520319
      Objects {
        Id: 1875646568325520319
        Name: "Gatherable Chest"
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
        ChildIds: 18391699863512719574
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
        Id: 17000074796034565184
        Name: "Gatherables Group (Open Me, Custom Properties)"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6349748105440124287
        ChildIds: 11749040634566505319
        ChildIds: 15838571207811567072
        UnregisteredParameters {
          Overrides {
            Name: "cs:Respawn"
            Bool: false
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
        Id: 15838571207811567072
        Name: "Gatherable Chest"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17000074796034565184
        ChildIds: 15881156346177546290
        ChildIds: 10129767095104155721
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Chest"
          }
          Overrides {
            Name: "cs:ValidGatheringToolTypes"
            String: "key"
          }
          Overrides {
            Name: "cs:ToolsConsumedPerGather"
            Int: 1
          }
          Overrides {
            Name: "cs:InteractionError"
            String: "Use a key to open a chest"
          }
          Overrides {
            Name: "cs:GatherEffects"
            AssetReference {
              Id: 8508908453730390821
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
            Float: 0
          }
          Overrides {
            Name: "cs:DestroyGatheredStateDelaySeconds"
            Float: 0
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
            Name: "cs:DropTimeoutSeconds"
            Float: 60
          }
          Overrides {
            Name: "cs:DropMinDistance"
            Float: 200
          }
          Overrides {
            Name: "cs:DropMaxDistance"
            Float: 500
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop"
            Int: 5
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
              Id: 11032077211835754799
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 1370696054102094103
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
            Name: "cs:DropForAllPlayers:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropForAllPlayers:subcategory"
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
            Name: "cs:MaxPickupsPerDrop:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:MaxPickupsPerDrop:subcategory"
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
            Name: "cs:DropMaxDistance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropMaxDistance:subcategory"
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
            Name: "cs:DropItemPickupTemplate:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DropItemPickupTemplate:subcategory"
            String: "Drops"
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
            Name: "cs:State1:tooltip"
            String: "One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as gather interactions happen."
          }
          Overrides {
            Name: "cs:GatheredState:tooltip"
            String: "If set, this state will be used when the Gatherable has been fully gathered. Useful for things that need to keep a visual presence even after being gathered from."
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
        Id: 15881156346177546290
        Name: "Drops"
        Transform {
          Location {
            X: 0.000116012205
            Y: -3.79779813e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15838571207811567072
        ChildIds: 668399972121629832
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
        Id: 668399972121629832
        Name: "Coins (Custom Properties, Can Have Multiple)"
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
        ParentId: 15881156346177546290
        UnregisteredParameters {
          Overrides {
            Name: "cs:ItemId"
            String: ""
          }
          Overrides {
            Name: "cs:PercentChance"
            Float: 100
          }
          Overrides {
            Name: "cs:MaxAmount"
            Int: 500
          }
          Overrides {
            Name: "cs:MinAmount"
            Int: 200
          }
          Overrides {
            Name: "cs:CurrencyId"
            String: "coins"
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
        Id: 10129767095104155721
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
        ParentId: 15838571207811567072
        ChildIds: 14843352807785260291
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
        Id: 14843352807785260291
        Name: "Chest Big Closed"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10129767095104155721
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
            Id: 9381248077573981814
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
        Id: 18391699863512719574
        Name: "ClientContext"
        Transform {
          Location {
            X: 1.24703979
            Y: -446.133362
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
        ParentId: 1875646568325520319
        ChildIds: 5749664699258797157
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 5749664699258797157
        Name: "Item Pickup - Distance (Key)"
        Transform {
          Location {
            X: 212.936401
            Y: -6.34599928e-05
            Z: -1.27384949
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18391699863512719574
        ChildIds: 5900160186734591926
        ChildIds: 6021738929403900169
        ChildIds: 1892866285667589209
        ChildIds: 4441913123957854796
        ChildIds: 5792675548103871558
        UnregisteredParameters {
          Overrides {
            Name: "cs:InventoryPickupComponent"
            ObjectReference {
              SubObjectId: 5900160186734591926
            }
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 5787245947590458132
            }
          }
          Overrides {
            Name: "cs:SubTarget"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:PressBinding"
            String: ""
          }
          Overrides {
            Name: "cs:ItemId"
            String: "Key"
          }
          Overrides {
            Name: "cs:CurrencyId"
            String: ""
          }
          Overrides {
            Name: "cs:Amount"
            Int: 1
          }
          Overrides {
            Name: "cs:SpawnVisual"
            Bool: true
          }
          Overrides {
            Name: "cs:PickupOnHoverBegin"
            Bool: true
          }
          Overrides {
            Name: "cs:PickupOnHoverEnd"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnPressBegin"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnPressEnd"
            Bool: false
          }
          Overrides {
            Name: "cs:FollowDelay"
            Float: 0.5
          }
          Overrides {
            Name: "cs:FollowDuration"
            Float: 1
          }
          Overrides {
            Name: "cs:InventoryPickupComponent:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:InventoryPickupComponent:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:APIInteractionModule:tooltip"
            String: "The Interaction Module to use with this Item Pickup."
          }
          Overrides {
            Name: "cs:SubTarget:tooltip"
            String: "The Sub Target can be used to set a specific Trigger or UIButton to use for interaction events. If left blank the Input Module will find the first appropriate object."
          }
          Overrides {
            Name: "cs:PressBinding:tooltip"
            String: "The binding to use for press interactions."
          }
          Overrides {
            Name: "cs:ItemId:tooltip"
            String: "If set, the Item Pickup will add this item to an Inventory when picked up. Item Pickups spawned at runtime will ignore this value."
          }
          Overrides {
            Name: "cs:CurrencyId:tooltip"
            String: "If set, the Item Pickup will add this currency when picked up. Item Pickups spawned at runtime will ignore this value."
          }
          Overrides {
            Name: "cs:Amount:tooltip"
            String: "The amount of the item or currency this Item Pickup contains. If set at runtime this value will be ignored."
          }
          Overrides {
            Name: "cs:SpawnVisual:tooltip"
            String: "If true, the Item Pickup will spawn the \"DropTemplate\" on the associated item or currency data."
          }
          Overrides {
            Name: "cs:PickupOnHoverBegin:tooltip"
            String: "If true, the Item Pickup will be collected when a hover begin event happens."
          }
          Overrides {
            Name: "cs:PickupOnHoverEnd:tooltip"
            String: "If true, the Item Pickup will be collected when a hover end event happens."
          }
          Overrides {
            Name: "cs:PickupOnPressBegin:tooltip"
            String: "If true, the Item Pickup will be collected when a press begin event happens."
          }
          Overrides {
            Name: "cs:PickupOnPressEnd:tooltip"
            String: "If true, the Item Pickup will be collected when a press end event happens."
          }
          Overrides {
            Name: "cs:FollowDelay:tooltip"
            String: "The amount of seconds the Item Pickup will wait before flying towards the Player."
          }
          Overrides {
            Name: "cs:FollowDuration:tooltip"
            String: "The amount of seconds the Item Pickup will spend moving towards the Player."
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
        Id: 5900160186734591926
        Name: "InventoryPickupClient"
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
        ParentId: 5749664699258797157
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 5749664699258797157
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
            Id: 16119492629509416982
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6021738929403900169
        Name: "Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 5749664699258797157
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
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
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
          InteractionTemplate {
          }
          BreadcrumbTemplate {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1892866285667589209
        Name: "Callout Sparkle"
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
        ParentId: 5749664699258797157
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
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
        Blueprint {
          BlueprintAsset {
            Id: 14231394991004806063
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4441913123957854796
        Name: "Level Up VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.376794159
            Y: 0.376794159
            Z: 0.376794159
          }
        }
        ParentId: 5749664699258797157
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2
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
        Blueprint {
          BlueprintAsset {
            Id: 1525101897459124588
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5792675548103871558
        Name: "UI Pop Double 03 SFX"
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
        ParentId: 5749664699258797157
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
        AudioInstance {
          AudioAsset {
            Id: 11720841845573877733
          }
          AutoPlay: true
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 9381248077573981814
      Name: "Chest Big Closed"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_chest_003"
      }
    }
    Assets {
      Id: 14231394991004806063
      Name: "Callout Sparkle"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_sparkles_volume_vfx"
      }
    }
    Assets {
      Id: 1525101897459124588
      Name: "Level Up VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Level_Up"
      }
    }
    Assets {
      Id: 11720841845573877733
      Name: "UI Pop Double 03 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_ui_pop_double_03_Cue_ref"
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
