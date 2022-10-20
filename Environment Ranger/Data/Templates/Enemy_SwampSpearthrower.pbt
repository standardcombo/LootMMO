Assets {
  Id: 6056600755271598857
  Name: "Enemy_SwampSpearthrower"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12797497238844231708
      Objects {
        Id: 12797497238844231708
        Name: "Enemy_SwampSpearthrower"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17216642909476889955
        ChildIds: 16193349975544491835
        ChildIds: 15127348347638147894
        ChildIds: 14952324712681442825
        ChildIds: 2864103068975670389
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
            String: "Swamp Spearthrower"
          }
          Overrides {
            Name: "cs:Level"
            Int: 4
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 320
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
            Float: 210
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 100
          }
          Overrides {
            Name: "cs:Experience"
            Float: 25
          }
          Overrides {
            Name: "cs:Task1"
            String: "swampspearthrower_melee"
          }
          Overrides {
            Name: "cs:Task2"
            String: "swampspearthrower_combo"
          }
          Overrides {
            Name: "cs:Task3"
            String: "swampspearthrower_throwspear"
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
            String: "D2EpicTrash"
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
              SubObjectId: 14952324712681442825
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
        Id: 16193349975544491835
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
        ParentId: 12797497238844231708
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 15127348347638147894
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 2864103068975670389
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
        Id: 15127348347638147894
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
        ParentId: 12797497238844231708
        ChildIds: 16240115202696808414
        ChildIds: 4046359239220511447
        ChildIds: 14543777600588058259
        ChildIds: 10262456168732742468
        ChildIds: 6281322240793087914
        ChildIds: 11842678104319184314
        ChildIds: 1008077614981112765
        ChildIds: 3749664621351869491
        ChildIds: 17161035103996741600
        ChildIds: 4635402348071284214
        ChildIds: 8896557603807538481
        ChildIds: 11959701677000225522
        ChildIds: 13331636805560262000
        ChildIds: 13754605227572716402
        ChildIds: 2215350057192847238
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
        Id: 16240115202696808414
        Name: "left_shoulder"
        Transform {
          Location {
            X: -2.87854
            Y: -23.7374878
            Z: 168.665985
          }
          Rotation {
            Pitch: -1.64799476
            Yaw: -3.05700803
            Roll: 30.1110249
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 11349662075905610606
        ChildIds: 8453902475266349557
        ChildIds: 14631227483510341113
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
        Id: 11349662075905610606
        Name: "Upper Arm Right"
        Transform {
          Location {
            X: 0.463219464
            Y: 0.343790829
            Z: 10.7360249
          }
          Rotation {
            Pitch: -1.29561853
            Yaw: -2.8582356
            Roll: -177.068848
          }
          Scale {
            X: 0.189125881
            Y: 0.207370549
            Z: 0.311914295
          }
        }
        ParentId: 16240115202696808414
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.388107538
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.08195138
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 8453902475266349557
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -3.83510017
            Y: -1.71111476
            Z: -23.3410301
          }
          Rotation {
            Pitch: -6.7407
            Yaw: -100.093346
            Roll: -70.1645279
          }
          Scale {
            X: 0.133299738
            Y: 0.126931235
            Z: 0.124778204
          }
        }
        ParentId: 16240115202696808414
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14631227483510341113
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -5.4115634
            Y: -2.49277401
            Z: -11.4317741
          }
          Rotation {
            Pitch: 3.41260815
            Yaw: 87.8255692
            Roll: 69.6043777
          }
          Scale {
            X: 0.129681289
            Y: 0.129681304
            Z: 0.129681304
          }
        }
        ParentId: 16240115202696808414
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4046359239220511447
        Name: "left_elbow"
        Transform {
          Location {
            X: -4.51184082
            Y: -39.5562744
            Z: 141.289
          }
          Rotation {
            Pitch: 18.4199886
            Yaw: 9.02803421
            Roll: 31.9080372
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 12511681975626086006
        ChildIds: 2642211024581534264
        ChildIds: 5249846697603321975
        ChildIds: 11736776338791718956
        ChildIds: 17840319571930559780
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
        Id: 12511681975626086006
        Name: "Forearm Right"
        Transform {
          Location {
            X: -0.343794018
            Y: -0.622055769
            Z: 8.83713245
          }
          Rotation {
            Pitch: -2.6685822
            Yaw: -64.3649
            Roll: 176.254272
          }
          Scale {
            X: 0.186435923
            Y: 0.150766477
            Z: 0.256097049
          }
        }
        ParentId: 4046359239220511447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.388107538
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.2748189
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 2642211024581534264
        Name: "Horn"
        Transform {
          Location {
            X: -5.24594307
            Y: 0.723837137
            Z: 0.731089711
          }
          Rotation {
            Pitch: -5.13089943
            Yaw: -98.3999176
            Roll: -47.6100616
          }
          Scale {
            X: 0.0796993896
            Y: 0.0788205266
            Z: 0.145030245
          }
        }
        ParentId: 4046359239220511447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5249846697603321975
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -3.80052376
            Y: -0.333269
            Z: -10.0138512
          }
          Rotation {
            Pitch: 6.44625044
            Yaw: 84.4841
            Roll: 76.2434
          }
          Scale {
            X: 0.139429137
            Y: 0.139429137
            Z: 0.139429137
          }
        }
        ParentId: 4046359239220511447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11736776338791718956
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -1.75423908
            Y: 0.864443064
            Z: -20.8979378
          }
          Rotation {
            Pitch: -6.73644447
            Yaw: -98.0760498
            Roll: -69.3191452
          }
          Scale {
            X: 0.121237867
            Y: 0.115445629
            Z: 0.113487378
          }
        }
        ParentId: 4046359239220511447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17840319571930559780
        Name: "Horn"
        Transform {
          Location {
            X: -5.74655104
            Y: 0.733165741
            Z: 1.26230621
          }
          Rotation {
            Pitch: -3.21100163
            Yaw: -102.446762
            Roll: -64.4292908
          }
          Scale {
            X: 0.0905942246
            Y: 0.0895989463
            Z: 0.173227787
          }
        }
        ParentId: 4046359239220511447
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 14543777600588058259
        Name: "left_wrist"
        Transform {
          Location {
            X: 5.11645508
            Y: -52.840332
            Z: 118.994995
          }
          Rotation {
            Pitch: 13.9379902
            Yaw: 10.1970549
            Roll: 27.3249397
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 9601100564508136434
        ChildIds: 12975793915830164396
        ChildIds: 5785248887682533378
        ChildIds: 13825374926337780993
        ChildIds: 10837548343770944796
        ChildIds: 14740688222897563169
        ChildIds: 16488034606378126415
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
        Id: 9601100564508136434
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 9.19262695
            Y: 10.4935
            Z: -36.5322037
          }
          Rotation {
            Pitch: -10.2487803
            Yaw: -52.9872475
            Roll: 159.075241
          }
          Scale {
            X: -0.207283705
            Y: -0.207282975
            Z: -0.589509189
          }
        }
        ParentId: 14543777600588058259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.438917428
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.88
              G: 0.856688738
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
            Id: 14746939567165662757
          }
          Teams {
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
        Id: 12975793915830164396
        Name: "Bone Human Hand 01"
        Transform {
          Location {
            X: 0.739501953
            Y: 0.642181396
            Z: -2.92662048
          }
          Rotation {
            Pitch: 14.2878189
            Yaw: -0.000120617864
            Roll: 2.3418839
          }
          Scale {
            X: 0.861759365
            Y: -1.46703196
            Z: -1.46195197
          }
        }
        ParentId: 14543777600588058259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 86369592013213841
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.50206733
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.789337754
              G: 0.87
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.845953107
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
            Id: 1998399638820390913
          }
          Teams {
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
        Id: 5785248887682533378
        Name: "Horn"
        Transform {
          Location {
            X: 15.6212158
            Y: 4.04006958
            Z: -41.0502625
          }
          Rotation {
            Pitch: -15.3981352
            Yaw: 178.17984
            Roll: 42.083992
          }
          Scale {
            X: -0.0212224182
            Y: -0.0321234576
            Z: -0.0546212383
          }
        }
        ParentId: 14543777600588058259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 13825374926337780993
        Name: "Horn"
        Transform {
          Location {
            X: 10.9934082
            Y: 4.51882935
            Z: -44.2150879
          }
          Rotation {
            Pitch: -13.835927
            Yaw: 179.628433
            Roll: 36.6634293
          }
          Scale {
            X: -0.0224104133
            Y: -0.0339216739
            Z: -0.0576788373
          }
        }
        ParentId: 14543777600588058259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 10837548343770944796
        Name: "Horn"
        Transform {
          Location {
            X: 6.0213623
            Y: 5.51986694
            Z: -42.6878128
          }
          Rotation {
            Pitch: -13.1752634
            Yaw: 176.538834
            Roll: 42.4578934
          }
          Scale {
            X: -0.0210901126
            Y: -0.0319231935
            Z: -0.0542807132
          }
        }
        ParentId: 14543777600588058259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 14740688222897563169
        Name: "Horn"
        Transform {
          Location {
            X: 0.714233398
            Y: 5.75003052
            Z: -38.2483749
          }
          Rotation {
            Pitch: -3.67895818
            Yaw: 166.47937
            Roll: 56.0206757
          }
          Scale {
            X: -0.0206062384
            Y: -0.0311907716
            Z: -0.0530353449
          }
        }
        ParentId: 14543777600588058259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 16488034606378126415
        Name: "Horn"
        Transform {
          Location {
            X: 18.6329346
            Y: 8.45199585
            Z: -24.2652893
          }
          Rotation {
            Pitch: -10.7972517
            Yaw: -104.912926
            Roll: -26.2931137
          }
          Scale {
            X: -0.0384461321
            Y: -0.0317236669
            Z: -0.0539411791
          }
        }
        ParentId: 14543777600588058259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 10262456168732742468
        Name: "right_shoulder"
        Transform {
          Location {
            X: -2.87854
            Y: 23.5004883
            Z: 168.665985
          }
          Rotation {
            Pitch: 1.64699757
            Yaw: 3.05700135
            Roll: -30.1110096
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 13080229466995202449
        ChildIds: 13190363249358092079
        ChildIds: 4848002540636147716
        ChildIds: 8274196846174452576
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
        Id: 13080229466995202449
        Name: "Upper Arm Right"
        Transform {
          Location {
            X: 0.463259161
            Y: 0.343811452
            Z: 10.7360306
          }
          Rotation {
            Pitch: -3.58271408
            Yaw: -3.27090883
            Roll: 178.339279
          }
          Scale {
            X: 0.189125881
            Y: 0.207370549
            Z: 0.311914295
          }
        }
        ParentId: 10262456168732742468
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.388107538
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.08195138
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 13190363249358092079
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -5.40511799
            Y: 2.37969804
            Z: -14.0364656
          }
          Rotation {
            Pitch: 3.41314769
            Yaw: 87.825882
            Roll: 68.6552124
          }
          Scale {
            X: 0.129681289
            Y: 0.129681304
            Z: 0.129681304
          }
        }
        ParentId: 10262456168732742468
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4848002540636147716
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -3.61516213
            Y: 2.04039741
            Z: -24.7231979
          }
          Rotation {
            Pitch: -3.78714848
            Yaw: -94.7082138
            Roll: -68.1386948
          }
          Scale {
            X: 0.133299738
            Y: 0.126931235
            Z: 0.124778204
          }
        }
        ParentId: 10262456168732742468
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8274196846174452576
        Name: "Vines"
        Transform {
          Location {
            X: -0.237435237
            Y: 6.08160877
            Z: 9.32746124
          }
          Rotation {
            Pitch: -1.62342656
            Yaw: -3.00998497
            Roll: -172.427917
          }
          Scale {
            X: 0.210587665
            Y: 0.202964
            Z: 0.294975847
          }
        }
        ParentId: 10262456168732742468
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.257543117
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.343179613
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
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6281322240793087914
        Name: "right_elbow"
        Transform {
          Location {
            X: -4.51184082
            Y: 41.6270752
            Z: 141.289
          }
          Rotation {
            Pitch: 18.4199886
            Yaw: -9.02805614
            Roll: -31.9080372
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 15694212941289454572
        ChildIds: 16575700092051355160
        ChildIds: 6823726689710801420
        ChildIds: 13185170382783295841
        ChildIds: 2807688967909686080
        ChildIds: 13135558739311689719
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
        Id: 15694212941289454572
        Name: "Forearm Right"
        Transform {
          Location {
            X: -0.343835711
            Y: -0.622016907
            Z: 8.83717251
          }
          Rotation {
            Pitch: -8.76727772
            Yaw: 50.2650566
            Roll: 179.116394
          }
          Scale {
            X: 0.186435923
            Y: 0.150766477
            Z: 0.256097049
          }
        }
        ParentId: 6281322240793087914
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.388107538
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.2748189
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 16575700092051355160
        Name: "Horn"
        Transform {
          Location {
            X: -5.24588823
            Y: 0.723789275
            Z: 0.731106877
          }
          Rotation {
            Pitch: -5.13080359
            Yaw: -98.4000702
            Roll: -47.6102867
          }
          Scale {
            X: 0.0796993896
            Y: 0.0788205266
            Z: 0.145030245
          }
        }
        ParentId: 6281322240793087914
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6823726689710801420
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -5.68136263
            Y: -0.849253416
            Z: -9.74183273
          }
          Rotation {
            Pitch: -5.5354991
            Yaw: 89.7521057
            Roll: 66.359848
          }
          Scale {
            X: 0.139429137
            Y: 0.139429137
            Z: 0.139429137
          }
        }
        ParentId: 6281322240793087914
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13185170382783295841
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -4.82388878
            Y: -2.52528548
            Z: -21.6232338
          }
          Rotation {
            Pitch: 5.25465536
            Yaw: -92.8036804
            Roll: -66.2455902
          }
          Scale {
            X: 0.121237867
            Y: 0.115445629
            Z: 0.113487378
          }
        }
        ParentId: 6281322240793087914
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.0567112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2807688967909686080
        Name: "Horn"
        Transform {
          Location {
            X: -5.64109135
            Y: 0.790634632
            Z: 0.872895479
          }
          Rotation {
            Pitch: -4.19065571
            Yaw: -101.072197
            Roll: -70.4538574
          }
          Scale {
            X: 0.0962749645
            Y: 0.0952150449
            Z: 0.17710577
          }
        }
        ParentId: 6281322240793087914
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 13135558739311689719
        Name: "Vines"
        Transform {
          Location {
            X: -0.343826652
            Y: -0.622069597
            Z: 8.83720207
          }
          Rotation {
            Pitch: -8.76727772
            Yaw: 50.2650566
            Roll: 179.116394
          }
          Scale {
            X: 0.186435923
            Y: 0.150766477
            Z: 0.256097049
          }
        }
        ParentId: 6281322240793087914
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.209796801
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.316155702
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
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11842678104319184314
        Name: "right_wrist"
        Transform {
          Location {
            X: 1.93774414
            Y: 52.7219238
            Z: 118.995697
          }
          Rotation {
            Pitch: 13.9379902
            Yaw: -10.1970043
            Roll: -27.324873
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 15920385997310562967
        ChildIds: 6880033642732117450
        ChildIds: 17279462856052824965
        ChildIds: 11136319661768729962
        ChildIds: 15906373921684833529
        ChildIds: 5471500167466585291
        ChildIds: 12057840800209737933
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
        Id: 15920385997310562967
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: -8.78830338
            Y: -14.4802752
            Z: -31.8808727
          }
          Rotation {
            Pitch: 31.5045128
            Yaw: -125.324646
            Roll: -1.14429641
          }
          Scale {
            X: 0.207141817
            Y: 0.207141086
            Z: 0.589105666
          }
        }
        ParentId: 11842678104319184314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.438917428
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.53880769
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.88
              G: 0.856688738
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
            Id: 14746939567165662757
          }
          Teams {
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
        Id: 6880033642732117450
        Name: "Bone Human Hand 01"
        Transform {
          Location {
            X: -0.0228881836
            Y: -1.12054443
            Z: 0.379821777
          }
          Rotation {
            Pitch: 12.8379068
            Yaw: 174.548141
            Roll: 175.098419
          }
          Scale {
            X: -0.861169457
            Y: 1.46602786
            Z: 1.46095133
          }
        }
        ParentId: 11842678104319184314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 86369592013213841
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.50206733
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.789337754
              G: 0.87
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.845953107
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
            Id: 1998399638820390913
          }
          Teams {
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
        Id: 17279462856052824965
        Name: "Horn"
        Transform {
          Location {
            X: -4.77881956
            Y: -9.1913538
            Z: -39.5746613
          }
          Rotation {
            Pitch: -11.9438696
            Yaw: -3.52856517
            Roll: -131.551636
          }
          Scale {
            X: 0.0212078914
            Y: 0.0321014673
            Z: 0.0545838512
          }
        }
        ParentId: 11842678104319184314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 11136319661768729962
        Name: "Horn"
        Transform {
          Location {
            X: -10.3629322
            Y: -9.37876606
            Z: -40.2071342
          }
          Rotation {
            Pitch: -13.3312101
            Yaw: -5.14263058
            Roll: -136.253387
          }
          Scale {
            X: 0.0223950725
            Y: 0.0338984542
            Z: 0.0576393567
          }
        }
        ParentId: 11842678104319184314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 15906373921684833529
        Name: "Horn"
        Transform {
          Location {
            X: -14.111166
            Y: -9.67521763
            Z: -36.4813766
          }
          Rotation {
            Pitch: -14.320857
            Yaw: -2.14331889
            Roll: -131.897629
          }
          Scale {
            X: 0.0210756753
            Y: 0.0319013409
            Z: 0.0542435572
          }
        }
        ParentId: 11842678104319184314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 5471500167466585291
        Name: "Horn"
        Transform {
          Location {
            X: -16.7541847
            Y: -8.94191074
            Z: -30.1302948
          }
          Rotation {
            Pitch: -24.3675938
            Yaw: 7.81851435
            Roll: -123.137756
          }
          Scale {
            X: 0.0205921326
            Y: 0.031169422
            Z: 0.052999042
          }
        }
        ParentId: 11842678104319184314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 12057840800209737933
        Name: "Horn"
        Transform {
          Location {
            X: 5.36670351
            Y: -12.5884771
            Z: -25.5970879
          }
          Rotation {
            Pitch: 9.62687111
            Yaw: -75.4777832
            Roll: -177.79776
          }
          Scale {
            X: 0.0384198166
            Y: 0.0317019522
            Z: 0.0539042577
          }
        }
        ParentId: 11842678104319184314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
            Id: 10227161647766562745
          }
          Teams {
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
        Id: 1008077614981112765
        Name: "upper_spine"
        Transform {
          Location {
            X: 2.66870117
            Y: -0.118530273
            Z: 161.986877
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169678e-05
            Roll: 5.08795547e-14
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 15715657393551316836
        ChildIds: 2391708177809074277
        ChildIds: 7396127427077845501
        ChildIds: 807611859168436316
        ChildIds: 900569409204454223
        ChildIds: 9875123658777959482
        ChildIds: 5966975714946845419
        ChildIds: 4304083012181237602
        ChildIds: 3834487176944859401
        ChildIds: 7727090252902609836
        ChildIds: 7694686410752874546
        ChildIds: 16109427185162852303
        ChildIds: 1931178319266529177
        ChildIds: 6058331096123968367
        ChildIds: 11311733583601131520
        ChildIds: 9807920327208308387
        ChildIds: 4710311175494756916
        ChildIds: 8604228728427812024
        ChildIds: 14138559187033745033
        ChildIds: 7525569896469136172
        ChildIds: 16614540039158831305
        ChildIds: 14490976007710275488
        ChildIds: 15309618479934704215
        ChildIds: 17005040304887106841
        ChildIds: 12807930671999041399
        ChildIds: 16942198576647458253
        ChildIds: 16144546338324821772
        ChildIds: 10511051113562413096
        ChildIds: 18342721210631104909
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
        Id: 15715657393551316836
        Name: "Sphere"
        Transform {
          Location {
            X: -3.34608054
            Y: 4.18826539e-06
            Z: -8.55314159
          }
          Rotation {
            Pitch: -10.6691103
            Yaw: 6.52262229e-12
            Roll: 2.08710355e-13
          }
          Scale {
            X: 0.368128747
            Y: 0.548358202
            Z: 0.730538309
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.609346807
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.38378608
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
            Id: 5657452638476367488
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
        Id: 2391708177809074277
        Name: "Spinal Ridge"
        Transform {
          Location {
            X: -11.4308233
            Y: 1.43078842e-05
            Z: -28.2843781
          }
          Rotation {
            Pitch: -2.44061089
            Yaw: 179.999771
            Roll: -89.9991684
          }
          Scale {
            X: 0.414495945
            Y: 0.870911598
            Z: 0.822669446
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.291259825
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.421281695
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7396127427077845501
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -13.6320934
            Y: -12.894392
            Z: 2.18500018
          }
          Rotation {
            Pitch: -36.6782761
            Yaw: -84.4811859
            Roll: -149.758423
          }
          Scale {
            X: 0.344
            Y: 0.179632232
            Z: 0.3576
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14405256664370045280
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.32818532
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.63485539
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 807611859168436316
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -13.6320601
            Y: 13.8009205
            Z: 2.18500018
          }
          Rotation {
            Pitch: -47.6803246
            Yaw: -134.275299
            Roll: -150.959396
          }
          Scale {
            X: 0.344
            Y: 0.179632232
            Z: 0.3576
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14405256664370045280
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.32818532
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.63485539
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 900569409204454223
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -6.2846837
            Y: 7.3574295
            Z: -18.8711014
          }
          Rotation {
            Pitch: 17.8507538
            Yaw: -94.4667511
            Roll: -164.284103
          }
          Scale {
            X: 0.3808
            Y: 0.419933647
            Z: 0.748000085
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.00152445
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 9875123658777959482
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -6.33047819
            Y: -7.07237959
            Z: -19.0071945
          }
          Rotation {
            Pitch: -18.9345875
            Yaw: -89.1498795
            Roll: -163.482285
          }
          Scale {
            X: 0.3808
            Y: 0.41993323
            Z: 0.748000085
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.00152445
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 5966975714946845419
        Name: "Pec Left"
        Transform {
          Location {
            X: 11.9999762
            Y: -13.4628448
            Z: -4.99418688
          }
          Rotation {
            Pitch: -18.4184246
            Yaw: 73.4588623
            Roll: 1.80333674
          }
          Scale {
            X: 0.302795619
            Y: 0.102154367
            Z: 0.241982684
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.24719502
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.13921839
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 4304083012181237602
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 11.8632917
            Y: 14.0484467
            Z: -5.56382799
          }
          Rotation {
            Pitch: 23.7713661
            Yaw: 109.969788
            Roll: 5.80266619
          }
          Scale {
            X: 0.302795619
            Y: 0.102154367
            Z: 0.241982684
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
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
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 3834487176944859401
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 7.68040562
            Y: -16.6878757
            Z: 5.09721899
          }
          Rotation {
            Pitch: 16.8634434
            Yaw: -125.2994
            Roll: 148.354279
          }
          Scale {
            X: 0.350080937
            Y: 0.1464
            Z: 0.0744
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.237262711
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 7727090252902609836
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 7.12307501
            Y: 17.4131985
            Z: 4.86223412
          }
          Rotation {
            Pitch: 19.8456535
            Yaw: 127.432236
            Roll: -141.498596
          }
          Scale {
            X: 0.350080937
            Y: 0.1464
            Z: 0.0744
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.237262711
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 7694686410752874546
        Name: "Spines"
        Transform {
          Location {
            X: -16.8032551
            Y: 2.59895897
            Z: -27.7526169
          }
          Rotation {
            Pitch: 22.7211628
            Yaw: -16.6255856
            Roll: 1.3434
          }
          Scale {
            X: 0.8
            Y: 0.8
            Z: 0.8
          }
        }
        ParentId: 1008077614981112765
        ChildIds: 3539183766005143797
        ChildIds: 3821509521387123093
        ChildIds: 15078495856345816782
        ChildIds: 1044226049982599373
        ChildIds: 10649173946800105139
        ChildIds: 9641210433689907061
        ChildIds: 14535838304585170932
        ChildIds: 8104416065098925248
        ChildIds: 6260181366975007449
        ChildIds: 8512810103978656607
        ChildIds: 15661793747371643084
        ChildIds: 8792201617310296145
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
        Id: 3539183766005143797
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -9.43436909
            Y: -0.0889906883
            Z: 39.4310837
          }
          Rotation {
            Pitch: 0.000218566041
            Yaw: 89.3086929
            Roll: -16.2362366
          }
          Scale {
            X: 0.00749554
            Y: 0.347720981
            Z: 0.28602013
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
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
            Id: 16324191539564034761
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
        Id: 3821509521387123093
        Name: "Horn"
        Transform {
          Location {
            X: 11.1785536
            Y: -8.88705254e-05
            Z: 40.6048584
          }
          Rotation {
            Pitch: -0.000183105469
            Yaw: 89.9981842
            Roll: 33.4123917
          }
          Scale {
            X: 0.0818491727
            Y: 0.153306261
            Z: 0.30580309
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15078495856345816782
        Name: "Horn"
        Transform {
          Location {
            X: 5.28778076
            Y: -3.05175781e-05
            Z: 25.7208405
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: 89.9987411
            Roll: 48.1627159
          }
          Scale {
            X: 0.0976061
            Y: 0.145314649
            Z: 0.314819247
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1044226049982599373
        Name: "Horn"
        Transform {
          Location {
            X: -3.15393066
            Y: -6.10351562e-05
            Z: 11.318512
          }
          Rotation {
            Pitch: 0.00011611321
            Yaw: 89.9986343
            Roll: 62.8816681
          }
          Scale {
            X: 0.113291241
            Y: 0.151523769
            Z: 0.247285336
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10649173946800105139
        Name: "Horn"
        Transform {
          Location {
            X: -13.3123779
            Y: 0.000213623047
          }
          Rotation {
            Pitch: 0.000204905664
            Yaw: 89.998764
            Roll: 82.5285187
          }
          Scale {
            X: 0.100417651
            Y: 0.134306118
            Z: 0.168088615
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9641210433689907061
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -14.9303665
            Y: -0.0225868821
            Z: 20.4077797
          }
          Rotation {
            Pitch: 0.000198075475
            Yaw: 89.3086853
            Roll: 0.943152726
          }
          Scale {
            X: 0.00749567384
            Y: 0.391293347
            Z: 0.313491344
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
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
            Id: 16324191539564034761
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
        Id: 14535838304585170932
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -15.5144873
            Y: -0.0153880939
            Z: 5.05909491
          }
          Rotation {
            Pitch: 0.000211735853
            Yaw: 89.3082352
            Roll: 14.7404404
          }
          Scale {
            X: 0.0074951984
            Y: 0.352144659
            Z: 0.216381267
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
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
            Id: 16324191539564034761
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
        Id: 8104416065098925248
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -4.45914507
            Y: 0.929404676
            Z: -15.7151222
          }
          Rotation {
            Pitch: 1.99805558
            Yaw: 91.1091385
            Roll: 42.0465431
          }
          Scale {
            X: 0.00749574229
            Y: 0.348754853
            Z: 0.321952164
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
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
            Id: 16324191539564034761
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
        Id: 6260181366975007449
        Name: "Horn"
        Transform {
          Location {
            X: -17.714323
            Y: -0.0627296418
            Z: 0.22090517
          }
          Rotation {
            Pitch: 0.000204905664
            Yaw: 89.9987869
            Roll: 82.5284653
          }
          Scale {
            X: 0.117630348
            Y: 0.157326281
            Z: 0.25604564
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 8512810103978656607
        Name: "Horn"
        Transform {
          Location {
            X: -11.6406555
            Y: 0.000275932252
            Z: 15.4622841
          }
          Rotation {
            Pitch: 0.000102452832
            Yaw: 89.9985046
            Roll: 60.1704
          }
          Scale {
            X: 0.132710963
            Y: 0.169911444
            Z: 0.289671212
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 15661793747371643084
        Name: "Horn"
        Transform {
          Location {
            X: -0.894058466
            Y: 0.000270903111
            Z: 31.1807728
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9987106
            Roll: 52.7771492
          }
          Scale {
            X: 0.114336021
            Y: 0.170221835
            Z: 0.368780047
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 8792201617310296145
        Name: "Horn"
        Transform {
          Location {
            X: 9.00062847
            Y: -1.32620335e-05
            Z: 43.9063034
          }
          Rotation {
            Pitch: -0.000183105469
            Yaw: 89.9981613
            Roll: 33.4124298
          }
          Scale {
            X: 0.095878318
            Y: 0.179583162
            Z: 0.358218461
          }
        }
        ParentId: 7694686410752874546
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 16109427185162852303
        Name: "Spines"
        Transform {
          Location {
            X: -17.6514702
            Y: -3.61142802
            Z: -28.2256546
          }
          Rotation {
            Pitch: 20.9610634
            Yaw: 16.3404255
            Roll: 0.206600785
          }
          Scale {
            X: 0.8
            Y: 0.8
            Z: 0.8
          }
        }
        ParentId: 1008077614981112765
        ChildIds: 37352416204314002
        ChildIds: 384634575298357970
        ChildIds: 6505492493548887440
        ChildIds: 8468107744982626051
        ChildIds: 5095857510820099426
        ChildIds: 9194740352341395412
        ChildIds: 17155022726720306432
        ChildIds: 10033219935474086929
        ChildIds: 8492924220410605381
        ChildIds: 4941455647300050719
        ChildIds: 13008057994304208964
        ChildIds: 8891393349617451920
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
        Id: 37352416204314002
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -9.84169769
            Y: -0.084009707
            Z: 38.9807739
          }
          Rotation {
            Pitch: 0.000252717
            Yaw: 89.3084
            Roll: -14.3842773
          }
          Scale {
            X: 0.00749331247
            Y: 0.331882894
            Z: 0.301934898
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
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
            Id: 16324191539564034761
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
        Id: 384634575298357970
        Name: "Horn"
        Transform {
          Location {
            X: 11.1785536
            Y: -8.88705254e-05
            Z: 40.6048584
          }
          Rotation {
            Pitch: -0.000183105469
            Yaw: 89.9981842
            Roll: 33.4123917
          }
          Scale {
            X: 0.0818491727
            Y: 0.153306261
            Z: 0.30580309
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6505492493548887440
        Name: "Horn"
        Transform {
          Location {
            X: 5.28778076
            Y: -3.05175781e-05
            Z: 25.7208405
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: 89.9987411
            Roll: 48.1627159
          }
          Scale {
            X: 0.0976061
            Y: 0.145314649
            Z: 0.314819247
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8468107744982626051
        Name: "Horn"
        Transform {
          Location {
            X: -3.15393066
            Y: -6.10351562e-05
            Z: 11.318512
          }
          Rotation {
            Pitch: 0.00011611321
            Yaw: 89.9986343
            Roll: 62.8816681
          }
          Scale {
            X: 0.113291241
            Y: 0.151523769
            Z: 0.247285336
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5095857510820099426
        Name: "Horn"
        Transform {
          Location {
            X: -13.3123779
            Y: 0.000213623047
          }
          Rotation {
            Pitch: 0.000204905664
            Yaw: 89.998764
            Roll: 82.5285187
          }
          Scale {
            X: 0.100417651
            Y: 0.134306118
            Z: 0.168088615
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9194740352341395412
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -13.9911375
            Y: -0.0339275599
            Z: 19.6699944
          }
          Rotation {
            Pitch: 0.000266377348
            Yaw: 89.3079376
            Roll: 9.05496693
          }
          Scale {
            X: 0.007495136
            Y: 0.300385028
            Z: 0.343474567
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
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
            Id: 16324191539564034761
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
        Id: 17155022726720306432
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -17.2641106
            Y: 0.00572066754
            Z: 4.83559418
          }
          Rotation {
            Pitch: 0.000259547174
            Yaw: 89.3082047
            Roll: 18.548769
          }
          Scale {
            X: 0.00749725616
            Y: 0.294432461
            Z: 0.215383038
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
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
            Id: 16324191539564034761
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
        Id: 10033219935474086929
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -8.79657841
            Y: 0.370316058
            Z: -12.0363464
          }
          Rotation {
            Pitch: 2.83436441
            Yaw: 89.4498901
            Roll: 55.0021706
          }
          Scale {
            X: 0.00749548385
            Y: 0.24242866
            Z: 0.295176268
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
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
            Id: 16324191539564034761
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
        Id: 8492924220410605381
        Name: "Horn"
        Transform {
          Location {
            X: -14.4344339
            Y: 0.000383853912
            Z: -0.173895881
          }
          Rotation {
            Pitch: 0.000218566041
            Yaw: 89.9987717
            Roll: 82.5284348
          }
          Scale {
            X: 0.114535019
            Y: 0.153187379
            Z: 0.293353289
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 4941455647300050719
        Name: "Horn"
        Transform {
          Location {
            X: -10.8620653
            Y: 0.000136420131
            Z: 15.4854107
          }
          Rotation {
            Pitch: 0.000109283021
            Yaw: 89.998642
            Roll: 62.8817177
          }
          Scale {
            X: 0.129218251
            Y: 0.172825649
            Z: 0.282049835
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 13008057994304208964
        Name: "Horn"
        Transform {
          Location {
            X: -1.84737456
            Y: 0.000120401382
            Z: 32.237587
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 89.9985657
            Roll: 57.5310097
          }
          Scale {
            X: 0.111328021
            Y: 0.165743619
            Z: 0.359077901
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 8891393349617451920
        Name: "Horn"
        Transform {
          Location {
            X: 8.50500774
            Y: -7.51018524e-06
            Z: 44.6575699
          }
          Rotation {
            Pitch: -0.000183105469
            Yaw: 89.9982
            Roll: 33.4124832
          }
          Scale {
            X: 0.093355909
            Y: 0.174858719
            Z: 0.348794252
          }
        }
        ParentId: 16109427185162852303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 1931178319266529177
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -6.73633766
            Y: -16.8590012
            Z: 8.99482059
          }
          Rotation {
            Pitch: 10.2525845
            Yaw: 90.3885
            Roll: -83.0230103
          }
          Scale {
            X: 0.350080788
            Y: 0.263628662
            Z: 0.216523841
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5125781178746558037
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.1726079
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.517158449
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 6058331096123968367
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -7.38375473
            Y: 18.9004
            Z: 8.13364601
          }
          Rotation {
            Pitch: 10.4779949
            Yaw: -91.5528
            Roll: -117.735977
          }
          Scale {
            X: 0.350080788
            Y: 0.263628662
            Z: 0.216523841
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5125781178746558037
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.1726079
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.517158449
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 11311733583601131520
        Name: "Head"
        Transform {
          Location {
            X: 3.75296617
            Y: -4.69753149e-06
            Z: 27.8024693
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.15262151e-19
            Roll: 9.6688857e-13
          }
          Scale {
            X: 0.8
            Y: 0.8
            Z: 0.8
          }
        }
        ParentId: 1008077614981112765
        ChildIds: 16535869594298687025
        ChildIds: 281762862217052021
        ChildIds: 114935744007809339
        ChildIds: 9954967086922924965
        ChildIds: 9666909449277241936
        ChildIds: 7729730673048969925
        ChildIds: 1759962817509612275
        ChildIds: 3238106046945960081
        ChildIds: 1857539051628906028
        ChildIds: 632989388662208485
        ChildIds: 2132010453619175474
        ChildIds: 3972288556868511147
        ChildIds: 17427484998250938963
        ChildIds: 7842464973032933858
        ChildIds: 14197263974604009539
        ChildIds: 16022264565560841026
        ChildIds: 18002579564396836518
        ChildIds: 17433769567490034325
        ChildIds: 13259716311104432589
        ChildIds: 18172137150460419373
        ChildIds: 2783504248259218175
        ChildIds: 11656139249819996632
        ChildIds: 11920693196320048636
        ChildIds: 14810968597980229029
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
        Id: 16535869594298687025
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 32.989
            Y: -8.86501122
            Z: -1.72516298
          }
          Rotation {
            Pitch: -67.2880554
            Yaw: 6.89728355
            Roll: -52.8924255
          }
          Scale {
            X: 0.138161913
            Y: 0.0694972798
            Z: 0.0986812785
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.686755
              B: 0.139999986
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 281762862217052021
        Name: "Lip Upper"
        Transform {
          Location {
            X: 18.4113293
            Y: 0.344772339
            Z: -6.57633257
          }
          Rotation {
            Pitch: -6.38305664
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.536423862
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.227729484
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.316155702
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 114935744007809339
        Name: "Gils"
        Transform {
          Location {
            X: -8.53804
            Y: -15.4968872
            Z: -10.5931396
          }
          Rotation {
            Pitch: -2.97674561
            Yaw: -6.71402
            Roll: 0.700570941
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11311733583601131520
        ChildIds: 5891710953962863892
        ChildIds: 16339057078985350996
        ChildIds: 16068878467219855033
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
        Id: 5891710953962863892
        Name: "Lens"
        Transform {
          Location {
            X: -1.48327827
            Y: -0.348754883
            Z: 4.57763672e-05
          }
          Rotation {
            Pitch: -18.3877697
            Yaw: -39.8090134
            Roll: -156.663315
          }
          Scale {
            X: 0.409020662
            Y: -0.347043544
            Z: 0.325815976
          }
        }
        ParentId: 114935744007809339
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.26355791
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.55989528
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
        Id: 16339057078985350996
        Name: "Lens"
        Transform {
          Location {
            X: 2.12758064
            Y: 0.48840332
            Z: 5.39634705
          }
          Rotation {
            Pitch: -22.346056
            Yaw: -43.1515083
            Roll: -141.034241
          }
          Scale {
            X: 0.409020662
            Y: -0.347043544
            Z: 0.325815976
          }
        }
        ParentId: 114935744007809339
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.26355791
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.55989528
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
        Id: 16068878467219855033
        Name: "Lens"
        Transform {
          Location {
            X: -0.644636154
            Y: -0.136108398
            Z: 1.5350647
          }
          Rotation {
            Pitch: 18.387804
            Yaw: 140.19072
            Roll: 146.221832
          }
          Scale {
            X: 0.409020662
            Y: -0.347043544
            Z: 0.325815976
          }
        }
        ParentId: 114935744007809339
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.26355791
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.55989528
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
        Id: 9954967086922924965
        Name: "Gils"
        Transform {
          Location {
            X: -7.9686
            Y: 15.320282
            Z: -9.99978828
          }
          Rotation {
            Pitch: 0.628814518
            Yaw: 13.3018723
            Roll: 0.148687854
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11311733583601131520
        ChildIds: 11395014463935977455
        ChildIds: 14938866729538411268
        ChildIds: 1697529326532866632
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
        Id: 11395014463935977455
        Name: "Lens"
        Transform {
          Location {
            X: 2.12757206
            Y: -0.488399297
            Z: 5.39631557
          }
          Rotation {
            Pitch: 22.3461037
            Yaw: -136.848587
            Roll: -141.034393
          }
          Scale {
            X: 0.409020662
            Y: 0.347043544
            Z: 0.325815976
          }
        }
        ParentId: 9954967086922924965
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.89502954
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
        Id: 14938866729538411268
        Name: "Lens"
        Transform {
          Location {
            X: -0.644287109
            Y: 0.139404297
            Z: 1.5353241
          }
          Rotation {
            Pitch: -18.3877869
            Yaw: 39.8093758
            Roll: 146.222
          }
          Scale {
            X: 0.409020662
            Y: 0.347043544
            Z: 0.325815976
          }
        }
        ParentId: 9954967086922924965
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.89502954
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
        Id: 1697529326532866632
        Name: "Lens"
        Transform {
          Location {
            X: -1.48323774
            Y: -0.552794814
            Z: -1.43618672e-05
          }
          Rotation {
            Pitch: 18.3877621
            Yaw: -140.191
            Roll: -156.663345
          }
          Scale {
            X: 0.409020662
            Y: 0.347043544
            Z: 0.325815976
          }
        }
        ParentId: 9954967086922924965
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.89502954
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
        Id: 9666909449277241936
        Name: "Eye Left"
        Transform {
          Location {
            X: 21.1837769
            Y: -16.2389221
            Z: 12.0799255
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11311733583601131520
        ChildIds: 10477084184053766242
        ChildIds: 6202298901397452374
        ChildIds: 5822056127478470142
        ChildIds: 9782107096939708530
        ChildIds: 15142512545885167911
        ChildIds: 7689939260791497270
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
        Id: 10477084184053766242
        Name: "Eye Ball"
        Transform {
          Location {
            X: -9.75478542e-08
            Y: -1.00524902
            Z: -0.409145355
          }
          Rotation {
            Pitch: 16.6630096
            Yaw: 7.84490108
            Roll: 25.6628971
          }
          Scale {
            X: 0.237531677
            Y: 0.237531677
            Z: 0.237531677
          }
        }
        ParentId: 9666909449277241936
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4858206103076370621
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
        Id: 6202298901397452374
        Name: "Lid Lower"
        Transform {
          Location {
            X: -1.50994873
            Y: -0.302459717
            Z: -3.20681763
          }
          Rotation {
            Pitch: 17.3626881
            Yaw: 166.871887
            Roll: 171.68251
          }
          Scale {
            X: 0.254927099
            Y: 0.254927099
            Z: 0.254927099
          }
        }
        ParentId: 9666909449277241936
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5822056127478470142
        Name: "Lid Upper"
        Transform {
          Location {
            X: 4.03844213
            Y: -3.38623548
            Z: -1.34735727
          }
          Rotation {
            Pitch: 54.6347237
            Yaw: -1.32824063
            Roll: 35.5338287
          }
          Scale {
            X: 0.245259076
            Y: 0.245258868
            Z: 0.317192942
          }
        }
        ParentId: 9666909449277241936
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
              A: 1
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
            Float: 0.125
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
        Id: 9782107096939708530
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: 4.03844213
            Y: -3.38623548
            Z: -1.34735727
          }
          Rotation {
            Pitch: 54.6344719
            Yaw: -1.32824862
            Roll: 35.5337791
          }
          Scale {
            X: 0.256123632
            Y: 0.256123364
            Z: 0.331244022
          }
        }
        ParentId: 9666909449277241936
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.536423862
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 15142512545885167911
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: -1.8208313
            Y: -0.183166504
            Z: -4.13067627
          }
          Rotation {
            Pitch: 17.3626747
            Yaw: 166.871841
            Roll: 171.682465
          }
          Scale {
            X: 0.272603273
            Y: 0.272603273
            Z: 0.272603273
          }
        }
        ParentId: 9666909449277241936
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.536423862
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 7689939260791497270
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 9.53170776
            Y: -6.30447388
            Z: 0.702111781
          }
          Rotation {
            Pitch: -89.0742188
            Yaw: 53.9281616
            Roll: -82.4314
          }
          Scale {
            X: 0.120233588
            Y: 0.120228089
            Z: 0.0687398836
          }
        }
        ParentId: 9666909449277241936
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7025537426303936580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.840000033
              G: 0.200264901
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
        Id: 7729730673048969925
        Name: "Eye Right"
        Transform {
          Location {
            X: 20.693634
            Y: 16.1459656
            Z: 11.931839
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11311733583601131520
        ChildIds: 1031992721754942885
        ChildIds: 13580704968203063604
        ChildIds: 5502326495733594219
        ChildIds: 17754598965160217113
        ChildIds: 10549837548463240871
        ChildIds: 2712263184996695955
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
        Id: 1031992721754942885
        Name: "Eye Ball"
        Transform {
          Location {
            X: -9.75478542e-08
            Z: -0.409145355
          }
          Rotation {
            Pitch: 12.4642754
            Yaw: -11.3761292
            Roll: -23.8730164
          }
          Scale {
            X: 0.237531677
            Y: 0.237531677
            Z: 0.237531677
          }
        }
        ParentId: 7729730673048969925
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4858206103076370621
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
        Id: 13580704968203063604
        Name: "Lid Lower"
        Transform {
          Location {
            X: -1.21826231
            Y: -0.474472046
            Z: -2.64087653
          }
          Rotation {
            Pitch: 18.9603577
            Yaw: -162.936172
            Roll: -167.916794
          }
          Scale {
            X: 0.256292313
            Y: 0.256292313
            Z: 0.256292313
          }
        }
        ParentId: 7729730673048969925
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5502326495733594219
        Name: "Lid Upper"
        Transform {
          Location {
            X: 4.07966805
            Y: 2.24502063
            Z: -0.62813437
          }
          Rotation {
            Pitch: 44.2146492
            Yaw: -16.5360832
            Roll: -45.0769119
          }
          Scale {
            X: 0.248252928
            Y: 0.248252735
            Z: 0.321064919
          }
        }
        ParentId: 7729730673048969925
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
              A: 1
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
            Float: 0.125
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
        Id: 17754598965160217113
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: 4.07966805
            Y: 2.24502063
            Z: -0.62813437
          }
          Rotation {
            Pitch: 44.2146416
            Yaw: -16.5361481
            Roll: -45.0770645
          }
          Scale {
            X: 0.259250045
            Y: 0.259249806
            Z: 0.335287482
          }
        }
        ParentId: 7729730673048969925
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.536423862
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 10549837548463240871
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: -1.57684422
            Y: -0.369491577
            Z: -3.54904151
          }
          Rotation {
            Pitch: 18.9603577
            Yaw: -162.936172
            Roll: -167.916794
          }
          Scale {
            X: 0.2740632
            Y: 0.2740632
            Z: 0.2740632
          }
        }
        ParentId: 7729730673048969925
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.536423862
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 2712263184996695955
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 9.53186
            Y: 5.41564941
            Z: 1.00770724
          }
          Rotation {
            Pitch: -83.3858643
            Yaw: -20.6395569
            Roll: 49.3743439
          }
          Scale {
            X: 0.120233588
            Y: 0.120228089
            Z: 0.0687398836
          }
        }
        ParentId: 7729730673048969925
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7025537426303936580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.840000033
              G: 0.200264901
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
        Id: 1759962817509612275
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: -0.137156576
            Y: -0.000152587891
            Z: 3.5773468
          }
          Rotation {
            Pitch: -48.029541
            Yaw: 6.12804361e-05
            Roll: 89.999588
          }
          Scale {
            X: 0.508744538
            Y: 0.775674045
            Z: 0.736342609
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.291259825
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3238106046945960081
        Name: "Head"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 41.8703575
            Yaw: -179.999939
            Roll: -89.9998169
          }
          Scale {
            X: 0.525164783
            Y: 0.79071337
            Z: 1.55113411
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.779337943
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.32818532
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1857539051628906028
        Name: "Jaw Upper"
        Transform {
          Location {
            X: 17.984808
            Y: 0.344696045
            Z: -5.97740602
          }
          Rotation {
            Pitch: -6.38305664
          }
          Scale {
            X: 0.49999997
            Y: 0.467470616
            Z: 0.399999976
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.178056553
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.201367125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
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
            Id: 14331018423419850659
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
        Id: 632989388662208485
        Name: "Nose Wrinkles"
        Transform {
          Location {
            X: 25
            Z: 5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11311733583601131520
        ChildIds: 10772024043413770230
        ChildIds: 8987135948199606964
        ChildIds: 248574045554536540
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
        Id: 10772024043413770230
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 0.270730764
            Z: 7.07342148
          }
          Rotation {
            Pitch: 7.67558861
            Yaw: -179.999954
            Roll: 2.7003045e-05
          }
          Scale {
            X: 0.182250425
            Y: 0.182250425
            Z: 0.182250425
          }
        }
        ParentId: 632989388662208485
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
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
        Id: 8987135948199606964
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 1.61846268
            Z: 4.33555555
          }
          Rotation {
            Pitch: 26.2355614
            Yaw: -179.999939
          }
          Scale {
            X: 0.182250425
            Y: 0.182250425
            Z: 0.182250425
          }
        }
        ParentId: 632989388662208485
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
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
        Id: 248574045554536540
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 2.76025796
            Z: 0.792292893
          }
          Rotation {
            Pitch: 35.804039
            Yaw: 179.999954
            Roll: -0.000122070312
          }
          Scale {
            X: 0.207169801
            Y: 0.207169801
            Z: 0.207169801
          }
        }
        ParentId: 632989388662208485
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
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
        Id: 2132010453619175474
        Name: "Eye Socket Left"
        Transform {
          Location {
            X: 9.76429176
            Y: -11.1039734
            Z: 6.47821188
          }
          Rotation {
            Pitch: 44.4221039
            Yaw: -174.046249
            Roll: -154.009583
          }
          Scale {
            X: 0.356339216
            Y: 0.3654356
            Z: 0.447597533
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.32818532
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.08195138
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 3972288556868511147
        Name: "Eye Socket Right"
        Transform {
          Location {
            X: 8.72028542
            Y: 11.6841125
            Z: 6.47821236
          }
          Rotation {
            Pitch: 35.2389
            Yaw: 145.294952
            Roll: 146.4086
          }
          Scale {
            X: 0.33364743
            Y: 0.365435749
            Z: 0.44759807
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.32818532
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.08195138
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 17427484998250938963
        Name: "Head Spines"
        Transform {
          Location {
            X: 6.80013943
            Z: 12.3009863
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11311733583601131520
        ChildIds: 14580225974143727717
        ChildIds: 471686539431097169
        ChildIds: 12258753268670232591
        ChildIds: 170810339264139354
        ChildIds: 2206239681123328109
        ChildIds: 5272317192694717243
        ChildIds: 2681764166506533421
        ChildIds: 424479404293533385
        ChildIds: 6181637065126023006
        ChildIds: 15362272508839614209
        ChildIds: 5969832936119925010
        ChildIds: 13966151055125399038
        ChildIds: 83312949080514130
        ChildIds: 9778606205529172199
        ChildIds: 13501308951055253895
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
        Id: 14580225974143727717
        Name: "Horn"
        Transform {
          Location {
            X: 16.530611
            Z: 8.64379501
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9997482
            Roll: -3.23977661
          }
          Scale {
            X: 0.0986235216
            Y: 0.151524588
            Z: 0.2713283
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 471686539431097169
        Name: "Horn"
        Transform {
          Location {
            X: 5.2005043
            Z: 14.7276297
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9996185
            Roll: 10.4514971
          }
          Scale {
            X: 0.117985591
            Y: 0.151524931
            Z: 0.271328837
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12258753268670232591
        Name: "Horn"
        Transform {
          Location {
            X: -3.04061675
            Z: 8.75373936
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 89.9992
            Roll: 23.9327469
          }
          Scale {
            X: 0.117219
            Y: 0.151524708
            Z: 0.271328628
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 170810339264139354
        Name: "Horn"
        Transform {
          Location {
            X: -6.38854933
            Z: 1.60114431
          }
          Rotation {
            Pitch: 0.000102452832
            Yaw: 89.9989
            Roll: 37.1156311
          }
          Scale {
            X: 0.129794583
            Y: 0.151524723
            Z: 0.271328777
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2206239681123328109
        Name: "Horn"
        Transform {
          Location {
            X: -12.3020935
            Z: 2.93304765e-06
          }
          Rotation {
            Pitch: 0.000471283041
            Yaw: 89.9989
            Roll: 58.7846756
          }
          Scale {
            X: 0.115940429
            Y: 0.125263065
            Z: 0.224303111
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5272317192694717243
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 5.59143734
            Y: 0.228118896
            Z: 27.3163395
          }
          Rotation {
            Pitch: -9.15527344e-05
            Yaw: 89.9995193
            Roll: -28.0085449
          }
          Scale {
            X: 0.00749669457
            Y: 0.170040116
            Z: 0.230657369
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 2681764166506533421
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -4.8686161
            Y: 0.228271484
            Z: 23.9574432
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 89.9991837
            Roll: -4.68496704
          }
          Scale {
            X: 0.00749731436
            Y: 0.170926392
            Z: 0.294625461
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 424479404293533385
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -15.035244
            Y: 0.228424072
            Z: 16.3608589
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: 89.9991
            Roll: 11.0062466
          }
          Scale {
            X: 0.00749737676
            Y: 0.160451531
            Z: 0.291590482
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 6181637065126023006
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -22.7609234
            Y: 0.22857666
            Z: 8.32821465
          }
          Rotation {
            Pitch: 4.78113216e-05
            Yaw: 89.9988
            Roll: 17.7744789
          }
          Scale {
            X: 0.0074969
            Y: 0.160450548
            Z: 0.234866202
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 15362272508839614209
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -29.7450256
            Y: 0.228729248
            Z: 0.66908592
          }
          Rotation {
            Pitch: 0.000136603776
            Yaw: 89.9985123
            Roll: 40.7347832
          }
          Scale {
            X: 0.00749618886
            Y: 0.104374588
            Z: 0.187667981
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 5969832936119925010
        Name: "Horn"
        Transform {
          Location {
            X: -25.6864338
            Y: 0.000457763672
            Z: 6.66542625
          }
          Rotation {
            Pitch: 0.000280037755
            Yaw: 89.9984665
            Roll: 43.4475136
          }
          Scale {
            X: 0.0948209
            Y: 0.10174226
            Z: 0.17692861
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 13966151055125399038
        Name: "Horn"
        Transform {
          Location {
            X: -17.5391159
            Y: 0.000305175781
            Z: 13.5769129
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 89.9984894
            Roll: 37.4208374
          }
          Scale {
            X: 0.10604988
            Y: 0.123801261
            Z: 0.19454
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 83312949080514130
        Name: "Horn"
        Transform {
          Location {
            X: -8.46351147
            Z: 18.8128872
          }
          Rotation {
            Pitch: -0.000396728516
            Yaw: 89.9988785
            Roll: 23.1308689
          }
          Scale {
            X: 0.117219396
            Y: 0.133385763
            Z: 0.241068229
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 9778606205529172199
        Name: "Horn"
        Transform {
          Location {
            X: 3.94766355
            Y: 0.000152587891
            Z: 21.5790939
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9991
            Roll: 0.368048102
          }
          Scale {
            X: 0.117986418
            Y: 0.151524022
            Z: 0.235825092
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 13501308951055253895
        Name: "Horn"
        Transform {
          Location {
            X: 16.9397774
            Z: 17.1146545
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 89.9991684
            Roll: -30.4563904
          }
          Scale {
            X: 0.118212767
            Y: 0.178874716
            Z: 0.284034342
          }
        }
        ParentId: 17427484998250938963
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 7842464973032933858
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 33.1085281
            Y: 9.00922203
            Z: -1.85879207
          }
          Rotation {
            Pitch: -73.3890076
            Yaw: 20.2934113
            Roll: 30.912199
          }
          Scale {
            X: 0.138161913
            Y: 0.0694972798
            Z: 0.0986812785
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.686755
              B: 0.139999986
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 14197263974604009539
        Name: "Tooth"
        Transform {
          Location {
            X: 36.0963402
            Y: -12.0257568
            Z: -19.6979027
          }
          Rotation {
            Pitch: -25.710022
            Yaw: -34.0182495
            Roll: 15.4647083
          }
          Scale {
            X: 0.0916075632
            Y: 0.0698885918
            Z: 0.155521616
          }
        }
        ParentId: 11311733583601131520
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
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.96875
              G: 1
              B: 0.9375
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
            Id: 9507970697836095688
          }
          Teams {
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
        Id: 16022264565560841026
        Name: "Tooth"
        Transform {
          Location {
            X: 36.6390953
            Y: 12.4960327
            Z: -19.6269684
          }
          Rotation {
            Pitch: -22.057251
            Yaw: 39.6482391
            Roll: -12.217804
          }
          Scale {
            X: 0.0916075632
            Y: 0.0698885918
            Z: 0.155521616
          }
        }
        ParentId: 11311733583601131520
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
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.96875
              G: 1
              B: 0.9375
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
            Id: 9507970697836095688
          }
          Teams {
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
        Id: 18002579564396836518
        Name: "Jaw Upper Inside"
        Transform {
          Location {
            X: 13.6727028
            Y: 0.344678938
            Z: -8.22416496
          }
          Rotation {
            Pitch: 13.3101873
            Yaw: 0.000415957446
            Roll: 179.999268
          }
          Scale {
            X: 0.355014265
            Y: 0.415070474
            Z: 0.193643793
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 86369592013213841
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
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.536423862
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
            Id: 14875491995579066764
          }
          Teams {
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
        Id: 17433769567490034325
        Name: "Jaw Lower"
        Transform {
          Location {
            X: 17.778677
            Y: 0.344673812
            Z: -16.1585312
          }
          Rotation {
            Pitch: -22.1733875
            Yaw: -3.05175927e-05
            Roll: -179.999893
          }
          Scale {
            X: 0.477258384
            Y: 0.495769352
            Z: 0.247149467
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 86369592013213841
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
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.976953685
              B: 0.13
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
            Id: 14875491995579066764
          }
          Teams {
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
        Id: 13259716311104432589
        Name: "Lip Lower"
        Transform {
          Location {
            X: 18.6762028
            Y: 0.344825238
            Z: -14.280901
          }
          Rotation {
            Pitch: -22.1734
            Yaw: -3.05175781e-05
            Roll: -179.999893
          }
          Scale {
            X: 0.55078584
            Y: 0.54183358
            Z: 0.708532333
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.536423862
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.227729484
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.316155702
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
        Id: 18172137150460419373
        Name: "Jaw Lower Inside"
        Transform {
          Location {
            X: 20.7012939
            Y: 0.344670117
            Z: -12.9473057
          }
          Rotation {
            Pitch: -22.1733875
            Yaw: -3.05176327e-05
            Roll: -179.999893
          }
          Scale {
            X: 0.47725898
            Y: 0.495770097
            Z: 0.0726468414
          }
        }
        ParentId: 11311733583601131520
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 86369592013213841
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
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.536423862
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
            Id: 14875491995579066764
          }
          Teams {
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
        Id: 2783504248259218175
        Name: "Head Spines"
        Transform {
          Location {
            X: 5.56671524
            Z: 14.5862
          }
          Rotation {
            Pitch: 2.8117907
            Yaw: -6.89953613
            Roll: 22.0679874
          }
          Scale {
            X: 0.830538213
            Y: 0.830538213
            Z: 0.830538213
          }
        }
        ParentId: 11311733583601131520
        ChildIds: 1810411121607902278
        ChildIds: 7844210940955254702
        ChildIds: 4172553297439017930
        ChildIds: 14864994559758748038
        ChildIds: 5877724169251753041
        ChildIds: 14637606709720448589
        ChildIds: 17655673912462538649
        ChildIds: 6745599715354996344
        ChildIds: 13956039401311208241
        ChildIds: 14707821705551538640
        ChildIds: 11832735219239342671
        ChildIds: 15114335673753048708
        ChildIds: 15453880716337309708
        ChildIds: 5006705205633225602
        ChildIds: 1043703448227517081
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
        Id: 1810411121607902278
        Name: "Horn"
        Transform {
          Location {
            X: 16.5305538
            Z: 8.64379501
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9997482
            Roll: -3.23977661
          }
          Scale {
            X: 0.0986242145
            Y: 0.151523724
            Z: 0.189636961
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7844210940955254702
        Name: "Horn"
        Transform {
          Location {
            X: 5.20046616
            Z: 14.7276297
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9996185
            Roll: 10.4514666
          }
          Scale {
            X: 0.117986411
            Y: 0.151524067
            Z: 0.189637318
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4172553297439017930
        Name: "Horn"
        Transform {
          Location {
            X: -3.04055953
            Z: 8.75373936
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 89.9991837
            Roll: 23.9327888
          }
          Scale {
            X: 0.117219813
            Y: 0.151523843
            Z: 0.189637169
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14864994559758748038
        Name: "Horn"
        Transform {
          Location {
            X: -6.38849211
            Z: 1.60114431
          }
          Rotation {
            Pitch: 0.000102452832
            Yaw: 89.9989
            Roll: 37.1156654
          }
          Scale {
            X: 0.129795492
            Y: 0.151523858
            Z: 0.189637274
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5877724169251753041
        Name: "Horn"
        Transform {
          Location {
            X: -12.3020363
            Z: 2.93303401e-06
          }
          Rotation {
            Pitch: 0.000471283041
            Yaw: 89.998909
            Roll: 58.7847176
          }
          Scale {
            X: 0.115941241
            Y: 0.125262335
            Z: 0.156770065
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14637606709720448589
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 8.38491821
            Y: 0.228118896
            Z: 22.62883
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9996719
            Roll: -35.0172729
          }
          Scale {
            X: 0.00749492319
            Y: 0.170040026
            Z: 0.131735221
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 17655673912462538649
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -2.58468628
            Y: 0.228271484
            Z: 19.1247406
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 89.9993896
            Roll: -19.1876221
          }
          Scale {
            X: 0.00749490736
            Y: 0.219487622
            Z: 0.168269262
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 6745599715354996344
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -11.7070618
            Y: 0.228424072
            Z: 14.502533
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 89.9991074
            Roll: 3.99698806
          }
          Scale {
            X: 0.00749560585
            Y: 0.160451531
            Z: 0.166535944
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 13956039401311208241
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -19.6608276
            Y: 0.228546143
            Z: 7.47395325
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 89.9990768
            Roll: 10.7652779
          }
          Scale {
            X: 0.00749512902
            Y: 0.160450533
            Z: 0.134138986
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 14707821705551538640
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -27.003418
            Y: 0.22869873
            Z: 1.90132141
          }
          Rotation {
            Pitch: 0.000136603776
            Yaw: 89.998642
            Roll: 33.7263603
          }
          Scale {
            X: 0.00749513227
            Y: 0.104375638
            Z: 0.0802461207
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 11832735219239342671
        Name: "Horn"
        Transform {
          Location {
            X: -25.6864338
            Y: 0.000457763672
            Z: 6.66542625
          }
          Rotation {
            Pitch: 0.000280037755
            Yaw: 89.9984665
            Roll: 43.4475136
          }
          Scale {
            X: 0.0948209
            Y: 0.10174226
            Z: 0.17692861
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 15114335673753048708
        Name: "Horn"
        Transform {
          Location {
            X: -17.5391159
            Y: 0.000305175781
            Z: 13.5769129
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 89.9984894
            Roll: 37.4208374
          }
          Scale {
            X: 0.10604988
            Y: 0.123801261
            Z: 0.19454
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 15453880716337309708
        Name: "Horn"
        Transform {
          Location {
            X: -8.46351147
            Z: 18.8128872
          }
          Rotation {
            Pitch: -0.000396728516
            Yaw: 89.9988785
            Roll: 23.1308689
          }
          Scale {
            X: 0.117219396
            Y: 0.133385763
            Z: 0.241068229
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 5006705205633225602
        Name: "Horn"
        Transform {
          Location {
            X: 3.94766355
            Y: 0.000152587891
            Z: 21.5790939
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9991
            Roll: 0.368048102
          }
          Scale {
            X: 0.117986418
            Y: 0.151524022
            Z: 0.235825092
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 1043703448227517081
        Name: "Horn"
        Transform {
          Location {
            X: 16.9397774
            Z: 17.1146545
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 89.9991684
            Roll: -30.4563904
          }
          Scale {
            X: 0.118212767
            Y: 0.178874716
            Z: 0.284034342
          }
        }
        ParentId: 2783504248259218175
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 11656139249819996632
        Name: "Head Spines"
        Transform {
          Location {
            X: 5.27450848
            Y: -0.777130127
            Z: 13.7404051
          }
          Rotation {
            Pitch: 0.393548638
            Yaw: 5.271492
            Roll: -19.3471069
          }
          Scale {
            X: 0.830538213
            Y: 0.830538213
            Z: 0.830538213
          }
        }
        ParentId: 11311733583601131520
        ChildIds: 15669301118345731191
        ChildIds: 3392977471449927395
        ChildIds: 17715925253836111176
        ChildIds: 11633042792680985707
        ChildIds: 14189820543265074661
        ChildIds: 13347588503920582764
        ChildIds: 9880518533547200420
        ChildIds: 14359777440468647671
        ChildIds: 4726114928423983468
        ChildIds: 11477956611812922344
        ChildIds: 508549544954899177
        ChildIds: 18339271062111473401
        ChildIds: 10646172847019652513
        ChildIds: 10573246067783050783
        ChildIds: 4972552948683581855
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
        Id: 15669301118345731191
        Name: "Horn"
        Transform {
          Location {
            X: 16.5305538
            Z: 8.64379501
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9997482
            Roll: -3.23977661
          }
          Scale {
            X: 0.0986242145
            Y: 0.151523724
            Z: 0.189636961
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3392977471449927395
        Name: "Horn"
        Transform {
          Location {
            X: 5.20046616
            Z: 14.7276297
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9996185
            Roll: 10.4514666
          }
          Scale {
            X: 0.117986411
            Y: 0.151524067
            Z: 0.189637318
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17715925253836111176
        Name: "Horn"
        Transform {
          Location {
            X: -3.04055953
            Z: 8.75373936
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 89.9991837
            Roll: 23.9327888
          }
          Scale {
            X: 0.117219813
            Y: 0.151523843
            Z: 0.189637169
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11633042792680985707
        Name: "Horn"
        Transform {
          Location {
            X: -6.38849211
            Z: 1.60114431
          }
          Rotation {
            Pitch: 0.000102452832
            Yaw: 89.9989
            Roll: 37.1156654
          }
          Scale {
            X: 0.129795492
            Y: 0.151523858
            Z: 0.189637274
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14189820543265074661
        Name: "Horn"
        Transform {
          Location {
            X: -12.3020363
            Z: 2.93303401e-06
          }
          Rotation {
            Pitch: 0.000471283041
            Yaw: 89.998909
            Roll: 58.7847176
          }
          Scale {
            X: 0.115941241
            Y: 0.125262335
            Z: 0.156770065
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.918262064
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13347588503920582764
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 8.38491821
            Y: 0.228118896
            Z: 22.62883
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9996719
            Roll: -35.0172729
          }
          Scale {
            X: 0.00749492319
            Y: 0.170040026
            Z: 0.131735221
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 9880518533547200420
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -2.58468628
            Y: 0.228271484
            Z: 19.1247406
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 89.9993896
            Roll: -19.1876221
          }
          Scale {
            X: 0.00749490736
            Y: 0.219487622
            Z: 0.168269262
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 14359777440468647671
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -11.7070618
            Y: 0.228424072
            Z: 14.502533
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 89.9991074
            Roll: 3.99698806
          }
          Scale {
            X: 0.00749560585
            Y: 0.160451531
            Z: 0.166535944
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 4726114928423983468
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -19.6608276
            Y: 0.228546143
            Z: 7.47395325
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 89.9990768
            Roll: 10.7652779
          }
          Scale {
            X: 0.00749512902
            Y: 0.160450533
            Z: 0.134138986
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 11477956611812922344
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: -27.003418
            Y: 0.22869873
            Z: 1.90132141
          }
          Rotation {
            Pitch: 0.000136603776
            Yaw: 89.998642
            Roll: 33.7263603
          }
          Scale {
            X: 0.00749513227
            Y: 0.104375638
            Z: 0.0802461207
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11389152567197969296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.193276212
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
            Id: 16324191539564034761
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
        Id: 508549544954899177
        Name: "Horn"
        Transform {
          Location {
            X: -25.6864338
            Y: 0.000457763672
            Z: 6.66542625
          }
          Rotation {
            Pitch: 0.000280037755
            Yaw: 89.9984665
            Roll: 43.4475136
          }
          Scale {
            X: 0.0948209
            Y: 0.10174226
            Z: 0.17692861
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 18339271062111473401
        Name: "Horn"
        Transform {
          Location {
            X: -17.5391159
            Y: 0.000305175781
            Z: 13.5769129
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 89.9984894
            Roll: 37.4208374
          }
          Scale {
            X: 0.10604988
            Y: 0.123801261
            Z: 0.19454
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 10646172847019652513
        Name: "Horn"
        Transform {
          Location {
            X: -8.46351147
            Z: 18.8128872
          }
          Rotation {
            Pitch: -0.000396728516
            Yaw: 89.9988785
            Roll: 23.1308689
          }
          Scale {
            X: 0.117219396
            Y: 0.133385763
            Z: 0.241068229
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 10573246067783050783
        Name: "Horn"
        Transform {
          Location {
            X: 3.94766355
            Y: 0.000152587891
            Z: 21.5790939
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9991
            Roll: 0.368048102
          }
          Scale {
            X: 0.117986418
            Y: 0.151524022
            Z: 0.235825092
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 4972552948683581855
        Name: "Horn"
        Transform {
          Location {
            X: 16.9397774
            Z: 17.1146545
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 89.9991684
            Roll: -30.4563904
          }
          Scale {
            X: 0.118212767
            Y: 0.178874716
            Z: 0.284034342
          }
        }
        ParentId: 11656139249819996632
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 11920693196320048636
        Name: "Tooth"
        Transform {
          Location {
            X: 33.3438072
            Y: 17.202301
            Z: -18.4777908
          }
          Rotation {
            Pitch: -22.0572205
            Yaw: 39.6481972
            Roll: -12.2178345
          }
          Scale {
            X: 0.0609093793
            Y: 0.0464685485
            Z: 0.103405491
          }
        }
        ParentId: 11311733583601131520
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
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.96875
              G: 1
              B: 0.9375
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
            Id: 9507970697836095688
          }
          Teams {
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
        Id: 14810968597980229029
        Name: "Tooth"
        Transform {
          Location {
            X: 33.8583336
            Y: -16.3850403
            Z: -18.4851151
          }
          Rotation {
            Pitch: -25.7099915
            Yaw: -34.0182495
            Roll: 15.4647322
          }
          Scale {
            X: 0.0629914925
            Y: 0.0480570197
            Z: 0.106940277
          }
        }
        ParentId: 11311733583601131520
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
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.96875
              G: 1
              B: 0.9375
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
            Id: 9507970697836095688
          }
          Teams {
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
        Id: 9807920327208308387
        Name: "Pec Left"
        Transform {
          Location {
            X: 5.13838863
            Y: -9.96234798
            Z: -20.1576462
          }
          Rotation {
            Pitch: 19.1578674
            Yaw: 39.0311546
            Roll: 1.81037867
          }
          Scale {
            X: 0.327190936
            Y: 0.291274816
            Z: 0.116724469
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.316155702
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.257543117
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 4710311175494756916
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 5.48765564
            Y: 9.74999332
            Z: -20.8004074
          }
          Rotation {
            Pitch: 21.920433
            Yaw: -37.3130722
            Roll: -3.89152861
          }
          Scale {
            X: 0.327190936
            Y: 0.291274816
            Z: 0.116724469
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.257543117
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.316155702
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 8604228728427812024
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 2.58578944
            Y: 8.75054646
            Z: -28.2388191
          }
          Rotation {
            Pitch: 25.4652119
            Yaw: -35.1912689
            Roll: 1.38284957
          }
          Scale {
            X: 0.327190936
            Y: 0.291274816
            Z: 0.116724469
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.257543117
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.316155702
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 14138559187033745033
        Name: "Pec Left"
        Transform {
          Location {
            X: 2.7598393
            Y: -8.9268837
            Z: -28.3212318
          }
          Rotation {
            Pitch: 25.7908611
            Yaw: 39.2637939
            Roll: 1.89963114
          }
          Scale {
            X: 0.327190936
            Y: 0.291274816
            Z: 0.116724469
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.316155702
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.257543117
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 7525569896469136172
        Name: "Horn"
        Transform {
          Location {
            X: -12.7710676
            Y: 25.8446198
            Z: 14.0612965
          }
          Rotation {
            Pitch: -19.9574966
            Yaw: -126.352745
            Roll: -49.8081856
          }
          Scale {
            X: 0.126337975
            Y: 0.124948382
            Z: 0.230975419
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.63485539
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
            Id: 10227161647766562745
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
        Id: 16614540039158831305
        Name: "Horn"
        Transform {
          Location {
            X: -11.4755993
            Y: -24.6214447
            Z: 13.6334076
          }
          Rotation {
            Pitch: 18.5959682
            Yaw: -41.1816177
            Roll: -42.7405167
          }
          Scale {
            X: 0.126337975
            Y: 0.124948382
            Z: 0.230975419
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.63485539
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
            Id: 10227161647766562745
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
        Id: 14490976007710275488
        Name: "Horn"
        Transform {
          Location {
            X: -13.1318474
            Y: -25.5691967
            Z: 15.4835072
          }
          Rotation {
            Pitch: 18.595974
            Yaw: -41.1814156
            Roll: -47.4379654
          }
          Scale {
            X: 0.134605572
            Y: 0.133124769
            Z: 0.258094817
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 15309618479934704215
        Name: "Horn"
        Transform {
          Location {
            X: -14.3440628
            Y: 26.4254322
            Z: 15.3407326
          }
          Rotation {
            Pitch: -19.9574966
            Yaw: -126.352753
            Roll: -49.8082886
          }
          Scale {
            X: 0.14549394
            Y: 0.143892586
            Z: 0.25978604
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
        Id: 17005040304887106841
        Name: "Vines"
        Transform {
          Location {
            X: -6.14209
            Y: 1.55194092
            Z: -27.4041901
          }
          Rotation {
            Pitch: 86.1114731
            Yaw: -22.9369907
            Roll: 68.5760345
          }
          Scale {
            X: 1.06993973
            Y: 0.54817909
            Z: -1.95783985
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 3.41109443
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
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
            Id: 8936463881719161671
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12807930671999041399
        Name: "Ivy 04"
        Transform {
          Location {
            X: -27.3751869
            Y: -14.8273582
            Z: -35.8759117
          }
          Rotation {
            Pitch: 3.18418622
            Yaw: 111.964638
            Roll: 81.4126358
          }
          Scale {
            X: 0.338314027
            Y: 0.338314146
            Z: 0.59393996
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.53
              G: 0.273774832
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.653973579
              B: 0.0500000119
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
            Id: 16904236265444783799
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16942198576647458253
        Name: "Vines"
        Transform {
          Location {
            X: -6.14172363
            Y: -1.99951172
            Z: -8.30522156
          }
          Rotation {
            Pitch: 55.7138786
            Yaw: 83.2064285
            Roll: 173.563431
          }
          Scale {
            X: 0.839382648
            Y: 0.54817909
            Z: -1.40699852
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.12724376
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.584863245
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
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16144546338324821772
        Name: "Ivy 04"
        Transform {
          Location {
            X: 13.5062208
            Y: 10.1432323
            Z: -13.5644712
          }
          Rotation {
            Pitch: 2.89656019
            Yaw: 108.75341
            Roll: -74.9983597
          }
          Scale {
            X: 0.407340616
            Y: 0.487347454
            Z: 0.855581462
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.65
              G: 0.490728527
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.653973579
              B: 0.0500000119
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
            Id: 15600672674220494197
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10511051113562413096
        Name: "Vines"
        Transform {
          Location {
            X: -26.2319336
            Y: 27.8980103
            Z: 11.6110992
          }
          Rotation {
            Pitch: 88.2560425
            Yaw: 177.20462
            Roll: 19.3555374
          }
          Scale {
            X: 0.523026586
            Y: 0.157017127
            Z: -1.36524391
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.69871318
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
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
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18342721210631104909
        Name: "Vines"
        Transform {
          Location {
            X: -32.1542969
            Y: 33.1281128
            Z: 5.13728333
          }
          Rotation {
            Pitch: 88.2568283
            Yaw: 177.170044
            Roll: -158.232819
          }
          Scale {
            X: 0.523026526
            Y: 0.196128637
            Z: -1.36524475
          }
        }
        ParentId: 1008077614981112765
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.69871318
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.457291365
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
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3749664621351869491
        Name: "pelvis"
        Transform {
          Location {
            X: 2.66870117
            Y: -0.118530273
            Z: 120.268005
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169605e-05
            Roll: -7.43053033e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 5549407700551572243
        ChildIds: 2412916070421094969
        ChildIds: 6531728887452243787
        ChildIds: 2268843322668310324
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
        Id: 5549407700551572243
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: 1.67614233
            Y: -2.60278057e-06
            Z: -3.8920691
          }
          Rotation {
            Pitch: -5.41896915
            Yaw: 179.999954
            Roll: 1.23890241e-05
          }
          Scale {
            X: 0.266343445
            Y: 0.390174717
            Z: 0.58399123
          }
        }
        ParentId: 3749664621351869491
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6211691952139490738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.717968583
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.89
              G: 0.636556268
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
        Id: 2412916070421094969
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -7.77358103
            Y: -8.28453732
            Z: -8.35300827
          }
          Rotation {
            Pitch: 78.2781754
            Yaw: -91.751564
            Roll: 171.968872
          }
          Scale {
            X: 0.533331156
            Y: 0.38526848
            Z: 0.53607446
          }
        }
        ParentId: 3749664621351869491
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5125781178746558037
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.38378608
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.08195138
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 6531728887452243787
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -7.05248976
            Y: 9.3718338
            Z: -8.56728363
          }
          Rotation {
            Pitch: 77.1524124
            Yaw: 91.009964
            Roll: 7.90448761
          }
          Scale {
            X: 0.533331156
            Y: 0.38526848
            Z: 0.53607446
          }
        }
        ParentId: 3749664621351869491
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5125781178746558037
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.38378608
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.08195138
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 2268843322668310324
        Name: "Tail"
        Transform {
          Location {
            X: -17.2422676
            Y: 1.96435794e-05
            Z: -14.947464
          }
          Rotation {
            Pitch: 6.83018879e-05
            Yaw: -89.9996796
            Roll: -155.140259
          }
          Scale {
            X: 0.0929326341
            Y: 0.16
            Z: 0.160000071
          }
        }
        ParentId: 3749664621351869491
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.505298138
              G: 1
              B: 0.100000024
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
            Id: 10227161647766562745
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
        Id: 17161035103996741600
        Name: "left_hip"
        Transform {
          Location {
            X: 1.28271484
            Y: -10.6094971
            Z: 109.63501
          }
          Rotation {
            Pitch: 3.17944598
            Yaw: 0.34948048
            Roll: 4.47926807
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 3823781988973496512
        ChildIds: 17905955716598398603
        ChildIds: 7604092403738156198
        ChildIds: 9887979228343690932
        ChildIds: 13191013005727974382
        ChildIds: 12556212456538438677
        ChildIds: 16067619437701940071
        ChildIds: 4696090747089595397
        ChildIds: 17917303970783387824
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
        Id: 3823781988973496512
        Name: "Thigh"
        Transform {
          Location {
            X: -9.83105469
            Y: -8.08117676
            Z: 16.5316086
          }
          Rotation {
            Pitch: -8.88563824
            Yaw: 176.632401
            Roll: 174.70462
          }
          Scale {
            X: 0.369246364
            Y: -0.278780788
            Z: 0.452066153
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.496379077
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.03847826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 17905955716598398603
        Name: "Thigh"
        Transform {
          Location {
            X: -0.0205078125
            Y: -14.6687012
            Z: -47.5565
          }
          Rotation {
            Pitch: -16.9434795
            Yaw: 177.41069
            Roll: 174.528503
          }
          Scale {
            X: 0.188838139
            Y: -0.145420775
            Z: 0.183088988
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.717968583
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 7604092403738156198
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 6.66025114
            Y: -14.7692022
            Z: -40.3591728
          }
          Rotation {
            Pitch: 7.24760914
            Yaw: -93.4323959
            Roll: 96.5104141
          }
          Scale {
            X: 0.346029371
            Y: 0.225810871
            Z: 0.0989894494
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 9887979228343690932
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 4.97954655
            Y: -20.241293
            Z: -27.3190365
          }
          Rotation {
            Pitch: 2.37579918
            Yaw: -148.260941
            Roll: 89.3448792
          }
          Scale {
            X: 0.256063074
            Y: 0.167100653
            Z: 0.0383380949
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 13191013005727974382
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 3.52934122
            Y: -21.5481205
            Z: -11.1037273
          }
          Rotation {
            Pitch: 2.27527928
            Yaw: -155.444351
            Roll: 89.0526199
          }
          Scale {
            X: 0.212665036
            Y: 0.138780192
            Z: 0.0318404958
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 12556212456538438677
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -2.07725883
            Y: -21.5851955
            Z: 0.674045742
          }
          Rotation {
            Pitch: -0.442432314
            Yaw: -166.139786
            Roll: 73.981041
          }
          Scale {
            X: 0.281060934
            Y: 0.183413923
            Z: 0.0402103066
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 16067619437701940071
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -6.91631508
            Y: -23.687458
            Z: -8.14189434
          }
          Rotation {
            Pitch: 1.56054783
            Yaw: 176.438782
            Roll: 88.4723053
          }
          Scale {
            X: 0.168841749
            Y: 0.110182144
            Z: 0.0252792146
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.86
              G: 0.768874168
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
            Id: 17019787265848098694
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
        Id: 4696090747089595397
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 9.22998619
            Y: -16.5775814
            Z: -15.5346231
          }
          Rotation {
            Pitch: 2.36756206
            Yaw: -116.732445
            Roll: 90.6820602
          }
          Scale {
            X: 0.228940368
            Y: 0.149400949
            Z: 0.0342772566
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 17917303970783387824
        Name: "Vines"
        Transform {
          Location {
            X: -9.83105469
            Y: -8.08117676
            Z: 16.5316086
          }
          Rotation {
            Pitch: -8.88563156
            Yaw: 176.63237
            Roll: 174.70459
          }
          Scale {
            X: 0.391609281
            Y: -0.2956644
            Z: 0.466954768
          }
        }
        ParentId: 17161035103996741600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.372513354
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.372513354
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
        Id: 4635402348071284214
        Name: "left_knee"
        Transform {
          Location {
            X: 1.66699219
            Y: -16.9995117
            Z: 59.697998
          }
          Rotation {
            Pitch: -3.90987325
            Yaw: -3.62918234
            Roll: 4.2833643
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 17559699309814846661
        ChildIds: 11650599974986865332
        ChildIds: 4972100790077820349
        ChildIds: 296977968889984268
        ChildIds: 9249535587113093158
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
        Id: 17559699309814846661
        Name: "Truncated Teardrop"
        Transform {
          Location {
            X: 9.64849854
            Y: -12.3598633
            Z: 5.53417969
          }
          Rotation {
            Pitch: 75.8768234
            Yaw: -161.990936
            Roll: -164.133636
          }
          Scale {
            X: 0.234258875
            Y: -0.175974548
            Z: 0.276686758
          }
        }
        ParentId: 4635402348071284214
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.421281695
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 11650599974986865332
        Name: "Truncated Teardrop"
        Transform {
          Location {
            X: -32.6802979
            Y: -12.5378418
            Z: 1.12385559
          }
          Rotation {
            Pitch: -34.9522896
            Yaw: -177.424438
            Roll: 176.343338
          }
          Scale {
            X: 0.202677876
            Y: -0.188677087
            Z: 0.44633016
          }
        }
        ParentId: 4635402348071284214
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.303452551
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.2748189
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 4972100790077820349
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -28.6421165
            Y: -12.6564922
            Z: -4.07420254
          }
          Rotation {
            Pitch: -1.12859988
            Yaw: 91.9442825
            Roll: 38.0641785
          }
          Scale {
            X: 0.346027464
            Y: 0.159634069
            Z: 0.153169796
          }
        }
        ParentId: 4635402348071284214
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 296977968889984268
        Name: "Vines"
        Transform {
          Location {
            X: 9.51751709
            Y: -12.4023438
            Z: 6.08157349
          }
          Rotation {
            Pitch: 75.8768616
            Yaw: -161.990845
            Roll: -164.133545
          }
          Scale {
            X: 0.250714064
            Y: -0.206934527
            Z: 0.296122372
          }
        }
        ParentId: 4635402348071284214
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.421281695
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.95670253
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
        Id: 9249535587113093158
        Name: "Vines"
        Transform {
          Location {
            X: -32.6802979
            Y: -12.5377808
            Z: 1.12387085
          }
          Rotation {
            Pitch: -34.9522896
            Yaw: -177.424438
            Roll: 176.343246
          }
          Scale {
            X: 0.229663357
            Y: -0.213798791
            Z: 0.451643318
          }
        }
        ParentId: 4635402348071284214
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.170902222
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.421281695
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
        Id: 8896557603807538481
        Name: "left_ankle"
        Transform {
          Location {
            X: -4.93725586
            Y: -23.1729126
            Z: 11.4560013
          }
          Rotation {
            Pitch: -7.46754789
            Yaw: 0.61575681
            Roll: 1.07542038
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 9703499049233694360
        ChildIds: 16563884205020970659
        ChildIds: 17149393004416771760
        ChildIds: 1550370399504289810
        ChildIds: 2549997760065554065
        ChildIds: 2485554057412551309
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
        Id: 9703499049233694360
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 0.136233717
            Y: -14.0676317
            Z: 1.07563651
          }
          Rotation {
            Pitch: -0.264205366
            Yaw: -83.8467636
            Roll: -7.53956556
          }
          Scale {
            X: 1.63646388
            Y: 1.39437318
            Z: 1
          }
        }
        ParentId: 8896557603807538481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.933846
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.789337754
              G: 0.87
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
            Id: 3179030315686557415
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
        Id: 16563884205020970659
        Name: "Cone"
        Transform {
          Location {
            X: 45.8326607
            Y: -2.34329319
            Z: -3.82613611
          }
          Rotation {
            Pitch: -82.4559097
            Yaw: 8.1486845
            Roll: -0.024213776
          }
          Scale {
            X: 0.0335137546
            Y: 0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 8896557603807538481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 17149393004416771760
        Name: "Cone"
        Transform {
          Location {
            X: 46.3900452
            Y: -8.94391823
            Z: -3.8769691
          }
          Rotation {
            Pitch: -82.4559631
            Yaw: 8.14869404
            Roll: -3.9134779
          }
          Scale {
            X: 0.0335137546
            Y: 0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 8896557603807538481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 1550370399504289810
        Name: "Cone"
        Transform {
          Location {
            X: 45.3817711
            Y: -14.8123827
            Z: -4.1193161
          }
          Rotation {
            Pitch: -82.455864
            Yaw: 8.14868259
            Roll: -11.9552965
          }
          Scale {
            X: 0.0335137546
            Y: 0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 8896557603807538481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 2549997760065554065
        Name: "Cone"
        Transform {
          Location {
            X: 43.6108818
            Y: -19.4118824
            Z: -4.43782043
          }
          Rotation {
            Pitch: -82.4558868
            Yaw: 8.14868164
            Roll: -15.3311768
          }
          Scale {
            X: 0.0335137546
            Y: 0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 8896557603807538481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 2485554057412551309
        Name: "Cone"
        Transform {
          Location {
            X: 37.5302505
            Y: -22.9601116
            Z: -5.30159521
          }
          Rotation {
            Pitch: -82.4559402
            Yaw: 8.14868546
            Roll: -20.4796181
          }
          Scale {
            X: 0.0335137546
            Y: 0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 8896557603807538481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 11959701677000225522
        Name: "right_hip"
        Transform {
          Location {
            X: 1.28271484
            Y: 10.3724976
            Z: 109.63501
          }
          Rotation {
            Pitch: 3.17958951
            Yaw: -0.349424273
            Roll: -4.47896099
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 9808286644169202986
        ChildIds: 10662197795531557636
        ChildIds: 16183410843857993951
        ChildIds: 8380353046750790995
        ChildIds: 18188232560149931850
        ChildIds: 17204640453262227894
        ChildIds: 3134275221497421125
        ChildIds: 6492885105752897816
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
        Id: 9808286644169202986
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 4.83949614
            Y: 20.2827034
            Z: -11.4977007
          }
          Rotation {
            Pitch: 7.90054083
            Yaw: 155.223587
            Roll: -90.7542877
          }
          Scale {
            X: 0.212664828
            Y: 0.138780221
            Z: 0.0304251257
          }
        }
        ParentId: 11959701677000225522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.86
              G: 0.768874168
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
            Id: 17019787265848098694
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
        Id: 10662197795531557636
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -0.843114138
            Y: 21.1262836
            Z: 0.154485211
          }
          Rotation {
            Pitch: 6.93970394
            Yaw: 172.520538
            Roll: -81.3930283
          }
          Scale {
            X: 0.281060934
            Y: 0.183413923
            Z: 0.0402103066
          }
        }
        ParentId: 11959701677000225522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.86
              G: 0.768874168
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
            Id: 17019787265848098694
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
        Id: 16183410843857993951
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -6.18569469
            Y: 22.2312832
            Z: -9.59947395
          }
          Rotation {
            Pitch: 7.53974962
            Yaw: -174.156448
            Roll: -92.6710205
          }
          Scale {
            X: 0.168841541
            Y: 0.110182181
            Z: 0.024155505
          }
        }
        ParentId: 11959701677000225522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.86
              G: 0.768874168
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
            Id: 17019787265848098694
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
        Id: 8380353046750790995
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 4.84843731
            Y: 13.0669184
            Z: -41.6832619
          }
          Rotation {
            Pitch: 8.27319
            Yaw: 94.5368652
            Roll: -99.0613708
          }
          Scale {
            X: 0.346029371
            Y: 0.225810871
            Z: 0.0989894494
          }
        }
        ParentId: 11959701677000225522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 18188232560149931850
        Name: "Truncated Teardrop"
        Transform {
          Location {
            X: -5.71816969
            Y: 6.65278149
            Z: 19.5565605
          }
          Rotation {
            Pitch: -3.69414186
            Yaw: -178.520859
            Roll: -174.133499
          }
          Scale {
            X: 0.369246364
            Y: 0.278780788
            Z: 0.452066153
          }
        }
        ParentId: 11959701677000225522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.496379077
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.03847826
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 17204640453262227894
        Name: "Truncated Teardrop"
        Transform {
          Location {
            X: -1.66707385
            Y: 13.4998865
            Z: -45.9047279
          }
          Rotation {
            Pitch: -3.69410753
            Yaw: -178.520874
            Roll: -174.133362
          }
          Scale {
            X: 0.188838139
            Y: 0.145420775
            Z: 0.183088988
          }
        }
        ParentId: 11959701677000225522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.561363339
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.717968583
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 3134275221497421125
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 5.5294919
            Y: 18.3135796
            Z: -27.6891365
          }
          Rotation {
            Pitch: 7.94301796
            Yaw: 142.901978
            Roll: -93.7462616
          }
          Scale {
            X: 0.256062806
            Y: 0.167100713
            Z: 0.0366338938
          }
        }
        ParentId: 11959701677000225522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 6492885105752897816
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: 10.5105562
            Y: 14.6343565
            Z: -16.0414581
          }
          Rotation {
            Pitch: 6.92851639
            Yaw: 117.851387
            Roll: -93.9453278
          }
          Scale {
            X: 0.228940085
            Y: 0.149401009
            Z: 0.0327535681
          }
        }
        ParentId: 11959701677000225522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.86
              G: 0.768874168
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
            Id: 17019787265848098694
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
        Id: 13331636805560262000
        Name: "right_knee"
        Transform {
          Location {
            X: 1.66699219
            Y: 16.7625122
            Z: 59.697998
          }
          Rotation {
            Pitch: -3.90996885
            Yaw: 3.62911868
            Roll: -4.28349257
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 12782212165775216615
        ChildIds: 7455120999638716559
        ChildIds: 7159185016419444686
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
        Id: 12782212165775216615
        Name: "Truncated Teardrop"
        Transform {
          Location {
            X: 9.56189
            Y: 10.9949951
            Z: 5.63091278
          }
          Rotation {
            Pitch: 75.6260376
            Yaw: 158.569748
            Roll: 162.720291
          }
          Scale {
            X: 0.234258875
            Y: -0.175974548
            Z: 0.276686758
          }
        }
        ParentId: 13331636805560262000
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.421281695
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.779337943
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 7455120999638716559
        Name: "Truncated Teardrop"
        Transform {
          Location {
            X: -33.9666748
            Y: 13.6361694
            Z: 0.546661377
          }
          Rotation {
            Pitch: -34.7051964
            Yaw: -179.070358
            Roll: 178.397049
          }
          Scale {
            X: 0.202677876
            Y: -0.188677087
            Z: 0.44633016
          }
        }
        ParentId: 13331636805560262000
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6355486990169991471
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.303452551
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.2748189
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.220000029
              G: 0.126754984
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
        Id: 7159185016419444686
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -29.3512897
            Y: 13.3617859
            Z: -5.02072573
          }
          Rotation {
            Pitch: -5.08469296
            Yaw: 87.8985596
            Roll: 37.901207
          }
          Scale {
            X: 0.346027464
            Y: 0.159634069
            Z: 0.153169796
          }
        }
        ParentId: 13331636805560262000
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11532125924664817940
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.75364244
              B: 0.0699999928
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
            Id: 17019787265848098694
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
        Id: 13754605227572716402
        Name: "right_ankle"
        Transform {
          Location {
            X: -4.93725586
            Y: 22.9359131
            Z: 11.4560013
          }
          Rotation {
            Pitch: -7.46794415
            Yaw: -0.616062224
            Roll: -1.07538509
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 17184662832109335095
        ChildIds: 12956370928593086365
        ChildIds: 10337027494929045995
        ChildIds: 12298779568462448024
        ChildIds: 15428394128973428567
        ChildIds: 14121504565198657205
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
        Id: 17184662832109335095
        Name: "Cone"
        Transform {
          Location {
            X: 34.5545654
            Y: 19.243248
            Z: -5.62168837
          }
          Rotation {
            Pitch: -82.4554749
            Yaw: -8.1480217
            Roll: 20.3615723
          }
          Scale {
            X: 0.0335137546
            Y: 0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 13754605227572716402
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 12956370928593086365
        Name: "Cone"
        Transform {
          Location {
            X: 37.6154785
            Y: 15.3875122
            Z: -5.14801788
          }
          Rotation {
            Pitch: -82.4554214
            Yaw: -8.14798069
            Roll: 14.3420734
          }
          Scale {
            X: 0.0335137546
            Y: -0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 13754605227572716402
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 10337027494929045995
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: -1.16656494
            Y: 10.921814
            Z: 0.963882446
          }
          Rotation {
            Pitch: -0.264157563
            Yaw: 83.8469696
            Roll: 7.53995132
          }
          Scale {
            X: 1.63646483
            Y: -1.34727895
            Z: 1
          }
        }
        ParentId: 13754605227572716402
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2349247202253950269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.933846
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.73560619
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.789337754
              G: 0.87
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
            Id: 3179030315686557415
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
        Id: 12298779568462448024
        Name: "Cone"
        Transform {
          Location {
            X: 42.9278564
            Y: -0.743286133
            Z: -4.14874268
          }
          Rotation {
            Pitch: -82.4554443
            Yaw: -8.14796
            Roll: -1.21093
          }
          Scale {
            X: 0.0335137546
            Y: -0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 13754605227572716402
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 15428394128973428567
        Name: "Cone"
        Transform {
          Location {
            X: 42.1820068
            Y: 5.46386719
            Z: -4.36302948
          }
          Rotation {
            Pitch: -82.4554749
            Yaw: -8.14799118
            Roll: 5.56177855
          }
          Scale {
            X: 0.0335137546
            Y: -0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 13754605227572716402
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 14121504565198657205
        Name: "Cone"
        Transform {
          Location {
            X: 40.2006836
            Y: 11.1447144
            Z: -4.72943878
          }
          Rotation {
            Pitch: -82.4554214
            Yaw: -8.14795589
            Roll: 12.820364
          }
          Scale {
            X: 0.0335137546
            Y: -0.0669347271
            Z: 0.136244178
          }
        }
        ParentId: 13754605227572716402
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14359673362816398858
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
        Id: 2215350057192847238
        Name: "right_prop"
        Transform {
          Location {
            Y: 49.6945801
            Z: 97.3867798
          }
          Rotation {
            Pitch: 10.729455
            Yaw: 81.5834045
            Roll: -88.1256104
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15127348347638147894
        ChildIds: 9273068300300988269
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
        Id: 9273068300300988269
        Name: "Swamp Creature Spear"
        Transform {
          Location {
            X: 3.46897078
            Y: -1.43467724
            Z: -8.5744915
          }
          Rotation {
            Pitch: 73.2539902
            Yaw: -29.3703308
            Roll: -35.7907104
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2215350057192847238
        ChildIds: 8994820850185867334
        ChildIds: 14731644723421451330
        ChildIds: 8142638307465940416
        ChildIds: 82697511967365334
        ChildIds: 2286704771766145249
        ChildIds: 15577359482953401767
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
        Id: 8994820850185867334
        Name: "Teeth"
        Transform {
          Location {
            X: 163.03418
            Y: -0.0886154175
            Z: -7.62939453e-06
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9273068300300988269
        ChildIds: 13307788517368250410
        ChildIds: 2046024516759200404
        ChildIds: 1399244462023592368
        ChildIds: 2091664131842789439
        ChildIds: 18404839409376970911
        ChildIds: 11195774290088562864
        ChildIds: 6943667614984354062
        ChildIds: 1770338189428576002
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
        Id: 13307788517368250410
        Name: "Horn"
        Transform {
          Location {
            X: 7.59179688
            Y: -2.88201904
            Z: 7.62939453e-06
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: -179.548584
          }
          Scale {
            X: 0.0356150977
            Y: 0.0340238
            Z: 0.0675064251
          }
        }
        ParentId: 8994820850185867334
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2046024516759200404
        Name: "Horn"
        Transform {
          Location {
            X: 2.52758789
            Y: -2.9163208
            Z: 7.62939453e-06
          }
          Rotation {
            Pitch: 90
            Yaw: -7.12502289
            Roll: -98.028717
          }
          Scale {
            X: 0.0356150977
            Y: 0.0340238
            Z: 0.0675064251
          }
        }
        ParentId: 8994820850185867334
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1399244462023592368
        Name: "Horn"
        Transform {
          Location {
            X: -2.66064453
            Y: -2.79211426
            Z: 7.62939453e-06
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: -179.548309
          }
          Scale {
            X: 0.0356150977
            Y: 0.0340238
            Z: 0.0675064251
          }
        }
        ParentId: 8994820850185867334
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2091664131842789439
        Name: "Horn"
        Transform {
          Location {
            X: -7.45874
            Y: -2.88201904
            Z: 7.62939453e-06
          }
          Rotation {
            Pitch: 90
            Yaw: -26.565033
            Roll: -116.113525
          }
          Scale {
            X: 0.0356150977
            Y: 0.0340238
            Z: 0.0675064251
          }
        }
        ParentId: 8994820850185867334
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18404839409376970911
        Name: "Horn"
        Transform {
          Location {
            X: -7.45874
            Y: 2.88201904
            Z: 7.62939453e-06
          }
          Rotation {
            Pitch: -90
            Yaw: -14.0362635
            Roll: 104.488113
          }
          Scale {
            X: 0.0356150977
            Y: 0.0340238
            Z: 0.0675064251
          }
        }
        ParentId: 8994820850185867334
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11195774290088562864
        Name: "Horn"
        Transform {
          Location {
            X: -2.66064453
            Y: 2.79217529
          }
          Rotation {
            Pitch: -90
            Roll: 90.452
          }
          Scale {
            X: 0.0356150977
            Y: 0.0340238
            Z: 0.0675064251
          }
        }
        ParentId: 8994820850185867334
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6943667614984354062
        Name: "Horn"
        Transform {
          Location {
            X: 2.52758789
            Y: 2.9163208
            Z: 1.52587891e-05
          }
          Rotation {
            Pitch: -90
            Yaw: 26.565033
            Roll: 62.5308609
          }
          Scale {
            X: 0.0356150977
            Y: 0.0340238
            Z: 0.0675064251
          }
        }
        ParentId: 8994820850185867334
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1770338189428576002
        Name: "Horn"
        Transform {
          Location {
            X: 7.59179688
            Y: 2.88201904
            Z: 7.62939453e-06
          }
          Rotation {
            Pitch: -90
            Roll: 90.4516525
          }
          Scale {
            X: 0.0356150977
            Y: 0.0340238
            Z: 0.0675064251
          }
        }
        ParentId: 8994820850185867334
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14731644723421451330
        Name: "Spear Tip"
        Transform {
          Location {
            X: 211.38298
            Y: 0.0291341152
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9273068300300988269
        ChildIds: 5357248993381037112
        ChildIds: 131681540246992914
        ChildIds: 17109890840289358301
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
        Id: 5357248993381037112
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 0.345947266
            Y: 0.0145874023
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: 91.7577057
            Roll: 89.9991913
          }
          Scale {
            X: 0.0968528539
            Y: 0.0873370394
            Z: 0.146027103
          }
        }
        ParentId: 14731644723421451330
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 131681540246992914
        Name: "Ring - Thick"
        Transform {
          Location {
            X: -2.0246582
            Y: 0.0145874023
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: 91.7577057
            Roll: 89.9991913
          }
          Scale {
            X: 0.0968528539
            Y: 0.0873370394
            Z: 0.146027103
          }
        }
        ParentId: 14731644723421451330
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 17109890840289358301
        Name: "Thorn"
        Transform {
          Location {
            X: 1.67883301
            Y: -0.0291137695
          }
          Rotation {
            Pitch: -90
            Roll: 3.20353975e-05
          }
          Scale {
            X: 0.334831178
            Y: 0.169385538
            Z: 0.531879365
          }
        }
        ParentId: 14731644723421451330
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
            Name: "ma:Shared_BaseMaterial:vtile"
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
        Id: 8142638307465940416
        Name: "Vines"
        Transform {
          Location {
            X: 49.2996216
            Y: 0.000122070312
            Z: 0.878097534
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9273068300300988269
        ChildIds: 11461002564830434776
        ChildIds: 6936580649566739944
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
        Id: 11461002564830434776
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: -113.495239
            Y: -0.000122070312
            Z: -0.896583557
          }
          Rotation {
          }
          Scale {
            X: 0.314293832
            Y: 0.153038576
            Z: 0.153038576
          }
        }
        ParentId: 8142638307465940416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.12724376
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.779337943
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
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
            Id: 9740100601051791580
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
        Id: 6936580649566739944
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: 172.354492
            Y: 0.000183105469
            Z: -0.89666748
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -179.999954
            Roll: -179.999893
          }
          Scale {
            X: 0.246100605
            Y: 0.153038502
            Z: 0.153038561
          }
        }
        ParentId: 8142638307465940416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12129888258192939147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.63485539
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.779337943
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
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
            Id: 9740100601051791580
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
        Id: 82697511967365334
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: -64.1955566
          }
          Rotation {
          }
          Scale {
            X: 0.346619844
            Y: 0.131014153
            Z: 0.131014138
          }
        }
        ParentId: 9273068300300988269
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13761796555206813823
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.1726079
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.779337943
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
            Id: 9740100601051791580
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
        Id: 2286704771766145249
        Name: "Bound Horns"
        Transform {
          Location {
            X: 186.11084
            Y: 0.0437011719
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9273068300300988269
        ChildIds: 2157176565394398007
        ChildIds: 4977612533563971343
        ChildIds: 5343667488878795358
        ChildIds: 15498881464284940274
        ChildIds: 1538774741667635139
        ChildIds: 4644802985398442618
        ChildIds: 14187235538724817453
        ChildIds: 14613084653942178247
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
        Id: 2157176565394398007
        Name: "Horn"
        Transform {
          Location {
            X: 2.65490723
            Y: -0.0437011719
          }
          Rotation {
            Pitch: 90
            Roll: -62.4366455
          }
          Scale {
            X: 0.0514436848
            Y: 0.0635709
            Z: 0.106814504
          }
        }
        ParentId: 2286704771766145249
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4977612533563971343
        Name: "Horn"
        Transform {
          Location {
            X: 2.65490723
            Y: -0.0437011719
          }
          Rotation {
            Pitch: -90
            Yaw: -14.0362549
            Roll: 131.599243
          }
          Scale {
            X: 0.0514436848
            Y: 0.0635709
            Z: 0.106814504
          }
        }
        ParentId: 2286704771766145249
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5343667488878795358
        Name: "Ring - Thick"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -42.375885
            Roll: 89.9997482
          }
          Scale {
            X: 0.116806895
            Y: 0.0918833837
            Z: 0.146027684
          }
        }
        ParentId: 2286704771766145249
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 15498881464284940274
        Name: "Ring - Thick"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: 36.3245125
            Roll: 89.9994202
          }
          Scale {
            X: 0.118457578
            Y: 0.0873371661
            Z: 0.146027446
          }
        }
        ParentId: 2286704771766145249
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 1538774741667635139
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 0.0911865234
            Y: -4.17022705
            Z: 0.0833892822
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -32.3500977
            Roll: 89.9997482
          }
          Scale {
            X: 0.0763731599
            Y: 0.0629925355
            Z: 0.139141276
          }
        }
        ParentId: 2286704771766145249
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 4644802985398442618
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 0.0473632812
            Y: 3.93103027
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 26.89
            Roll: 89.9998398
          }
          Scale {
            X: 0.0735123679
            Y: 0.054310292
            Z: 0.146027699
          }
        }
        ParentId: 2286704771766145249
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 14187235538724817453
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 0.672363281
            Y: 3.95794678
          }
          Rotation {
            Yaw: -11.817749
            Roll: 89.999939
          }
          Scale {
            X: 0.0852268
            Y: 0.0623965114
            Z: 0.146027014
          }
        }
        ParentId: 2286704771766145249
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 14613084653942178247
        Name: "Ring - Thick"
        Transform {
          Location {
            X: 0.172729492
            Y: -3.60076904
            Z: 0.0833892822
          }
          Rotation {
            Yaw: 13.5876684
            Roll: 89.9999466
          }
          Scale {
            X: 0.0899973
            Y: 0.0573997907
            Z: 0.136862352
          }
        }
        ParentId: 2286704771766145249
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 15577359482953401767
        Name: "Bound Horns"
        Transform {
          Location {
            X: 203.522339
            Y: 0.0437011719
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9273068300300988269
        ChildIds: 9769305403716273827
        ChildIds: 8199153181082620586
        ChildIds: 10136735358706023561
        ChildIds: 15193782292180550185
        ChildIds: 12363569811662344958
        ChildIds: 9472866381036517196
        ChildIds: 5094730761717858289
        ChildIds: 10321317552219139409
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
        Id: 9769305403716273827
        Name: "Ring - Thick"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: 36.3245125
            Roll: 89.9994202
          }
          Scale {
            X: 0.135287687
            Y: 0.0917594731
            Z: 0.146027431
          }
        }
        ParentId: 15577359482953401767
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 8199153181082620586
        Name: "Ring - Thick"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -42.3758965
            Roll: 89.9997482
          }
          Scale {
            X: 0.135287687
            Y: 0.0873371735
            Z: 0.146027476
          }
        }
        ParentId: 15577359482953401767
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 10136735358706023561
        Name: "Thorny Horn"
        Transform {
          Location {
            X: 1.84411621
            Y: -0.0437011719
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15577359482953401767
        ChildIds: 14603856865901582464
        ChildIds: 15975396932245996453
        ChildIds: 15620234501280810730
        ChildIds: 17472905200840673775
        ChildIds: 5698539182809761581
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
        Id: 14603856865901582464
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 90
            Roll: -62.4366455
          }
          Scale {
            X: 0.0640215948
            Y: 0.0953124538
            Z: 0.175739571
          }
        }
        ParentId: 10136735358706023561
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15975396932245996453
        Name: "Horn"
        Transform {
          Location {
            X: -6.38305664
            Y: -8.70898438
          }
          Rotation {
            Pitch: 90
            Roll: 26.327858
          }
          Scale {
            X: 0.0950933248
            Y: 0.0621281713
            Z: 0.0719714165
          }
        }
        ParentId: 10136735358706023561
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15620234501280810730
        Name: "Horn"
        Transform {
          Location {
            X: -9.13330078
            Y: -13.4251709
          }
          Rotation {
            Pitch: 90
            Roll: 30.6910019
          }
          Scale {
            X: 0.0866362378
            Y: 0.0566028394
            Z: 0.0655707344
          }
        }
        ParentId: 10136735358706023561
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17472905200840673775
        Name: "Horn"
        Transform {
          Location {
            X: -12.7091064
            Y: -17.6222534
          }
          Rotation {
            Pitch: 90
            Roll: 38.9388924
          }
          Scale {
            X: 0.0609764196
            Y: 0.0479361303
            Z: 0.0555308834
          }
        }
        ParentId: 10136735358706023561
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5698539182809761581
        Name: "Horn"
        Transform {
          Location {
            X: -16.9508057
            Y: -21.4611816
          }
          Rotation {
            Pitch: 90
            Yaw: 90
            Roll: 148.856155
          }
          Scale {
            X: 0.0350893661
            Y: 0.0400382429
            Z: 0.0463816971
          }
        }
        ParentId: 10136735358706023561
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15193782292180550185
        Name: "Ring - Thick"
        Transform {
          Location {
            X: -0.0490722656
            Y: -4.36541748
          }
          Rotation {
            Yaw: -11.817584
            Roll: 89.9999237
          }
          Scale {
            X: 0.108928286
            Y: 0.100340724
            Z: 0.146027118
          }
        }
        ParentId: 15577359482953401767
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 12363569811662344958
        Name: "Ring - Thick"
        Transform {
          Location {
            X: -0.0490722656
            Y: -4.36541748
          }
          Rotation {
            Yaw: 13.5875711
            Roll: 89.9999466
          }
          Scale {
            X: 0.108928286
            Y: 0.0873371735
            Z: 0.146027133
          }
        }
        ParentId: 15577359482953401767
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 9472866381036517196
        Name: "Ring - Thick"
        Transform {
          Location {
            X: -0.660644531
            Y: 3.95794678
          }
          Rotation {
            Yaw: 13.5876112
            Roll: 89.9999466
          }
          Scale {
            X: 0.115663245
            Y: 0.0873371735
            Z: 0.146026775
          }
        }
        ParentId: 15577359482953401767
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 5094730761717858289
        Name: "Ring - Thick"
        Transform {
          Location {
            X: -0.660644531
            Y: 3.95794678
          }
          Rotation {
            Yaw: -11.8176165
            Roll: 89.9999237
          }
          Scale {
            X: 0.115663245
            Y: 0.100340724
            Z: 0.14602676
          }
        }
        ParentId: 15577359482953401767
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12629436541872600207
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
        Id: 10321317552219139409
        Name: "Thorny Horn"
        Transform {
          Location {
            X: 1.84411621
            Y: -0.0437011719
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15577359482953401767
        ChildIds: 11189444037061617467
        ChildIds: 4052773931311105744
        ChildIds: 2440542753130579429
        ChildIds: 5403753062862913411
        ChildIds: 4250908651497593638
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
        Id: 11189444037061617467
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 90
            Roll: -62.4366455
          }
          Scale {
            X: 0.0640215948
            Y: 0.0953124538
            Z: 0.175739571
          }
        }
        ParentId: 10321317552219139409
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4052773931311105744
        Name: "Horn"
        Transform {
          Location {
            X: -6.38305664
            Y: -8.70898438
          }
          Rotation {
            Pitch: 90
            Roll: 26.327858
          }
          Scale {
            X: 0.0950933248
            Y: 0.0621281713
            Z: 0.0719714165
          }
        }
        ParentId: 10321317552219139409
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2440542753130579429
        Name: "Horn"
        Transform {
          Location {
            X: -9.13330078
            Y: -13.4251709
          }
          Rotation {
            Pitch: 90
            Roll: 30.6910019
          }
          Scale {
            X: 0.0866362378
            Y: 0.0566028394
            Z: 0.0655707344
          }
        }
        ParentId: 10321317552219139409
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5403753062862913411
        Name: "Horn"
        Transform {
          Location {
            X: -12.7091064
            Y: -17.6222534
          }
          Rotation {
            Pitch: 90
            Roll: 38.9388924
          }
          Scale {
            X: 0.0609764196
            Y: 0.0479361303
            Z: 0.0555308834
          }
        }
        ParentId: 10321317552219139409
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4250908651497593638
        Name: "Horn"
        Transform {
          Location {
            X: -16.9508057
            Y: -21.4611816
          }
          Rotation {
            Pitch: 90
            Yaw: 90
            Roll: 148.856155
          }
          Scale {
            X: 0.0350893661
            Y: 0.0400382429
            Z: 0.0463816971
          }
        }
        ParentId: 10321317552219139409
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
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14952324712681442825
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
        ParentId: 12797497238844231708
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
        Id: 2864103068975670389
        Name: "Fantasy Human Guy"
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
        ParentId: 12797497238844231708
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
            Id: 18039984299850060191
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
              Animation: "1hand_melee_thrust"
              PlaybackRate: 0.6
              ShouldLoop: true
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
      Id: 1938148825372685458
      Name: "Teardrop - Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_truncated_teardrop_001"
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
      Id: 10227161647766562745
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
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
      Id: 14746939567165662757
      Name: "Sphere - Half Quarter Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_hemisphere_002"
      }
    }
    Assets {
      Id: 1998399638820390913
      Name: "Bone Human Hand 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_hand_01_ref"
      }
    }
    Assets {
      Id: 86369592013213841
      Name: "Sand 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_sand_001_uv"
      }
    }
    Assets {
      Id: 5657452638476367488
      Name: "Cone - Truncated Wide"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_003"
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
      Id: 15614259856505195515
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 16324191539564034761
      Name: "Wedge - Curved"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_curved_001"
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
      Id: 1345394029719914923
      Name: "Ring"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_004"
      }
    }
    Assets {
      Id: 4858206103076370621
      Name: "Plastic Shiny"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_shiny_001"
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
      Id: 16372496464315477095
      Name: "Ring - Beveled Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_003"
      }
    }
    Assets {
      Id: 14331018423419850659
      Name: "Cone - Truncated Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_concave_001"
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
      Id: 853087330042215159
      Name: "Bone Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bone_raw_001_uv_ref"
      }
    }
    Assets {
      Id: 16904236265444783799
      Name: "Ivy 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ivy_generic_004"
      }
    }
    Assets {
      Id: 15600672674220494197
      Name: "Ivy 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ivy_generic_003"
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
      Id: 960891434955978534
      Name: "Cone"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_001"
      }
    }
    Assets {
      Id: 12629436541872600207
      Name: "Rope"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_rope_001"
      }
    }
    Assets {
      Id: 9740100601051791580
      Name: "Large Round Wood Beam 8m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_large_beam_round_6m"
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
      Id: 13761796555206813823
      Name: "Bark Redwood 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bark_redwood_001_uv"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
