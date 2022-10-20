Assets {
  Id: 5914206616368404996
  Name: "Enemy_LargeMeleeElemental"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16509561636376150296
      Objects {
        Id: 16509561636376150296
        Name: "Enemy_LargeMeleeElemental"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2551925293071437861
        ChildIds: 10265654938084953171
        ChildIds: 3779290768742933284
        ChildIds: 12162076612630635931
        ChildIds: 13912330842789552527
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
            String: "Boulder Elemental"
          }
          Overrides {
            Name: "cs:Level"
            Int: 4
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 800
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
            Float: 360
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 150
          }
          Overrides {
            Name: "cs:Experience"
            Float: 60
          }
          Overrides {
            Name: "cs:Task1"
            String: "large_melee_elemental_melee"
          }
          Overrides {
            Name: "cs:Task2"
            String: "large_melee_elemental_smash"
          }
          Overrides {
            Name: "cs:Task3"
            String: "large_melee_elemental_throw_stone"
          }
          Overrides {
            Name: "cs:DropKey1"
            String: "HRCommonTrash"
          }
          Overrides {
            Name: "cs:DropChance1"
            Float: 0.24
          }
          Overrides {
            Name: "cs:DropKey2"
            String: "HRUncommonTrash"
          }
          Overrides {
            Name: "cs:DropChance2"
            Float: 0.24
          }
          Overrides {
            Name: "cs:DropKey3"
            String: "D2EpicTrash"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0.0024
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
              SubObjectId: 12162076612630635931
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
        Id: 10265654938084953171
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
        ParentId: 16509561636376150296
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 3779290768742933284
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 13912330842789552527
            }
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
        Id: 3779290768742933284
        Name: "Costume"
        Transform {
          Location {
            Z: 56.5365143
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 16509561636376150296
        ChildIds: 14300862506944118522
        ChildIds: 11090856003048212304
        ChildIds: 5811671890673361428
        ChildIds: 10797074862666993262
        ChildIds: 12217782453873586407
        ChildIds: 2521092149100427551
        ChildIds: 10373951566693099862
        ChildIds: 15008571259681913569
        ChildIds: 15210105903218988245
        ChildIds: 12669610194221698957
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
        Id: 14300862506944118522
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
        ParentId: 3779290768742933284
        ChildIds: 7721874589039998722
        ChildIds: 4554308199223802805
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
        Id: 7721874589039998722
        Name: "Shoulder Vines"
        Transform {
          Location {
            X: -0.988992691
            Y: -32.3548126
            Z: 6.23129
          }
          Rotation {
            Pitch: 2.95762873
            Yaw: 1.82047951
            Roll: -30.0200195
          }
          Scale {
            X: 0.242634103
            Y: 0.242634103
            Z: 0.242634103
          }
        }
        ParentId: 14300862506944118522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.49044132
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 4554308199223802805
        Name: "Rock 03"
        Transform {
          Location {
            X: -3.1554451
            Y: -30.5401192
            Z: -2.33810663
          }
          Rotation {
            Pitch: 2.95760846
            Yaw: 1.82047629
            Roll: -30.0200195
          }
          Scale {
            X: 0.223316
            Y: 0.223316
            Z: 0.223316
          }
        }
        ParentId: 14300862506944118522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 11090856003048212304
        Name: "left_elbow"
        Transform {
          Location {
            X: -4.15735626
            Y: -39.6685333
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
        ParentId: 3779290768742933284
        ChildIds: 3470179657179551644
        ChildIds: 396347727255970065
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
        Id: 3470179657179551644
        Name: "Arm Vines"
        Transform {
          Location {
            X: -13.7514954
            Y: -17.1588707
            Z: -32.5111465
          }
          Rotation {
            Pitch: 68.0307
            Yaw: -164.770279
            Roll: 112.302116
          }
          Scale {
            X: 0.135832936
            Y: 0.137468576
            Z: 0.294335037
          }
        }
        ParentId: 11090856003048212304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
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
        Id: 396347727255970065
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
        ParentId: 11090856003048212304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 5811671890673361428
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
        ParentId: 3779290768742933284
        ChildIds: 8825571596723650931
        ChildIds: 1899321401396443421
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
        Id: 8825571596723650931
        Name: "Shoulder Vines"
        Transform {
          Location {
            X: -2.5225668
            Y: 28.4068127
            Z: -0.912133336
          }
          Rotation {
            Pitch: 7.76883411
            Yaw: -169.69664
            Roll: -29.2251282
          }
          Scale {
            X: 0.242634103
            Y: 0.242634103
            Z: 0.242634103
          }
        }
        ParentId: 5811671890673361428
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
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
        Id: 1899321401396443421
        Name: "Rock 03"
        Transform {
          Location {
            X: -2.5225668
            Y: 28.4068127
            Z: -0.912133336
          }
          Rotation {
            Pitch: 7.76879311
            Yaw: -169.696732
            Roll: -29.2251282
          }
          Scale {
            X: 0.223316
            Y: 0.223316
            Z: 0.223316
          }
        }
        ParentId: 5811671890673361428
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 10797074862666993262
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
        ParentId: 3779290768742933284
        ChildIds: 13943360130558260248
        ChildIds: 2523972085845084185
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
        Id: 13943360130558260248
        Name: "Arm Vines"
        Transform {
          Location {
            X: -23.9298439
            Y: 14.8032427
            Z: -29.945879
          }
          Rotation {
            Pitch: 68.7900314
            Yaw: 172.919388
            Roll: -116.317932
          }
          Scale {
            X: 0.129535794
            Y: 0.163526177
            Z: 0.291419268
          }
        }
        ParentId: 10797074862666993262
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.90126336
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 2523972085845084185
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
        ParentId: 10797074862666993262
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 12217782453873586407
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
        ParentId: 3779290768742933284
        ChildIds: 16229384658994928580
        ChildIds: 12983355834724160497
        ChildIds: 11636655816307315029
        ChildIds: 1022064396254926402
        ChildIds: 1700052879847718445
        ChildIds: 10853179438358690900
        ChildIds: 2419909001505574811
        ChildIds: 5099653747544422976
        ChildIds: 6719078327110401896
        ChildIds: 5367348668820235107
        ChildIds: 1008209291356222464
        ChildIds: 8084761006370380447
        ChildIds: 7667117970488508935
        ChildIds: 10933706577863691260
        ChildIds: 12329318349240053031
        ChildIds: 15865590427408555325
        ChildIds: 834851828779746747
        ChildIds: 15887487756694125640
        ChildIds: 9011037461827134521
        ChildIds: 11202185972813586817
        ChildIds: 355423038591879257
        ChildIds: 9257514667167743313
        ChildIds: 1639326626951250273
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
        Id: 16229384658994928580
        Name: "Fern 04"
        Transform {
          Location {
            X: -29.1890984
            Y: 10.6870441
            Z: 61.6474838
          }
          Rotation {
            Pitch: 2.94234967
            Yaw: 126.62233
            Roll: -8.64704323
          }
          Scale {
            X: 0.182304025
            Y: 0.182304025
            Z: 0.182304025
          }
        }
        ParentId: 12217782453873586407
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8215987718781187610
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12983355834724160497
        Name: "Falling Leaves Volume VFX"
        Transform {
          Location {
            X: -0.695025325
            Y: 0.575108469
            Z: 46.9438934
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: -170.659393
            Roll: 1.2194133e-05
          }
          Scale {
            X: 1
            Y: 1.35904813
            Z: 1
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "bp:Leaf Scale"
            Float: 0.430840492
          }
          Overrides {
            Name: "bp:density"
            Float: 1.96499956
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.35231778
              G: 0.559999943
              A: 1
            }
          }
          Overrides {
            Name: "bp:Burning Leaves"
            Bool: false
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
              X: 20
            }
          }
          Overrides {
            Name: "bp:Curl Offset"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Gravity"
            Float: -1.11846066
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
            Id: 4410215247643332146
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
        Id: 11636655816307315029
        Name: "Tree Birch Bare 01"
        Transform {
          Location {
            X: -23.0870171
            Y: -38.0519104
            Z: 52.4959717
          }
          Rotation {
            Pitch: -2.57942772
            Yaw: -171.814804
            Roll: 24.137516
          }
          Scale {
            X: 0.158331558
            Y: 0.158332929
            Z: 0.104787953
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Trunk:id"
            AssetReference {
              Id: 13761796555206813823
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 17884425380056243870
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1022064396254926402
        Name: "Sphere"
        Transform {
          Location {
            X: 41.5453339
            Y: -12.5782995
            Z: 22.9417782
          }
          Rotation {
            Pitch: 5.64394903
            Yaw: -16.1208763
            Roll: 18.7922115
          }
          Scale {
            X: 0.0810109675
            Y: 0.121799238
            Z: 0.20078072
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.2852377
              G: 0.427083343
              B: 0.0923584774
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
        Id: 1700052879847718445
        Name: "Sphere"
        Transform {
          Location {
            X: 41.5453682
            Y: 15.1212854
            Z: 22.9417782
          }
          Rotation {
            Pitch: 3.39396191
            Yaw: 15.5434437
            Roll: -12.0169773
          }
          Scale {
            X: 0.0810109675
            Y: 0.121799238
            Z: 0.20078072
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.2852377
              G: 0.427083343
              B: 0.0923584774
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
        Id: 10853179438358690900
        Name: "Dust Motes Volume VFX"
        Transform {
          Location {
            X: -9.06667805
            Y: -0.256824583
            Z: 25.7368279
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: -6.10351562e-05
            Roll: 9.40425862e-11
          }
          Scale {
            X: 0.712214828
            Y: 1.46758699
            Z: 0.975589633
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.507548511
          }
          Overrides {
            Name: "bp:Life"
            Float: 2.6654675
          }
          Overrides {
            Name: "bp:density"
            Float: 1.351336
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 8.25694847
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
            Id: 10604936238935185684
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
        Id: 2419909001505574811
        Name: "Fern 04"
        Transform {
          Location {
            X: -35.0811424
            Y: -38.6077652
            Z: 37.1030273
          }
          Rotation {
            Pitch: 52.0209732
            Yaw: -6.10351562e-05
            Roll: 1.53483753e-10
          }
          Scale {
            X: 0.321325094
            Y: 0.321325094
            Z: 0.321325094
          }
        }
        ParentId: 12217782453873586407
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8215987718781187610
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5099653747544422976
        Name: "Fern 03"
        Transform {
          Location {
            X: -13.524559
            Y: 42.4642448
            Z: 51.6732788
          }
          Rotation {
            Pitch: -26.3532715
            Yaw: -6.10351562e-05
            Roll: 1.02677977e-10
          }
          Scale {
            X: 0.209208548
            Y: 0.209208548
            Z: 0.209208548
          }
        }
        ParentId: 12217782453873586407
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4419896891242772333
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6719078327110401896
        Name: "Torso Vines"
        Transform {
          Location {
            X: -5.4915452
            Y: -1.97557902
            Z: 26.2394943
          }
          Rotation {
            Pitch: -37.6845093
            Yaw: -6.10351562e-05
            Roll: 4.11540767e-12
          }
          Scale {
            X: 0.403805
            Y: 0.542908251
            Z: 0.359098881
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.90126336
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 5367348668820235107
        Name: "Head"
        Transform {
          Location {
            X: 31.0591164
            Y: 2.56319356
            Z: 24.268774
          }
          Rotation {
            Pitch: 55.370842
            Yaw: -166.593674
            Roll: -171.468933
          }
          Scale {
            X: 0.160282969
            Y: 0.241691366
            Z: 0.10962671
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 1008209291356222464
        Name: "Torso"
        Transform {
          Location {
            X: -7.34664774
            Y: -1.97557676
            Z: 26.2394962
          }
          Rotation {
            Pitch: -37.6845093
            Yaw: -6.10351562e-05
          }
          Scale {
            X: 0.371654719
            Y: 0.499682844
            Z: 0.330508053
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 8084761006370380447
        Name: "Spike"
        Transform {
          Location {
            X: -28.2627087
            Y: -58.7011375
            Z: 45.8887558
          }
          Rotation {
            Pitch: -35.9234314
            Yaw: 34.9372902
            Roll: -30.3887329
          }
          Scale {
            X: 0.111461788
            Y: 0.111461788
            Z: 0.111461788
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 7667117970488508935
        Name: "Spike"
        Transform {
          Location {
            X: -38.977787
            Y: -20.2993889
            Z: 63.3977852
          }
          Rotation {
            Pitch: -44.8911133
            Yaw: 12.5494785
            Roll: 39.2717056
          }
          Scale {
            X: 0.145002455
            Y: 0.145002455
            Z: 0.145002455
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 10933706577863691260
        Name: "Spike"
        Transform {
          Location {
            X: -40.148674
            Y: 23.5372925
            Z: 62.5823898
          }
          Rotation {
            Pitch: -58.8851624
            Yaw: -14.8999939
            Roll: -0.0715332
          }
          Scale {
            X: 0.194936082
            Y: 0.145003721
            Z: 0.145003125
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 12329318349240053031
        Name: "Spike"
        Transform {
          Location {
            X: -28.5425339
            Y: 55.4239845
            Z: 46.3464737
          }
          Rotation {
            Pitch: -31.927002
            Yaw: -34.6334839
            Roll: -151.29512
          }
          Scale {
            X: 0.101737216
            Y: 0.104100354
            Z: 0.104100704
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 15865590427408555325
        Name: "Spike Vines"
        Transform {
          Location {
            X: -28.5425339
            Y: 55.4239845
            Z: 46.3464737
          }
          Rotation {
            Pitch: -31.927002
            Yaw: -34.6335449
            Roll: -151.295135
          }
          Scale {
            X: 0.110538073
            Y: 0.113105617
            Z: 0.113106
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
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
        Id: 834851828779746747
        Name: "Spike Vines"
        Transform {
          Location {
            X: -43.0104561
            Y: 25.5784073
            Z: 60.9510612
          }
          Rotation {
            Pitch: -40.1361389
            Yaw: -11.3074646
            Roll: -153.021988
          }
          Scale {
            X: 0.211798683
            Y: 0.139082819
            Z: 0.167878434
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.72606778
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 15887487756694125640
        Name: "Spike Vines"
        Transform {
          Location {
            X: -38.9777451
            Y: -20.299345
            Z: 64.8474197
          }
          Rotation {
            Pitch: -44.8910828
            Yaw: 12.5495758
            Roll: 39.2716026
          }
          Scale {
            X: 0.157546803
            Y: 0.157545388
            Z: 0.17967701
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.29153097
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.656469166
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 9011037461827134521
        Name: "Spike Vines"
        Transform {
          Location {
            X: -28.2627068
            Y: -58.7011375
            Z: 47.2623215
          }
          Rotation {
            Pitch: -35.9234314
            Yaw: 34.9373322
            Roll: -30.3887634
          }
          Scale {
            X: 0.121103302
            Y: 0.121102609
            Z: 0.142405152
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.758911
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 11202185972813586817
        Name: "Branches Cluster Big"
        Transform {
          Location {
            X: 21.432785
            Y: 0.65253067
            Z: 50.499424
          }
          Rotation {
            Pitch: -16.3448811
            Yaw: 72.797287
            Roll: 69.8156052
          }
          Scale {
            X: 0.143518537
            Y: 0.143518537
            Z: 0.143518537
          }
        }
        ParentId: 12217782453873586407
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2237149746599085862
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 355423038591879257
        Name: "Fern 03"
        Transform {
          Location {
            X: -26.5425301
            Y: -51.1722221
            Z: 58.3834877
          }
          Rotation {
            Pitch: -25.8796692
            Yaw: 19.9977589
            Roll: -43.6530457
          }
          Scale {
            X: 0.170652941
            Y: 0.170652941
            Z: 0.170652941
          }
        }
        ParentId: 12217782453873586407
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4419896891242772333
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9257514667167743313
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: 18.4936428
            Y: -35.3391685
            Z: -25.1656742
          }
          Rotation {
            Pitch: -1.7994405
            Yaw: -106.43206
            Roll: -179.131226
          }
          Scale {
            X: 0.531338334
            Y: 0.0223353822
            Z: 1.16063988
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.541060269
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.723100543
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1639326626951250273
        Name: "Sphere - Half Thin"
        Transform {
          Location {
            X: -42.5726166
            Y: 18.474947
            Z: -25.1655941
          }
          Rotation {
            Pitch: -1.95852244
            Yaw: -92.0863495
            Roll: -179.604034
          }
          Scale {
            X: 0.531338334
            Y: 0.0223353822
            Z: 1.16063988
          }
        }
        ParentId: 12217782453873586407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.541060269
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.723100543
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2521092149100427551
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
        ParentId: 3779290768742933284
        ChildIds: 4934530253647200300
        ChildIds: 15874763565951059867
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
        Id: 4934530253647200300
        Name: "Pelvis Vines"
        Transform {
          Location {
            X: -4.86657429
            Y: 7.63062143
            Z: -5.22858572
          }
          Rotation {
            Pitch: -4.71875
            Yaw: -101.015015
            Roll: -178.742737
          }
          Scale {
            X: 0.224348843
            Y: 0.246702358
            Z: 0.143961847
          }
        }
        ParentId: 2521092149100427551
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
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
        Id: 15874763565951059867
        Name: "Pelvis"
        Transform {
          Location {
            X: -4.86657429
            Y: 7.63062143
            Z: -5.22859335
          }
          Rotation {
            Pitch: -4.71875
            Yaw: -101.014893
            Roll: -178.742737
          }
          Scale {
            X: 0.206486598
            Y: 0.227060348
            Z: 0.132499844
          }
        }
        ParentId: 2521092149100427551
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 10373951566693099862
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
        ParentId: 3779290768742933284
        ChildIds: 2433316935482203293
        ChildIds: 17572905741012286306
        ChildIds: 3108547604133973381
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
        Id: 2433316935482203293
        Name: "Thigh Vines"
        Transform {
          Location {
            X: 1.60977292
            Y: -21.428299
            Z: -28.3065758
          }
          Rotation {
            Pitch: 42.020649
            Yaw: 101.922707
            Roll: -6.23896
          }
          Scale {
            X: 0.0678073764
            Y: 0.171705514
            Z: 0.171703756
          }
        }
        ParentId: 10373951566693099862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
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
        Id: 17572905741012286306
        Name: "Fern 03"
        Transform {
          Location {
            X: -2.95780611
            Y: -24.0444717
            Z: -3.85897088
          }
          Rotation {
            Pitch: -28.8041363
            Yaw: -5.08280611
            Roll: -40.7478333
          }
          Scale {
            X: 0.193833351
            Y: 0.193833351
            Z: 0.193833351
          }
        }
        ParentId: 10373951566693099862
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4419896891242772333
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3108547604133973381
        Name: "Thigh"
        Transform {
          Location {
            X: 1.6097734
            Y: -21.428299
            Z: -28.3065681
          }
          Rotation {
            Pitch: 42.0206718
            Yaw: 101.922646
            Roll: -6.23895264
          }
          Scale {
            X: 0.0624086708
            Y: 0.158034638
            Z: 0.158033013
          }
        }
        ParentId: 10373951566693099862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 15008571259681913569
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
        ParentId: 3779290768742933284
        ChildIds: 483892064215112696
        ChildIds: 5280965520741489894
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
        Id: 483892064215112696
        Name: "Shin Vines"
        Transform {
          Location {
            X: -13.9385834
            Y: -19.7997646
            Z: -28.6623936
          }
          Rotation {
            Pitch: -60.5494614
            Yaw: 49.7480507
            Roll: -126.431564
          }
          Scale {
            X: 0.132071689
            Y: 0.196769357
            Z: 0.217622325
          }
        }
        ParentId: 15008571259681913569
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
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
        Id: 5280965520741489894
        Name: "Shin"
        Transform {
          Location {
            X: -13.9385805
            Y: -19.7997627
            Z: -28.6623955
          }
          Rotation {
            Pitch: -60.549469
            Yaw: 49.7480469
            Roll: -126.43158
          }
          Scale {
            X: 0.121556371
            Y: 0.181102917
            Z: 0.200295597
          }
        }
        ParentId: 15008571259681913569
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 15210105903218988245
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
        ParentId: 3779290768742933284
        ChildIds: 9569863407023199153
        ChildIds: 4723100010690406385
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
        Id: 9569863407023199153
        Name: "Thigh Vines"
        Transform {
          Location {
            X: -6.18342781
            Y: 24.0582733
            Z: -25.8515949
          }
          Rotation {
            Pitch: 47.9183235
            Yaw: -79.8021698
            Roll: 2.94823122
          }
          Scale {
            X: 0.072334066
            Y: 0.146560565
            Z: 0.173986167
          }
        }
        ParentId: 15210105903218988245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
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
        Id: 4723100010690406385
        Name: "Thigh"
        Transform {
          Location {
            X: -6.18342924
            Y: 24.0582809
            Z: -25.8515892
          }
          Rotation {
            Pitch: 47.918354
            Yaw: -79.8022156
            Roll: 2.94822955
          }
          Scale {
            X: 0.0665749535
            Y: 0.134891689
            Z: 0.16013369
          }
        }
        ParentId: 15210105903218988245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 12669610194221698957
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
        ParentId: 3779290768742933284
        ChildIds: 14448284286208237408
        ChildIds: 5600113746737143550
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
        Id: 14448284286208237408
        Name: "Shin Vines"
        Transform {
          Location {
            X: -6.97201538
            Y: 24.5306396
            Z: -29.5456085
          }
          Rotation {
            Pitch: -67.9543457
            Yaw: -65.5884781
            Roll: -54.0423317
          }
          Scale {
            X: 0.120082207
            Y: 0.202949375
            Z: -0.223729953
          }
        }
        ParentId: 12669610194221698957
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9405092179001815141
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
        Id: 5600113746737143550
        Name: "Shin"
        Transform {
          Location {
            X: -6.97213745
            Y: 24.5306396
            Z: -29.5456238
          }
          Rotation {
            Pitch: -67.9543457
            Yaw: -65.5884705
            Roll: -54.0423584
          }
          Scale {
            X: 0.11052148
            Y: 0.186790898
            Z: -0.205916986
          }
        }
        ParentId: 12669610194221698957
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5120780853281347253
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 12162076612630635931
        Name: "FollowRoot"
        Transform {
          Location {
            Z: 157
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16509561636376150296
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
        Id: 13912330842789552527
        Name: "Fantasy Human Guy"
        Transform {
          Location {
            Z: 157
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 16509561636376150296
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
      Id: 9405092179001815141
      Name: "Jungle Vine (tileable)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_liana-vine_001_uv"
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
      Id: 8215987718781187610
      Name: "Fern 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fern_generic_004"
      }
    }
    Assets {
      Id: 4410215247643332146
      Name: "Falling Leaves Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_falling_leaves_volume_vfx"
      }
    }
    Assets {
      Id: 17884425380056243870
      Name: "Tree Birch Bare 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tree_birch_002"
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
      Id: 10604936238935185684
      Name: "Dust Motes Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_dust_motes"
      }
    }
    Assets {
      Id: 4419896891242772333
      Name: "Fern 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fern_generic_003"
      }
    }
    Assets {
      Id: 13560184903873632544
      Name: "Moss 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_moss_001_uv"
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
      Id: 2237149746599085862
      Name: "Branches Cluster Big"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gen_branches_big_001"
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
