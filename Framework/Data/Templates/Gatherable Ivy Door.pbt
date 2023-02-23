Assets {
  Id: 17844822739223163364
  Name: "Gatherable Ivy Door"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1875646568325520319
      Objects {
        Id: 1875646568325520319
        Name: "Gatherable Ivy Door"
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
        ChildIds: 16831981682798948819
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
          IsAllowedForPC: true
          IsAllowedForMobile: true
          IsAllowedForLowMemoryMobile: true
          PCMinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          PCMaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
          MobileMinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MobileMaxDetailLevel {
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
        Id: 16831981682798948819
        Name: "ClientContext"
        Transform {
          Location {
            X: 4.63140106
            Y: 46.4748535
            Z: -32.1168213
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
        ChildIds: 17527902000661931403
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
          IsAllowedForPC: true
          IsAllowedForMobile: true
          IsAllowedForLowMemoryMobile: true
          PCMinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          PCMaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
          MobileMinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MobileMaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17527902000661931403
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
        ParentId: 16831981682798948819
        ChildIds: 2259597156213132441
        ChildIds: 208685116065815474
        ChildIds: 3152254786384385877
        ChildIds: 8834294470909334970
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
        Id: 2259597156213132441
        Name: "Bush 01"
        Transform {
          Location {
            X: -41.2930527
            Y: -214.977051
            Z: 32.1168213
          }
          Rotation {
            Yaw: 6.83018698e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17527902000661931403
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
            Id: 901541979513849367
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
        Id: 208685116065815474
        Name: "Bush 02"
        Transform {
          Location {
            X: 113.887154
            Y: 195.77771
          }
          Rotation {
            Pitch: 18.2824135
            Yaw: 32.4135
            Roll: 1.91245735
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17527902000661931403
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
            Id: 13800436588944964225
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
        Id: 3152254786384385877
        Name: "Bush Leafy Tall 01"
        Transform {
          Location {
            X: -9.13144684
            Y: -3.43115234
            Z: 32.1168518
          }
          Rotation {
            Yaw: 6.83018698e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17527902000661931403
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
            Id: 12997470107562757952
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
        Id: 8834294470909334970
        Name: "Bush Leafy Low 01"
        Transform {
          Location {
            X: -72.3868484
            Y: 105.069092
            Z: 32.1168518
          }
          Rotation {
            Yaw: 6.83018698e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17527902000661931403
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
            Id: 84254442598276906
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
        ChildIds: 11536393402566447532
        ChildIds: 9940092885128500743
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
        Id: 11536393402566447532
        Name: "Cube - Arched"
        Transform {
          Location {
            X: 9.09350586
            Y: 5.25561523
            Z: 0.000122070312
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 2.54299331
            Y: 0.090191111
            Z: 2.90126967
          }
        }
        ParentId: 6349748105440124287
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5351428073291024820
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 4857880132214070829
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
        Id: 9940092885128500743
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 9.09350586
            Y: 5.25561523
            Z: 0.000122070312
          }
          Rotation {
            Yaw: 6.83018516e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6349748105440124287
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14789907036896094035
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
            Id: 14146941956844593476
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
        ChildIds: 12005850554878180147
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
            Float: 2000
          }
          Overrides {
            Name: "cs:RespawnWhenNotVisible"
            Bool: true
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
        Id: 12005850554878180147
        Name: "Gatherable Ivy"
        Transform {
          Location {
            X: -23.6332245
            Y: -2.71533203
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
        ParentId: 17000074796034565184
        ChildIds: 10037677623539752547
        ChildIds: 584874156374195825
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Ivy"
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
            String: "Use your hands to clear ivy"
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
              Id: 6123828928434234885
            }
          }
          Overrides {
            Name: "cs:State2"
            AssetReference {
              Id: 12897340816060447869
            }
          }
          Overrides {
            Name: "cs:State3"
            AssetReference {
              Id: 9118826081788979696
            }
          }
          Overrides {
            Name: "cs:GatheredState"
            AssetReference {
              Id: 841534158063459245
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
            Name: "cs:State2:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:State3:category"
            String: "Custom"
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
            Name: "cs:State2:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State3:subcategory"
            String: "States"
          }
          Overrides {
            Name: "cs:State2:tooltip"
            String: "One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as gather interactions happen."
          }
          Overrides {
            Name: "cs:State3:tooltip"
            String: "One of 32 potential state templates for this Gatherable. States will be displayed in order from 1 - 32 as gather interactions happen."
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
        Id: 10037677623539752547
        Name: "Colliders"
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
        ParentId: 12005850554878180147
        ChildIds: 11231568596642371504
        ChildIds: 12176853668739535881
        ChildIds: 8014504581609301450
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
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
        Id: 11231568596642371504
        Name: "Ivy 04"
        Transform {
          Location {
            X: -6.82421875
            Y: 89.140686
            Z: -13.096283
          }
          Rotation {
            Pitch: 180
            Yaw: 90
            Roll: 90
          }
          Scale {
            X: 2.5
            Y: 3.75000024
            Z: 1
          }
        }
        ParentId: 10037677623539752547
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
            Id: 16825643228001246048
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
        Id: 12176853668739535881
        Name: "Ivy 02"
        Transform {
          Location {
            X: -6.82421875
            Y: -40.0931396
            Z: 44.4998779
          }
          Rotation {
            Pitch: 162.857544
            Yaw: 90
            Roll: 90
          }
          Scale {
            X: 3.62954879
            Y: 5.47580624
            Z: 0.999994576
          }
        }
        ParentId: 10037677623539752547
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
            Id: 16825643228001246048
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
        Id: 8014504581609301450
        Name: "Ivy 03"
        Transform {
          Location {
            X: -5.41394043
            Y: 51.373291
            Z: 173.288727
          }
          Rotation {
            Yaw: 89.9999924
            Roll: 89.9999466
          }
          Scale {
            X: 1
            Y: 1.00000072
            Z: 0.0897779465
          }
        }
        ParentId: 10037677623539752547
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
            Id: 12095835209017042614
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
        Id: 584874156374195825
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
        ParentId: 12005850554878180147
        ChildIds: 11883374845161804965
        ChildIds: 17674494905225923343
        ChildIds: 17054821968546254333
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
        Id: 11883374845161804965
        Name: "Ivy 04"
        Transform {
          Location {
            X: -6.82421875
            Y: 87.5517578
            Z: -33.0965271
          }
          Rotation {
            Yaw: 90.0000076
            Roll: 89.9999466
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 584874156374195825
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
            Id: 9241339813623090261
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
        Id: 17674494905225923343
        Name: "Ivy 02"
        Transform {
          Location {
            X: -6.82421875
            Y: -20.7338867
            Z: 20.2125854
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9999847
            Roll: 89.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 584874156374195825
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
            Id: 4621329596024896350
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
        Id: 17054821968546254333
        Name: "Ivy 03"
        Transform {
          Location {
            X: -6.82421875
            Y: 51.373291
            Z: 173.288727
          }
          Rotation {
            Yaw: 89.9999924
            Roll: 89.9999466
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 584874156374195825
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
            Id: 15977747936357021178
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
      Id: 901541979513849367
      Name: "Bush 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bush_generic_001"
      }
    }
    Assets {
      Id: 13800436588944964225
      Name: "Bush 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bush_generic_002"
      }
    }
    Assets {
      Id: 12997470107562757952
      Name: "Bush Leafy Tall 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_foliage_gen_leafy_bush_001"
      }
    }
    Assets {
      Id: 84254442598276906
      Name: "Bush Leafy Low 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_foliage_gen_leafy_bush_002"
      }
    }
    Assets {
      Id: 4857880132214070829
      Name: "Cube - Arched"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_arched_001"
      }
    }
    Assets {
      Id: 5351428073291024820
      Name: "Emissive Glow Opaque"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_opaque_emissive"
      }
    }
    Assets {
      Id: 14146941956844593476
      Name: "Stone Arch (doorway) 001"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_stone_doorway_001"
      }
    }
    Assets {
      Id: 14789907036896094035
      Name: "Terrain - Moss"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_rock-moss_001_wa"
      }
    }
    Assets {
      Id: 16825643228001246048
      Name: "Gem - Pear Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_pear_polished_001"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 9241339813623090261
      Name: "Ivy 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ivy_generic_004"
      }
    }
    Assets {
      Id: 4621329596024896350
      Name: "Ivy 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ivy_generic_002"
      }
    }
    Assets {
      Id: 15977747936357021178
      Name: "Ivy 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ivy_generic_003"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 124
  VirtualFolderPath: "Gatherables"
}
