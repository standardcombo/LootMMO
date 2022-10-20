Assets {
  Id: 2627779331833884353
  Name: "Enemy_Goblin"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7893902007220614420
      Objects {
        Id: 7893902007220614420
        Name: "Enemy_Goblin"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11013559297830452270
        ChildIds: 11564833431938986394
        ChildIds: 10308457038102569865
        ChildIds: 11236548677140355180
        ChildIds: 17519643696600139572
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
            String: "Goblin"
          }
          Overrides {
            Name: "cs:Level"
            Int: 1
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 275
          }
          Overrides {
            Name: "cs:MoveSpeed"
            Float: 800
          }
          Overrides {
            Name: "cs:EngageRange"
            Float: 1200
          }
          Overrides {
            Name: "cs:ImmuneToStun"
            Bool: false
          }
          Overrides {
            Name: "cs:CapsuleHeight"
            Float: 147
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 70
          }
          Overrides {
            Name: "cs:Experience"
            Float: 20
          }
          Overrides {
            Name: "cs:Task1"
            String: "goblin_melee"
          }
          Overrides {
            Name: "cs:Task2"
            String: "goblin_throw_cleaver"
          }
          Overrides {
            Name: "cs:Task3"
            String: "goblin_cleave"
          }
          Overrides {
            Name: "cs:DropKey1"
            String: "HRCommonTrash"
          }
          Overrides {
            Name: "cs:DropChance1"
            Float: 0.12
          }
          Overrides {
            Name: "cs:DropKey2"
            String: "HRUncommonTrash"
          }
          Overrides {
            Name: "cs:DropChance2"
            Float: 0.12
          }
          Overrides {
            Name: "cs:DropKey3"
            String: "D2EpicTrash"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0.0012
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
            Float: 0.08
          }
          Overrides {
            Name: "cs:MovementEffectTemplate"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:DeathEffectTemplate"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:FollowRoot"
            ObjectReference {
              SubObjectId: 11236548677140355180
            }
          }
          Overrides {
            Name: "cs:TargetID:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CurrentTask:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:HealthFraction:isrep"
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
        Id: 11564833431938986394
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
        ParentId: 7893902007220614420
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 10308457038102569865
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 17519643696600139572
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
        Id: 10308457038102569865
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
        ParentId: 7893902007220614420
        ChildIds: 11067975475334047433
        ChildIds: 17545291588635905197
        ChildIds: 9513890988214392990
        ChildIds: 11851028863235240773
        ChildIds: 17762585342737207934
        ChildIds: 16771387716794801194
        ChildIds: 4851722174261170047
        ChildIds: 14480392502710584085
        ChildIds: 13907639122078915783
        ChildIds: 1150179954918916482
        ChildIds: 10340632338620149337
        ChildIds: 10015895039312689547
        ChildIds: 7842321383696709479
        ChildIds: 1264400434555857364
        ChildIds: 8704881575439580988
        ChildIds: 10130877692007089305
        ChildIds: 9112228563359341284
        ChildIds: 13414720185053815762
        ChildIds: 17011555173446533652
        ChildIds: 7609028320685270873
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
        Id: 11067975475334047433
        Name: "right_ankle"
        Transform {
          Location {
            X: -4.09307861
            Y: 10.8909912
            Z: 5.31954956
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 6939158217983045776
        ChildIds: 1785205830155430987
        ChildIds: 16415579633104918070
        ChildIds: 11745193798669507467
        ChildIds: 8949637619437061542
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 6939158217983045776
        Name: "Capsule"
        Transform {
          Location {
            X: 14.4791946
            Y: -3.68512821
            Z: -7.671875
          }
          Rotation {
            Pitch: -79.5962677
            Yaw: -153.516525
            Roll: 170.220673
          }
          Scale {
            X: 0.0351918936
            Y: 0.0970289931
            Z: 0.0559086539
          }
        }
        ParentId: 11067975475334047433
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1785205830155430987
        Name: "Capsule"
        Transform {
          Location {
            X: 15.7786331
            Y: -6.68526745
            Z: -7.671875
          }
          Rotation {
            Pitch: -83.7494583
            Yaw: -179.999893
            Roll: -179.999893
          }
          Scale {
            X: 0.04295405
            Y: 0.0618924126
            Z: 0.0526996776
          }
        }
        ParentId: 11067975475334047433
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16415579633104918070
        Name: "Capsule"
        Transform {
          Location {
            X: -0.88945657
            Y: -4.68505812
            Z: -4.99999952
          }
          Rotation {
            Pitch: -50.2707443
          }
          Scale {
            X: 0.100085229
            Y: 0.0927530304
            Z: 0.0743013248
          }
        }
        ParentId: 11067975475334047433
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11745193798669507467
        Name: "Capsule"
        Transform {
          Location {
            X: 5.75622511
            Y: -4.68505812
            Z: -6.41064453
          }
          Rotation {
            Pitch: 0.705483377
            Yaw: 178.961609
            Roll: 175.095901
          }
          Scale {
            X: 0.284508854
            Y: 0.253714859
            Z: 0.126125053
          }
        }
        ParentId: 11067975475334047433
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8949637619437061542
        Name: "Capsule"
        Transform {
          Location {
            Y: -4.68505812
            Z: 2.39599633
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 0.072359629
            Y: 0.107035048
            Z: 0.0462313145
          }
        }
        ParentId: 11067975475334047433
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17545291588635905197
        Name: "right_prop"
        Transform {
          Location {
            X: 1.27459717
            Y: 31.3526611
            Z: 75.2548828
          }
          Rotation {
            Pitch: -74.426178
            Yaw: 133.845886
            Roll: -133.133667
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 16292819518919207841
        ChildIds: 10777922206563031725
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 16292819518919207841
        Name: "Rock Flat 01"
        Transform {
          Location {
            X: 0.409625918
            Y: 6.77717352
            Z: 5.12928438
          }
          Rotation {
            Pitch: -71.5491638
            Yaw: 8.05108166
            Roll: -100.686363
          }
          Scale {
            X: 0.0515261628
            Y: 0.0402623266
            Z: 0.0381835625
          }
        }
        ParentId: 17545291588635905197
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5426935030377432702
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
            Id: 17976629509544642908
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10777922206563031725
        Name: "Blade"
        Transform {
          Location {
            X: 1.88937044
            Y: 7.15352583
            Z: 50.3489
          }
          Rotation {
            Pitch: -0.216400877
            Yaw: -93.1292496
            Roll: 71.8803
          }
          Scale {
            X: 0.307011038
            Y: 0.307011038
            Z: 0.307011038
          }
        }
        ParentId: 17545291588635905197
        ChildIds: 17433438993507257458
        ChildIds: 14045464257745207575
        ChildIds: 6341708683635243604
        ChildIds: 4965369256646328046
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
        Id: 17433438993507257458
        Name: "Parallelepiped - Horizontal "
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 0.04
            Y: 1.4026264
            Z: 0.6
          }
        }
        ParentId: 10777922206563031725
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18434079688766523124
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.800657272
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
            Id: 13981696299924831856
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14045464257745207575
        Name: "Prism - 3-Sided"
        Transform {
          Location {
            Y: -70
            Z: 8.5
          }
          Rotation {
            Roll: -90.0000534
          }
          Scale {
            X: 0.04
            Y: 0.3
            Z: 1.4
          }
        }
        ParentId: 10777922206563031725
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18434079688766523124
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.800657272
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
            Id: 661936150573919216
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6341708683635243604
        Name: "Parallelepiped - Horizontal "
        Transform {
          Location {
            Y: 75.1725082
            Z: -60
          }
          Rotation {
            Roll: -6.10351562e-05
          }
          Scale {
            X: 0.035
            Y: 0.109554246
            Z: 0.153135777
          }
        }
        ParentId: 10777922206563031725
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18434079688766523124
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.800657272
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
            Id: 13981696299924831856
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4965369256646328046
        Name: "Decal Bullet Damage Metal"
        Transform {
          Location {
            Y: -50
            Z: -40
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9999542
            Roll: 89.9999542
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.1
          }
        }
        ParentId: 10777922206563031725
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 3
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
            Id: 7230573006973786088
          }
          TeamSettings {
          }
          DecalBP {
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
        Id: 9513890988214392990
        Name: "head"
        Transform {
          Location {
            X: -7.19512939
            Y: -5.97717285
            Z: 131.736252
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 17954124525796064445
        ChildIds: 7041448440062125240
        ChildIds: 13611235332934675568
        ChildIds: 17462690665310183245
        ChildIds: 14735701053779860723
        ChildIds: 10948706353984629727
        ChildIds: 11689366269881886617
        ChildIds: 13204797464881416908
        ChildIds: 5316482038941684695
        ChildIds: 9834089689810705273
        ChildIds: 3822829206020848102
        ChildIds: 17365235812606811376
        ChildIds: 13121904549213768553
        ChildIds: 17963255223149708533
        ChildIds: 9926195040840706046
        ChildIds: 7549432896971346170
        ChildIds: 8084327560858332985
        ChildIds: 17127814656650043768
        ChildIds: 9677626394215959613
        ChildIds: 17727325870108787385
        ChildIds: 15695713752734590234
        ChildIds: 15791127744197799229
        ChildIds: 3739708706547580375
        ChildIds: 3060095946279607161
        ChildIds: 7119252219748864933
        ChildIds: 13365896937492283502
        ChildIds: 7065082180035551583
        ChildIds: 8650320205643455682
        ChildIds: 17626289902351701852
        ChildIds: 15688616112922870640
        ChildIds: 17635019347688133273
        ChildIds: 12822114955159695046
        ChildIds: 9914724815144096989
        ChildIds: 13130731005759324887
        ChildIds: 16265098163744313721
        ChildIds: 594084612158991824
        ChildIds: 5589057064052825162
        ChildIds: 16721164907223670471
        ChildIds: 166334617498933577
        ChildIds: 11642298408295424887
        ChildIds: 10490081445701389789
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 17954124525796064445
        Name: "head_Capsule"
        Transform {
          Location {
            X: 18.1575222
            Y: 0.208042681
            Z: 3.73389077
          }
          Rotation {
            Pitch: 0.03225898
            Yaw: -90.0259552
            Roll: -41.118557
          }
          Scale {
            X: 0.0409140438
            Y: 0.0899462476
            Z: 0.0299707986
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.517158449
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7041448440062125240
        Name: "head_Capsule"
        Transform {
          Location {
            X: 4.46655273
            Y: -0.000122070312
            Z: -0.973144531
          }
          Rotation {
            Pitch: -23.2122746
            Yaw: -0.000443312514
            Roll: -179.999893
          }
          Scale {
            X: 0.183933854
            Y: 0.268943489
            Z: -0.0961181372
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13611235332934675568
        Name: "head_Capsule"
        Transform {
          Location {
            X: 8.95908833
            Y: 0.201590389
            Z: 8.12353897
          }
          Rotation {
            Pitch: -0.0261049811
            Yaw: -89.9668884
            Roll: 103.921829
          }
          Scale {
            X: 0.0395318754
            Y: 0.083219707
            Z: 0.0648960695
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17462690665310183245
        Name: "head_Capsule"
        Transform {
          Location {
            X: 7.18514538
            Y: -0.134974882
            Z: 11.3102493
          }
          Rotation {
            Pitch: -0.000245886797
            Yaw: -89.999382
            Roll: -161.716583
          }
          Scale {
            X: 0.172076955
            Y: 0.278788686
            Z: 0.0864175856
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.68912065
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.179999992
              G: 0.5625
              B: 0.228129119
              A: 1
            }
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14735701053779860723
        Name: "head_Capsule"
        Transform {
          Location {
            X: 11.1070023
            Y: 0.00488281203
            Z: -5.75488472
          }
          Rotation {
            Pitch: -0.000409811328
            Yaw: -89.9993591
            Roll: 25.1016712
          }
          Scale {
            X: 0.0688268095
            Y: 0.0863321498
            Z: 0.0563119091
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10948706353984629727
        Name: "Heart - Polished"
        Transform {
          Location {
            X: 5.93340158
            Y: -5.49577951
            Z: 2.08642125
          }
          Rotation {
            Pitch: 62.4557915
            Yaw: -132.317749
            Roll: 18.909996
          }
          Scale {
            X: 0.246101841
            Y: 0.103775136
            Z: 0.0954480767
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.44171405
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11689366269881886617
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -0.654819965
            Y: 0.00418526772
            Z: 19.2332878
          }
          Rotation {
            Pitch: 6.83018879e-05
            Yaw: -89.9996796
            Roll: 161.306854
          }
          Scale {
            X: 0.185153157
            Y: 0.222579911
            Z: 0.144910336
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13204797464881416908
        Name: "Heart - Polished"
        Transform {
          Location {
            X: 5.93340158
            Y: 5.50415
            Z: 2.08642125
          }
          Rotation {
            Pitch: 62.4559708
            Yaw: 132.318863
            Roll: -18.9097824
          }
          Scale {
            X: 0.246101841
            Y: 0.103775136
            Z: 0.0954480767
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.56494689
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5316482038941684695
        Name: "head_Capsule"
        Transform {
          Location {
            X: 12.3393898
            Y: 0.00488281203
            Z: -4.83496523
          }
          Rotation {
            Pitch: -0.000512264145
            Yaw: -89.9995117
            Roll: 101.010658
          }
          Scale {
            X: 0.05324037
            Y: 0.0561531335
            Z: 0.0440915413
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9834089689810705273
        Name: "head_Capsule"
        Transform {
          Location {
            X: 7.62669086
            Y: 0.0040108813
            Z: 4.36377382
          }
          Rotation {
            Pitch: 0.000362000021
            Yaw: -89.9993896
            Roll: 83.0019455
          }
          Scale {
            X: 0.186687469
            Y: 0.213235945
            Z: 0.161481678
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3822829206020848102
        Name: "head_Capsule"
        Transform {
          Location {
            X: 1.35105669
            Y: 11.9431839
            Z: 5.87121105
          }
          Rotation {
            Pitch: -69.4436874
            Yaw: 84.7900696
            Roll: -138.659943
          }
          Scale {
            X: 0.0882779583
            Y: 0.0336641818
            Z: 0.305212945
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.0853126
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17365235812606811376
        Name: "head_Capsule"
        Transform {
          Location {
            X: 1.43092561
            Y: -11.5544777
            Z: 6.18541145
          }
          Rotation {
            Pitch: -70.4636383
            Yaw: -91.5333786
            Roll: 151.235535
          }
          Scale {
            X: 0.0882779583
            Y: 0.0336641818
            Z: 0.305212945
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.0853126
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13121904549213768553
        Name: "head_Capsule"
        Transform {
          Location {
            X: 13.9180202
            Z: 2.07323337
          }
          Rotation {
            Pitch: 0.0370469429
            Yaw: -90.0188446
            Roll: -9.63943481
          }
          Scale {
            X: 0.0654627
            Y: 0.0799837112
            Z: 0.0269862674
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.357545823
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.179999992
              G: 0.5625
              B: 0.228129119
              A: 1
            }
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17963255223149708533
        Name: "head_Capsule"
        Transform {
          Location {
            X: 6.35341072
            Y: -0.708530903
            Z: 11.1685829
          }
          Rotation {
            Pitch: 22.9672203
            Yaw: -63.3033524
            Roll: 114.09761
          }
          Scale {
            X: 0.158066928
            Y: 0.11234697
            Z: 0.186604
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9926195040840706046
        Name: "head_Capsule"
        Transform {
          Location {
            X: 12.3027687
            Y: 0.013253347
            Z: 1.10449648
          }
          Rotation {
            Pitch: 0.0393828675
            Yaw: -90.0137711
            Roll: 10.0092258
          }
          Scale {
            X: 0.101716712
            Y: 0.0677165911
            Z: 0.0260142758
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.421281695
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7549432896971346170
        Name: "head_Capsule"
        Transform {
          Location {
            X: 12.5013075
            Y: 0.0141252782
            Z: -1.90723956
          }
          Rotation {
            Pitch: -0.0354281887
            Yaw: -90.0214767
            Roll: -156.744217
          }
          Scale {
            X: 0.0769186
            Y: 0.0522537567
            Z: 0.0211070888
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.179999992
              G: 0.5625
              B: 0.228129119
              A: 1
            }
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8084327560858332985
        Name: "Lens"
        Transform {
          Location {
            X: 10.5277786
            Y: 0.00418526772
            Z: 0.203116268
          }
          Rotation {
            Pitch: 0.00056007551
            Yaw: -90.0007248
            Roll: 58.8682098
          }
          Scale {
            X: 0.0733520091
            Y: 0.0818629414
            Z: 0.0877963752
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3905761152472637901
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
            Id: 11353538719389873434
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17127814656650043768
        Name: "head_Capsule"
        Transform {
          Location {
            X: 9.51485729
            Y: 4.00006962
            Z: 7.92480421
          }
          Rotation {
            Pitch: 9.93498802
            Yaw: -0.000122236772
            Roll: -2.10896033e-05
          }
          Scale {
            X: 0.0486721769
            Y: 0.0486721769
            Z: 0.0486721769
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9276118626370703733
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.754967
              A: 1
            }
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9677626394215959613
        Name: "head_Capsule"
        Transform {
          Location {
            X: 9.51485729
            Y: -4.00006962
            Z: 7.92480421
          }
          Rotation {
            Pitch: 9.93498802
            Yaw: -0.000122236772
            Roll: -2.10896033e-05
          }
          Scale {
            X: 0.0486721769
            Y: 0.0486721769
            Z: 0.0486721769
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9276118626370703733
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.754967
              A: 1
            }
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17727325870108787385
        Name: "head_Capsule"
        Transform {
          Location {
            X: 10.7622414
            Y: 4.24996471
            Z: 8.14355
          }
          Rotation {
            Pitch: 9.93498802
            Yaw: -0.000122236772
            Roll: -2.10896033e-05
          }
          Scale {
            X: 0.0269994754
            Y: 0.0267609265
            Z: 0.0267609265
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9276118626370703733
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 1
            }
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15695713752734590234
        Name: "head_Capsule"
        Transform {
          Location {
            X: 10.7622414
            Y: -4.24996471
            Z: 8.14355
          }
          Rotation {
            Pitch: 9.93498802
            Yaw: -0.000122236772
            Roll: -2.10896033e-05
          }
          Scale {
            X: 0.0269994754
            Y: 0.0267609265
            Z: 0.0267609265
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9276118626370703733
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 1
            }
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15791127744197799229
        Name: "head_Capsule"
        Transform {
          Location {
            X: 8.25762
            Y: -0.041329518
            Z: 6.12060499
          }
          Rotation {
            Pitch: -1.45882583
            Yaw: -92.4019165
            Roll: 77.0971603
          }
          Scale {
            X: 0.158066645
            Y: 0.112346798
            Z: 0.131671548
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.179999992
              G: 0.5625
              B: 0.228129119
              A: 1
            }
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3739708706547580375
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 2.22473121
            Y: 0.00418526772
            Z: 14.3891459
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: -89.9997482
            Roll: 176.781616
          }
          Scale {
            X: 0.183036417
            Y: 0.222580269
            Z: 0.0447382107
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3060095946279607161
        Name: "head_Capsule"
        Transform {
          Location {
            X: 13.8260317
            Y: 0.999930203
            Z: 1.71580708
          }
          Rotation {
            Pitch: -9.17196655
            Yaw: -157.192368
            Roll: 176.165237
          }
          Scale {
            X: 0.0248145405
            Y: 0.0248145405
            Z: 0.0248145405
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10556886957675734021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.556000054
              G: 0.460264951
              B: 0.444800049
              A: 1
            }
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
            Id: 9507970697836095688
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7119252219748864933
        Name: "head_Capsule"
        Transform {
          Location {
            X: 13.8260317
            Y: -0.999930203
            Z: 1.71580708
          }
          Rotation {
            Pitch: -1.57965195
            Yaw: 157.699799
            Roll: -176.212799
          }
          Scale {
            X: 0.0229693502
            Y: 0.0229693502
            Z: 0.0229693502
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10556886957675734021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.556000054
              G: 0.460264951
              B: 0.444800049
              A: 1
            }
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
            Id: 9507970697836095688
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13365896937492283502
        Name: "head_Capsule"
        Transform {
          Location {
            X: 12.8509512
            Y: -2.61980319
            Z: 1.54490876
          }
          Rotation {
            Pitch: -7.00741863
            Yaw: 134.567017
            Roll: 175.810394
          }
          Scale {
            X: 0.0229693502
            Y: 0.0229693502
            Z: 0.0229693502
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10556886957675734021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.556000054
              G: 0.460264951
              B: 0.444800049
              A: 1
            }
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
            Id: 9507970697836095688
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7065082180035551583
        Name: "head_Capsule"
        Transform {
          Location {
            X: 12.8509512
            Y: 2.620152
            Z: 1.54490876
          }
          Rotation {
            Pitch: -7.00742531
            Yaw: -134.567062
            Roll: -175.810242
          }
          Scale {
            X: 0.0229693502
            Y: 0.0229693502
            Z: 0.0229693502
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10556886957675734021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.556000054
              G: 0.460264951
              B: 0.444800049
              A: 1
            }
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
            Id: 9507970697836095688
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8650320205643455682
        Name: "head_Capsule"
        Transform {
          Location {
            X: 14.1911621
            Y: 1
            Z: -2.45996094
          }
          Rotation {
            Pitch: 24.5006657
            Yaw: -159.532562
            Roll: 175.839142
          }
          Scale {
            X: 0.0185353942
            Y: 0.0185353942
            Z: -0.0185601264
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10556886957675734021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.556000054
              G: 0.460264951
              B: 0.444800049
              A: 1
            }
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
            Id: 9507970697836095688
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17626289902351701852
        Name: "head_Capsule"
        Transform {
          Location {
            X: 14.1566162
            Y: -0.99987793
            Z: -2.26271057
          }
          Rotation {
            Pitch: 24.5006447
            Yaw: 159.53244
            Roll: -175.838989
          }
          Scale {
            X: 0.0185353942
            Y: 0.0185353942
            Z: -0.0185601264
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10556886957675734021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.556000054
              G: 0.460264951
              B: 0.444800049
              A: 1
            }
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
            Id: 9507970697836095688
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15688616112922870640
        Name: "head_Capsule"
        Transform {
          Location {
            X: 12.8692627
            Y: -2.61975098
            Z: -2.03613281
          }
          Rotation {
            Pitch: 37.6066055
            Yaw: 140.865692
            Roll: -171.141388
          }
          Scale {
            X: 0.0185353942
            Y: 0.0185353942
            Z: -0.0185601264
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10556886957675734021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.556000054
              G: 0.460264951
              B: 0.444800049
              A: 1
            }
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
            Id: 9507970697836095688
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17635019347688133273
        Name: "head_Capsule"
        Transform {
          Location {
            X: 12.8692627
            Y: 2.86877441
            Z: -2.03613281
          }
          Rotation {
            Pitch: 37.6065865
            Yaw: -140.865601
            Roll: 171.141525
          }
          Scale {
            X: 0.0185353942
            Y: 0.0185353942
            Z: -0.0185601264
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10556886957675734021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.556000054
              G: 0.460264951
              B: 0.444800049
              A: 1
            }
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
            Id: 9507970697836095688
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12822114955159695046
        Name: "head_Capsule"
        Transform {
          Location {
            X: -0.16601561
            Y: 15.0941677
            Z: 3.05125618
          }
          Rotation {
            Pitch: -76.1761398
            Yaw: 19.9761047
            Roll: -76.1031723
          }
          Scale {
            X: 0.0506437421
            Y: 0.0506437421
            Z: 0.0506437421
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9914724815144096989
        Name: "head_Capsule"
        Transform {
          Location {
            X: -2.33398414
            Y: 17.4677372
            Z: 4.94330263
          }
          Rotation {
            Pitch: -76.1758423
            Yaw: 19.9769764
            Roll: -76.1041565
          }
          Scale {
            X: 0.044479128
            Y: 0.044479128
            Z: 0.044479128
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13130731005759324887
        Name: "head_Capsule"
        Transform {
          Location {
            X: 11.8532887
            Y: 0.0146484366
            Z: -2.09130406
          }
          Rotation {
            Pitch: -0.0353667177
            Yaw: -90.0211639
            Roll: -157.956451
          }
          Scale {
            X: 0.0738435909
            Y: 0.0527374297
            Z: 0.0126452288
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13698917788564053945
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.175000012
              G: 0.0970496684
              B: 0.0752499923
              A: 1
            }
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
            Id: 8031004411755435841
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16265098163744313721
        Name: "head_Capsule"
        Transform {
          Location {
            X: 12.5591164
            Y: 0.0146484366
            Z: 1.2758745
          }
          Rotation {
            Pitch: -0.0352984145
            Yaw: -90.0207596
            Roll: -176.441223
          }
          Scale {
            X: 0.0738473311
            Y: 0.0422565155
            Z: 0.0126452297
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13698917788564053945
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.3961496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.1718826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.175000012
              G: 0.0970496684
              B: 0.0752499923
              A: 1
            }
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
            Id: 8031004411755435841
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 594084612158991824
        Name: "head_Capsule"
        Transform {
          Location {
            X: 5.96078
            Y: 1.059919
            Z: 11.3586636
          }
          Rotation {
            Pitch: -20.0280132
            Yaw: -127.752205
            Roll: 115.801262
          }
          Scale {
            X: 0.158066809
            Y: 0.126563266
            Z: 0.180763081
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5589057064052825162
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 6.77638435
            Y: -0.922502756
            Z: 15.9170523
          }
          Rotation {
            Pitch: 2.24659944
            Yaw: -106.483383
            Roll: 175.984467
          }
          Scale {
            X: 0.140480921
            Y: 0.116862059
            Z: 0.0447386317
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16721164907223670471
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 6.20143318
            Y: 1.30423403
            Z: 15.7165956
          }
          Rotation {
            Pitch: -3.77041459
            Yaw: -89.7873611
            Roll: 176.774582
          }
          Scale {
            X: 0.12483342
            Y: 0.132283702
            Z: 0.0447379947
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 166334617498933577
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 7.42466497
            Y: -1.58830905
            Z: 17.1936684
          }
          Rotation {
            Pitch: 5.67385149
            Yaw: -128.476471
            Roll: 171.465408
          }
          Scale {
            X: 0.125389069
            Y: 0.091164194
            Z: 0.0447382592
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11642298408295424887
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 7.7921834
            Y: 1.53791142
            Z: 17.2756939
          }
          Rotation {
            Pitch: -1.81191254
            Yaw: -61.7597275
            Roll: 175.381592
          }
          Scale {
            X: 0.118947245
            Y: 0.0911642686
            Z: 0.044738505
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10490081445701389789
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 0.264630973
            Y: -0.108468182
            Z: 0.899854362
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -89.999939
            Roll: -16.781477
          }
          Scale {
            X: 0.852224588
            Y: 0.787653625
            Z: 0.725702286
          }
        }
        ParentId: 9513890988214392990
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.69871318
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 3.41109443
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
            Id: 17211146951615485288
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11851028863235240773
        Name: "neck"
        Transform {
          Location {
            X: -13.2422485
            Y: -5.97717285
            Z: 125.832642
          }
          Rotation {
            Pitch: -27.4542236
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 17582331271383469829
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 17582331271383469829
        Name: "Sphere"
        Transform {
          Location {
            X: 2.73685908
            Z: 1.25927281
          }
          Rotation {
            Pitch: 4.49739265
          }
          Scale {
            X: 0.116237395
            Y: 0.132938132
            Z: 0.201094672
          }
        }
        ParentId: 11851028863235240773
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17762585342737207934
        Name: "left_clavicle"
        Transform {
          Location {
            X: -4.09307861
            Y: -9.42419434
            Z: 117.745239
          }
          Rotation {
            Roll: 106.019218
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 5216781182921227675
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 5216781182921227675
        Name: "Fantasy Gauntlet Hand 01"
        Transform {
          Location {
            X: 2.0035224
            Y: -6.49998093
            Z: -14.2080603
          }
          Rotation {
            Pitch: 5.81798887
            Yaw: -179.513519
            Roll: 19.6119976
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17762585342737207934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12782495805044124856
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 16.837616
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.6865435
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 5.42665148
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 2.67416906
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
            Id: 8920166470127210509
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16771387716794801194
        Name: "left_shoulder"
        Transform {
          Location {
            X: -7.04449463
            Y: -19.7572021
            Z: 121.267914
          }
          Rotation {
            Roll: 27.6829967
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 2463256332774472802
        ChildIds: 14202880787185424107
        ChildIds: 3447769264469863900
        ChildIds: 245328110044851439
        ChildIds: 1773481386779379886
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 2463256332774472802
        Name: "Sphere"
        Transform {
          Location {
            X: -1.25043595
            Y: -2.00001693
            Z: -31.9640636
          }
          Rotation {
          }
          Scale {
            X: 0.091417864
            Y: 0.091417864
            Z: 0.121403
          }
        }
        ParentId: 16771387716794801194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.92110288
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.92110288
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14202880787185424107
        Name: "Capsule"
        Transform {
          Location {
            X: -0.016392298
            Y: -1.99998045
            Z: -34.2335815
          }
          Rotation {
            Roll: 5.00003815
          }
          Scale {
            X: 0.115500264
            Y: 0.101436026
            Z: 0.185060367
          }
        }
        ParentId: 16771387716794801194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.12724376
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3447769264469863900
        Name: "Capsule"
        Transform {
          Location {
            X: -1.07125413
            Y: -1.9999764
            Z: 3.22657466
          }
          Rotation {
            Pitch: 4.98092222
            Yaw: 0.436879516
            Roll: -179.980957
          }
          Scale {
            X: 0.106583767
            Y: 0.162996933
            Z: 0.127832308
          }
        }
        ParentId: 16771387716794801194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 245328110044851439
        Name: "Capsule"
        Transform {
          Location {
            X: -2.26196265
            Y: -1.99990737
            Z: -21.3253403
          }
          Rotation {
            Pitch: -4.99999857
            Yaw: 2.06859823e-07
            Roll: -179.999954
          }
          Scale {
            X: 0.113270216
            Y: 0.100308418
            Z: 0.287488878
          }
        }
        ParentId: 16771387716794801194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1773481386779379886
        Name: "Smuggler Shoulder Gauntlet"
        Transform {
          Location {
            X: 0.402657628
            Y: -10.5212793
            Z: -1.28224981
          }
          Rotation {
            Pitch: -2.21559715
            Yaw: 176.340179
            Roll: -3.27168202
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16771387716794801194
        ChildIds: 12156805668357391426
        ChildIds: 2844889382859903286
        ChildIds: 18027860966914731641
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12782495805044124856
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 14.615448
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 16.837616
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 34.1683121
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 39.3633614
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 12.6865435
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5.42665148
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
            Id: 17168562580236810812
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12156805668357391426
        Name: "Cone"
        Transform {
          Location {
            X: 6.88226366
            Y: 0.0445604324
            Z: -2.09771729
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 22.7172394
          }
          Scale {
            X: 0.0568114109
            Y: 0.0568114109
            Z: 0.108975142
          }
        }
        ParentId: 1773481386779379886
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.992907166
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.74897313
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
            Id: 960891434955978534
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2844889382859903286
        Name: "Cone"
        Transform {
          Location {
            X: -5.80325317
            Y: 0.0445513725
            Z: -2.09771729
          }
          Rotation {
            Pitch: 90
            Yaw: 26.565033
            Roll: 90.650116
          }
          Scale {
            X: 0.0568114109
            Y: 0.0568114109
            Z: 0.108975142
          }
        }
        ParentId: 1773481386779379886
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.992907166
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.74897313
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
            Id: 960891434955978534
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 18027860966914731641
        Name: "Cone"
        Transform {
          Location {
            X: 0.113536
            Y: 1.70543349
            Z: 6.53211784
          }
          Rotation {
            Pitch: 80.614006
            Yaw: -88.3512268
          }
          Scale {
            X: 0.0665586591
            Y: 0.0665586591
            Z: 0.127672181
          }
        }
        ParentId: 1773481386779379886
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.992907166
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.74897313
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
            Id: 960891434955978534
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4851722174261170047
        Name: "left_elbow"
        Transform {
          Location {
            X: -7.49005127
            Y: -32.4949951
            Z: 97.4884949
          }
          Rotation {
            Pitch: 10.7698898
            Yaw: 8.12768173
            Roll: 37.3856201
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 13114764308740691750
        ChildIds: 15443075318676652904
        ChildIds: 2969462298428233512
        ChildIds: 12422596028428228957
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 13114764308740691750
        Name: "Capsule"
        Transform {
          Location {
            X: 0.500007093
            Y: 0.499995738
            Z: -33.2133827
          }
          Rotation {
            Pitch: 6.14717e-05
            Yaw: 100.000153
            Roll: 3.16571131e-05
          }
          Scale {
            X: 0.066095978
            Y: 0.0772421211
            Z: 0.0912802219
          }
        }
        ParentId: 4851722174261170047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15443075318676652904
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0124186911
            Y: -2.00000739
            Z: -2.81251812
          }
          Rotation {
            Pitch: 19.8687325
            Yaw: 4.11116474e-07
            Roll: 2.34727622e-06
          }
          Scale {
            X: 0.0872635618
            Y: 0.0804808363
            Z: 0.119208604
          }
        }
        ParentId: 4851722174261170047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.92110288
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.63045895
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2969462298428233512
        Name: "Capsule"
        Transform {
          Location {
            X: -1.75004756
            Y: -1.99999952
            Z: -4.41712973e-06
          }
          Rotation {
            Pitch: -4.84856653
            Yaw: 179.574783
            Roll: -174.981888
          }
          Scale {
            X: 0.112024456
            Y: 0.103317119
            Z: 0.175806642
          }
        }
        ParentId: 4851722174261170047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12422596028428228957
        Name: "Capsule"
        Transform {
          Location {
            X: -2.18048382
            Y: -2.00000954
            Z: -2.66114378
          }
          Rotation {
            Yaw: 4.35790724e-07
            Roll: -5.00000191
          }
          Scale {
            X: 0.0855668709
            Y: 0.0855668858
            Z: 0.0577343665
          }
        }
        ParentId: 4851722174261170047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14480392502710584085
        Name: "left_wrist"
        Transform {
          Location {
            X: -1.37237549
            Y: -44.5428467
            Z: 81.7055664
          }
          Rotation {
            Pitch: 37.3407326
            Yaw: 15.793992
            Roll: 21.4421883
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 5587800593635032423
        ChildIds: 12403982158965750850
        ChildIds: 12271650319519755812
        ChildIds: 18082204608670523993
        ChildIds: 2940909037906341046
        ChildIds: 11212545445090567363
        ChildIds: 10375939215910838409
        ChildIds: 6950370958163298647
        ChildIds: 3956707058228689607
        ChildIds: 5827809556056368657
        ChildIds: 2194864273723708022
        ChildIds: 11129905151993812677
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 5587800593635032423
        Name: "Capsule"
        Transform {
          Location {
            X: 0.976061583
            Y: 7.00000381
            Z: -12.2607241
          }
          Rotation {
            Pitch: -47.2077713
            Yaw: -172.971054
            Roll: -135.20369
          }
          Scale {
            X: 0.0754380077
            Y: 0.041460041
            Z: 0.0419961
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12403982158965750850
        Name: "Capsule"
        Transform {
          Location {
            X: 0.712799966
            Y: 1.79995072
            Z: -3.51417375
          }
          Rotation {
            Pitch: -11.2499628
          }
          Scale {
            X: 0.0966778
            Y: 0.0750096589
            Z: 0.0855228528
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12271650319519755812
        Name: "Capsule"
        Transform {
          Location {
            X: 1.99657547
            Y: 4.00001
            Z: -7.22460556
          }
          Rotation {
            Pitch: -55.9552765
            Yaw: 88.1223145
            Roll: -37.8113289
          }
          Scale {
            X: 0.110488199
            Y: 0.0607232861
            Z: 0.0615084171
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 18082204608670523993
        Name: "Capsule"
        Transform {
          Location {
            X: -2.19784689
            Y: 1.80516909e-05
            Z: -14.9853687
          }
          Rotation {
            Pitch: -9.96151638
            Yaw: -0.880462587
            Roll: 5.07679367
          }
          Scale {
            X: 0.117528424
            Y: 0.0628806502
            Z: 0.0837112144
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2940909037906341046
        Name: "Capsule"
        Transform {
          Location {
            X: -0.901399136
            Y: 4.5227704
            Z: -14.8179398
          }
          Rotation {
            Pitch: -12.0721674
            Yaw: 1.51611602
            Roll: -56.3230324
          }
          Scale {
            X: 0.0297477152
            Y: 0.0885509
            Z: 0.0364094675
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11212545445090567363
        Name: "Capsule"
        Transform {
          Location {
            X: -1.18118966
            Y: 1.32121837
            Z: -13.2436523
          }
          Rotation {
            Pitch: -8.58712482
            Yaw: 2.68069625
            Roll: -45.4623604
          }
          Scale {
            X: 0.0372879
            Y: 0.0664764047
            Z: 0.0500082672
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10375939215910838409
        Name: "Capsule"
        Transform {
          Location {
            X: 1.49035823
            Y: 0.900203526
            Z: -14.5201597
          }
          Rotation {
            Pitch: -12.3339758
            Yaw: 6.59924173
            Roll: -46.1745071
          }
          Scale {
            X: 0.0372876823
            Y: 0.0455793962
            Z: 0.0500087626
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 6950370958163298647
        Name: "Capsule"
        Transform {
          Location {
            X: -3.83982611
            Y: 0.523724
            Z: -13.5279951
          }
          Rotation {
            Pitch: -8.96734142
            Yaw: 3.07264161
            Roll: -45.5218048
          }
          Scale {
            X: 0.0372879393
            Y: 0.0361835025
            Z: 0.0500085056
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3956707058228689607
        Name: "Capsule"
        Transform {
          Location {
            X: -5.56726456
            Y: 0.651489139
            Z: -12.9107656
          }
          Rotation {
            Pitch: -4.21615267
            Yaw: -1.74688756
            Roll: -44.9674263
          }
          Scale {
            X: 0.0319739357
            Y: 0.0263189431
            Z: 0.0428818688
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5827809556056368657
        Name: "Capsule"
        Transform {
          Location {
            X: 1.16872334
            Y: 4.44548368
            Z: -15.1701593
          }
          Rotation {
            Pitch: -12.0721741
            Yaw: 1.51613569
            Roll: -56.3229408
          }
          Scale {
            X: 0.0297478959
            Y: 0.0885519832
            Z: 0.0383188799
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2194864273723708022
        Name: "Capsule"
        Transform {
          Location {
            X: -3.72925115
            Y: 4.44794273
            Z: -14.2129335
          }
          Rotation {
            Pitch: -12.0721741
            Yaw: 1.51613569
            Roll: -56.3229408
          }
          Scale {
            X: 0.0297477152
            Y: 0.0885509
            Z: 0.0364094675
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11129905151993812677
        Name: "Capsule"
        Transform {
          Location {
            X: -5.6706295
            Y: 4.39653492
            Z: -13.7975531
          }
          Rotation {
            Pitch: -12.0721674
            Yaw: 1.51615095
            Roll: -56.3228722
          }
          Scale {
            X: 0.0244768038
            Y: 0.0728608295
            Z: 0.0299581792
          }
        }
        ParentId: 14480392502710584085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13907639122078915783
        Name: "right_clavicle"
        Transform {
          Location {
            X: -4.09307861
            Y: -5.97717285
            Z: 117.279221
          }
          Rotation {
            Roll: -95.7696533
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 14972179522121924475
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 14972179522121924475
        Name: "Fantasy Gauntlet Hand 01"
        Transform {
          Location {
            X: 2.0035224
            Y: 6.49999714
            Z: -14.2080812
          }
          Rotation {
            Pitch: -5.81777716
            Yaw: 0.486487359
            Roll: 19.6118832
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13907639122078915783
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12782495805044124856
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 16.837616
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 12.6865435
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 5.42665148
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 2.67416906
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
            Id: 8920166470127210509
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1150179954918916482
        Name: "right_shoulder"
        Transform {
          Location {
            X: -4.09307861
            Y: 5.24719238
            Z: 117.086594
          }
          Rotation {
            Roll: -38.8912964
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 10265462014568222279
        ChildIds: 12003122422073583613
        ChildIds: 1519684905867962680
        ChildIds: 4306830518556594023
        ChildIds: 17851609088188416670
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 10265462014568222279
        Name: "Capsule"
        Transform {
          Location {
            X: 0.234026209
            Y: 1.99997962
            Z: -31.3715706
          }
          Rotation {
            Roll: -5
          }
          Scale {
            X: 0.115500264
            Y: 0.101436026
            Z: 0.185060367
          }
        }
        ParentId: 1150179954918916482
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.12724376
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12003122422073583613
        Name: "Capsule"
        Transform {
          Location {
            X: -1.07125413
            Y: 2.00000262
            Z: 3.22655821
          }
          Rotation {
            Pitch: 4.98092222
            Yaw: -0.43688941
            Roll: 179.981049
          }
          Scale {
            X: 0.106583767
            Y: 0.162996933
            Z: 0.127832308
          }
        }
        ParentId: 1150179954918916482
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1519684905867962680
        Name: "Capsule"
        Transform {
          Location {
            X: -2.01154423
            Y: 2.00005937
            Z: -18.4634266
          }
          Rotation {
            Pitch: -4.99999857
            Yaw: 2.50659422e-08
            Roll: -179.999954
          }
          Scale {
            X: 0.113270216
            Y: 0.100308418
            Z: 0.287488878
          }
        }
        ParentId: 1150179954918916482
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4306830518556594023
        Name: "Sphere"
        Transform {
          Location {
            X: -1.0000174
            Y: 1.99998331
            Z: -29.1020374
          }
          Rotation {
          }
          Scale {
            X: 0.091417864
            Y: 0.091417864
            Z: 0.121403
          }
        }
        ParentId: 1150179954918916482
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.92110288
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.92110288
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17851609088188416670
        Name: "Smuggler Shoulder Gauntlet"
        Transform {
          Location {
            X: -0.4027448
            Y: 10.5212517
            Z: -1.28223288
          }
          Rotation {
            Pitch: -2.21555614
            Yaw: -3.65982771
            Roll: -3.27165699
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1150179954918916482
        ChildIds: 7875965169742176862
        ChildIds: 10836154879829480180
        ChildIds: 7218303322464988589
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12782495805044124856
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 14.615448
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 16.837616
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 34.1683121
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 39.3633614
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 12.6865435
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5.42665148
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
            Id: 17168562580236810812
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7875965169742176862
        Name: "Cone"
        Transform {
          Location {
            X: 6.88226366
            Y: 0.0445604324
            Z: -2.09771729
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 22.7172394
          }
          Scale {
            X: 0.0568114109
            Y: 0.0568114109
            Z: 0.108975142
          }
        }
        ParentId: 17851609088188416670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.992907166
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.74897313
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
            Id: 960891434955978534
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10836154879829480180
        Name: "Cone"
        Transform {
          Location {
            X: -5.80325317
            Y: 0.0445513725
            Z: -2.09771729
          }
          Rotation {
            Pitch: 90
            Yaw: 26.565033
            Roll: 90.650116
          }
          Scale {
            X: 0.0568114109
            Y: 0.0568114109
            Z: 0.108975142
          }
        }
        ParentId: 17851609088188416670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.992907166
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.74897313
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
            Id: 960891434955978534
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7218303322464988589
        Name: "Cone"
        Transform {
          Location {
            X: 0.113536
            Y: 1.70543349
            Z: 6.53211784
          }
          Rotation {
            Pitch: 80.614006
            Yaw: -88.3512268
          }
          Scale {
            X: 0.0665586591
            Y: 0.0665586591
            Z: 0.127672181
          }
        }
        ParentId: 17851609088188416670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.992907166
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.74897313
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
            Id: 960891434955978534
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10340632338620149337
        Name: "right_elbow"
        Transform {
          Location {
            X: -4.09307861
            Y: 20.2052
            Z: 97.0545502
          }
          Rotation {
            Roll: -35.9505615
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 15726946506627595604
        ChildIds: 9848925283106126051
        ChildIds: 3521059543602796483
        ChildIds: 13321167828570180269
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 15726946506627595604
        Name: "Capsule"
        Transform {
          Location {
            X: 0.499965101
            Y: -0.499975652
            Z: -33.213398
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: -100.000183
            Roll: -6.16597e-05
          }
          Scale {
            X: 0.066095978
            Y: 0.0772421211
            Z: 0.0912802219
          }
        }
        ParentId: 10340632338620149337
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9848925283106126051
        Name: "Capsule"
        Transform {
          Location {
            X: -0.791887522
            Y: 2.00002766
            Z: -2.81251907
          }
          Rotation {
            Pitch: 19.8687534
          }
          Scale {
            X: 0.0872635618
            Y: 0.0804808363
            Z: 0.119208604
          }
        }
        ParentId: 10340632338620149337
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.92110288
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.63045895
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3521059543602796483
        Name: "Capsule"
        Transform {
          Location {
            X: -1.74970341
            Y: 1.99996257
            Z: 2.79503201e-05
          }
          Rotation {
            Pitch: -4.84854603
            Yaw: -179.574661
            Roll: 174.98204
          }
          Scale {
            X: 0.112024456
            Y: 0.103317119
            Z: 0.175806642
          }
        }
        ParentId: 10340632338620149337
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13321167828570180269
        Name: "Capsule"
        Transform {
          Location {
            X: -2.98470616
            Y: 1.99997246
            Z: -2.66110682
          }
          Rotation {
            Roll: 5.00004435
          }
          Scale {
            X: 0.0855668709
            Y: 0.0855668858
            Z: 0.0577343665
          }
        }
        ParentId: 10340632338620149337
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10015895039312689547
        Name: "right_wrist"
        Transform {
          Location {
            X: -4.09307861
            Y: 32.567749
            Z: 81.2021484
          }
          Rotation {
            Pitch: 0.998006701
            Yaw: -33.4917297
            Roll: -30.414032
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 1230928652128082722
        ChildIds: 18431450576475701298
        ChildIds: 11809858634453282535
        ChildIds: 79181552179677533
        ChildIds: 17681979300946511715
        ChildIds: 184734635133680100
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 1230928652128082722
        Name: "Capsule"
        Transform {
          Location {
            X: 1.15719497
            Y: -0.469402909
            Z: -14.228981
          }
          Rotation {
            Pitch: -37.042717
            Yaw: 112.780975
            Roll: 174.405121
          }
          Scale {
            X: 0.0754380077
            Y: 0.041460041
            Z: 0.0419961
          }
        }
        ParentId: 10015895039312689547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 18431450576475701298
        Name: "Capsule"
        Transform {
          Location {
            X: 1.94371343
            Y: -0.944855154
            Z: -8.35008621
          }
          Rotation {
            Pitch: -85.8433762
            Yaw: -93.9638367
            Roll: 9.84157658
          }
          Scale {
            X: 0.110488199
            Y: 0.0607232861
            Z: 0.0615084171
          }
        }
        ParentId: 10015895039312689547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11809858634453282535
        Name: "Capsule"
        Transform {
          Location {
            X: 0.820832193
            Y: -0.179275438
            Z: -4.0595932
          }
          Rotation {
            Pitch: -8.69270611
            Yaw: -27.7575893
            Roll: -30.8004837
          }
          Scale {
            X: 0.0966778
            Y: 0.0750096589
            Z: 0.0855228528
          }
        }
        ParentId: 10015895039312689547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 79181552179677533
        Name: "Capsule"
        Transform {
          Location {
            X: 0.753211915
            Y: 8.09597874
            Z: -12.4027681
          }
          Rotation {
            Pitch: 7.01097
            Yaw: 7.83636189
            Roll: -39.5140762
          }
          Scale {
            X: 0.117528424
            Y: 0.0628806502
            Z: 0.0837112144
          }
        }
        ParentId: 10015895039312689547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17681979300946511715
        Name: "Group"
        Transform {
          Location {
            X: -0.135285765
            Y: 7.17455435
            Z: -12.5560322
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10015895039312689547
        ChildIds: 7614705091096338381
        ChildIds: 5298104382154057962
        ChildIds: 4779179383437450429
        ChildIds: 11175375898249410888
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
        Id: 7614705091096338381
        Name: "Capsule"
        Transform {
          Location {
            X: -3.17489815
            Y: -0.878051
            Z: 1.69083536
          }
          Rotation {
            Pitch: -8.99725056
            Yaw: -26.5304947
            Roll: 14.0108862
          }
          Scale {
            X: 0.020742787
            Y: 0.0466531292
            Z: 0.037506178
          }
        }
        ParentId: 17681979300946511715
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5298104382154057962
        Name: "Capsule"
        Transform {
          Location {
            X: -1.13064671
            Y: 0.455256462
            Z: 0.963553488
          }
          Rotation {
            Pitch: -8.99725056
            Yaw: -26.5304737
            Roll: 14.0109043
          }
          Scale {
            X: 0.020742787
            Y: 0.0466531292
            Z: 0.037506178
          }
        }
        ParentId: 17681979300946511715
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4779179383437450429
        Name: "Capsule"
        Transform {
          Location {
            X: 1.21634221
            Y: 0.678931236
            Z: 0.33143726
          }
          Rotation {
            Pitch: -8.99725723
            Yaw: -26.530407
            Roll: 14.0109291
          }
          Scale {
            X: 0.0221408717
            Y: 0.0497976
            Z: 0.0400341339
          }
        }
        ParentId: 17681979300946511715
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11175375898249410888
        Name: "Capsule"
        Transform {
          Location {
            X: 3.08926773
            Y: -0.256133616
            Z: 3.27825524e-06
          }
          Rotation {
            Pitch: -8.30514717
            Yaw: -29.2916241
            Roll: 14.4270334
          }
          Scale {
            X: 0.0221408717
            Y: 0.0497976
            Z: 0.0400341339
          }
        }
        ParentId: 17681979300946511715
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 184734635133680100
        Name: "Group"
        Transform {
          Location {
            X: -0.20575875
            Y: 3.43002629
            Z: -15.0952129
          }
          Rotation {
            Pitch: -14.6789503
            Yaw: 19.3426628
            Roll: 56.4215431
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10015895039312689547
        ChildIds: 10843418674104997194
        ChildIds: 18125018304139146288
        ChildIds: 5777022671104564154
        ChildIds: 283225168066349771
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
        Id: 10843418674104997194
        Name: "Capsule"
        Transform {
          Location {
            X: -3.60823536
            Y: 0.756877422
            Z: 1.54727674
          }
          Rotation {
            Pitch: -8.99725342
            Yaw: -26.530426
            Roll: 14.0109186
          }
          Scale {
            X: 0.020742787
            Y: 0.0466531292
            Z: 0.037506178
          }
        }
        ParentId: 184734635133680100
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 18125018304139146288
        Name: "Capsule"
        Transform {
          Location {
            X: -1.13064671
            Y: 0.455256462
            Z: 0.963553488
          }
          Rotation {
            Pitch: -8.99725056
            Yaw: -26.5304737
            Roll: 14.0109043
          }
          Scale {
            X: 0.020742787
            Y: 0.0466531292
            Z: 0.037506178
          }
        }
        ParentId: 184734635133680100
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 5777022671104564154
        Name: "Capsule"
        Transform {
          Location {
            X: 0.686455131
            Y: 0.122345574
            Z: 0.595924914
          }
          Rotation {
            Pitch: -20.8418579
            Yaw: -12.7076416
            Roll: 9.20247936
          }
          Scale {
            X: 0.0221408717
            Y: 0.0497976
            Z: 0.0400341339
          }
        }
        ParentId: 184734635133680100
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 283225168066349771
        Name: "Capsule"
        Transform {
          Location {
            X: 3.08926773
            Y: -0.256133616
            Z: 3.27825524e-06
          }
          Rotation {
            Pitch: -8.30514717
            Yaw: -29.2916241
            Roll: 14.4270334
          }
          Scale {
            X: 0.0221408717
            Y: 0.0497976
            Z: 0.0400341339
          }
        }
        ParentId: 184734635133680100
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7842321383696709479
        Name: "upper_spine"
        Transform {
          Location {
            X: -4.09307861
            Y: -5.97717285
            Z: 104.517319
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 5428047299547420708
        ChildIds: 2557890696646609386
        ChildIds: 1612986169132583263
        ChildIds: 8474601222103622421
        ChildIds: 3857399243600686056
        ChildIds: 11775137171443750458
        ChildIds: 17872203441311319542
        ChildIds: 9309916647738891122
        ChildIds: 784813201248473377
        ChildIds: 18414522410296445747
        ChildIds: 11630875216878303856
        ChildIds: 7765637140432878638
        ChildIds: 7520238999472174557
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 5428047299547420708
        Name: "Capsule"
        Transform {
          Location {
            X: 3.20286322
            Z: 0.478515595
          }
          Rotation {
            Pitch: 35.0744247
            Yaw: -6.51377216e-12
            Roll: 3.55799374e-18
          }
          Scale {
            X: 0.12226373
            Y: 0.32221505
            Z: 0.243924186
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4904779893906915148
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2557890696646609386
        Name: "Capsule"
        Transform {
          Location {
            X: -4.77451849
            Z: 5.15674
          }
          Rotation {
            Pitch: -5.15209341
            Yaw: -6.51377736e-12
            Roll: 3.11861e-18
          }
          Scale {
            X: 0.167043343
            Y: 0.228121847
            Z: 0.186699361
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4904779893906915148
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.695147157
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.58987242
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1612986169132583263
        Name: "Sphere"
        Transform {
          Location {
            X: -0.065220423
            Z: 6.69726753
          }
          Rotation {
            Pitch: -22.3260365
            Yaw: -6.51377736e-12
            Roll: 3.35771408e-18
          }
          Scale {
            X: 0.305585295
            Y: 0.34949103
            Z: 0.528672874
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4904779893906915148
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.734259725
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.734259725
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
            Id: 8936463881719161671
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8474601222103622421
        Name: "Sphere"
        Transform {
          Location {
            X: 1.25941682
            Z: 12.260251
          }
          Rotation {
            Pitch: -14.3614416
            Yaw: -1.55270374
            Roll: -10.2478628
          }
          Scale {
            X: 0.270663202
            Y: 0.309551477
            Z: 0.468256325
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4904779893906915148
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.448635429
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.473877907
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
            Id: 8936463881719161671
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3857399243600686056
        Name: "Capsule"
        Transform {
          Location {
            X: 4.62541819
            Y: 9.99999905
            Z: -2.46532965
          }
          Rotation {
            Pitch: -30.5503139
            Yaw: -50.6986046
            Roll: -99.3514099
          }
          Scale {
            X: 0.187900886
            Y: 0.160456717
            Z: 0.101316892
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11775137171443750458
        Name: "Capsule"
        Transform {
          Location {
            X: 4.62541819
            Y: -9.99999905
            Z: -2.46532965
          }
          Rotation {
            Pitch: -30.5503216
            Yaw: 50.698967
            Roll: 99.3514099
          }
          Scale {
            X: 0.187900886
            Y: 0.160456717
            Z: 0.101316892
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17872203441311319542
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -3.7679615
            Y: 9.00007
            Z: -5.86600113
          }
          Rotation {
            Roll: 13.5387392
          }
          Scale {
            X: 0.162035286
            Y: 0.241629258
            Z: 0.421456933
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9309916647738891122
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -3.7679615
            Y: -9.00007
            Z: -5.86600113
          }
          Rotation {
            Roll: -14.5504379
          }
          Scale {
            X: 0.162035286
            Y: 0.241629258
            Z: 0.421456933
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 784813201248473377
        Name: "Belt"
        Transform {
          Location {
            X: -1.06907427
            Y: 4.78934145
            Z: -6.93320084
          }
          Rotation {
            Pitch: -45.6787148
            Yaw: -73.3225098
            Roll: -26.9315319
          }
          Scale {
            X: 1.47761953
            Y: 1.47761953
            Z: 1.47761953
          }
        }
        ParentId: 7842321383696709479
        ChildIds: 1786832784993347057
        ChildIds: 14402046253039521120
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
        Id: 1786832784993347057
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: -2.85457206
            Y: 0.00333839678
            Z: -0.299210876
          }
          Rotation {
            Pitch: 68.6122131
            Yaw: 134.726242
            Roll: -132.727066
          }
          Scale {
            X: 0.532825053
            Y: 1.60959697
            Z: 0.631740749
          }
        }
        ParentId: 784813201248473377
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
            Id: 5649559338683583195
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14402046253039521120
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: 6.84833097
            Y: -0.376349151
            Z: -0.00251210737
          }
          Rotation {
            Pitch: -77.194458
            Yaw: -94.8153076
            Roll: -179.998856
          }
          Scale {
            X: 0.532824516
            Y: 1.55571043
            Z: 0.59578371
          }
        }
        ParentId: 784813201248473377
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
            Id: 5649559338683583195
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 18414522410296445747
        Name: "Belt"
        Transform {
          Location {
            X: -1.2128557
            Y: 0.258789033
            Z: -10.7608356
          }
          Rotation {
            Pitch: 48.4321976
            Yaw: -94.3157883
            Roll: -23.5257626
          }
          Scale {
            X: 1.47761953
            Y: 1.47761953
            Z: 1.47761953
          }
        }
        ParentId: 7842321383696709479
        ChildIds: 7404957236684199908
        ChildIds: 1691135251375129518
        ChildIds: 9336160813717464191
        ChildIds: 550517192049493393
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
        Id: 7404957236684199908
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: -6.15593
            Y: 0.979946792
            Z: 0.143204793
          }
          Rotation {
            Pitch: 77.1954117
            Yaw: 85.1837
            Roll: 177.094879
          }
          Scale {
            X: 0.532826543
            Y: 1.79981
            Z: 0.621713936
          }
        }
        ParentId: 18414522410296445747
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
            Id: 5649559338683583195
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1691135251375129518
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: 6.85905027
            Y: -0.055528719
            Z: -0.170170784
          }
          Rotation {
            Pitch: -71.2656555
            Yaw: -137.397232
            Roll: -137.185471
          }
          Scale {
            X: 0.532825589
            Y: 1.59216285
            Z: 0.600513637
          }
        }
        ParentId: 18414522410296445747
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
            Id: 5649559338683583195
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9336160813717464191
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.226660803
            Y: 11.6719551
            Z: -2.09836626
          }
          Rotation {
            Pitch: -46.4505615
            Yaw: -18.2745667
            Roll: 114.331421
          }
          Scale {
            X: 0.0292868949
            Y: 0.0292868949
            Z: 0.0960249677
          }
        }
        ParentId: 18414522410296445747
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
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
            Id: 4873121214410681542
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 550517192049493393
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.635645926
            Y: -2.90920377
            Z: 0.693775
          }
          Rotation {
            Pitch: 37.1563339
            Yaw: 17.5369015
            Roll: 33.1251335
          }
          Scale {
            X: 0.407378763
            Y: 0.591948509
            Z: 0.365279704
          }
        }
        ParentId: 18414522410296445747
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 9.97689819
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 14.9896889
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
            Id: 16132958878921067135
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11630875216878303856
        Name: "Sphere"
        Transform {
          Location {
            X: -1.60670674
            Z: -11.6670876
          }
          Rotation {
            Pitch: 1.61770284
            Yaw: 1.38355053e-05
            Roll: 1.23094478e-05
          }
          Scale {
            X: 0.246666402
            Y: 0.272118
            Z: 0.374704838
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.26355791
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.41109443
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7765637140432878638
        Name: "Sphere"
        Transform {
          Location {
            X: 2.37792945
            Y: -1.11886156
            Z: 16.705965
          }
          Rotation {
            Pitch: -13.3463116
            Yaw: -5.57236147
            Roll: 6.42616367
          }
          Scale {
            X: 0.208466768
            Y: 0.238419592
            Z: 0.443582714
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4904779893906915148
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.448635429
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.473877907
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
            Id: 8936463881719161671
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7520238999472174557
        Name: "Sphere"
        Transform {
          Location {
            X: 1.04936862
            Y: -0.225306913
            Z: 10.9897385
          }
          Rotation {
            Pitch: -0.371152461
            Yaw: -4.7078886
            Roll: 89.1221466
          }
          Scale {
            X: 0.116237395
            Y: 0.132938132
            Z: 0.201094672
          }
        }
        ParentId: 7842321383696709479
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1264400434555857364
        Name: "lower_spine"
        Transform {
          Location {
            X: -4.09307861
            Y: -5.97717285
            Z: 84.1273499
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 1163761409712865640
        ChildIds: 4792118352278960236
        ChildIds: 3334960014649231999
        ChildIds: 7144921968555274905
        ChildIds: 12493506270229529596
        ChildIds: 216894184663845210
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 1163761409712865640
        Name: "Sphere"
        Transform {
          Location {
            X: -0.379638642
            Z: 6.15624523
          }
          Rotation {
            Pitch: -19.0336876
            Yaw: 179.999756
            Roll: 3.47715359e-05
          }
          Scale {
            X: 0.198620886
            Y: 0.339070857
            Z: 0.476992667
          }
        }
        ParentId: 1264400434555857364
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4792118352278960236
        Name: "Sphere"
        Transform {
          Location {
            X: 10.8862295
            Y: 0.832170725
            Z: -0.368096471
          }
          Rotation {
            Pitch: -87.4526138
            Yaw: 178.927307
            Roll: -178.92627
          }
          Scale {
            X: 0.050615374
            Y: 0.0611118823
            Z: 0.0633735582
          }
        }
        ParentId: 1264400434555857364
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 2901702164758099337
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3334960014649231999
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 0.689958811
            Y: -7.00003433
            Z: 19.0146523
          }
          Rotation {
            Pitch: 16.2045
            Yaw: -5.65619183
            Roll: 20.5641708
          }
          Scale {
            X: 0.187395424
            Y: 0.169192746
            Z: 0.182917431
          }
        }
        ParentId: 1264400434555857364
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7144921968555274905
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 0.689958811
            Y: 7.00003433
            Z: 19.0146523
          }
          Rotation {
            Pitch: 16.2045555
            Yaw: 5.65619516
            Roll: -20.5640488
          }
          Scale {
            X: 0.187395424
            Y: 0.169192746
            Z: 0.182917431
          }
        }
        ParentId: 1264400434555857364
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12493506270229529596
        Name: "Sphere"
        Transform {
          Location {
            X: 7.96639538
            Y: 0.576695
            Z: 9.94663715
          }
          Rotation {
            Pitch: -2.54998946
            Yaw: 0.0477781408
            Roll: -3.05175017e-05
          }
          Scale {
            X: 0.127
            Y: 0.225225657
            Z: 0.182000011
          }
        }
        ParentId: 1264400434555857364
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.77870631
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.63045895
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 216894184663845210
        Name: "Sphere"
        Transform {
          Location {
            X: 9.99049568
            Y: 0.832170725
            Z: -0.368096471
          }
          Rotation {
            Pitch: -89.0597458
            Yaw: 176.92366
            Roll: -176.919922
          }
          Scale {
            X: 0.142982557
            Y: 0.189387336
            Z: 0.148730814
          }
        }
        ParentId: 1264400434555857364
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 2901702164758099337
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8704881575439580988
        Name: "pelvis"
        Transform {
          Location {
            X: -4.09307861
            Y: -5.97717285
            Z: 74.446228
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 17007106479568513039
        ChildIds: 13830215956696489
        ChildIds: 9910156926896551330
        ChildIds: 13931179759716659384
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 17007106479568513039
        Name: "Belt"
        Transform {
          Location {
            X: 2.90815067
            Y: -2.6696775
            Z: 6.12074661
          }
          Rotation {
            Pitch: -10.7651014
            Yaw: -5.43167609e-08
            Roll: -8.73124409
          }
          Scale {
            X: 1.05648375
            Y: 1.05648375
            Z: 1.05648375
          }
        }
        ParentId: 8704881575439580988
        ChildIds: 4884731021446863888
        ChildIds: 17492070359271668192
        ChildIds: 16123579205064254392
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
        Id: 4884731021446863888
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: -4.90296316
            Y: 1.07885027
            Z: -0.150758356
          }
          Rotation {
            Pitch: 77.1954422
            Yaw: 85.1836777
            Roll: 179.998901
          }
          Scale {
            X: 0.877709091
            Y: 1.61642575
            Z: 1.04653847
          }
        }
        ParentId: 17007106479568513039
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
            Id: 5649559338683583195
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17492070359271668192
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: 5.0145545
            Y: 0.24336727
            Z: -0.150812313
          }
          Rotation {
            Pitch: -77.1947632
            Yaw: -94.8155518
            Roll: -179.998901
          }
          Scale {
            X: 0.877709
            Y: 1.37078857
            Z: 1.04653907
          }
        }
        ParentId: 17007106479568513039
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
            Id: 5649559338683583195
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 16123579205064254392
        Name: "Sign Bracket - Square"
        Transform {
          Location {
            X: 1.8202455
            Y: 14.0917873
            Z: -3.41834021
          }
          Rotation {
            Pitch: -1.29400635
            Yaw: -4.96240234
            Roll: -166.334671
          }
          Scale {
            X: 0.385000587
            Y: 0.41915223
            Z: 0.525976
          }
        }
        ParentId: 17007106479568513039
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 11.741251
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 17.6405239
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
            Id: 16132958878921067135
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13830215956696489
        Name: "Sphere"
        Transform {
          Location {
            X: -2.4936347
            Y: -5.99993
            Z: -4.66880751
          }
          Rotation {
            Pitch: -11.0310965
            Yaw: -2.22229028
            Roll: 11.4652863
          }
          Scale {
            X: 0.217439175
            Y: 0.241343051
            Z: 0.323590964
          }
        }
        ParentId: 8704881575439580988
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.52870363
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.473877907
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9910156926896551330
        Name: "Sphere"
        Transform {
          Location {
            X: -2.4936347
            Y: 5.99993
            Z: -4.66880751
          }
          Rotation {
            Pitch: -11.0310965
            Yaw: 2.22230864
            Roll: -11.4656248
          }
          Scale {
            X: 0.217439175
            Y: 0.241343051
            Z: 0.323590964
          }
        }
        ParentId: 8704881575439580988
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.52870363
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.473877907
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13931179759716659384
        Name: "Heart - Polished"
        Transform {
          Location {
            X: 3.09108162
            Z: -4.12353468
          }
          Rotation {
            Pitch: -0.000334679266
            Yaw: 89.9995
            Roll: -23.4915257
          }
          Scale {
            X: 0.369677961
            Y: 0.621447
            Z: 0.318553805
          }
        }
        ParentId: 8704881575439580988
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.52870363
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.473877907
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10130877692007089305
        Name: "left_hip"
        Transform {
          Location {
            X: -4.09307861
            Y: -16.5391846
            Z: 76.2309723
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 1509562725569561631
        ChildIds: 15893482267704492569
        ChildIds: 2446024737733773545
        ChildIds: 3866897595449123805
        ChildIds: 10636629316462548758
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 1509562725569561631
        Name: "Capsule"
        Transform {
          Location {
            X: 3.29066658
            Z: -29.2916203
          }
          Rotation {
          }
          Scale {
            X: 0.142251402
            Y: 0.128545925
            Z: 0.289817691
          }
        }
        ParentId: 10130877692007089305
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.66705751
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15893482267704492569
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 4.41711378
            Y: -2.89341497
            Z: -1.4750998
          }
          Rotation {
            Yaw: -179.999954
            Roll: -174.999939
          }
          Scale {
            X: 0.194394961
            Y: 0.158299267
            Z: 0.313721627
          }
        }
        ParentId: 10130877692007089305
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.34121576
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.323039919
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 2446024737733773545
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -3.45589757
            Y: 1.16507387
            Z: 1.16504121
          }
          Rotation {
            Pitch: -9.99999714
            Yaw: -179.999954
            Roll: -179.999939
          }
          Scale {
            X: 0.194394961
            Y: 0.158299267
            Z: 0.313721627
          }
        }
        ParentId: 10130877692007089305
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.34121576
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.323039919
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 3866897595449123805
        Name: "Sphere"
        Transform {
          Location {
            X: 2.33808231
            Y: 0.499965101
            Z: -8.66609764
          }
          Rotation {
            Pitch: -11.2499971
          }
          Scale {
            X: 0.246865273
            Y: 0.154794604
            Z: 0.303563356
          }
        }
        ParentId: 10130877692007089305
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.34121576
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.323039919
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10636629316462548758
        Name: "Sphere"
        Transform {
          Location {
            X: 3.30592537
            Y: 0.383649528
            Z: -38.0825233
          }
          Rotation {
          }
          Scale {
            X: 0.191359937
            Y: 0.174976572
            Z: 0.132055417
          }
        }
        ParentId: 10130877692007089305
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.34121576
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.323039919
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
            Id: 8031004411755435841
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 9112228563359341284
        Name: "left_knee"
        Transform {
          Location {
            X: -4.09307861
            Y: -20.2518311
            Z: 38.0330315
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 7047988276859293446
        ChildIds: 14959915747843740616
        ChildIds: 15009552905387663450
        ChildIds: 1605983368636469501
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 7047988276859293446
        Name: "Capsule"
        Transform {
          Location {
            X: -0.00017438615
            Y: 2.08600712
            Z: 7.44824505
          }
          Rotation {
            Roll: -179.999939
          }
          Scale {
            X: 0.147027984
            Y: 0.1314473
            Z: 0.4
          }
        }
        ParentId: 9112228563359341284
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.45703912
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 14959915747843740616
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -3.61903572
            Y: 0.0859723687
            Z: -19.9321308
          }
          Rotation {
            Pitch: 6
            Roll: 176.999969
          }
          Scale {
            X: 0.12763381
            Y: 0.127634615
            Z: 0.34526965
          }
        }
        ParentId: 9112228563359341284
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22359669
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 15009552905387663450
        Name: "Sphere"
        Transform {
          Location {
            X: -1.51968813
            Y: 2.08600712
            Z: -51.0336914
          }
          Rotation {
          }
          Scale {
            X: 0.109952055
            Y: 0.0832929313
            Z: 0.121347181
          }
        }
        ParentId: 9112228563359341284
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 1605983368636469501
        Name: "Capsule"
        Transform {
          Location {
            X: 4.18029737
            Y: 2.08600712
            Z: 7.7285161
          }
          Rotation {
            Pitch: -4.99999857
            Roll: -179.999939
          }
          Scale {
            X: 0.166900501
            Y: 0.131447315
            Z: 0.182641029
          }
        }
        ParentId: 9112228563359341284
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22359669
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13414720185053815762
        Name: "left_ankle"
        Transform {
          Location {
            X: -4.09307861
            Y: -23.2213135
            Z: 5.31954479
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 11859564607470742128
        ChildIds: 12381718309122798314
        ChildIds: 18018649743508425851
        ChildIds: 10091176229802905897
        ChildIds: 13790295538253454314
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 11859564607470742128
        Name: "Capsule"
        Transform {
          Location {
            X: -0.88945657
            Y: 5.82240486
            Z: -5
          }
          Rotation {
            Pitch: -50.2707443
          }
          Scale {
            X: 0.100085229
            Y: 0.0927530304
            Z: 0.0743013248
          }
        }
        ParentId: 13414720185053815762
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12381718309122798314
        Name: "Capsule"
        Transform {
          Location {
            X: 5.75622511
            Y: 5.82240486
            Z: -6.41064453
          }
          Rotation {
            Pitch: 0.705456078
            Yaw: -178.961609
            Roll: -175.095871
          }
          Scale {
            X: 0.284508854
            Y: 0.253714859
            Z: 0.126125053
          }
        }
        ParentId: 13414720185053815762
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 11236189850874066005
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 18018649743508425851
        Name: "Capsule"
        Transform {
          Location {
            Y: 5.82240486
            Z: 2.39599633
          }
          Rotation {
            Yaw: 1.08443637e-05
            Roll: 179.999939
          }
          Scale {
            X: 0.072359629
            Y: 0.107035048
            Z: 0.0395840965
          }
        }
        ParentId: 13414720185053815762
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 10091176229802905897
        Name: "Capsule"
        Transform {
          Location {
            X: 14.4791946
            Y: 4.82247448
            Z: -7.671875
          }
          Rotation {
            Pitch: -79.5962067
            Yaw: 153.51915
            Roll: 177.276627
          }
          Scale {
            X: 0.0351918936
            Y: 0.0970289931
            Z: 0.0559086539
          }
        }
        ParentId: 13414720185053815762
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13790295538253454314
        Name: "Capsule"
        Transform {
          Location {
            X: 15.7784586
            Y: 7.82261372
            Z: -7.671875
          }
          Rotation {
            Pitch: -83.7494583
            Yaw: -179.999893
            Roll: -179.999893
          }
          Scale {
            X: 0.04295405
            Y: 0.0618924126
            Z: 0.0526996776
          }
        }
        ParentId: 13414720185053815762
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 17011555173446533652
        Name: "right_hip"
        Transform {
          Location {
            X: -4.09307861
            Y: 4.45397949
            Z: 75.3636627
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 9388814626624841999
        ChildIds: 4262497381848255868
        ChildIds: 11059182969036795669
        ChildIds: 4760936863374940487
        ChildIds: 4549586277971521023
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 9388814626624841999
        Name: "Capsule"
        Transform {
          Location {
            X: 3.29066658
            Z: -29.2916203
          }
          Rotation {
          }
          Scale {
            X: 0.142251402
            Y: 0.128545925
            Z: 0.289817691
          }
        }
        ParentId: 17011555173446533652
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.66705751
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
            Id: 5580378743840301598
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4262497381848255868
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 4.4172883
            Y: 2.58597231
            Z: -1.4750998
          }
          Rotation {
            Yaw: -179.999954
            Roll: 175.000046
          }
          Scale {
            X: 0.194394961
            Y: 0.158299267
            Z: 0.313721627
          }
        }
        ParentId: 17011555173446533652
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.34121576
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.323039919
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11059182969036795669
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -3.45589757
            Y: -2.12629032
            Z: 1.16504121
          }
          Rotation {
            Pitch: -9.99999714
            Yaw: -179.999954
            Roll: -179.999939
          }
          Scale {
            X: 0.194394961
            Y: 0.158299267
            Z: 0.313721627
          }
        }
        ParentId: 17011555173446533652
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.34121576
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.323039919
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4760936863374940487
        Name: "Sphere"
        Transform {
          Location {
            X: 2.33808231
            Y: -0.499965101
            Z: -8.66609764
          }
          Rotation {
            Pitch: -11.2499971
          }
          Scale {
            X: 0.246865273
            Y: 0.154794604
            Z: 0.303563356
          }
        }
        ParentId: 17011555173446533652
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.34121576
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.323039919
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 4549586277971521023
        Name: "Sphere"
        Transform {
          Location {
            X: 3.30592537
            Y: -0.166713163
            Z: -38.0825233
          }
          Rotation {
          }
          Scale {
            X: 0.191359937
            Y: 0.174976572
            Z: 0.132055417
          }
        }
        ParentId: 17011555173446533652
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14452343320500344022
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.34121576
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.323039919
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
            Id: 8031004411755435841
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 7609028320685270873
        Name: "right_knee"
        Transform {
          Location {
            X: -4.09307861
            Y: 8.48840332
            Z: 38.0329437
          }
          Rotation {
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 10308457038102569865
        ChildIds: 5965276517077405259
        ChildIds: 12691991324841306332
        ChildIds: 12581264553339600049
        ChildIds: 13521154777722961359
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttachAtZero"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 5965276517077405259
        Name: "Sphere"
        Transform {
          Location {
            X: -1.51968813
            Z: -51.0336914
          }
          Rotation {
          }
          Scale {
            X: 0.109952055
            Y: 0.0832929313
            Z: 0.121347181
          }
        }
        ParentId: 7609028320685270873
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12691991324841306332
        Name: "Capsule"
        Transform {
          Location {
            Y: -2.17686224
            Z: 7.44823933
          }
          Rotation {
            Roll: -179.999939
          }
          Scale {
            X: 0.147027984
            Y: 0.1314473
            Z: 0.4
          }
        }
        ParentId: 7609028320685270873
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.45703912
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12581264553339600049
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -3.61903572
            Y: -0.17682755
            Z: -19.9321308
          }
          Rotation {
            Pitch: 6
            Yaw: 2.68273883e-08
            Roll: -176.999969
          }
          Scale {
            X: 0.12763381
            Y: 0.127634615
            Z: 0.34526965
          }
        }
        ParentId: 7609028320685270873
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22359669
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 13521154777722961359
        Name: "Capsule"
        Transform {
          Location {
            X: 4.18029737
            Y: -2.17686224
            Z: 7.7285161
          }
          Rotation {
            Pitch: -4.99999857
            Roll: -179.999939
          }
          Scale {
            X: 0.166900501
            Y: 0.131447315
            Z: 0.182641029
          }
        }
        ParentId: 7609028320685270873
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13896026857617441277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22359669
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
            Id: 1938148825372685458
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 11236548677140355180
        Name: "FollowRoot"
        Transform {
          Location {
            Z: 73
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7893902007220614420
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
        Id: 17519643696600139572
        Name: "Skeleton Mob"
        Transform {
          Location {
            Z: 73
          }
          Rotation {
          }
          Scale {
            X: 0.7
            Y: 0.7
            Z: 0.7
          }
        }
        ParentId: 7893902007220614420
        UnregisteredParameters {
          Overrides {
            Name: "cs:AsleepStance"
            String: "1hand_melee_idle_relaxed"
          }
          Overrides {
            Name: "cs:IdleStance"
            String: "1hand_melee_idle_ready"
          }
          Overrides {
            Name: "cs:RunStance"
            String: "1hand_melee_run_forward"
          }
          Overrides {
            Name: "cs:StareStance"
            String: "1hand_melee_idle_ready"
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
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15024687653597933384
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14324126384198850775
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          AnimatedMesh {
            AnimationStance: "unarmed_idle_ready"
            AnimationStancePlaybackRate: 1
            AnimationStanceShouldLoop: true
            AnimationPlaybackRateMultiplier: 1
            PlayOnStartAnimation {
              PlaybackRate: 1
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
      Id: 5580378743840301598
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 11236189850874066005
      Name: "Heart - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_heart_polished_001"
      }
    }
    Assets {
      Id: 1938148825372685458
      Name: "Teardrop - Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_truncated_teardrop_001"
      }
    }
    Assets {
      Id: 17976629509544642908
      Name: "Rock Flat 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_004"
      }
    }
    Assets {
      Id: 13981696299924831856
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 18434079688766523124
      Name: "Metal Basic 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_basic_001"
      }
    }
    Assets {
      Id: 661936150573919216
      Name: "Prism - 3-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_001"
      }
    }
    Assets {
      Id: 7230573006973786088
      Name: "Decal Bullet Damage Metal"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_bullet_metal_001"
      }
    }
    Assets {
      Id: 15614259856505195515
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 11353538719389873434
      Name: "Lens"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_lense_001"
      }
    }
    Assets {
      Id: 9507970697836095688
      Name: "Thorn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_002"
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
      Id: 11337413471323694429
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
      }
    }
    Assets {
      Id: 8031004411755435841
      Name: "Cylinder - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_rounded_002"
      }
    }
    Assets {
      Id: 17211146951615485288
      Name: "Bone Human Skull 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_skull_01_ref"
      }
    }
    Assets {
      Id: 8920166470127210509
      Name: "Fantasy Gauntlet Hand 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_gauntlet_hand_001"
      }
    }
    Assets {
      Id: 3077043113591575273
      Name: "Metal Iron Rusted 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_003"
      }
    }
    Assets {
      Id: 17168562580236810812
      Name: "Fantasy Gauntlet Arm 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_gauntlet_arm_001"
      }
    }
    Assets {
      Id: 960891434955978534
      Name: "Cone"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_001"
      }
    }
    Assets {
      Id: 4904779893906915148
      Name: "Fabric Burlap Old 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fan_fabric_burlap_001_uv"
      }
    }
    Assets {
      Id: 8936463881719161671
      Name: "Ring - Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_005"
      }
    }
    Assets {
      Id: 5649559338683583195
      Name: "Fantasy Shield Strap 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_shield_strap_001"
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
    Assets {
      Id: 4873121214410681542
      Name: "Manticore Logo"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_logo_manticore_01"
      }
    }
    Assets {
      Id: 16132958878921067135
      Name: "Sign Bracket - Square"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_signbracket_square_001"
      }
    }
    Assets {
      Id: 2901702164758099337
      Name: "Ring - Extra Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_006"
      }
    }
    Assets {
      Id: 14324126384198850775
      Name: "Skeleton Mob"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_human_guy_skelington_001_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
