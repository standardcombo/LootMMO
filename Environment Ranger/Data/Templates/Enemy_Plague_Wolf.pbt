Assets {
  Id: 2634101557434808962
  Name: "Enemy_Plague_Wolf"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5313871001125585813
      Objects {
        Id: 5313871001125585813
        Name: "Enemy_Plague_Wolf"
        Transform {
          Scale {
            X: 1.6
            Y: 1.6
            Z: 1.6
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3124532127187459655
        ChildIds: 12691739239962413603
        ChildIds: 2917564396888722306
        ChildIds: 5231484171300456939
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
            String: "Plague Wolf"
          }
          Overrides {
            Name: "cs:Level"
            Int: 3
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 45
          }
          Overrides {
            Name: "cs:MoveSpeed"
            Float: 300
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
            Float: 110
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 100
          }
          Overrides {
            Name: "cs:Experience"
            Float: 8
          }
          Overrides {
            Name: "cs:Task1"
            String: "plague_wolf_bite"
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
            String: "HREpicTrash"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0
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
            Float: 0.12
          }
          Overrides {
            Name: "cs:MovementEffectTemplate"
            AssetReference {
              Id: 2781885333210772814
            }
          }
          Overrides {
            Name: "cs:DeathEffectTemplate"
            AssetReference {
              Id: 535899200984406029
            }
          }
          Overrides {
            Name: "cs:FollowRoot"
            ObjectReference {
              SubObjectId: 2917564396888722306
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
        Id: 3124532127187459655
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
        ParentId: 5313871001125585813
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 12691739239962413603
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 5231484171300456939
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
        Id: 12691739239962413603
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
        ParentId: 5313871001125585813
        ChildIds: 15009056231743796449
        ChildIds: 14259334958327464595
        ChildIds: 17824437734351304843
        ChildIds: 9762851602077010040
        ChildIds: 6411058933992854588
        ChildIds: 5396776209146739799
        ChildIds: 9872036751685737165
        ChildIds: 9775558535015541179
        ChildIds: 13535145041426876312
        ChildIds: 4836830452198561565
        ChildIds: 14527603507465185535
        ChildIds: 12673356625690367053
        ChildIds: 4973412671889100169
        ChildIds: 17617059918012280391
        ChildIds: 5043545698885563038
        ChildIds: 8632658878790735744
        ChildIds: 5405812649114312278
        ChildIds: 16955357891976819691
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
        Id: 15009056231743796449
        Name: "head"
        Transform {
          Location {
            X: -8.64355564
            Y: -55.7236633
            Z: 41.2495232
          }
          Rotation {
            Pitch: -50.1028175
            Yaw: -86.0520401
            Roll: -10.8784685
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 16783859253997507424
        ChildIds: 3601617914051688194
        ChildIds: 17679081468660229298
        ChildIds: 17312637930846885483
        ChildIds: 12325829557412156181
        ChildIds: 13287745818471310775
        ChildIds: 12568616906150673321
        ChildIds: 2732021816762140303
        ChildIds: 9699908862942267506
        ChildIds: 9273399955957128910
        ChildIds: 16214622001368309461
        ChildIds: 9813907553501320199
        ChildIds: 11192666492300343501
        ChildIds: 12420844453321977392
        ChildIds: 3560797148681856978
        ChildIds: 12235958378533198546
        ChildIds: 14886180690323064526
        ChildIds: 1440287239351785685
        ChildIds: 3758907096011868160
        ChildIds: 18154299498795105426
        ChildIds: 16557853239639502883
        ChildIds: 7533121746135545807
        ChildIds: 17103634149897964271
        ChildIds: 14123192524170734361
        ChildIds: 12681489449139597589
        ChildIds: 15163363861772836165
        ChildIds: 16268896846804701240
        ChildIds: 2508971681503855039
        ChildIds: 989330122453407283
        ChildIds: 8870672377860122154
        ChildIds: 17349651617388075012
        ChildIds: 17668805270943759439
        ChildIds: 16705833435461825771
        ChildIds: 3263322662774244343
        ChildIds: 14432524176027087267
        ChildIds: 15092716110576955241
        UnregisteredParameters {
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
        Id: 16783859253997507424
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 20.9116974
            Y: 3.38602257
            Z: -9.0227623
          }
          Rotation {
            Pitch: 12.9788
            Yaw: -107.895332
            Roll: 4.82206774
          }
          Scale {
            X: 0.0291723292
            Y: 0.0226012282
            Z: 0.0291932113
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 3601617914051688194
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 17.0065575
            Y: 3.96156931
            Z: -8.85200119
          }
          Rotation {
            Pitch: 12.1892776
            Yaw: -91.8707352
            Roll: 4.62770796
          }
          Scale {
            X: 0.0268688258
            Y: 0.0208165832
            Z: 0.0268880557
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 17679081468660229298
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 22.899292
            Y: -3.15560436
            Z: -9.21057129
          }
          Rotation {
            Pitch: -13.4234934
            Yaw: -65.7391281
            Roll: 3.36713219
          }
          Scale {
            X: -0.0334941335
            Y: 0.0259495378
            Z: 0.0335181244
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 17312637930846885483
        Name: "Horn"
        Transform {
          Location {
            X: 24.3650932
            Y: 0.188460872
            Z: -9.78676701
          }
          Rotation {
            Pitch: -1.28677344
            Yaw: 102.073257
            Roll: -49.465229
          }
          Scale {
            X: 0.0129958605
            Y: 0.0129957162
            Z: 0.0178859271
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 12325829557412156181
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 18.8632812
            Y: -4.2510643
            Z: -8.97949219
          }
          Rotation {
            Pitch: -12.9792643
            Yaw: -72.1017685
            Roll: 1.11356211
          }
          Scale {
            X: -0.0291723292
            Y: 0.0226012282
            Z: 0.0291932113
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 13287745818471310775
        Name: "Horn"
        Transform {
          Location {
            X: 24.3650818
            Y: -0.759842932
            Z: -9.7868
          }
          Rotation {
            Pitch: 0.307215065
            Yaw: 76.8419495
            Roll: -49.4123688
          }
          Scale {
            X: 0.0129958605
            Y: 0.0129957162
            Z: 0.0178859271
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 12568616906150673321
        Name: "Horn"
        Transform {
          Location {
            X: 23.8376808
            Y: -1.60829365
            Z: -9.8180027
          }
          Rotation {
            Pitch: 7.4142108
            Yaw: 68.4654694
            Roll: -49.9794197
          }
          Scale {
            X: 0.0187797248
            Y: 0.0187795125
            Z: 0.0258461349
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 2732021816762140303
        Name: "Horn"
        Transform {
          Location {
            X: 23.8376083
            Y: 1.30790353
            Z: -9.81798553
          }
          Rotation {
            Pitch: -6.69320917
            Yaw: 108.45137
            Roll: -49.9113
          }
          Scale {
            X: 0.0187797248
            Y: 0.0187795125
            Z: 0.0258461349
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 9699908862942267506
        Name: "Bone Human Jaw 01"
        Transform {
          Location {
            X: 9.88160324
            Y: -0.164948851
            Z: -5.84273148
          }
          Rotation {
            Pitch: -0.000280037755
            Yaw: -89.9986267
            Roll: -1.71871829
          }
          Scale {
            X: 0.725493729
            Y: 1.38668299
            Z: 0.520277143
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 16.8846569
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
            Id: 3599979962362115521
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
        Id: 9273399955957128910
        Name: "Signal Flare"
        Transform {
          Location {
            X: -22.1041851
            Y: 0.416815579
            Z: -24.5864468
          }
          Rotation {
            Pitch: -51.3441
            Yaw: 178.889709
            Roll: -0.299784929
          }
          Scale {
            X: 0.258162469
            Y: 0.258162469
            Z: 0.258162469
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "bp:Smoke"
            Bool: true
          }
          Overrides {
            Name: "bp:Coronal Glow"
            Bool: true
          }
          Overrides {
            Name: "bp:Central Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Flash"
            Bool: false
          }
          Overrides {
            Name: "bp:Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.77
              B: 0.00509936549
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
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
            Id: 3749675108062627523
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
        Id: 16214622001368309461
        Name: "Cone - Truncated Hollow Wide Thin"
        Transform {
          Location {
            X: 11.4888763
            Y: -1.19514513
            Z: 0.344594717
          }
          Rotation {
            Pitch: 8.82476139
            Yaw: -91.6778793
            Roll: 93.7802429
          }
          Scale {
            X: 0.0658787265
            Y: 0.131276622
            Z: 0.192322716
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.476434529
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.66143167
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
            Id: 15311550138640852139
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
        Id: 9813907553501320199
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 12.4560661
            Y: -1.59301102
            Z: 2.28622437
          }
          Rotation {
            Pitch: 0.0145073207
            Yaw: -89.9534836
            Roll: -18.1274529
          }
          Scale {
            X: 0.226055175
            Y: 0.325779319
            Z: 0.640386343
          }
        }
        ParentId: 15009056231743796449
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
            Id: 3179030315686557415
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
        Id: 11192666492300343501
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 5.0389843
            Y: -6.10761344e-05
            Z: -6.06854248
          }
          Rotation {
            Pitch: -0.000266377348
            Yaw: -89.9985886
            Roll: -18.1274586
          }
          Scale {
            X: 0.696941555
            Y: 0.579926
            Z: 0.609613061
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 14.3301697
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
        Id: 12420844453321977392
        Name: "Sphere"
        Transform {
          Location {
            X: 13.0763826
            Y: -5.15083885
            Z: 0.548734665
          }
          Rotation {
            Pitch: 23.3566227
            Yaw: 0.000254814746
            Roll: 36.554821
          }
          Scale {
            X: 0.0411891155
            Y: 0.041189231
            Z: 0.0650662854
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3702191406046426907
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.559999943
              B: 0.0259602703
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
        Id: 3560797148681856978
        Name: "Sphere"
        Transform {
          Location {
            X: 13.6477737
            Y: 4.65558958
            Z: 0.959407687
          }
          Rotation {
            Pitch: 23.3566093
            Yaw: 0.000238075081
            Roll: -25.1005554
          }
          Scale {
            X: 0.0411891155
            Y: 0.041189231
            Z: 0.0650662854
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3702191406046426907
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.559999943
              B: 0.0259602703
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
        Id: 12235958378533198546
        Name: "Cone - Truncated Hollow Wide Thin"
        Transform {
          Location {
            X: 11.4651585
            Y: 0.916676044
            Z: 0.449150205
          }
          Rotation {
            Pitch: 10.1365948
            Yaw: 92.1781616
            Roll: -94.1605301
          }
          Scale {
            X: 0.0658787265
            Y: 0.131276622
            Z: 0.192322716
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.476434529
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.66143167
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
            Id: 15311550138640852139
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
        Id: 14886180690323064526
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: 12.16119
            Y: 2.90600491
            Z: -2.49049783
          }
          Rotation {
            Pitch: 62.7605972
            Yaw: -143.99025
            Roll: 130.236038
          }
          Scale {
            X: 0.339060694
            Y: 0.592663467
            Z: 0.425594896
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 17.5914822
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 23.440897
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
            Id: 17593121996335854106
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
        Id: 1440287239351785685
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: 12.161377
            Y: -2.88892746
            Z: -2.49047852
          }
          Rotation {
            Pitch: 65.1145248
            Yaw: 142.799026
            Roll: 52.003952
          }
          Scale {
            X: 0.339060694
            Y: 0.592663467
            Z: -0.425453305
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 17.5914822
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 23.440897
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
            Id: 17593121996335854106
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
        Id: 3758907096011868160
        Name: "Horn"
        Transform {
          Location {
            X: 22.8802
            Y: 2.6231823
            Z: -0.476651192
          }
          Rotation {
            Pitch: 3.01605439
            Yaw: -78.7898407
            Roll: 126.188492
          }
          Scale {
            X: 0.0207467843
            Y: 0.0207478218
            Z: 0.0387792215
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 18154299498795105426
        Name: "Horn"
        Transform {
          Location {
            X: 22.8012657
            Y: -2.72392464
            Z: -0.453710556
          }
          Rotation {
            Pitch: -2.49416637
            Yaw: -99.2447281
            Roll: 120.821
          }
          Scale {
            X: 0.0207467843
            Y: 0.0207478218
            Z: 0.0387792215
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 16557853239639502883
        Name: "Horn"
        Transform {
          Location {
            X: 24.6578026
            Y: 0.921586871
            Z: -0.536251068
          }
          Rotation {
            Pitch: 3.58712626
            Yaw: -78.9583435
            Roll: 118.005196
          }
          Scale {
            X: 0.0116133
            Y: 0.011613979
            Z: 0.0172466971
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 7533121746135545807
        Name: "Horn"
        Transform {
          Location {
            X: 24.6578388
            Y: -1.26374853
            Z: -0.536251068
          }
          Rotation {
            Pitch: -2.9662416
            Yaw: -99.1049271
            Roll: 117.894989
          }
          Scale {
            X: 0.0116133
            Y: 0.011613979
            Z: 0.0172466971
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 17103634149897964271
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 21.4266949
            Y: -1.70435321
            Z: -0.0842464
          }
          Rotation {
            Pitch: 24.1044807
            Yaw: -80.0570679
            Roll: 51.8425331
          }
          Scale {
            X: 0.0333702415
            Y: 0.0750289634
            Z: 0.135625765
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.517158449
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.811962724
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
        Id: 14123192524170734361
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: 20.8379765
            Y: -2.62005711
            Z: -2.57401
          }
          Rotation {
            Pitch: 47.9988441
            Yaw: -7.85326052
            Roll: 81.2151642
          }
          Scale {
            X: 0.0750978068
            Y: 0.0750978068
            Z: 0.0750978068
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 8704263807241749105
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
        Id: 12681489449139597589
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: 20.8536739
            Y: 2.66579485
            Z: -2.48509884
          }
          Rotation {
            Pitch: 45.0665627
            Yaw: 3.97152209
            Roll: 88.1139603
          }
          Scale {
            X: 0.0750978068
            Y: 0.0750978068
            Z: 0.0750978068
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 8704263807241749105
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
        Id: 15163363861772836165
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 21.3328896
            Y: 1.42245984
            Z: -0.105060339
          }
          Rotation {
            Pitch: -20.5637245
            Yaw: -98.7337418
            Roll: 53.4033699
          }
          Scale {
            X: 0.0333702415
            Y: 0.0750289634
            Z: 0.135625765
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.517158449
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.811962724
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
        Id: 16268896846804701240
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 19.4762573
            Y: -3.79731321
            Z: -2.68896484
          }
          Rotation {
            Pitch: 12.4995117
            Yaw: -71.7697067
            Roll: -3.3156991
          }
          Scale {
            X: -0.0285833888
            Y: 0.0221451391
            Z: -0.0302514229
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 2508971681503855039
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 15.5680542
            Y: -4.37302828
            Z: -2.7543335
          }
          Rotation {
            Pitch: 12.1342745
            Yaw: -87.7936249
            Roll: -3.04774594
          }
          Scale {
            X: -0.0263263918
            Y: 0.0203965232
            Z: -0.0278627221
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 989330122453407283
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 23.1582642
            Y: -2.66735649
            Z: -2.22137451
          }
          Rotation {
            Pitch: 12.7839069
            Yaw: -65.4116898
            Roll: -1.9226284
          }
          Scale {
            X: -0.0328179598
            Y: 0.025425896
            Z: -0.0347331092
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 8870672377860122154
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 21.6127319
            Y: 2.34163761
            Z: -2.53234863
          }
          Rotation {
            Pitch: -14.5617094
            Yaw: -113.619263
            Roll: -6.0087266
          }
          Scale {
            X: 0.0328179635
            Y: 0.025425896
            Z: -0.0347331092
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 17349651617388075012
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 17.5927124
            Y: 3.43687057
            Z: -2.96075439
          }
          Rotation {
            Pitch: -13.8263855
            Yaw: -107.258293
            Roll: -3.86196685
          }
          Scale {
            X: 0.0285833906
            Y: 0.0221451391
            Z: -0.0302514229
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 17668805270943759439
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 14.0691528
            Y: 3.70483208
            Z: -3.39453125
          }
          Rotation {
            Pitch: -12.2666159
            Yaw: -91.263092
            Roll: -7.49624491
          }
          Scale {
            X: 0.0229294803
            Y: 0.0177647509
            Z: -0.0242675748
          }
        }
        ParentId: 15009056231743796449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 17019787265848098694
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
        Id: 16705833435461825771
        Name: "Bone Human Scapula 01"
        Transform {
          Location {
            X: 9.26244545
            Y: 2.35666561
            Z: 6.54225111
          }
          Rotation {
            Pitch: 8.94639301
            Yaw: -92.776947
            Roll: -96.5531387
          }
          Scale {
            X: 0.329200655
            Y: 0.361890465
            Z: 0.45602563
          }
        }
        ParentId: 15009056231743796449
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
            Id: 18124923500266954138
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
        Id: 3263322662774244343
        Name: "Bone Human Scapula 01"
        Transform {
          Location {
            X: 9.37329102
            Y: -2.23198509
            Z: 6.52990723
          }
          Rotation {
            Pitch: -8.45924377
            Yaw: -84.8250427
            Roll: -96.526619
          }
          Scale {
            X: -0.329400629
            Y: 0.361890465
            Z: 0.45602563
          }
        }
        ParentId: 15009056231743796449
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
            Id: 18124923500266954138
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
        Id: 14432524176027087267
        Name: "Bone Human Scapula 01"
        Transform {
          Location {
            X: -0.722412109
            Y: -6.72645521
            Z: 3.65112305
          }
          Rotation {
            Pitch: 14.4042673
            Yaw: -25.8410091
            Roll: 179.854446
          }
          Scale {
            X: -0.326544523
            Y: 0.432099283
            Z: 0.320837468
          }
        }
        ParentId: 15009056231743796449
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
            Id: 18124923500266954138
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
        Id: 15092716110576955241
        Name: "Bone Human Scapula 01"
        Transform {
          Location {
            X: -1.08864892
            Y: 6.54603291
            Z: 3.29262924
          }
          Rotation {
            Pitch: -14.0097418
            Yaw: -153.933517
            Roll: 176.373856
          }
          Scale {
            X: 0.326346278
            Y: 0.432099283
            Z: 0.320837468
          }
        }
        ParentId: 15009056231743796449
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
            Id: 18124923500266954138
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
        Id: 14259334958327464595
        Name: "neck"
        Transform {
          Location {
            X: -7.56729126
            Y: -38.5279579
            Z: 43.3737488
          }
          Rotation {
            Pitch: -80.0884552
            Yaw: 41.3021889
            Roll: -135.310745
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 866409734877877070
        ChildIds: 11075864193390449236
        UnregisteredParameters {
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
        Id: 866409734877877070
        Name: "Bone Human Tibula 01"
        Transform {
          Location {
            X: -1.5638175
            Y: -0.405029297
            Z: 8.49267101
          }
          Rotation {
            Pitch: 0.00022539623
            Yaw: -88.0722351
            Roll: -18.0775146
          }
          Scale {
            X: 0.424174219
            Y: 0.424174219
            Z: 0.234457657
          }
        }
        ParentId: 14259334958327464595
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
            Id: 11991112382965448767
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
        Id: 11075864193390449236
        Name: "Signal Flare"
        Transform {
          Location {
            X: 9.25533295
            Y: -0.255860239
            Z: 21.6091309
          }
          Rotation {
            Pitch: -82.152092
            Yaw: 5.08558416
            Roll: 173.794922
          }
          Scale {
            X: 0.258162469
            Y: 0.258162469
            Z: 0.258162469
          }
        }
        ParentId: 14259334958327464595
        UnregisteredParameters {
          Overrides {
            Name: "bp:Smoke"
            Bool: true
          }
          Overrides {
            Name: "bp:Coronal Glow"
            Bool: false
          }
          Overrides {
            Name: "bp:Central Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Flash"
            Bool: false
          }
          Overrides {
            Name: "bp:Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.77
              B: 0.00509936549
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
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
            Id: 3749675108062627523
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
        Id: 17824437734351304843
        Name: "spine"
        Transform {
          Location {
            X: -6.64039898
            Y: -11.602047
            Z: 52.8888245
          }
          Rotation {
            Pitch: -70.4890518
            Yaw: 65.4300919
            Roll: -158.74968
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 10143511106848412266
        ChildIds: 6392423308062389284
        ChildIds: 4121286076943283886
        ChildIds: 7111587401227754869
        ChildIds: 14146719038280325875
        ChildIds: 11171407205117724318
        ChildIds: 181030706381372378
        ChildIds: 17112617509235198500
        ChildIds: 6020273570058318572
        ChildIds: 12204218720518523809
        UnregisteredParameters {
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
        Id: 10143511106848412266
        Name: "Bone Human Ribcage 01"
        Transform {
          Location {
            X: 2.77040768
            Y: -0.520019531
            Z: 1.58302057
          }
          Rotation {
            Pitch: 8.87924543e-05
            Yaw: 90
            Roll: -14.4281921
          }
          Scale {
            X: 0.569140911
            Y: 0.760255396
            Z: 0.760255635
          }
        }
        ParentId: 17824437734351304843
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
            Id: 5618924995373258551
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
        Id: 6392423308062389284
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: -5.98371029
            Y: 0.0012512207
            Z: -0.324679852
          }
          Rotation {
            Pitch: 6.83018879e-05
            Yaw: 90.0499191
            Roll: 173.550217
          }
          Scale {
            X: 0.364148647
            Y: 0.516358435
            Z: 0.602732182
          }
        }
        ParentId: 17824437734351304843
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
            Id: 6661918263957923142
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
        Id: 4121286076943283886
        Name: "Horn"
        Transform {
          Location {
            X: -1.88114166
            Y: -0.00662282109
            Z: 25.2035179
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9998169
            Roll: 83.0376129
          }
          Scale {
            X: 0.0259741675
            Y: 0.0367807895
            Z: 0.0609991662
          }
        }
        ParentId: 17824437734351304843
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 7111587401227754869
        Name: "Horn"
        Transform {
          Location {
            X: -5.79145813
            Y: -0.00662241131
            Z: -10.3870296
          }
          Rotation {
            Yaw: -3.57632518
            Roll: -21.354847
          }
          Scale {
            X: 0.0235603824
            Y: 0.0333627164
            Z: 0.0526736081
          }
        }
        ParentId: 17824437734351304843
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 14146719038280325875
        Name: "Horn"
        Transform {
          Location {
            X: -6.11162424
            Y: -0.00659216195
            Z: 11.7960367
          }
          Rotation {
            Pitch: 5.46415104e-05
            Yaw: 89.9998322
            Roll: 69.8876877
          }
          Scale {
            X: 0.0297134165
            Y: 0.0420755334
            Z: 0.0819496438
          }
        }
        ParentId: 17824437734351304843
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 11171407205117724318
        Name: "Horn"
        Transform {
          Location {
            X: -8.38468361
            Y: -0.00659167767
            Z: 3.17827606
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 89.9997787
            Roll: 75.70961
          }
          Scale {
            X: 0.0257650539
            Y: 0.0364846513
            Z: 0.0666863099
          }
        }
        ParentId: 17824437734351304843
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 181030706381372378
        Name: "Horn"
        Transform {
          Location {
            X: -8.56622791
            Y: -0.00659246
            Z: -5.55403519
          }
          Rotation {
            Pitch: 0.000102452832
            Yaw: 89.9997864
            Roll: 85.7163086
          }
          Scale {
            X: 0.0233336072
            Y: 0.033041317
            Z: 0.0573759824
          }
        }
        ParentId: 17824437734351304843
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 17112617509235198500
        Name: "Horn"
        Transform {
          Location {
            X: -8.76613617
            Y: -0.00659234822
            Z: -15.1702204
          }
          Rotation {
            Pitch: 0.000177584909
            Yaw: 89.9995346
            Roll: 89.9732056
          }
          Scale {
            X: 0.0198766794
            Y: 0.0281461719
            Z: 0.0488756
          }
        }
        ParentId: 17824437734351304843
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 6020273570058318572
        Name: "Horn"
        Transform {
          Location {
            X: -7.50394344
            Y: -0.00659205
            Z: -23.1052036
          }
          Rotation {
            Pitch: 0.000286867929
            Yaw: 89.9995
            Roll: 99.5604553
          }
          Scale {
            X: 0.0198767446
            Y: 0.0281466339
            Z: 0.0395439044
          }
        }
        ParentId: 17824437734351304843
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
            Id: 10227161647766562745
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
        Id: 12204218720518523809
        Name: "Signal Flare"
        Transform {
          Location {
            X: 5.95146656
            Y: 0.830527246
            Z: -8.87085724
          }
          Rotation {
            Pitch: -70.9764557
            Yaw: 2.12804699
            Roll: 176.821213
          }
          Scale {
            X: 0.258162469
            Y: 0.258162469
            Z: 0.258162469
          }
        }
        ParentId: 17824437734351304843
        UnregisteredParameters {
          Overrides {
            Name: "bp:Smoke"
            Bool: true
          }
          Overrides {
            Name: "bp:Coronal Glow"
            Bool: false
          }
          Overrides {
            Name: "bp:Central Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Flash"
            Bool: false
          }
          Overrides {
            Name: "bp:Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.77
              B: 0.00509936549
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
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
            Id: 3749675108062627523
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
        Id: 9762851602077010040
        Name: "right_shoulder"
        Transform {
          Location {
            X: 1.1707592
            Y: -32.1014824
            Z: 43.0761566
          }
          Rotation {
            Pitch: -30.0147667
            Yaw: -90.3995667
            Roll: -8.03519535
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 9451891617131028248
        UnregisteredParameters {
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
        Id: 9451891617131028248
        Name: "Bone Human Femur 01"
        Transform {
          Location {
            X: -0.802032471
            Y: -1.05587769
            Z: -10.5930786
          }
          Rotation {
            Pitch: -3.51016235
            Yaw: -70.6860352
            Roll: 9.90760422
          }
          Scale {
            X: -0.395
            Y: 0.395024568
            Z: 0.395024568
          }
        }
        ParentId: 9762851602077010040
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
            Id: 12628591842173594373
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
        Id: 6411058933992854588
        Name: "right_elbow"
        Transform {
          Location {
            X: 4.73880863
            Y: -19.7879734
            Z: 21.7205715
          }
          Rotation {
            Pitch: -11.4830503
            Yaw: -93.0197296
            Roll: -7.0945034
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 14755113372484244736
        ChildIds: 1289918216334761858
        UnregisteredParameters {
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
        Id: 14755113372484244736
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 0.161437988
            Y: -0.296203613
            Z: -11.3230286
          }
          Rotation {
            Pitch: -1.26255357
            Yaw: 100.109833
            Roll: -78.7276154
          }
          Scale {
            X: 0.240868568
            Y: -0.305830628
            Z: 0.204885557
          }
        }
        ParentId: 6411058933992854588
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
            Id: 3179030315686557415
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
        Id: 1289918216334761858
        Name: "Bone Human Humerus 01"
        Transform {
          Location {
            X: -0.45802635
            Y: -0.182578757
            Z: -5.69854498
          }
          Rotation {
            Pitch: -6.65812254
            Yaw: -0.0686450303
            Roll: 1.19355845
          }
          Scale {
            X: 0.376262605
            Y: 0.376262605
            Z: 0.376262605
          }
        }
        ParentId: 6411058933992854588
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
            Id: 12533718179456080308
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
        Id: 5396776209146739799
        Name: "right_wrist"
        Transform {
          Location {
            X: 7.53077602
            Y: -15.8048382
            Z: 1.40942943
          }
          Rotation {
            Pitch: -19.3174267
            Yaw: -91.9893
            Roll: -7.36979675
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 16652813668295623940
        ChildIds: 14488646624905432000
        ChildIds: 11287838339082464658
        ChildIds: 7662317384472764738
        ChildIds: 2468727559136059631
        UnregisteredParameters {
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
        Id: 16652813668295623940
        Name: "Horn"
        Transform {
          Location {
            X: -0.518249512
            Y: 0.765131
            Z: -0.383728027
          }
          Rotation {
            Pitch: 0.346201777
            Yaw: 127.142776
            Roll: -110.332512
          }
          Scale {
            X: 0.0205670521
            Y: -0.0283046458
            Z: 0.0283046458
          }
        }
        ParentId: 5396776209146739799
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 14488646624905432000
        Name: "Horn"
        Transform {
          Location {
            X: 0.331604
            Y: -0.465000153
            Z: -0.383728027
          }
          Rotation {
            Pitch: -0.143249556
            Yaw: 81.9685593
            Roll: -108.937973
          }
          Scale {
            X: 0.0205670521
            Y: -0.0283046458
            Z: 0.0283046458
          }
        }
        ParentId: 5396776209146739799
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 11287838339082464658
        Name: "Horn"
        Transform {
          Location {
            X: 0.12121582
            Y: -1.57185364
            Z: -0.38369751
          }
          Rotation {
            Pitch: -0.341195256
            Yaw: 62.9054718
            Roll: -115.12442
          }
          Scale {
            X: 0.0205670521
            Y: -0.0283046458
            Z: 0.0283046458
          }
        }
        ParentId: 5396776209146739799
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 7662317384472764738
        Name: "Horn"
        Transform {
          Location {
            X: 2.61621094
            Y: -2.88587952
            Z: -3.58822632
          }
          Rotation {
            Pitch: -2.46034336
            Yaw: 73.0194244
            Roll: -78.3166275
          }
          Scale {
            X: 0.0150305722
            Y: -0.0283047557
            Z: 0.028305117
          }
        }
        ParentId: 5396776209146739799
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 2468727559136059631
        Name: "Horn"
        Transform {
          Location {
            X: 1.87249756
            Y: 2.50918579
            Z: -3.70831299
          }
          Rotation {
            Pitch: 3.65121412
            Yaw: 113.022415
            Roll: -77.1309586
          }
          Scale {
            X: 0.0150305722
            Y: -0.0283047557
            Z: 0.028305117
          }
        }
        ParentId: 5396776209146739799
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 9872036751685737165
        Name: "left_shoulder"
        Transform {
          Location {
            X: -14.9038839
            Y: -30.8546829
            Z: 41.1099548
          }
          Rotation {
            Pitch: -30.0147667
            Yaw: -90.3995667
            Roll: -8.03519535
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 941028135379407763
        UnregisteredParameters {
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
        Id: 941028135379407763
        Name: "Bone Human Femur 01"
        Transform {
          Location {
            X: -0.802247405
            Y: -1.05621159
            Z: -10.5931082
          }
          Rotation {
            Pitch: -3.51016235
            Yaw: -70.6861877
            Roll: 9.90760326
          }
          Scale {
            X: 0.395024568
            Y: 0.395024568
            Z: 0.395024568
          }
        }
        ParentId: 9872036751685737165
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
            Id: 12628591842173594373
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
        Id: 9775558535015541179
        Name: "left_elbow"
        Transform {
          Location {
            X: -11.3370409
            Y: -18.5410671
            Z: 19.75424
          }
          Rotation {
            Pitch: -11.4830503
            Yaw: -93.0197296
            Roll: -7.0945034
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 7597274840774823937
        ChildIds: 3504469830986365822
        UnregisteredParameters {
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
        Id: 7597274840774823937
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 0.161499679
            Y: -0.190903455
            Z: -11.3230343
          }
          Rotation {
            Pitch: -1.26450014
            Yaw: -100.109848
            Roll: 78.7279816
          }
          Scale {
            X: 0.240868568
            Y: 0.305830628
            Z: 0.204885557
          }
        }
        ParentId: 9775558535015541179
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
            Id: 3179030315686557415
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
        Id: 3504469830986365822
        Name: "Bone Human Humerus 01"
        Transform {
          Location {
            X: -0.643243909
            Y: -0.343841612
            Z: -5.24157
          }
          Rotation {
            Pitch: -6.65607357
            Yaw: 0.000110811452
            Roll: -0.00101643184
          }
          Scale {
            X: 0.376262605
            Y: 0.376262605
            Z: 0.376262605
          }
        }
        ParentId: 9775558535015541179
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
            Id: 12533718179456080308
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
        Id: 13535145041426876312
        Name: "left_wrist"
        Transform {
          Location {
            X: -8.53877258
            Y: -14.5560532
            Z: -0.556616724
          }
          Rotation {
            Pitch: -19.3174267
            Yaw: -91.9893
            Roll: -7.36979675
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 15216749510953297939
        ChildIds: 6327638034895962712
        ChildIds: 1432409539321865215
        ChildIds: 11278231532114871431
        UnregisteredParameters {
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
        Id: 15216749510953297939
        Name: "Horn"
        Transform {
          Location {
            X: -0.518223941
            Y: -1.2526505
            Z: -0.383690447
          }
          Rotation {
            Pitch: 0.346194953
            Yaw: -127.142761
            Roll: 110.332504
          }
          Scale {
            X: 0.0205670521
            Y: 0.0283046458
            Z: 0.0283046458
          }
        }
        ParentId: 13535145041426876312
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 6327638034895962712
        Name: "Horn"
        Transform {
          Location {
            X: 0.121189669
            Y: 1.08433497
            Z: -0.383688271
          }
          Rotation {
            Pitch: -0.341181576
            Yaw: -62.9054565
            Roll: 115.12439
          }
          Scale {
            X: 0.0205670521
            Y: 0.0283046458
            Z: 0.0283046458
          }
        }
        ParentId: 13535145041426876312
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 1432409539321865215
        Name: "Horn"
        Transform {
          Location {
            X: 2.61626911
            Y: 2.39836192
            Z: -3.58819842
          }
          Rotation {
            Pitch: -2.46035695
            Yaw: -73.0194321
            Roll: 78.3166122
          }
          Scale {
            X: 0.0150305722
            Y: 0.0283047557
            Z: 0.028305117
          }
        }
        ParentId: 13535145041426876312
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 11278231532114871431
        Name: "Horn"
        Transform {
          Location {
            X: 1.87249279
            Y: -2.99670434
            Z: -3.70828271
          }
          Rotation {
            Pitch: 3.65120721
            Yaw: -113.0224
            Roll: 77.1309662
          }
          Scale {
            X: 0.0150305722
            Y: 0.0283047557
            Z: 0.028305117
          }
        }
        ParentId: 13535145041426876312
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 4836830452198561565
        Name: "right_hip"
        Transform {
          Location {
            X: 1.85961604
            Y: 9.79336834
            Z: 59.8650703
          }
          Rotation {
            Pitch: -34.6263351
            Yaw: -89.6063385
            Roll: -8.46116829
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 11939618682477573169
        UnregisteredParameters {
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
        Id: 11939618682477573169
        Name: "Bone Human Femur 01"
        Transform {
          Location {
            X: 0.459686279
            Y: 0.452636719
            Z: -10.1800728
          }
          Rotation {
            Pitch: 6.13456154
            Yaw: -105.942078
            Roll: 2.13586378
          }
          Scale {
            X: -0.378264815
            Y: 0.378288329
            Z: 0.378288329
          }
        }
        ParentId: 4836830452198561565
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
            Id: 12628591842173594373
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
        Id: 14527603507465185535
        Name: "right_knee"
        Transform {
          Location {
            X: 5.01348972
            Y: 22.1849613
            Z: 41.9543457
          }
          Rotation {
            Pitch: -55.0440559
            Yaw: -84.3900528
            Roll: -12.2004709
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 13594967917167694504
        UnregisteredParameters {
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
        Id: 13594967917167694504
        Name: "Bone Human Humerus 01"
        Transform {
          Location {
            X: -0.269293249
            Y: -0.188182324
            Z: -5.67859221
          }
          Rotation {
            Pitch: -3.81242704
            Yaw: -0.00166750816
            Roll: 4.34196711
          }
          Scale {
            X: 0.303260565
            Y: 0.303260565
            Z: 0.303260565
          }
        }
        ParentId: 14527603507465185535
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
            Id: 12533718179456080308
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
        Id: 12673356625690367053
        Name: "right_ankle"
        Transform {
          Location {
            X: 6.92059755
            Y: 34.0109367
            Z: 33.8573036
          }
          Rotation {
            Pitch: -16.6331482
            Yaw: -92.3493195
            Roll: -7.25969934
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 16193682524354789156
        UnregisteredParameters {
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
        Id: 16193682524354789156
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 0.0359191895
            Y: 0.207672119
            Z: 2.49269867
          }
          Rotation {
            Pitch: -2.16958213
            Yaw: 99.9545898
            Roll: -73.6141434
          }
          Scale {
            X: 0.298321515
            Y: -0.532417357
            Z: 0.253756076
          }
        }
        ParentId: 12673356625690367053
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
            Id: 3179030315686557415
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
        Id: 4973412671889100169
        Name: "right_foot"
        Transform {
          Location {
            X: 8.79880142
            Y: 37.8018723
            Z: 20.9176178
          }
          Rotation {
            Pitch: -19.3176804
            Yaw: -91.9913635
            Roll: -7.36709356
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 12453160809386730293
        ChildIds: 16612948931308132182
        UnregisteredParameters {
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
        Id: 12453160809386730293
        Name: "Horn"
        Transform {
          Location {
            X: 0.0615844727
            Y: 1.52235985
            Z: -0.0968017578
          }
          Rotation {
            Pitch: 0.347793221
            Yaw: 127.144798
            Roll: -110.331322
          }
          Scale {
            X: 0.0254728049
            Y: -0.0350560024
            Z: 0.0350560024
          }
        }
        ParentId: 4973412671889100169
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 16612948931308132182
        Name: "Horn"
        Transform {
          Location {
            X: 0.853637695
            Y: -1.37202454
            Z: -0.0969238281
          }
          Rotation {
            Pitch: -0.33941257
            Yaw: 62.9074745
            Roll: -115.12532
          }
          Scale {
            X: 0.0254728049
            Y: -0.0350560024
            Z: 0.0350560024
          }
        }
        ParentId: 4973412671889100169
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 17617059918012280391
        Name: "left_hip"
        Transform {
          Location {
            X: -13.2153988
            Y: 10.9662266
            Z: 58.0218544
          }
          Rotation {
            Pitch: -34.6265106
            Yaw: -89.6074905
            Roll: -8.46077728
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 6164908706185471180
        UnregisteredParameters {
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
        Id: 6164908706185471180
        Name: "Bone Human Femur 01"
        Transform {
          Location {
            X: 0.0669411272
            Y: -0.624920547
            Z: -10.2886429
          }
          Rotation {
            Pitch: -2.59103394
            Yaw: -103.373444
            Roll: 4.41658735
          }
          Scale {
            X: 0.378
            Y: 0.378288329
            Z: 0.378288329
          }
        }
        ParentId: 17617059918012280391
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
            Id: 12628591842173594373
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
        Id: 5043545698885563038
        Name: "left_knee"
        Transform {
          Location {
            X: -10.0602245
            Y: 23.3576927
            Z: 40.1103401
          }
          Rotation {
            Pitch: -55.0442
            Yaw: -84.3914185
            Roll: -12.1999121
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 5454987338333883293
        UnregisteredParameters {
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
        Id: 5454987338333883293
        Name: "Bone Human Humerus 01"
        Transform {
          Location {
            X: -0.533689618
            Y: -0.185499042
            Z: -5.87203074
          }
          Rotation {
            Pitch: -3.81243372
            Yaw: -0.000899901788
            Roll: 0.00139626744
          }
          Scale {
            X: 0.303260565
            Y: 0.303260565
            Z: 0.303260565
          }
        }
        ParentId: 5043545698885563038
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
            Id: 12533718179456080308
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
        Id: 8632658878790735744
        Name: "left_ankle"
        Transform {
          Location {
            X: -8.15556717
            Y: 35.1838913
            Z: 32.0133591
          }
          Rotation {
            Pitch: -16.6332855
            Yaw: -92.3503571
            Roll: -7.25935841
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 1151574669697690793
        UnregisteredParameters {
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
        Id: 1151574669697690793
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 0.0358627
            Y: -0.695053637
            Z: 2.49271393
          }
          Rotation {
            Pitch: -2.16745806
            Yaw: -99.9575958
            Roll: 73.6137772
          }
          Scale {
            X: 0.298321515
            Y: 0.532417357
            Z: 0.253756076
          }
        }
        ParentId: 8632658878790735744
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
            Id: 3179030315686557415
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
        Id: 5405812649114312278
        Name: "left_foot"
        Transform {
          Location {
            X: -6.28009558
            Y: 38.9726334
            Z: 19.0743637
          }
          Rotation {
            Pitch: -19.3176804
            Yaw: -91.9913712
            Roll: -7.36909914
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 15884150421940978422
        ChildIds: 2015561605546025778
        ChildIds: 4831083843142979632
        ChildIds: 2493397009341895419
        UnregisteredParameters {
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
        Id: 15884150421940978422
        Name: "Horn"
        Transform {
          Location {
            X: 3.02286196
            Y: -4.16982126
            Z: -4.21441364
          }
          Rotation {
            Pitch: 3.65120721
            Yaw: -113.020393
            Roll: 77.1309586
          }
          Scale {
            X: 0.0186157338
            Y: 0.0350561403
            Z: 0.0350565873
          }
        }
        ParentId: 5405812649114312278
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 2015561605546025778
        Name: "Horn"
        Transform {
          Location {
            X: 3.94377
            Y: 2.51213336
            Z: -4.06570387
          }
          Rotation {
            Pitch: -2.46035
            Yaw: -73.0174179
            Roll: 78.3166199
          }
          Scale {
            X: 0.0186157338
            Y: 0.0350561403
            Z: 0.0350565873
          }
        }
        ParentId: 5405812649114312278
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 4831083843142979632
        Name: "Horn"
        Transform {
          Location {
            X: 0.853602886
            Y: 0.884569526
            Z: -0.0968408212
          }
          Rotation {
            Pitch: -0.341181576
            Yaw: -62.9034424
            Roll: 115.12439
          }
          Scale {
            X: 0.0254728049
            Y: 0.0350560024
            Z: 0.0350560024
          }
        }
        ParentId: 5405812649114312278
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 2493397009341895419
        Name: "Horn"
        Transform {
          Location {
            X: 0.0618107691
            Y: -2.00987244
            Z: -0.0968295336
          }
          Rotation {
            Pitch: 0.346194953
            Yaw: -127.140739
            Roll: 110.332489
          }
          Scale {
            X: 0.0254728049
            Y: 0.0350560024
            Z: 0.0350560024
          }
        }
        ParentId: 5405812649114312278
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268324375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
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
            Id: 10227161647766562745
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
        Id: 16955357891976819691
        Name: "tail_1"
        Transform {
          Location {
            X: -6.21462584
            Y: 21.3937569
            Z: 70.3228455
          }
          Rotation {
            Pitch: -69.2653122
            Yaw: -75.6470718
            Roll: -19.9934216
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12691739239962413603
        ChildIds: 13869696298792309731
        UnregisteredParameters {
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
        Id: 13869696298792309731
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: -7.36672449
            Y: -0.156890869
            Z: -19.6685677
          }
          Rotation {
            Pitch: 1.16923952
            Yaw: 89.7736053
            Roll: -7.74761963
          }
          Scale {
            X: 0.195489153
            Y: 0.328207344
            Z: 0.452577472
          }
        }
        ParentId: 16955357891976819691
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
            Id: 6661918263957923142
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
        Id: 2917564396888722306
        Name: "FollowRoot"
        Transform {
          Location {
            Z: 40
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5313871001125585813
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
        Id: 5231484171300456939
        Name: "AnimatedMesh"
        Transform {
          Location {
            Z: 40
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5313871001125585813
        UnregisteredParameters {
          Overrides {
            Name: "cs:AsleepStance"
            String: "unarmed_idle_relaxed"
          }
          Overrides {
            Name: "cs:IdleStance"
            String: "unarmed_idle_ready"
          }
          Overrides {
            Name: "cs:RunStance"
            String: "unarmed_walk_forward"
          }
          Overrides {
            Name: "cs:StareStance"
            String: "unarmed_idle_ready"
          }
          Overrides {
            Name: "cs:DeathAnimation"
            String: "unarmed_death"
          }
          Overrides {
            Name: "cs:StunnedStance"
            String: "unarmed_bind_pose"
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
            Id: 12619683444036293487
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          AnimatedMesh {
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
      Id: 17019787265848098694
      Name: "Thorn - Wide"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_001"
      }
    }
    Assets {
      Id: 853087330042215159
      Name: "Bone Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bone_raw_001_uv_ref"
      }
    }
    Assets {
      Id: 10227161647766562745
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
      }
    }
    Assets {
      Id: 3599979962362115521
      Name: "Bone Human Jaw 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_jaw_01_ref"
      }
    }
    Assets {
      Id: 3749675108062627523
      Name: "Signal Flare"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Signal_Flare"
      }
    }
    Assets {
      Id: 15311550138640852139
      Name: "Cone - Truncated Hollow Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_convex_001"
      }
    }
    Assets {
      Id: 3179030315686557415
      Name: "Bone Human Foot 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_foot_01_ref"
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
      Id: 11353538719389873434
      Name: "Lens"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_lense_001"
      }
    }
    Assets {
      Id: 3702191406046426907
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 17593121996335854106
      Name: "Bone Human Pelvis Half 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_pelvis_01_ref"
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
      Id: 8704263807241749105
      Name: "Ring - Quarter Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_torus_003"
      }
    }
    Assets {
      Id: 18124923500266954138
      Name: "Bone Human Scapula 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_scap_01_ref"
      }
    }
    Assets {
      Id: 11991112382965448767
      Name: "Bone Human Tibula 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_tib_01_ref"
      }
    }
    Assets {
      Id: 5618924995373258551
      Name: "Bone Human Ribcage 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_ribcage_01_ref"
      }
    }
    Assets {
      Id: 6661918263957923142
      Name: "Bone Human Spine 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_spine_01_ref"
      }
    }
    Assets {
      Id: 12628591842173594373
      Name: "Bone Human Femur 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_femur_01_ref"
      }
    }
    Assets {
      Id: 12533718179456080308
      Name: "Bone Human Humerus 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_humerus_01_ref"
      }
    }
    Assets {
      Id: 12619683444036293487
      Name: "Fox Mob"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_fox_default_basic_001_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
