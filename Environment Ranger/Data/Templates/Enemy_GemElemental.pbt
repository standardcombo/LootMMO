Assets {
  Id: 5703955426360017037
  Name: "Enemy_GemElemental"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13660464933162853564
      Objects {
        Id: 13660464933162853564
        Name: "Enemy_GemElemental"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11887486770566225647
        ChildIds: 12121612034628867922
        ChildIds: 949034380295722787
        ChildIds: 4706646920754647902
        ChildIds: 12936232748296427553
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
            String: "Gem Elemental"
          }
          Overrides {
            Name: "cs:Level"
            Int: 6
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 1750
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
            Float: 550
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 220
          }
          Overrides {
            Name: "cs:Experience"
            Float: 120
          }
          Overrides {
            Name: "cs:Task1"
            String: "gemelemental_melee"
          }
          Overrides {
            Name: "cs:Task2"
            String: "gemelemental_spawngems"
          }
          Overrides {
            Name: "cs:DropKey1"
            String: "HRCommonTrash"
          }
          Overrides {
            Name: "cs:DropChance1"
            Float: 0.4
          }
          Overrides {
            Name: "cs:DropKey2"
            String: "HRUncommonTrash"
          }
          Overrides {
            Name: "cs:DropChance2"
            Float: 0.4
          }
          Overrides {
            Name: "cs:DropKey3"
            String: "D2EpicTrash"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0.004
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
            Name: "cs:OnPulledEventName"
            String: "Boss2.5Pulled"
          }
          Overrides {
            Name: "cs:OnResetEventName"
            String: "Boss2.5Reset"
          }
          Overrides {
            Name: "cs:OnDiedEventName"
            String: "Boss2.5Died"
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
              SubObjectId: 4706646920754647902
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
        Id: 12121612034628867922
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
        ParentId: 13660464933162853564
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 949034380295722787
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 12936232748296427553
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
        Id: 949034380295722787
        Name: "Costume"
        Transform {
          Location {
            Z: 62.8424072
          }
          Rotation {
          }
          Scale {
            X: 2.2
            Y: 2.2
            Z: 2.2
          }
        }
        ParentId: 13660464933162853564
        ChildIds: 9784757698443018368
        ChildIds: 11947020603659018153
        ChildIds: 16301669905158403682
        ChildIds: 9864035378798824043
        ChildIds: 1271413816015528959
        ChildIds: 9110758924793735577
        ChildIds: 2750422160154743027
        ChildIds: 8332266154721494473
        ChildIds: 14105694903699744475
        ChildIds: 10374356805540825955
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
        Id: 9784757698443018368
        Name: "left_shoulder"
        Transform {
          Location {
            X: -2.52405262
            Y: -23.8497391
            Z: 108.967995
          }
          Rotation {
            Pitch: -1.64800847
            Yaw: -3.05700564
            Roll: 30.1109924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 6678580452719931465
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
        Id: 6678580452719931465
        Name: "Rock 03"
        Transform {
          Location {
            X: -3.15542769
            Y: -30.5413818
            Z: -2.33885455
          }
          Rotation {
            Pitch: -1.01611328
            Yaw: 6.32009602
            Roll: -67.1144714
          }
          Scale {
            X: 0.223319009
            Y: 0.223321721
            Z: 0.516177237
          }
        }
        ParentId: 9784757698443018368
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
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
            Id: 17985331605386890916
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
        Id: 11947020603659018153
        Name: "left_elbow"
        Transform {
          Location {
            X: -4.15735626
            Y: -39.6685181
            Z: 81.5909958
          }
          Rotation {
            Pitch: 18.4199886
            Yaw: 9.02800751
            Roll: 31.907999
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 13079676720093191509
        ChildIds: 6384691022521928018
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
        Id: 13079676720093191509
        Name: "Crystals"
        Transform {
          Location {
            X: -8.49946117
            Y: -35.5441666
            Z: -64.838623
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11947020603659018153
        ChildIds: 13291436935669527629
        ChildIds: 12421693940334940724
        ChildIds: 8541283239113800260
        ChildIds: 10694967171446510370
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
        Id: 13291436935669527629
        Name: "Rock Pile 001"
        Transform {
          Location {
            X: 2.31215572
            Y: -0.771563768
            Z: 29.0467033
          }
          Rotation {
            Pitch: 15.3875275
            Yaw: -169.745224
            Roll: 99.9656296
          }
          Scale {
            X: 0.132294089
            Y: 0.132294655
            Z: 0.261440039
          }
        }
        ParentId: 13079676720093191509
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 13606802925569237401
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
        Id: 12421693940334940724
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -4.78279781
            Y: -0.435915
            Z: 36.8683243
          }
          Rotation {
            Pitch: -68.1695557
            Yaw: 134.951157
            Roll: 140.562546
          }
          Scale {
            X: 0.157803878
            Y: 0.157809645
            Z: 0.158931091
          }
        }
        ParentId: 13079676720093191509
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 8541283239113800260
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -18.9565506
            Y: -5.01050758
            Z: 60.726429
          }
          Rotation {
            Pitch: 27.5055046
            Yaw: -7.40292358
            Roll: -102.553772
          }
          Scale {
            X: 0.114647023
            Y: 0.114651226
            Z: 0.115465969
          }
        }
        ParentId: 13079676720093191509
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 10694967171446510370
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: 9.58454895
            Y: 7.77881718
            Z: 4.62532043e-05
          }
          Rotation {
            Pitch: 66.2118454
            Yaw: -92.3017273
            Roll: 168.350479
          }
          Scale {
            X: 0.0980448127
            Y: 0.0980484113
            Z: 0.0987451673
          }
        }
        ParentId: 13079676720093191509
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 6384691022521928018
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: -13.7514973
            Y: -17.1588669
            Z: -32.5111542
          }
          Rotation {
            Pitch: 68.0307693
            Yaw: -164.770309
            Roll: 112.302185
          }
          Scale {
            X: 0.125018165
            Y: 0.126523554
            Z: 0.270900607
          }
        }
        ParentId: 11947020603659018153
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.275014251
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.677083313
              G: 0.677083313
              B: 0.677083313
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
            Id: 11900447639771688202
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
        Id: 16301669905158403682
        Name: "right_shoulder"
        Transform {
          Location {
            X: -2.52404141
            Y: 23.3882217
            Z: 108.967995
          }
          Rotation {
            Pitch: 1.64699757
            Yaw: 3.05699897
            Roll: -30.1109867
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 16880717370258042235
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
        Id: 16880717370258042235
        Name: "Rock 03"
        Transform {
          Location {
            X: -2.52265453
            Y: 28.4063873
            Z: -0.911901116
          }
          Rotation {
            Pitch: 10.7679358
            Yaw: -173.439728
            Roll: -72.6628723
          }
          Scale {
            X: 0.223317817
            Y: 0.223316908
            Z: 0.535045
          }
        }
        ParentId: 16301669905158403682
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
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
            Id: 17985331605386890916
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
        Id: 9864035378798824043
        Name: "right_elbow"
        Transform {
          Location {
            X: -4.15733671
            Y: 41.5147858
            Z: 81.5909958
          }
          Rotation {
            Pitch: 18.4199886
            Yaw: -9.02802277
            Roll: -31.9079876
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 2151257136286797850
        ChildIds: 11448787771634156353
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
        Id: 2151257136286797850
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: -23.9298439
            Y: 14.8032427
            Z: -29.945879
          }
          Rotation {
            Pitch: 68.7900925
            Yaw: 172.919296
            Roll: -116.318085
          }
          Scale {
            X: 0.119222388
            Y: 0.150506511
            Z: 0.268216968
          }
        }
        ParentId: 9864035378798824043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.275014251
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.677083313
              G: 0.677083313
              B: 0.677083313
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
            Id: 11900447639771688202
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
        Id: 11448787771634156353
        Name: "Crystals"
        Transform {
          Location {
            X: -19.8513985
            Y: 18.8436127
            Z: -41.3224258
          }
          Rotation {
            Pitch: -46.4083862
            Yaw: -177.408966
            Roll: -43.6702271
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9864035378798824043
        ChildIds: 2445277853476488739
        ChildIds: 12278102354328108265
        ChildIds: 928523073978717183
        ChildIds: 10304851371018422407
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
        Id: 2445277853476488739
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -4.84069061
            Y: 11.1637764
            Z: 30.2160835
          }
          Rotation {
            Pitch: -37.9190979
            Yaw: -99.9980774
            Roll: 34.0617867
          }
          Scale {
            X: 0.145337075
            Y: 0.14534238
            Z: 0.146375239
          }
        }
        ParentId: 11448787771634156353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 12278102354328108265
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: 6.19398451
            Y: -7.69147873
            Z: 12.1779728
          }
          Rotation {
            Pitch: 32.9783211
            Yaw: -164.334473
            Roll: 50.1009331
          }
          Scale {
            X: 0.124729276
            Y: 0.124733895
            Z: 0.125620261
          }
        }
        ParentId: 11448787771634156353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 928523073978717183
        Name: "Rock Pile 001"
        Transform {
          Location {
            X: -4.35596466
            Y: -2.49639225
            Z: 23.1840954
          }
          Rotation {
            Pitch: 35.9360962
            Yaw: 71.8026428
            Roll: 167.204376
          }
          Scale {
            X: 0.132293656
            Y: 0.132297784
            Z: 0.25962916
          }
        }
        ParentId: 11448787771634156353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 13606802925569237401
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
        Id: 10304851371018422407
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -34.1392593
            Y: 33.8100548
            Z: 45.0251503
          }
          Rotation {
            Pitch: -0.881286621
            Yaw: 137.621628
            Roll: 29.0834
          }
          Scale {
            X: 0.114647023
            Y: 0.114651226
            Z: 0.115465969
          }
        }
        ParentId: 11448787771634156353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 1271413816015528959
        Name: "upper_spine"
        Transform {
          Location {
            X: 3.02319145
            Y: -0.230789781
            Z: 102.288887
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169096e-05
            Roll: 3.10601026e-18
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 10399222263900460192
        ChildIds: 16710677974273230786
        ChildIds: 13109599168321047245
        ChildIds: 15258116003474790573
        ChildIds: 16471883621476325717
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
        Id: 10399222263900460192
        Name: "Crystals"
        Transform {
          Location {
            X: -14.3859634
            Y: 3.63944936
            Z: 44.0419693
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1271413816015528959
        ChildIds: 12732942345628781713
        ChildIds: 4079888255095970753
        ChildIds: 1170578500515331507
        ChildIds: 1218949422493887369
        ChildIds: 15722006320989677552
        ChildIds: 4830737946143651550
        ChildIds: 6441869744431688337
        ChildIds: 5421669193351645614
        ChildIds: 50628635108672320
        ChildIds: 11702629659427948484
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
        Id: 12732942345628781713
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: 3.13780212
            Y: 29.8130264
            Z: 8.41987133
          }
          Rotation {
            Pitch: 4.44074965
            Yaw: -175.819305
            Roll: -27.1054344
          }
          Scale {
            X: 0.171491399
            Y: 0.171494946
            Z: 0.324545115
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 4079888255095970753
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: 18.2338238
            Y: -45.1406479
            Z: -5.27343082
          }
          Rotation {
            Pitch: -34.8283691
            Yaw: -50.5254517
            Roll: 1.77063179
          }
          Scale {
            X: 0.171491399
            Y: 0.171494946
            Z: 0.324545115
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 1170578500515331507
        Name: "Spike"
        Transform {
          Location {
            X: 30.6772614
            Y: 16.2694931
            Z: -4.41529274
          }
          Rotation {
            Pitch: -53.3493042
            Yaw: -149.547668
            Roll: -71.1147766
          }
          Scale {
            X: 0.0665459633
            Y: 0.0567136668
            Z: 0.0567158684
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 10068790783914181223
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
        Id: 1218949422493887369
        Name: "Spike"
        Transform {
          Location {
            X: 16.939476
            Y: 4.06638527
            Z: 13.1794519
          }
          Rotation {
            Pitch: -77.0121765
            Yaw: -126.356537
            Roll: -171.732178
          }
          Scale {
            X: 0.0688534826
            Y: 0.0716705099
            Z: 0.0716663375
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 10068790783914181223
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
        Id: 15722006320989677552
        Name: "Spike"
        Transform {
          Location {
            X: -5.18851423
            Y: -47.8554611
            Z: 16.8830643
          }
          Rotation {
            Pitch: -71.4227
            Yaw: 39.1987114
            Roll: 88.279129
          }
          Scale {
            X: 0.052805867
            Y: 0.111434869
            Z: 0.127840772
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 10068790783914181223
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
        Id: 4830737946143651550
        Name: "Spike"
        Transform {
          Location {
            X: 21.3119755
            Y: -34.3242455
            Z: 5.15060663
          }
          Rotation {
            Pitch: -75.1364746
            Yaw: 158.965591
            Roll: 17.3509521
          }
          Scale {
            X: 0.0673432499
            Y: 0.0663976073
            Z: 0.0664002895
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 10068790783914181223
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
        Id: 6441869744431688337
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -2.18463445
            Y: -1.49648726
            Z: 5.98521709
          }
          Rotation {
            Pitch: 0.102159135
            Yaw: -78.1667786
            Roll: 9.65898609
          }
          Scale {
            X: 0.238527685
            Y: 0.238536686
            Z: 0.666806042
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 5421669193351645614
        Name: "Spike"
        Transform {
          Location {
            X: -16.7260189
            Y: 20.687521
            Z: 22.0571804
          }
          Rotation {
            Pitch: -42.3852844
            Yaw: -60.7185974
            Roll: -177.868362
          }
          Scale {
            X: 0.0603717566
            Y: 0.111364625
            Z: 0.146509066
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 10068790783914181223
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
        Id: 50628635108672320
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: 51.7473221
            Y: -13.9940701
            Z: -8.68244076
          }
          Rotation {
            Pitch: -28.6386414
            Yaw: 41.0912895
            Roll: -31.5734253
          }
          Scale {
            X: 0.136342123
            Y: 0.136340052
            Z: 0.123563349
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 11702629659427948484
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: 57.3719444
            Y: 1.43022919
            Z: -17.4248333
          }
          Rotation {
            Pitch: -10.5473328
            Yaw: -74.9494
            Roll: 50.1820641
          }
          Scale {
            X: 0.0907397345
            Y: 0.0907371
            Z: 0.314868301
          }
        }
        ParentId: 10399222263900460192
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 16710677974273230786
        Name: "Sphere"
        Transform {
          Location {
            X: 45.1711769
            Y: -11.9819908
            Z: 18.5360737
          }
          Rotation {
            Pitch: 5.64392853
            Yaw: -14.9654236
            Roll: 18.7922211
          }
          Scale {
            X: 0.0810109675
            Y: 0.121799238
            Z: 0.20078072
          }
        }
        ParentId: 1271413816015528959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.532980323
              G: 0.18
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3702191406046426907
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
        Id: 13109599168321047245
        Name: "Sphere"
        Transform {
          Location {
            X: 44.612709
            Y: 15.7118063
            Z: 18.5360756
          }
          Rotation {
            Pitch: 3.3939414
            Yaw: 16.6991367
            Roll: -12.0171509
          }
          Scale {
            X: 0.0810109675
            Y: 0.121799238
            Z: 0.20078072
          }
        }
        ParentId: 1271413816015528959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.532980323
              G: 0.18
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3702191406046426907
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
        Id: 15258116003474790573
        Name: "Head"
        Transform {
          Location {
            X: 31.0591202
            Y: 2.56325912
            Z: 20.9305325
          }
          Rotation {
            Pitch: 55.3708305
            Yaw: -166.593597
            Roll: -171.468903
          }
          Scale {
            X: 0.195248425
            Y: 0.294415981
            Z: 0.133541614
          }
        }
        ParentId: 1271413816015528959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.567855418
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
            Id: 17985331605386890916
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
        Id: 16471883621476325717
        Name: "Torso"
        Transform {
          Location {
            X: -7.8272953
            Y: 0.946742058
            Z: 26.2394962
          }
          Rotation {
            Pitch: -37.6845093
            Yaw: -6.10351562e-05
          }
          Scale {
            X: 0.371653765
            Y: 0.491958141
            Z: 0.330507487
          }
        }
        ParentId: 1271413816015528959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
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
            Id: 17985331605386890916
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
        Id: 9110758924793735577
        Name: "pelvis"
        Transform {
          Location {
            X: 3.02319145
            Y: -0.230789781
            Z: 60.57
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169096e-05
            Roll: -7.43052669e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 1546403073926363228
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
        Id: 1546403073926363228
        Name: "Pelvis"
        Transform {
          Location {
            X: -4.89306927
            Y: 8.01563072
            Z: -9.75467777
          }
          Rotation {
            Pitch: -4.71875
            Yaw: -101.014893
            Roll: -178.742737
          }
          Scale {
            X: 0.224251404
            Y: 0.233542785
            Z: 0.169979364
          }
        }
        ParentId: 9110758924793735577
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.445940524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.677083313
              G: 0.677083313
              B: 0.677083313
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
            Id: 12919518582124205178
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
        Id: 2750422160154743027
        Name: "left_hip"
        Transform {
          Location {
            X: 1.63720357
            Y: -10.7217827
            Z: 49.9370041
          }
          Rotation {
            Pitch: 3.17944598
            Yaw: 0.349480271
            Roll: 4.47926235
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 11356519573346904616
        ChildIds: 10140910252207918543
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
        Id: 11356519573346904616
        Name: "Thigh"
        Transform {
          Location {
            X: -6.77168322
            Y: -23.8500938
            Z: -27.6000557
          }
          Rotation {
            Pitch: 42.0206757
            Yaw: 101.922684
            Roll: -6.23895264
          }
          Scale {
            X: 0.0785325468
            Y: 0.1988644
            Z: 0.198862374
          }
        }
        ParentId: 2750422160154743027
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.424898118
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.416666657
              G: 0.416666657
              B: 0.416666657
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
            Id: 10068790783914181223
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
        Id: 10140910252207918543
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: 5.82689381
            Y: -27.6598358
            Z: -23.6475086
          }
          Rotation {
            Pitch: -74.9748535
            Yaw: 41.7716255
            Roll: -97.8973694
          }
          Scale {
            X: 0.125913799
            Y: 0.125918165
            Z: 0.161324248
          }
        }
        ParentId: 2750422160154743027
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 8332266154721494473
        Name: "left_knee"
        Transform {
          Location {
            X: 2.0213573
            Y: -17.1117477
          }
          Rotation {
            Pitch: -3.90987325
            Yaw: -3.62918234
            Roll: 4.28336096
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 6383693708639869291
        ChildIds: 4641693852581412828
        ChildIds: 9037808955225274075
        ChildIds: 14345407852513816298
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
        Id: 6383693708639869291
        Name: "Shin"
        Transform {
          Location {
            X: -13.9385424
            Y: -19.7993946
            Z: -28.6623688
          }
          Rotation {
            Pitch: -60.549469
            Yaw: 49.7480469
            Roll: -126.431534
          }
          Scale {
            X: 0.127412885
            Y: 0.233032614
            Z: 0.257732779
          }
        }
        ParentId: 8332266154721494473
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.688979864
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.390625
              G: 0.390625
              B: 0.390625
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
            Id: 10068790783914181223
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
        Id: 4641693852581412828
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: 8.67388535
            Y: -33.9831543
            Z: -61.9556885
          }
          Rotation {
            Pitch: 1.12118232
            Yaw: 126.424606
            Roll: 5.68796158
          }
          Scale {
            X: 0.0305495132
            Y: 0.0510074645
            Z: 0.258458734
          }
        }
        ParentId: 8332266154721494473
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401041657
              G: 0.401041657
              B: 0.401041657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.30292803
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.445940524
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
            Id: 11900447639771688202
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
        Id: 9037808955225274075
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: 25.5724525
            Y: -17.0400543
            Z: -59.5285339
          }
          Rotation {
            Pitch: -3.10109019
            Yaw: 169.790649
            Roll: 4.90025473
          }
          Scale {
            X: 0.036271058
            Y: 0.0510119647
            Z: 0.262836426
          }
        }
        ParentId: 8332266154721494473
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401041657
              G: 0.401041657
              B: 0.401041657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.30292803
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.445940524
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
            Id: 11900447639771688202
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
        Id: 14345407852513816298
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: 11.4050798
            Y: 9.83016205
            Z: -58.4869843
          }
          Rotation {
            Pitch: -4.39245605
            Yaw: -173.295242
            Roll: 3.78683639
          }
          Scale {
            X: 0.0301815663
            Y: 0.0510113351
            Z: 0.21531944
          }
        }
        ParentId: 8332266154721494473
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401041657
              G: 0.401041657
              B: 0.401041657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.30292803
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.445940524
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
            Id: 11900447639771688202
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
        Id: 14105694903699744475
        Name: "right_hip"
        Transform {
          Location {
            X: 1.63720858
            Y: 10.2602043
            Z: 49.9370041
          }
          Rotation {
            Pitch: 3.17958951
            Yaw: -0.349424064
            Roll: -4.4789567
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 3255063543996701640
        ChildIds: 15430693970319079588
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
        Id: 3255063543996701640
        Name: "Thigh"
        Transform {
          Location {
            X: -15.3539152
            Y: 22.7679729
            Z: -25.5321636
          }
          Rotation {
            Pitch: 47.918354
            Yaw: -79.8021545
            Roll: 2.94824243
          }
          Scale {
            X: 0.0937650502
            Y: 0.189983234
            Z: 0.225534424
          }
        }
        ParentId: 14105694903699744475
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.424898118
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.416666657
              G: 0.416666657
              B: 0.416666657
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
            Id: 10068790783914181223
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
        Id: 15430693970319079588
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: 2.42316723
            Y: 32.9903946
            Z: -19.7798309
          }
          Rotation {
            Pitch: -61.454834
            Yaw: 158.756973
            Roll: -91.8548889
          }
          Scale {
            X: 0.114646867
            Y: 0.114650853
            Z: 0.18822068
          }
        }
        ParentId: 14105694903699744475
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1364294402302747595
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
            Id: 5604237310652087622
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
        Id: 10374356805540825955
        Name: "right_knee"
        Transform {
          Location {
            X: 2.0213654
            Y: 16.6502304
          }
          Rotation {
            Pitch: -3.90996218
            Yaw: 3.62911463
            Roll: -4.2834878
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 949034380295722787
        ChildIds: 837433190657455020
        ChildIds: 4095823757306277803
        ChildIds: 18336377157895686764
        ChildIds: 8540386322605385260
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
        Id: 837433190657455020
        Name: "Shin"
        Transform {
          Location {
            X: -6.97216797
            Y: 24.5390625
            Z: -29.545166
          }
          Rotation {
            Pitch: -67.9543457
            Yaw: -65.5884705
            Roll: -54.0423584
          }
          Scale {
            X: 0.111951895
            Y: 0.25773865
            Z: -0.284125656
          }
        }
        ParentId: 10374356805540825955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.688979864
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.390625
              G: 0.390625
              B: 0.390625
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
            Id: 10068790783914181223
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
        Id: 4095823757306277803
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: 15.4202776
            Y: -0.142752051
            Z: -58.9373131
          }
          Rotation {
            Pitch: -4.89523315
            Yaw: 164.941238
            Roll: -3.109375
          }
          Scale {
            X: 0.0305495132
            Y: 0.0510074645
            Z: 0.258458734
          }
        }
        ParentId: 10374356805540825955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401041657
              G: 0.401041657
              B: 0.401041657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.30292803
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.445940524
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
            Id: 11900447639771688202
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
        Id: 18336377157895686764
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: 31.8272781
            Y: 26.0945435
            Z: -59.7780304
          }
          Rotation {
            Pitch: -4.0246
            Yaw: 178.592667
            Roll: -4.17599249
          }
          Scale {
            X: 0.036271058
            Y: 0.0510119647
            Z: 0.262836426
          }
        }
        ParentId: 10374356805540825955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401041657
              G: 0.401041657
              B: 0.401041657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.30292803
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.445940524
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
            Id: 11900447639771688202
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
        Id: 8540386322605385260
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: 14.1612167
            Y: 36.9319153
            Z: -61.8005753
          }
          Rotation {
            Pitch: 1.82906306
            Yaw: -119.206314
            Roll: -5.50204086
          }
          Scale {
            X: 0.0301815663
            Y: 0.0510113351
            Z: 0.21531944
          }
        }
        ParentId: 10374356805540825955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17333836494779607013
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401041657
              G: 0.401041657
              B: 0.401041657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.30292803
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.445940524
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
            Id: 11900447639771688202
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
        Id: 4706646920754647902
        Name: "FollowRoot"
        Transform {
          Location {
            Z: 253
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13660464933162853564
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
        Id: 12936232748296427553
        Name: "Fantasy Human Guy"
        Transform {
          Location {
            Z: 253
          }
          Rotation {
          }
          Scale {
            X: 2.2
            Y: 2.2
            Z: 2.2
          }
        }
        ParentId: 13660464933162853564
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
            Name: "ma:Shared_Detail1:utile"
            Float: 0.688979864
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.835940361
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.333675116
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.350199908
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1848963245568864173
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 1848963245568864173
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 1848963245568864173
            }
          }
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
            Id: 18039984299850060191
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
      Id: 17985331605386890916
      Name: "Rock 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_003"
      }
    }
    Assets {
      Id: 17333836494779607013
      Name: "Cliff 03"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "cliff_003"
      }
    }
    Assets {
      Id: 13606802925569237401
      Name: "Rock Pile 001"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rocks_small_001"
      }
    }
    Assets {
      Id: 1364294402302747595
      Name: "Amethyst"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_amethyst"
      }
    }
    Assets {
      Id: 5604237310652087622
      Name: "Rock Pile 002"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rocks_small_002"
      }
    }
    Assets {
      Id: 11900447639771688202
      Name: "Rock Flat 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_005"
      }
    }
    Assets {
      Id: 10068790783914181223
      Name: "Rock 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_002_sm_rock_generic_002_LOD0"
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
      Id: 12919518582124205178
      Name: "Rock 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_001"
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
