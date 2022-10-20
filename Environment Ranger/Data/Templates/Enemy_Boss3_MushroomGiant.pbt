Assets {
  Id: 6333065451346641648
  Name: "Enemy_Boss3_MushroomGiant"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2345040730219713069
      Objects {
        Id: 2345040730219713069
        Name: "Enemy_Boss3_MushroomGiant"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3044873982383977877
        ChildIds: 3980109154253583175
        ChildIds: 5344313011253500818
        ChildIds: 9152120668443329899
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
            String: "Sporax"
          }
          Overrides {
            Name: "cs:Level"
            Int: 6
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 11000
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
            Bool: true
          }
          Overrides {
            Name: "cs:CapsuleHeight"
            Float: 850
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 600
          }
          Overrides {
            Name: "cs:Experience"
            Float: 100
          }
          Overrides {
            Name: "cs:Task1"
            String: "sporax_melee"
          }
          Overrides {
            Name: "cs:Task2"
            String: "sporax_fissures"
          }
          Overrides {
            Name: "cs:Task3"
            String: "sporax_sporeblast"
          }
          Overrides {
            Name: "cs:Task4"
            String: "sporax_fairyring"
          }
          Overrides {
            Name: "cs:DropKey1"
            String: "D2Boss3"
          }
          Overrides {
            Name: "cs:DropChance1"
            Float: 0.5
          }
          Overrides {
            Name: "cs:DropKey2"
            String: "EssencePearl"
          }
          Overrides {
            Name: "cs:DropChance2"
            Float: 1
          }
          Overrides {
            Name: "cs:DropKey3"
            String: "D2Boss3Epic"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0.03
          }
          Overrides {
            Name: "cs:DropMinDifficulty3"
            Int: 3
          }
          Overrides {
            Name: "cs:OnPulledEventName"
            String: "Boss3Pulled"
          }
          Overrides {
            Name: "cs:OnResetEventName"
            String: "Boss3Reset"
          }
          Overrides {
            Name: "cs:OnDiedEventName"
            String: "Boss3Died"
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
              SubObjectId: 5344313011253500818
            }
          }
          Overrides {
            Name: "cs:CurrentTask:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:HealthFraction:isrep"
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
        Id: 3044873982383977877
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
        ParentId: 2345040730219713069
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 3980109154253583175
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 9152120668443329899
            }
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
        Id: 3980109154253583175
        Name: "Costume"
        Transform {
          Location {
            Z: 235.311798
          }
          Rotation {
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 2345040730219713069
        ChildIds: 10787224856681178133
        ChildIds: 15367431798418424497
        ChildIds: 10693969789034771541
        ChildIds: 17220669713238226781
        ChildIds: 12398025052753042572
        ChildIds: 16947718754771512554
        ChildIds: 5487436033781620132
        ChildIds: 13761406084608143288
        ChildIds: 10606503903440997320
        ChildIds: 17566580690864987508
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
        Id: 10787224856681178133
        Name: "left_shoulder"
        Transform {
          Location {
            X: -2.5241518
            Y: -23.8497238
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
        ParentId: 3980109154253583175
        ChildIds: 3807889818403595972
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
        Id: 3807889818403595972
        Name: "Rock 03"
        Transform {
          Location {
            X: 7.01691818
            Y: -12.8434238
            Z: -17.9164371
          }
          Rotation {
            Pitch: 2.95760846
            Yaw: 1.82047367
            Roll: -30.0200195
          }
          Scale {
            X: 0.168354541
            Y: 0.168354541
            Z: 0.168354541
          }
        }
        ParentId: 10787224856681178133
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.81154871
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.93745971
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.178824604
              G: 0.223958328
              B: 0.111373283
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
        Id: 15367431798418424497
        Name: "left_elbow"
        Transform {
          Location {
            X: -4.15745163
            Y: -39.6684418
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
        ParentId: 3980109154253583175
        ChildIds: 9211688657997094755
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
        Id: 9211688657997094755
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: 10.0709562
            Y: -8.15894318
            Z: -31.9216976
          }
          Rotation {
            Pitch: 63.5638275
            Yaw: -146.534378
            Roll: 128.970276
          }
          Scale {
            X: 0.102213025
            Y: 0.103443809
            Z: 0.221484378
          }
        }
        ParentId: 15367431798418424497
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.11719322
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.56701624
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 10693969789034771541
        Name: "right_shoulder"
        Transform {
          Location {
            X: -2.52415204
            Y: 23.388298
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
        ParentId: 3980109154253583175
        ChildIds: 757295308882733902
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
        Id: 757295308882733902
        Name: "Rock 03"
        Transform {
          Location {
            X: -1.05387974
            Y: 9.3910017
            Z: -15.2498064
          }
          Rotation {
            Pitch: 7.76879311
            Yaw: -169.696594
            Roll: -29.2251282
          }
          Scale {
            X: 0.175837666
            Y: 0.175837666
            Z: 0.175837666
          }
        }
        ParentId: 10693969789034771541
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.966388583
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.29153097
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 17220669713238226781
        Name: "right_elbow"
        Transform {
          Location {
            X: -4.15745115
            Y: 41.5148773
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
        ParentId: 3980109154253583175
        ChildIds: 4223199655888211619
        ChildIds: 13766375585302042518
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
        Id: 4223199655888211619
        Name: "Rock Flat 02"
        Transform {
          Location {
            X: -6.81877565
            Y: 8.16914558
            Z: -28.8053
          }
          Rotation {
            Pitch: 68.7878571
            Yaw: 172.91864
            Roll: -122.501831
          }
          Scale {
            X: 0.0974744856
            Y: 0.123051919
            Z: 0.219290257
          }
        }
        ParentId: 17220669713238226781
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.56701624
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.42104602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 13766375585302042518
        Name: "Mushrooms"
        Transform {
          Location {
            X: -7.36479
            Y: 18.9236393
            Z: -30.5378342
          }
          Rotation {
            Pitch: 24.9060783
            Yaw: -173.097031
            Roll: -27.3782349
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17220669713238226781
        ChildIds: 7079057834657732639
        ChildIds: 7171258235586246425
        ChildIds: 16476511039191681177
        ChildIds: 13096111550443616797
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
        Id: 7079057834657732639
        Name: "Coral Table 01"
        Transform {
          Location {
            X: 8.70916748
            Y: 0.845092773
            Z: 17.8095245
          }
          Rotation {
            Roll: -162.89267
          }
          Scale {
            X: 0.144757777
            Y: 0.17422922
            Z: 0.189456269
          }
        }
        ParentId: 13766375585302042518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.0675381646
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7171258235586246425
        Name: "Coral Table 01"
        Transform {
          Location {
            X: -1.35656738
            Y: -5.09777832
            Z: 8.12036133
          }
          Rotation {
            Pitch: 8.92350483
            Yaw: -73.7458115
            Roll: -176.815964
          }
          Scale {
            X: 0.114973962
            Y: 0.105733238
            Z: 0.114973962
          }
        }
        ParentId: 13766375585302042518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.0675381646
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16476511039191681177
        Name: "Coral Table 01"
        Transform {
          Location {
            X: 3.88061523
            Y: 7.27099609
            Z: 25.8633423
          }
          Rotation {
            Pitch: -21.0814724
            Yaw: 109.419121
            Roll: 166.461746
          }
          Scale {
            X: 0.088085711
            Y: 0.121504717
            Z: 0.0880864784
          }
        }
        ParentId: 13766375585302042518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.0675381646
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13096111550443616797
        Name: "Coral Table 01"
        Transform {
          Location {
            X: -11.2333374
            Y: -3.01855469
          }
          Rotation {
            Pitch: -6.98919582
            Yaw: 46.9067612
            Roll: -174.076813
          }
          Scale {
            X: 0.0946509615
            Y: 0.087043643
            Z: 0.0946509615
          }
        }
        ParentId: 13766375585302042518
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.0675381646
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12398025052753042572
        Name: "upper_spine"
        Transform {
          Location {
            X: 3.02314186
            Y: -0.230713487
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
        ParentId: 3980109154253583175
        ChildIds: 943464368859734165
        ChildIds: 5528189445021771717
        ChildIds: 418059188105273996
        ChildIds: 2712386538797498260
        ChildIds: 3342364862188593776
        ChildIds: 17023190400071696541
        ChildIds: 9541179833467302341
        ChildIds: 4336227718775770813
        ChildIds: 3128730701000952561
        ChildIds: 14544076185174880914
        ChildIds: 11369953375038519895
        ChildIds: 15178948348669044454
        ChildIds: 15348358340073017608
        ChildIds: 9796423571793145964
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
        Id: 943464368859734165
        Name: "Sphere"
        Transform {
          Location {
            X: 25.2158318
            Y: -12.3334618
            Z: 17.8565483
          }
          Rotation {
            Pitch: 5.64395571
            Yaw: -16.8081665
            Roll: 18.7922974
          }
          Scale {
            X: 0.0810109675
            Y: 0.121799238
            Z: 0.20078072
          }
        }
        ParentId: 12398025052753042572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.640625
              G: 0.531161964
              B: 0.130661488
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
        Id: 5528189445021771717
        Name: "Sphere"
        Transform {
          Location {
            X: 25.5478935
            Y: 15.3642836
            Z: 17.8565502
          }
          Rotation {
            Pitch: 3.3939414
            Yaw: 14.8568249
            Roll: -12.0175781
          }
          Scale {
            X: 0.0810109675
            Y: 0.121799238
            Z: 0.20078072
          }
        }
        ParentId: 12398025052753042572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.640625
              G: 0.531161964
              B: 0.130661488
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
        Id: 418059188105273996
        Name: "Head"
        Transform {
          Location {
            X: 19.8597336
            Y: 2.57966352
            Z: 19.1835365
          }
          Rotation {
            Pitch: 55.3708229
            Yaw: -166.593567
            Roll: -171.468872
          }
          Scale {
            X: 0.11687813
            Y: 0.17624101
            Z: 0.0799396411
          }
        }
        ParentId: 12398025052753042572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.35549212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.29153097
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 2712386538797498260
        Name: "Torso"
        Transform {
          Location {
            X: -5.95223665
            Y: -1.74618721
            Z: 6.52414751
          }
          Rotation {
            Pitch: -37.6845093
            Yaw: -6.10351562e-05
          }
          Scale {
            X: 0.292342365
            Y: 0.439799
            Z: 0.262813121
          }
        }
        ParentId: 12398025052753042572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5626035503592688696
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.30680537
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.54094481
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 3342364862188593776
        Name: "Mushroom"
        Transform {
          Location {
            X: 1.88070679
            Y: -28.2377377
            Z: 15.0621777
          }
          Rotation {
            Pitch: -38.4985962
            Yaw: -50.526886
            Roll: 12.293932
          }
          Scale {
            X: 0.416141033
            Y: 0.416141033
            Z: 0.416141033
          }
        }
        ParentId: 12398025052753042572
        ChildIds: 5223062997334866779
        ChildIds: 494101201154328702
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
        Id: 5223062997334866779
        Name: "Truncated Teardrop"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.151155174
            Y: 0.151155174
            Z: 0.219705388
          }
        }
        ParentId: 3342364862188593776
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4176625818212927453
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.161599949
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.30292803
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 494101201154328702
        Name: "Coral Table 02"
        Transform {
          Location {
            X: 1.99289942
            Y: -0.915579915
            Z: 34.183754
          }
          Rotation {
            Pitch: 1.18498993
            Yaw: -2.44100952
            Roll: 175.226395
          }
          Scale {
            X: 0.124895073
            Y: 0.124895334
            Z: 0.428062975
          }
        }
        ParentId: 3342364862188593776
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.00461691
              G: 0.0616361871
              B: 0.067708
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
            Id: 6398147965528723654
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17023190400071696541
        Name: "Mushroom"
        Transform {
          Location {
            X: -5.23632812
            Y: -35.867691
            Z: 17.2950821
          }
          Rotation {
            Pitch: -10.238739
            Yaw: -172.338837
            Roll: 11.148385
          }
          Scale {
            X: 0.80816555
            Y: 0.80816555
            Z: 0.80816555
          }
        }
        ParentId: 12398025052753042572
        ChildIds: 9311467664004103501
        ChildIds: 2785499331718586066
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
        Id: 9311467664004103501
        Name: "Truncated Teardrop"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.151155174
            Y: 0.151155174
            Z: 0.219705388
          }
        }
        ParentId: 17023190400071696541
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4176625818212927453
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
            Float: 0.350199908
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 2785499331718586066
        Name: "Coral Table 02"
        Transform {
          Location {
            X: 0.26751709
            Y: 2.77624512
            Z: 34.8973541
          }
          Rotation {
            Pitch: -12.2973633
            Yaw: -1.29922485
            Roll: -173.921616
          }
          Scale {
            X: 0.182076544
            Y: 0.182077155
            Z: 0.478843093
          }
        }
        ParentId: 17023190400071696541
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.00461691
              G: 0.0616361871
              B: 0.067708
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
            Id: 6398147965528723654
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9541179833467302341
        Name: "Mushroom"
        Transform {
          Location {
            X: 3.01243353
            Y: -40.8755455
            Z: 13.1964979
          }
          Rotation {
            Pitch: -40.8479
            Yaw: -51.2044067
            Roll: -11.8573608
          }
          Scale {
            X: 0.59207958
            Y: 0.59207958
            Z: 0.59207958
          }
        }
        ParentId: 12398025052753042572
        ChildIds: 11235013349151642966
        ChildIds: 6726726656127269222
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
        Id: 11235013349151642966
        Name: "Truncated Teardrop"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.151155174
            Y: 0.151155174
            Z: 0.219705388
          }
        }
        ParentId: 9541179833467302341
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4176625818212927453
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.161599949
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.30292803
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 6726726656127269222
        Name: "Coral Table 02"
        Transform {
          Location {
            X: 1.99285638
            Y: -0.915593326
            Z: 34.1837349
          }
          Rotation {
            Pitch: 1.18498993
            Yaw: -2.44100952
            Roll: 175.226395
          }
          Scale {
            X: 0.124895833
            Y: 0.124895945
            Z: 0.55387944
          }
        }
        ParentId: 9541179833467302341
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.00461691
              G: 0.0616361871
              B: 0.067708
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
            Id: 6398147965528723654
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4336227718775770813
        Name: "Fern 02"
        Transform {
          Location {
            X: -21.0138168
            Y: -19.4292336
            Z: 23.9019585
          }
          Rotation {
            Pitch: -31.8999023
            Yaw: 172.496918
            Roll: 17.0633183
          }
          Scale {
            X: 0.28316173
            Y: 0.28316173
            Z: 0.28316173
          }
        }
        ParentId: 12398025052753042572
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16130068831793599947
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3128730701000952561
        Name: "Fern 02"
        Transform {
          Location {
            X: -9.38477612
            Y: 29.8015041
            Z: 24.9909191
          }
          Rotation {
            Pitch: 19.4417572
            Yaw: -153.152557
            Roll: -22.5047607
          }
          Scale {
            X: 0.194227949
            Y: 0.194227949
            Z: 0.194227949
          }
        }
        ParentId: 12398025052753042572
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16130068831793599947
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14544076185174880914
        Name: "Mushroom"
        Transform {
          Location {
            X: -1.56400132
            Y: 10.3882809
            Z: 29.0992146
          }
          Rotation {
            Pitch: -14.5082703
            Yaw: 92.8192368
            Roll: 22.0074692
          }
          Scale {
            X: 0.722752094
            Y: 0.722752094
            Z: 0.722752094
          }
        }
        ParentId: 12398025052753042572
        ChildIds: 13662518644036353038
        ChildIds: 3777063248866341213
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
        Id: 13662518644036353038
        Name: "Truncated Teardrop"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.151155174
            Y: 0.151155174
            Z: 0.219705388
          }
        }
        ParentId: 14544076185174880914
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4176625818212927453
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
            Float: 0.350199908
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 3777063248866341213
        Name: "Coral Table 02"
        Transform {
          Location {
            X: 0.26751709
            Y: 2.77624512
            Z: 34.8973541
          }
          Rotation {
            Pitch: -12.2973633
            Yaw: -1.29922485
            Roll: -173.921616
          }
          Scale {
            X: 0.182076544
            Y: 0.182077155
            Z: 0.478843093
          }
        }
        ParentId: 14544076185174880914
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.00461691
              G: 0.0616361871
              B: 0.067708
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
            Id: 6398147965528723654
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11369953375038519895
        Name: "Mushroom"
        Transform {
          Location {
            X: 17.9436703
            Y: 16.8390923
            Z: 25.8001938
          }
          Rotation {
            Pitch: -45.1192
            Yaw: 37.521122
            Roll: 28.0629826
          }
          Scale {
            X: 0.59207958
            Y: 0.59207958
            Z: 0.59207958
          }
        }
        ParentId: 12398025052753042572
        ChildIds: 18123916912955235640
        ChildIds: 17537402249770625758
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
        Id: 18123916912955235640
        Name: "Truncated Teardrop"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.151155174
            Y: 0.151155174
            Z: 0.219705388
          }
        }
        ParentId: 11369953375038519895
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4176625818212927453
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.161599949
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.30292803
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 17537402249770625758
        Name: "Coral Table 02"
        Transform {
          Location {
            X: -1.71354747
            Y: -2.04784346
            Z: 31.4048176
          }
          Rotation {
            Pitch: 20.3937016
            Yaw: -6.17895508
            Roll: 166.11
          }
          Scale {
            X: 0.124896109
            Y: 0.124897033
            Z: 0.415941864
          }
        }
        ParentId: 11369953375038519895
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.00461691
              G: 0.0616361871
              B: 0.067708
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
            Id: 6398147965528723654
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15178948348669044454
        Name: "Branches Cluster Medium"
        Transform {
          Location {
            X: -2.20603204
            Y: -3.26784039
            Z: 36.2480965
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: -170.659302
            Roll: 1.21942558e-05
          }
          Scale {
            X: 0.141421139
            Y: 0.141421139
            Z: 0.141421139
          }
        }
        ParentId: 12398025052753042572
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2352857238667850889
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15348358340073017608
        Name: "Decal Leaves 01"
        Transform {
          Location {
            X: 2.5970912
            Y: -7.16568327
            Z: 29.2222729
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: -170.659317
            Roll: 1.21942549e-05
          }
          Scale {
            X: 0.351488888
            Y: 0.351488888
            Z: 0.351488888
          }
        }
        ParentId: 12398025052753042572
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
            Id: 4430461046694265123
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
        Id: 9796423571793145964
        Name: "Torso"
        Transform {
          Location {
            X: -5.35573578
            Y: -1.64794683
            Z: -5.04679155
          }
          Rotation {
            Pitch: -37.6845093
            Yaw: -6.10351562e-05
          }
          Scale {
            X: 0.305359393
            Y: 0.459382057
            Z: 0.27451539
          }
        }
        ParentId: 12398025052753042572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.30680537
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.54094481
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 16947718754771512554
        Name: "pelvis"
        Transform {
          Location {
            X: 3.02314186
            Y: -0.230713487
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
        ParentId: 3980109154253583175
        ChildIds: 11838187872170416472
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
        Id: 11838187872170416472
        Name: "Pelvis"
        Transform {
          Location {
            X: -4.14142132
            Y: 3.22211409
            Z: -6.38856697
          }
          Rotation {
            Pitch: -3.71936035
            Yaw: -101.212708
            Roll: -176.05658
          }
          Scale {
            X: 0.146064088
            Y: 0.183044136
            Z: 0.147263244
          }
        }
        ParentId: 16947718754771512554
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.30680537
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.99542022
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 5487436033781620132
        Name: "left_hip"
        Transform {
          Location {
            X: 1.63712347
            Y: -10.7217979
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
        ParentId: 3980109154253583175
        ChildIds: 8645201821137304690
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
        Id: 8645201821137304690
        Name: "Thigh"
        Transform {
          Location {
            X: 1.60978651
            Y: -21.4282455
            Z: -28.3065643
          }
          Rotation {
            Pitch: 39.7293549
            Yaw: 113.518547
            Roll: 13.3459291
          }
          Scale {
            X: 0.0624086708
            Y: 0.158034638
            Z: 0.158033013
          }
        }
        ParentId: 5487436033781620132
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.966388583
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.06447661
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 13761406084608143288
        Name: "left_knee"
        Transform {
          Location {
            X: 2.02134204
            Y: -17.1116867
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
        ParentId: 3980109154253583175
        ChildIds: 906396835811559561
        ChildIds: 15485818683212473865
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
        Id: 906396835811559561
        Name: "Shin"
        Transform {
          Location {
            X: -3.96463299
            Y: -22.4947796
            Z: -28.1806545
          }
          Rotation {
            Pitch: -62.1376038
            Yaw: 39.2055283
            Roll: -121.815521
          }
          Scale {
            X: 0.1215562
            Y: 0.181103066
            Z: 0.146483332
          }
        }
        ParentId: 13761406084608143288
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.35549212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.42104602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 15485818683212473865
        Name: "Mushrooms"
        Transform {
          Location {
            X: -1.11521435
            Y: -28.4550629
            Z: -29.0514622
          }
          Rotation {
            Pitch: 2.24789023
            Yaw: -63.486145
            Roll: -11.4396973
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13761406084608143288
        ChildIds: 8458145777098913431
        ChildIds: 2364177229984525616
        ChildIds: 5265814042583294199
        ChildIds: 7138884315664308772
        ChildIds: 15635566416827327692
        ChildIds: 6132304206960032894
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
        Id: 8458145777098913431
        Name: "Coral Table 01"
        Transform {
          Location {
            X: 8.58109379
            Y: 0.667221069
            Z: 16.1214256
          }
          Rotation {
            Roll: -162.892654
          }
          Scale {
            X: 0.144757777
            Y: 0.17422922
            Z: 0.189456269
          }
        }
        ParentId: 15485818683212473865
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.0675381646
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2364177229984525616
        Name: "Coral Table 01"
        Transform {
          Location {
            X: 3.25410652
            Y: -6.28083134
            Z: 7.89522266
          }
          Rotation {
            Pitch: 8.92350483
            Yaw: -73.7457886
            Roll: -176.815964
          }
          Scale {
            X: 0.114973962
            Y: 0.105733238
            Z: 0.114973962
          }
        }
        ParentId: 15485818683212473865
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.38
              G: 0.163728356
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5265814042583294199
        Name: "Coral Table 01"
        Transform {
          Location {
            X: 3.88063622
            Y: 7.27098465
            Z: 25.8633327
          }
          Rotation {
            Pitch: -13.8925476
            Yaw: 107.643295
            Roll: -171.947388
          }
          Scale {
            X: 0.088085711
            Y: 0.121504717
            Z: 0.0880864784
          }
        }
        ParentId: 15485818683212473865
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.0675381646
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7138884315664308772
        Name: "Coral Table 01"
        Transform {
          Location {
            X: -5.5967803
            Y: -4.46479082
            Z: -0.275247
          }
          Rotation {
            Pitch: -6.98919678
            Yaw: 46.9067574
            Roll: -174.076813
          }
          Scale {
            X: 0.0946509615
            Y: 0.087043643
            Z: 0.0946509615
          }
        }
        ParentId: 15485818683212473865
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.38
              G: 0.163728356
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15635566416827327692
        Name: "Coral Table 01"
        Transform {
          Location {
            X: 0.276296616
            Y: 18.9795341
            Z: -3.19083214
          }
          Rotation {
            Pitch: -6.98919678
            Yaw: 46.906723
            Roll: -174.076782
          }
          Scale {
            X: 0.0946509615
            Y: 0.087043643
            Z: 0.0946509615
          }
        }
        ParentId: 15485818683212473865
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.0675381646
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6132304206960032894
        Name: "Coral Table 01"
        Transform {
          Location {
            X: 0.869598389
            Y: 19.8034878
            Z: 4.62973881
          }
          Rotation {
            Pitch: 4.08287525
            Yaw: -28.9415588
            Roll: -171.801773
          }
          Scale {
            X: 0.0990213603
            Y: 0.0910627469
            Z: 0.0990213603
          }
        }
        ParentId: 15485818683212473865
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.0675381646
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
            Id: 17541963026773272436
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10606503903440997320
        Name: "right_hip"
        Transform {
          Location {
            X: 1.63711703
            Y: 10.2602501
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
        ParentId: 3980109154253583175
        ChildIds: 16477304482529512163
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
        Id: 16477304482529512163
        Name: "Thigh"
        Transform {
          Location {
            X: -4.62735319
            Y: 14.9524555
            Z: -25.2250195
          }
          Rotation {
            Pitch: 47.918354
            Yaw: -79.8021545
            Roll: 2.94824243
          }
          Scale {
            X: 0.0665749535
            Y: 0.134891689
            Z: 0.16013369
          }
        }
        ParentId: 10606503903440997320
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.966388583
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.06447661
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 17566580690864987508
        Name: "right_knee"
        Transform {
          Location {
            X: 2.02134252
            Y: 16.6502609
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
        ParentId: 3980109154253583175
        ChildIds: 12830597055837856735
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
        Id: 12830597055837856735
        Name: "Shin"
        Transform {
          Location {
            X: -6.18481445
            Y: 16.6879272
            Z: -28.904541
          }
          Rotation {
            Pitch: -73.0529785
            Yaw: -59.6153259
            Roll: -60.0218811
          }
          Scale {
            X: 0.110521764
            Y: 0.14981395
            Z: -0.205915779
          }
        }
        ParentId: 17566580690864987508
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18282852206081889810
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.35549212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.42104602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.510270536
              G: 0.651041687
              B: 0.317633778
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
        Id: 5344313011253500818
        Name: "FollowRoot"
        Transform {
          Location {
            Z: 420
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2345040730219713069
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
        Id: 9152120668443329899
        Name: "Fantasy Human Guy"
        Transform {
          Location {
            Z: 420
          }
          Rotation {
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 2345040730219713069
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
              Animation: "unarmed_shout"
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
      Id: 18282852206081889810
      Name: "Cliff 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_cliff_001_uv"
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
      Id: 17541963026773272436
      Name: "Coral Table 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_coral_table_01"
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
      Id: 5626035503592688696
      Name: "Rocky Ground 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "rocky_001"
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
      Id: 4176625818212927453
      Name: "Bark Dead 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bark_dead_001_uv"
      }
    }
    Assets {
      Id: 6398147965528723654
      Name: "Coral Table 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_coral_table_02"
      }
    }
    Assets {
      Id: 16130068831793599947
      Name: "Fern 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fern_generic_002"
      }
    }
    Assets {
      Id: 2352857238667850889
      Name: "Branches Cluster Medium"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gen_branches_medium_001"
      }
    }
    Assets {
      Id: 4430461046694265123
      Name: "Decal Leaves 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_leaves_001"
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
      Id: 10068790783914181223
      Name: "Rock 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_002_sm_rock_generic_002_LOD0"
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
