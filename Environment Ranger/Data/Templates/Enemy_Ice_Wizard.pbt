Assets {
  Id: 2758621404721179988
  Name: "Enemy_Ice_Wizard"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12555114022526006492
      Objects {
        Id: 12555114022526006492
        Name: "Enemy_Ice_Wizard"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9552928976720207289
        ChildIds: 15258255637776816989
        ChildIds: 9698445035616721956
        ChildIds: 11860041625734473373
        UnregisteredParameters {
          Overrides {
            Name: "cs:HealthFraction"
            Float: 1
          }
          Overrides {
            Name: "cs:CurrentTask"
            String: ""
          }
          Overrides {
            Name: "cs:TargetID"
            String: ""
          }
          Overrides {
            Name: "cs:Name"
            String: "Highrock Wizard"
          }
          Overrides {
            Name: "cs:Level"
            Int: 3
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 120
          }
          Overrides {
            Name: "cs:MoveSpeed"
            Float: 800
          }
          Overrides {
            Name: "cs:EngageRange"
            Float: 1400
          }
          Overrides {
            Name: "cs:ImmuneToStun"
            Bool: false
          }
          Overrides {
            Name: "cs:CapsuleHeight"
            Float: 210
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 100
          }
          Overrides {
            Name: "cs:Experience"
            Float: 17
          }
          Overrides {
            Name: "cs:Task1"
            String: "wizard_ice_blast"
          }
          Overrides {
            Name: "cs:Task2"
            String: "wizard_frost_bomb"
          }
          Overrides {
            Name: "cs:Task3"
            String: "wizard_blizzard"
          }
          Overrides {
            Name: "cs:DropKey1"
            String: "HRCommonTrash"
          }
          Overrides {
            Name: "cs:DropChance1"
            Float: 0.16
          }
          Overrides {
            Name: "cs:DropKey2"
            String: "HRUncommonTrash"
          }
          Overrides {
            Name: "cs:DropChance2"
            Float: 0.16
          }
          Overrides {
            Name: "cs:DropKey3"
            String: "HREpicTrash"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0.0016
          }
          Overrides {
            Name: "cs:DropMinDifficulty3"
            Int: 3
          }
          Overrides {
            Name: "cs:DropKey4"
            String: "Shards"
          }
          Overrides {
            Name: "cs:DropChance4"
            Float: 0.16
          }
          Overrides {
            Name: "cs:MovementEffectTemplate"
            AssetReference {
              Id: 10106175966705151247
            }
          }
          Overrides {
            Name: "cs:DeathEffectTemplate"
            AssetReference {
              Id: 3546493444851876681
            }
          }
          Overrides {
            Name: "cs:FollowRoot"
            ObjectReference {
              SubObjectId: 9698445035616721956
            }
          }
          Overrides {
            Name: "cs:HealthFraction:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CurrentTask:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:TargetID:isrep"
            Bool: true
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 9552928976720207289
        Name: "AttachCostumeClient"
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
        ParentId: 12555114022526006492
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 15258255637776816989
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 11860041625734473373
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
            Id: 9186426042295094807
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15258255637776816989
        Name: "Costume"
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
        ParentId: 12555114022526006492
        ChildIds: 2991977800690752903
        ChildIds: 4393995068763251594
        ChildIds: 10188745322698245505
        ChildIds: 1483590107288269887
        ChildIds: 1375057407072598296
        ChildIds: 4956171960695869150
        ChildIds: 7167998010700351151
        ChildIds: 14543666379776903625
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 2991977800690752903
        Name: "left_prop"
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
        ParentId: 15258255637776816989
        ChildIds: 16405737494435235163
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
        Id: 16405737494435235163
        Name: "Torch Fire VFX"
        Transform {
          Location {
            Z: -15
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2991977800690752903
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.416556299
              B: 0.74
              A: 1
            }
          }
          Overrides {
            Name: "bp:Initial Velocity"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Velocity Max"
            Float: 2
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 0.3
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.7
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
        Blueprint {
          BlueprintAsset {
            Id: 4603537691901304316
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 4393995068763251594
        Name: "right_prop"
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
        ParentId: 15258255637776816989
        ChildIds: 10460053753790772364
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
        Id: 10460053753790772364
        Name: "Torch Fire VFX"
        Transform {
          Location {
            Z: -15
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4393995068763251594
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.416556299
              B: 0.74
              A: 1
            }
          }
          Overrides {
            Name: "bp:Initial Velocity"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Velocity Max"
            Float: 2
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 0.3
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.7
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
        Blueprint {
          BlueprintAsset {
            Id: 4603537691901304316
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 10188745322698245505
        Name: "pelvis"
        Transform {
          Location {
            X: -1.82582855
            Y: -0.000304698944
            Z: 121.379761
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 2.73207552e-05
            Roll: 9.77066171e-12
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15258255637776816989
        ChildIds: 7330614866414623030
        ChildIds: 271425038317420149
        ChildIds: 10574656169354248102
        ChildIds: 13678756305486572762
        ChildIds: 5255052258467108773
        ChildIds: 12435939789339157017
        ChildIds: 13618340720883286210
        ChildIds: 4485931262739090548
        ChildIds: 9193660014357085505
        ChildIds: 17619312674159659173
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
        Id: 7330614866414623030
        Name: "Capsule"
        Transform {
          Location {
            X: -6.34195662
            Y: 0.510239542
            Z: -118.800331
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -90.0000229
            Roll: 5.74329424
          }
          Scale {
            X: 0.925686
            Y: 0.636968
            Z: 2.14865
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.10879266
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.69664586
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2327009830056851580
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 271425038317420149
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.34892774
            Y: 3.0150106
            Z: -22.2185917
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -5.50726108e-05
            Roll: 26.8657379
          }
          Scale {
            X: 0.437991083
            Y: 0.684039772
            Z: 0.895243645
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 10574656169354248102
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.34891844
            Y: 3.0150106
            Z: -35.1563339
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -5.32626e-05
            Roll: 33.7637062
          }
          Scale {
            X: 0.525406897
            Y: 0.820562661
            Z: 1.07391953
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 13678756305486572762
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.34891057
            Y: 3.0150106
            Z: -46.2488632
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -6.65426e-05
            Roll: 39.2125244
          }
          Scale {
            X: 0.545044184
            Y: 0.851231694
            Z: 1.11405814
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 5255052258467108773
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.34892774
            Y: 3.0150106
            Z: -22.2185917
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -5.19267305e-05
            Roll: 42.1127052
          }
          Scale {
            X: 0.437991083
            Y: 0.726192951
            Z: 0.895243645
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 12435939789339157017
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.3489362
            Y: 3.01500964
            Z: -8.02987
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -6.10351562e-05
            Roll: 26.8656368
          }
          Scale {
            X: 0.383346856
            Y: 0.547589839
            Z: 0.783568919
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 13618340720883286210
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.910898149
            Y: 3.60339546
            Z: -70.9441757
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -4.86777462e-05
            Roll: 30.5038013
          }
          Scale {
            X: 0.573607802
            Y: 0.902578831
            Z: 1.01623
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 4485931262739090548
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.99296236
            Y: 0.268406272
            Z: -91.5472
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -6.85676423e-05
            Roll: 14.1944742
          }
          Scale {
            X: 0.677983463
            Y: 1.03861511
            Z: 1.35929632
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 9193660014357085505
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.79896617
            Y: 3.01443648
            Z: -88.8216171
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -6.84578408e-05
            Roll: 14.7371979
          }
          Scale {
            X: 0.604291737
            Y: 0.909055591
            Z: 1.02352238
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 17619312674159659173
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -3.30328727
            Y: 2.25367165
            Z: -109.384117
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -5.12473925e-05
            Roll: 5.0048604
          }
          Scale {
            X: 0.730896652
            Y: 1.1650368
            Z: 1.35929632
          }
        }
        ParentId: 10188745322698245505
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 1483590107288269887
        Name: "head"
        Transform {
          Location {
            X: -3.09184289
            Y: -0.981865406
            Z: 187.097046
          }
          Rotation {
            Pitch: -9.93496704
            Yaw: 5.83062792e-05
            Roll: -3.5433834e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15258255637776816989
        ChildIds: 17377526577380449215
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
        Id: 17377526577380449215
        Name: "sample_costume_head"
        Transform {
          Location {
            X: 1.94732678
            Y: 0.567166865
            Z: 1.32444775
          }
          Rotation {
            Pitch: 0.937907875
            Yaw: -84.6370239
            Roll: -9.89129639
          }
          Scale {
            X: 0.938852429
            Y: 0.938852429
            Z: 0.938852429
          }
        }
        ParentId: 1483590107288269887
        ChildIds: 11792451216242990406
        ChildIds: 3363072716621251630
        ChildIds: 15384294696512227180
        ChildIds: 8080775894585276009
        ChildIds: 18089311507296345953
        ChildIds: 6518965584050922358
        ChildIds: 763367570650761363
        ChildIds: 5373616750390418756
        ChildIds: 18241908713753071577
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11792451216242990406
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: 0.434728473
            Y: 3.55522895
            Z: -1.71875203
          }
          Rotation {
            Pitch: 63.0272064
            Yaw: 89.9999237
            Roll: -2.63529528e-05
          }
          Scale {
            X: 0.445482194
            Y: 0.243029311
            Z: 0.357110888
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.639401793
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.639401793
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14875491995579066764
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 3363072716621251630
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: 0.435400367
            Y: -11.4532804
            Z: 0.948248148
          }
          Rotation {
            Pitch: 38.5496712
            Yaw: 89.9999695
            Roll: -3.05175781e-05
          }
          Scale {
            X: 0.464173108
            Y: 0.194646865
            Z: 0.35533163
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.639401793
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.639401793
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14875491995579066764
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 15384294696512227180
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: 0.435325146
            Y: -2.82932639
            Z: -10.6992168
          }
          Rotation {
            Pitch: 74.8659058
            Yaw: -89.9998932
            Roll: -179.999908
          }
          Scale {
            X: 0.445482343
            Y: 0.249046355
            Z: 0.479210526
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.639401793
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.639401793
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14875491995579066764
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 8080775894585276009
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: 0.435955286
            Y: -12.9245653
            Z: -13.6672297
          }
          Rotation {
            Pitch: 51.2500763
            Yaw: -89.9999466
            Roll: -179.999939
          }
          Scale {
            X: 0.445482433
            Y: 0.208756387
            Z: 0.276669592
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.639401793
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.639401793
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14875491995579066764
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 18089311507296345953
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 0.00372356176
            Y: -6.41056776
            Z: -0.267575055
          }
          Rotation {
            Pitch: -4.31988955
            Yaw: 171.593384
            Roll: -100.217735
          }
          Scale {
            X: 0.298743218
            Y: 0.484172851
            Z: 1.15382254
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 6518965584050922358
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -1.3202424
            Y: -14.4548435
            Z: 1.47998834
          }
          Rotation {
            Pitch: -4.3197937
            Yaw: 171.592667
            Roll: -72.2167358
          }
          Scale {
            X: 0.273079813
            Y: 0.442580163
            Z: 1.05470383
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 763367570650761363
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.41830635
            Y: -22.3875656
            Z: 0.512463331
          }
          Rotation {
            Pitch: -4.3197937
            Yaw: 171.592407
            Roll: -44.6582336
          }
          Scale {
            X: 0.273079753
            Y: 0.359692961
            Z: 1.05470133
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 5373616750390418756
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.37410617
            Y: -23.4159431
            Z: -2.04686236
          }
          Rotation {
            Pitch: -4.3197937
            Yaw: 171.591812
            Roll: 7.25964642
          }
          Scale {
            X: 0.273075
            Y: 0.319876015
            Z: 1.05470335
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 18241908713753071577
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.1821692
            Y: -19.0615807
            Z: -9.34325218
          }
          Rotation {
            Pitch: -4.31976318
            Yaw: 171.590851
            Roll: 47.5041885
          }
          Scale {
            X: 0.273075
            Y: 0.319876015
            Z: 1.05470335
          }
        }
        ParentId: 17377526577380449215
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 1375057407072598296
        Name: "neck"
        Transform {
          Location {
            X: -4.71561718
            Y: 0.0119509697
            Z: 177.82605
          }
          Rotation {
            Pitch: -9.93497372
            Yaw: 5.83438086e-05
            Roll: -7.86100259e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15258255637776816989
        ChildIds: 9106176508337347134
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
        Id: 9106176508337347134
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 3.20636415
            Y: -1.22716117
            Z: -4.4678278
          }
          Rotation {
            Pitch: 9.9349947
            Yaw: -0.000335693359
            Roll: 12.8725023
          }
          Scale {
            X: 0.211211681
            Y: 0.377365023
            Z: 0.696663558
          }
        }
        ParentId: 1375057407072598296
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 4956171960695869150
        Name: "left_shoulder"
        Transform {
          Location {
            X: -6.81018543
            Y: -16.4157
            Z: 170.268677
          }
          Rotation {
            Pitch: -1.33299327
            Yaw: -0.856994033
            Roll: 30.5090122
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15258255637776816989
        ChildIds: 9657136064440014207
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
        Id: 9657136064440014207
        Name: "Capsule"
        Transform {
          Location {
            X: 1.92131066
            Y: -0.0531466
            Z: -30.7438278
          }
          Rotation {
            Pitch: 0.679849684
            Yaw: 177.718979
            Roll: 0.266530842
          }
          Scale {
            X: 0.257875234
            Y: 0.234097302
            Z: 0.560112238
          }
        }
        ParentId: 4956171960695869150
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.301828831
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2447235726886938258
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 7167998010700351151
        Name: "right_shoulder"
        Transform {
          Location {
            X: -6.81057358
            Y: 16.415287
            Z: 170.268066
          }
          Rotation {
            Pitch: -1.33299327
            Yaw: 0.857005775
            Roll: -30.5090122
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15258255637776816989
        ChildIds: 17353527949921652552
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
        Id: 17353527949921652552
        Name: "Capsule"
        Transform {
          Location {
            X: 2.21070623
            Y: -0.319959402
            Z: -34.2560921
          }
          Rotation {
            Pitch: 4.74523973
            Yaw: 2.67768526
            Roll: 7.2078352
          }
          Scale {
            X: 0.170992926
            Y: 0.199499339
            Z: 0.571399
          }
        }
        ParentId: 7167998010700351151
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.325358391
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2447235726886938258
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 14543666379776903625
        Name: "upper_spine"
        Transform {
          Location {
            X: -1.82582855
            Y: -0.000304698944
            Z: 164.281982
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 2.73207552e-05
            Roll: 9.77066171e-12
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15258255637776816989
        ChildIds: 18284942404219193329
        ChildIds: 13392606657393328438
        ChildIds: 7584262795174625122
        ChildIds: 14054964575353075054
        ChildIds: 8524958099507384983
        ChildIds: 13423400420700878435
        ChildIds: 11847366946443148101
        ChildIds: 1955891084354313264
        ChildIds: 11891501669918200275
        ChildIds: 11408323870781051069
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
        Id: 18284942404219193329
        Name: "Capsule"
        Transform {
          Location {
            X: 0.842660427
            Y: 0.510190248
            Z: 0.554519057
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -89.9999695
            Roll: -177.619553
          }
          Scale {
            X: 0.399433941
            Y: 0.273616135
            Z: 1.80297828
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.978396118
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.23423743
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2327009830056851580
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 13392606657393328438
        Name: "Capsule"
        Transform {
          Location {
            X: -1.09720969
            Y: 0.510235
            Z: -69.738739
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -90
            Roll: 5.74314499
          }
          Scale {
            X: 0.50167805
            Y: 0.391343474
            Z: 0.830417097
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.65560323
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.978396118
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2327009830056851580
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 7584262795174625122
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -4.55723572
            Y: -0.0729800686
            Z: -2.37289095
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -9.15527344e-05
            Roll: 26.5003738
          }
          Scale {
            X: 0.411218941
            Y: 0.578071356
            Z: 0.87686646
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 14054964575353075054
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.91717458
            Y: 0.867151082
            Z: -13.2508221
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -6.10351562e-05
            Roll: 39.2123413
          }
          Scale {
            X: 0.414981037
            Y: 0.535206079
            Z: 0.700452447
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 8524958099507384983
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.822244644
            Y: 1.33753586
            Z: -28.7779236
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -0.000152587891
            Roll: 32.0044327
          }
          Scale {
            X: 0.323971182
            Y: 0.468093574
            Z: 0.665497839
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 13423400420700878435
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.50369823
            Y: 1.44700754
            Z: 2.91104174
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -0.000335693359
            Roll: -29.2367249
          }
          Scale {
            X: 0.255369544
            Y: 0.48148942
            Z: 0.700433731
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 11847366946443148101
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.39863041
            Y: 1.00743461
            Z: -14.8645935
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -6.91507666e-05
            Roll: 23.4467773
          }
          Scale {
            X: 0.294680655
            Y: 0.454024673
            Z: 0.700446725
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 1955891084354313264
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -4.9320693
            Y: 4.41528606
            Z: -1.41537118
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -6.10351562e-05
            Roll: -17.0375671
          }
          Scale {
            X: 0.403284401
            Y: 0.552826941
            Z: 0.889926553
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 11891501669918200275
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -4.93290234
            Y: 0.748486102
            Z: -4.89754915
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -6.10351562e-05
            Roll: -36.3242493
          }
          Scale {
            X: 0.298095942
            Y: 0.608766496
            Z: 0.700446606
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 11408323870781051069
        Name: "Ring"
        Transform {
          Location {
            X: 0.227026522
            Y: 2.95999908
            Z: -35.725235
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -3.41509331e-05
            Roll: 23.5070038
          }
          Scale {
            X: 0.322746515
            Y: 0.422948182
            Z: 0.422948182
          }
        }
        ParentId: 14543666379776903625
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1345394029719914923
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 9698445035616721956
        Name: "FollowRoot"
        Transform {
          Location {
            Z: 105
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12555114022526006492
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 11860041625734473373
        Name: "AnimatedMesh"
        Transform {
          Location {
            Z: 105
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12555114022526006492
        UnregisteredParameters {
          Overrides {
            Name: "cs:AsleepStance"
            String: "2hand_staff_idle_relaxed"
          }
          Overrides {
            Name: "cs:IdleStance"
            String: "2hand_staff_idle_ready"
          }
          Overrides {
            Name: "cs:RunStance"
            String: "2hand_staff_run_forward"
          }
          Overrides {
            Name: "cs:StareStance"
            String: "2hand_staff_idle_ready"
          }
          Overrides {
            Name: "cs:DeathAnimation"
            String: "unarmed_death"
          }
          Overrides {
            Name: "cs:StunnedAnimation"
            String: "unarmed_stun_dizzy"
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 9280487912294317099
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 17885442762501896184
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3319830933952232353
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 1848963245568864173
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 18039984299850060191
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          AnimatedMesh {
            AnimationStance: "2hand_staff"
            AnimationStancePlaybackRate: 1
            AnimationStanceShouldLoop: true
            AnimationPlaybackRateMultiplier: 1
            PlayOnStartAnimation {
              PlaybackRate: 0.134948507
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
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
      Id: 4603537691901304316
      Name: "Torch Fire VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_torch_fire"
      }
    }
    Assets {
      Id: 2327009830056851580
      Name: "Cone - Truncated Hollow Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_003"
      }
    }
    Assets {
      Id: 16372496464315477095
      Name: "Ring - Beveled Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_003"
      }
    }
    Assets {
      Id: 14875491995579066764
      Name: "Sphere - Half Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_002"
      }
    }
    Assets {
      Id: 2447235726886938258
      Name: "Cone - Truncated Hollow Wide Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_006"
      }
    }
    Assets {
      Id: 1345394029719914923
      Name: "Ring"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_004"
      }
    }
    Assets {
      Id: 18039984299850060191
      Name: "Fantasy Human Guy 1"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_human_guy_fantasy_001_ref"
      }
    }
    Assets {
      Id: 3319830933952232353
      Name: "Ice Opaque"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_ice_opaque"
      }
    }
    Assets {
      Id: 1848963245568864173
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
  SerializationVersion: 118
}
