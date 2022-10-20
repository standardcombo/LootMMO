Assets {
  Id: 1748089756742422245
  Name: "Enemy_Boss2_Merchant"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7409618946245289721
      Objects {
        Id: 7409618946245289721
        Name: "Enemy_Boss2_Merchant"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10844456368183575790
        ChildIds: 11309518686197139877
        ChildIds: 16375430473012330958
        ChildIds: 13879121867550805143
        ChildIds: 17631115579134591934
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
            String: "Varicelli, the Esteemed"
          }
          Overrides {
            Name: "cs:Level"
            Int: 3
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 2500
          }
          Overrides {
            Name: "cs:MoveSpeed"
            Float: 800
          }
          Overrides {
            Name: "cs:EngageRange"
            Float: 600
          }
          Overrides {
            Name: "cs:ImmuneToStun"
            Bool: true
          }
          Overrides {
            Name: "cs:CapsuleHeight"
            Float: 252
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 120
          }
          Overrides {
            Name: "cs:Experience"
            Float: 50
          }
          Overrides {
            Name: "cs:Task1"
            String: "boss2_punch"
          }
          Overrides {
            Name: "cs:Task2"
            String: "boss2_encourage_commerce"
          }
          Overrides {
            Name: "cs:Task3"
            String: "boss2_command_undead"
          }
          Overrides {
            Name: "cs:Task4"
            String: "boss2_throw_coins"
          }
          Overrides {
            Name: "cs:DropKey1"
            String: "HRBoss2"
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
            String: "HRBoss2Epic"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0.02
          }
          Overrides {
            Name: "cs:DropMinDifficulty3"
            Int: 3
          }
          Overrides {
            Name: "cs:OnPulledEventName"
            String: "Boss2Pulled"
          }
          Overrides {
            Name: "cs:OnResetEventName"
            String: "Boss2Reset"
          }
          Overrides {
            Name: "cs:OnDiedEventName"
            String: "Boss2Died"
          }
          Overrides {
            Name: "cs:MovementEffectTemplate"
            AssetReference {
              Id: 4902194881991712191
            }
          }
          Overrides {
            Name: "cs:DeathEffectTemplate"
            AssetReference {
              Id: 6070064999687689145
            }
          }
          Overrides {
            Name: "cs:FollowRoot"
            ObjectReference {
              SubObjectId: 13879121867550805143
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
        Id: 11309518686197139877
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
        ParentId: 7409618946245289721
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 16375430473012330958
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 17631115579134591934
            }
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
        Id: 16375430473012330958
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
        ParentId: 7409618946245289721
        ChildIds: 16852284585635545617
        ChildIds: 1425788844668645841
        ChildIds: 1221968278279075962
        ChildIds: 12001296232194310700
        ChildIds: 2414365051048019456
        ChildIds: 3201072418949278982
        ChildIds: 3478894190971669151
        ChildIds: 12457316888811441237
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
        Id: 16852284585635545617
        Name: "neck"
        Transform {
          Location {
            X: -6.39222145
            Y: -8.86917114e-05
            Z: 217.328613
          }
          Rotation {
            Pitch: -9.93500137
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 16375430473012330958
        ChildIds: 7476328215478958020
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
        Id: 7476328215478958020
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: 1.90242219
            Y: -9.21785831e-05
            Z: 0.986110926
          }
          Rotation {
            Pitch: -13.3577881
            Yaw: 0.00020177431
            Roll: 3.86937863e-05
          }
          Scale {
            X: 0.239522591
            Y: 0.198385149
            Z: 0.459784269
          }
        }
        ParentId: 16852284585635545617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14247879825147835731
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.84391332
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.984238386
              G: 1
              B: 0.86
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
        Id: 1425788844668645841
        Name: "left_shoulder"
        Transform {
          Location {
            X: -7.26861
            Y: -28.3428593
            Z: 202.399231
          }
          Rotation {
            Pitch: -1.64800167
            Yaw: -3.05700827
            Roll: 30.1110134
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 16375430473012330958
        ChildIds: 16667102053366810699
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
        Id: 16667102053366810699
        Name: "Star - Rounded"
        Transform {
          Location {
            X: 0.100664973
            Y: 0.89232707
            Z: -14.2943668
          }
          Rotation {
            Pitch: 1.25077152
            Yaw: 105.337631
            Roll: 6.83587503
          }
          Scale {
            X: 0.289554954
            Y: 0.289554417
            Z: 1.52933371
          }
        }
        ParentId: 1425788844668645841
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14247879825147835731
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14519065406787674128
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
        Id: 1221968278279075962
        Name: "left_elbow"
        Transform {
          Location {
            X: -9.2290554
            Y: -47.3251953
            Z: 169.546814
          }
          Rotation {
            Pitch: 18.4199886
            Yaw: 9.02802277
            Roll: 31.9080257
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 16375430473012330958
        ChildIds: 11610295798674495059
        ChildIds: 14633010757309785092
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
        Id: 11610295798674495059
        Name: "Ring"
        Transform {
          Location {
            X: 1.88105381
            Y: 0.198919475
            Z: 1.24719119
          }
          Rotation {
            Pitch: -17.268158
            Yaw: -1.24194336
            Roll: 4.01375723
          }
          Scale {
            X: 0.163098574
            Y: 0.163098186
            Z: 0.585499108
          }
        }
        ParentId: 1221968278279075962
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.811962724
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.77870631
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 990344647068844639
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
        Id: 14633010757309785092
        Name: "Star - Rounded"
        Transform {
          Location {
            X: 0.366828203
            Y: 0.141968012
            Z: -11.4187737
          }
          Rotation {
            Pitch: -5.30935669
            Yaw: 90.7501373
            Roll: 0.972040534
          }
          Scale {
            X: 0.260280073
            Y: 0.291130662
            Z: 1.32295907
          }
        }
        ParentId: 1221968278279075962
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14247879825147835731
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14519065406787674128
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
        Id: 12001296232194310700
        Name: "left_wrist"
        Transform {
          Location {
            X: 2.3252182
            Y: -63.2662849
            Z: 142.794
          }
          Rotation {
            Pitch: 13.9379902
            Yaw: 10.1970272
            Roll: 27.3249664
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 16375430473012330958
        ChildIds: 9757149415388640709
        ChildIds: 14890536812259948331
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
        Id: 9757149415388640709
        Name: "Ring"
        Transform {
          Location {
            X: 0.759970307
            Y: -0.447373688
            Z: 2.40881824
          }
          Rotation {
            Pitch: 6.30321264
            Yaw: -3.05175781e-05
            Roll: 3.67685388e-05
          }
          Scale {
            X: 0.146451667
            Y: 0.112650909
            Z: 0.333868802
          }
        }
        ParentId: 12001296232194310700
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.811962724
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.77870631
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 990344647068844639
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
        Id: 14890536812259948331
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: 1.11047053
            Y: -0.447354287
            Z: -0.764193535
          }
          Rotation {
            Pitch: 6.30321264
            Yaw: -3.05175781e-05
            Roll: 3.67685388e-05
          }
          Scale {
            X: 0.152612701
            Y: 0.117390476
            Z: 0.21596396
          }
        }
        ParentId: 12001296232194310700
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14247879825147835731
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.12724376
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.984238386
              G: 1
              B: 0.86
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
        Id: 2414365051048019456
        Name: "right_shoulder"
        Transform {
          Location {
            X: -7.26867676
            Y: 28.3427334
            Z: 202.399231
          }
          Rotation {
            Pitch: 1.64699757
            Yaw: 3.057
            Roll: -30.111
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 16375430473012330958
        ChildIds: 16074229377805300292
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
        Id: 16074229377805300292
        Name: "Star - Rounded"
        Transform {
          Location {
            X: 0.100677729
            Y: 0.892347574
            Z: -14.2943468
          }
          Rotation {
            Pitch: -1.25076294
            Yaw: -74.6624756
            Roll: -6.83584595
          }
          Scale {
            X: 0.289554954
            Y: 0.289554417
            Z: 1.52933371
          }
        }
        ParentId: 2414365051048019456
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14247879825147835731
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14519065406787674128
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
        Id: 3201072418949278982
        Name: "right_elbow"
        Transform {
          Location {
            X: -9.22829437
            Y: 50.0945168
            Z: 169.546814
          }
          Rotation {
            Pitch: 18.4199886
            Yaw: -9.02803516
            Roll: -31.90802
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 16375430473012330958
        ChildIds: 14508557680543514774
        ChildIds: 6120139957786178916
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
        Id: 14508557680543514774
        Name: "Ring"
        Transform {
          Location {
            X: 1.88105381
            Y: 0.198919475
            Z: 1.24719119
          }
          Rotation {
            Pitch: -17.268158
            Yaw: -1.24194336
            Roll: 4.01376
          }
          Scale {
            X: 0.163098574
            Y: 0.163098186
            Z: 0.585499108
          }
        }
        ParentId: 3201072418949278982
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.811962724
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.77870631
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 990344647068844639
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
        Id: 6120139957786178916
        Name: "Star - Rounded"
        Transform {
          Location {
            X: 0.366820693
            Y: 0.141962171
            Z: -11.4187737
          }
          Rotation {
            Pitch: 5.30939245
            Yaw: -89.2498779
            Roll: -0.972106934
          }
          Scale {
            X: 0.260280073
            Y: 0.291130662
            Z: 1.32295907
          }
        }
        ParentId: 3201072418949278982
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14247879825147835731
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14519065406787674128
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
        Id: 3478894190971669151
        Name: "right_wrist"
        Transform {
          Location {
            X: 2.32477188
            Y: 63.2664452
            Z: 142.794861
          }
          Rotation {
            Pitch: 13.9379902
            Yaw: -10.1970205
            Roll: -27.3249779
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 16375430473012330958
        ChildIds: 1054306737059091380
        ChildIds: 9782279798760170175
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
        Id: 1054306737059091380
        Name: "Ring"
        Transform {
          Location {
            X: 0.759970307
            Y: -0.447373688
            Z: 2.40881824
          }
          Rotation {
            Pitch: 6.30321264
            Yaw: -3.05175781e-05
            Roll: 3.67685388e-05
          }
          Scale {
            X: 0.146451667
            Y: 0.112650909
            Z: 0.333868802
          }
        }
        ParentId: 3478894190971669151
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.811962724
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.77870631
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 990344647068844639
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
        Id: 9782279798760170175
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: 1.11047053
            Y: -0.447354287
            Z: -0.764193535
          }
          Rotation {
            Pitch: 6.30321264
            Yaw: -3.05175781e-05
            Roll: 3.67685388e-05
          }
          Scale {
            X: 0.152612701
            Y: 0.117390476
            Z: 0.21596396
          }
        }
        ParentId: 3478894190971669151
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14247879825147835731
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.12724376
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.984238386
              G: 1
              B: 0.86
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
        Id: 12457316888811441237
        Name: "upper_spine"
        Transform {
          Location {
            X: 0.393386692
            Y: -6.48498535e-05
            Z: 194.384277
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169823e-05
            Roll: -2.03564813e-13
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 16375430473012330958
        ChildIds: 14794722701161137259
        ChildIds: 268632546859843097
        ChildIds: 6900502683857656426
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
        Id: 14794722701161137259
        Name: "Jewel Necklace"
        Transform {
          Location {
            X: 13.3039217
            Y: 8.63075256e-05
            Z: 1.96824419
          }
          Rotation {
            Pitch: -78.0368652
            Yaw: 0.000152957698
            Roll: 2.55042214e-05
          }
          Scale {
            X: 0.0621946119
            Y: 0.0621946119
            Z: 0.0621946119
          }
        }
        ParentId: 12457316888811441237
        ChildIds: 6939353038871195985
        ChildIds: 16295656985847671402
        ChildIds: 12084673695595419732
        ChildIds: 16764962354106363222
        ChildIds: 18350077681820308279
        ChildIds: 13719330122387369163
        ChildIds: 2068845187307283047
        ChildIds: 11033355171769780513
        ChildIds: 16124905287457500438
        ChildIds: 14596025576605627826
        ChildIds: 15444804909955894597
        ChildIds: 9016332364995053781
        ChildIds: 11494725337695893569
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
        Id: 6939353038871195985
        Name: "Medallion"
        Transform {
          Location {
            X: 114.076622
            Y: -0.102061197
            Z: -3.68462229
          }
          Rotation {
            Pitch: -9.74093628
            Yaw: 4.58192062e-06
            Roll: 8.70100121e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14794722701161137259
        ChildIds: 6407264735785363782
        ChildIds: 13960536947789826008
        ChildIds: 1935733954685722777
        ChildIds: 13550026693586389789
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
        Id: 6407264735785363782
        Name: "Gem - Diamond 6-Sided Polished"
        Transform {
          Location {
            Z: -0.0499191284
          }
          Rotation {
          }
          Scale {
            X: 0.390576094
            Y: 0.390576094
            Z: 0.289087087
          }
        }
        ParentId: 6939353038871195985
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14281127479253422757
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13410490565345583042
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
        Id: 13960536947789826008
        Name: "Ring - Beveled"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.27896225
          }
        }
        ParentId: 6939353038871195985
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 17053596771740821379
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
        Id: 1935733954685722777
        Name: "Star - Outline"
        Transform {
          Location {
            Z: -2.23415184
          }
          Rotation {
          }
          Scale {
            X: 1.29130399
            Y: 1.29130399
            Z: 0.50811106
          }
        }
        ParentId: 6939353038871195985
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
            Float: 1.84391332
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.1726079
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 13550026693586389789
        Name: "Star - Outline"
        Transform {
          Location {
            Z: 2.09114265
          }
          Rotation {
            Yaw: 29.9999962
          }
          Scale {
            X: 1.53345561
            Y: 1.53345561
            Z: 0.697206616
          }
        }
        ParentId: 6939353038871195985
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
            Float: 4.36269855
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 5.35557747
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 16295656985847671402
        Name: "Medallion"
        Transform {
          Location {
            X: 29.3041668
            Y: 120.726097
            Z: -10.6544962
          }
          Rotation {
            Pitch: 3.79826808
            Yaw: 11.8284941
            Roll: 9.44433594
          }
          Scale {
            X: 0.999997
            Y: 0.999997
            Z: 0.999997
          }
        }
        ParentId: 14794722701161137259
        ChildIds: 10263082739642913815
        ChildIds: 4943748877776211771
        ChildIds: 15974450772919343740
        ChildIds: 637068496769905528
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
        Id: 10263082739642913815
        Name: "Gem - Diamond 6-Sided Polished"
        Transform {
          Location {
            Z: -0.0499191284
          }
          Rotation {
          }
          Scale {
            X: 0.390576094
            Y: 0.390576094
            Z: 0.289087087
          }
        }
        ParentId: 16295656985847671402
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14281127479253422757
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13410490565345583042
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
        Id: 4943748877776211771
        Name: "Ring - Beveled"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.27896225
          }
        }
        ParentId: 16295656985847671402
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 17053596771740821379
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
        Id: 15974450772919343740
        Name: "Star - Outline"
        Transform {
          Location {
            Z: -2.23415184
          }
          Rotation {
          }
          Scale {
            X: 1.29130399
            Y: 1.29130399
            Z: 0.50811106
          }
        }
        ParentId: 16295656985847671402
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
            Float: 2.45703912
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.77870631
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 637068496769905528
        Name: "Star - Outline"
        Transform {
          Location {
            Z: 2.09114265
          }
          Rotation {
            Yaw: 29.9999962
          }
          Scale {
            X: 1.53345561
            Y: 1.53345561
            Z: 0.697206616
          }
        }
        ParentId: 16295656985847671402
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
            Float: 2.45703912
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.77870631
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 12084673695595419732
        Name: "Medallion"
        Transform {
          Location {
            X: 28.6776619
            Y: -120.522926
            Z: -11.924716
          }
          Rotation {
            Pitch: 11.9774809
            Yaw: 47.0441399
            Roll: -2.63330078
          }
          Scale {
            X: 0.999998927
            Y: 0.999998927
            Z: 0.999998927
          }
        }
        ParentId: 14794722701161137259
        ChildIds: 3708589956936169789
        ChildIds: 18266042177763856500
        ChildIds: 11146826437405606436
        ChildIds: 4920078233111936627
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
        Id: 3708589956936169789
        Name: "Gem - Diamond 6-Sided Polished"
        Transform {
          Location {
            Z: -0.0499191284
          }
          Rotation {
          }
          Scale {
            X: 0.390576094
            Y: 0.390576094
            Z: 0.289087087
          }
        }
        ParentId: 12084673695595419732
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14281127479253422757
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13410490565345583042
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
        Id: 18266042177763856500
        Name: "Ring - Beveled"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.27896225
          }
        }
        ParentId: 12084673695595419732
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 17053596771740821379
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
        Id: 11146826437405606436
        Name: "Star - Outline"
        Transform {
          Location {
            Z: -2.23415184
          }
          Rotation {
          }
          Scale {
            X: 1.29130399
            Y: 1.29130399
            Z: 0.50811106
          }
        }
        ParentId: 12084673695595419732
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
            Float: 2.0853126
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.35831451
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 4920078233111936627
        Name: "Star - Outline"
        Transform {
          Location {
            Z: 2.09114265
          }
          Rotation {
            Yaw: 29.9999962
          }
          Scale {
            X: 1.53345561
            Y: 1.53345561
            Z: 0.697206616
          }
        }
        ParentId: 12084673695595419732
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
            Float: 2.0853126
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.35831451
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 16764962354106363222
        Name: "Medallion"
        Transform {
          Location {
            X: -92.0494385
            Y: -193.091248
            Z: -53.7795067
          }
          Rotation {
            Pitch: 22.2329
            Yaw: 15.8294325
            Roll: -8.52374268
          }
          Scale {
            X: 0.999996781
            Y: 0.999996781
            Z: 0.999996781
          }
        }
        ParentId: 14794722701161137259
        ChildIds: 5417975962192092633
        ChildIds: 181627330728192001
        ChildIds: 8208206742111628127
        ChildIds: 16031473513062245024
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
        Id: 5417975962192092633
        Name: "Gem - Diamond 6-Sided Polished"
        Transform {
          Location {
            Z: -0.0499191284
          }
          Rotation {
          }
          Scale {
            X: 0.390576094
            Y: 0.390576094
            Z: 0.289087087
          }
        }
        ParentId: 16764962354106363222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14281127479253422757
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13410490565345583042
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
        Id: 181627330728192001
        Name: "Ring - Beveled"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.27896225
          }
        }
        ParentId: 16764962354106363222
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 17053596771740821379
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
        Id: 8208206742111628127
        Name: "Star - Outline"
        Transform {
          Location {
            Z: -2.23415184
          }
          Rotation {
          }
          Scale {
            X: 1.29130399
            Y: 1.29130399
            Z: 0.50811106
          }
        }
        ParentId: 16764962354106363222
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
            Float: 2.45703912
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
            Id: 11938178055515736038
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
        Id: 16031473513062245024
        Name: "Star - Outline"
        Transform {
          Location {
            Z: 2.09114265
          }
          Rotation {
            Yaw: 29.9999962
          }
          Scale {
            X: 1.53345561
            Y: 1.53345561
            Z: 0.697206616
          }
        }
        ParentId: 16764962354106363222
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
            Float: 2.45703912
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
            Id: 11938178055515736038
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
        Id: 18350077681820308279
        Name: "Medallion"
        Transform {
          Location {
            X: -94.9302216
            Y: 197.388443
            Z: -58.3835411
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 44.243103
            Roll: 28.2827358
          }
          Scale {
            X: 0.999998271
            Y: 0.999998271
            Z: 0.999998271
          }
        }
        ParentId: 14794722701161137259
        ChildIds: 11581952803430411294
        ChildIds: 8729581439526614609
        ChildIds: 9062858009073011921
        ChildIds: 8588620136371138482
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
        Id: 11581952803430411294
        Name: "Gem - Diamond 6-Sided Polished"
        Transform {
          Location {
            Z: -0.0499191284
          }
          Rotation {
          }
          Scale {
            X: 0.390576094
            Y: 0.390576094
            Z: 0.289087087
          }
        }
        ParentId: 18350077681820308279
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14281127479253422757
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13410490565345583042
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
        Id: 8729581439526614609
        Name: "Ring - Beveled"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.27896225
          }
        }
        ParentId: 18350077681820308279
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 17053596771740821379
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
        Id: 9062858009073011921
        Name: "Star - Outline"
        Transform {
          Location {
            Z: -2.23415184
          }
          Rotation {
          }
          Scale {
            X: 1.29130399
            Y: 1.29130399
            Z: 0.50811106
          }
        }
        ParentId: 18350077681820308279
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
            Float: 2.66705751
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.77870631
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 8588620136371138482
        Name: "Star - Outline"
        Transform {
          Location {
            Z: 2.09114265
          }
          Rotation {
            Yaw: 29.9999962
          }
          Scale {
            X: 1.53345561
            Y: 1.53345561
            Z: 0.697206616
          }
        }
        ParentId: 18350077681820308279
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
            Float: 2.66705751
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.77870631
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 13719330122387369163
        Name: "Medallion"
        Transform {
          Location {
            X: 269.322144
            Y: -0.103318557
            Z: -30.8774071
          }
          Rotation {
            Pitch: -11.5366211
            Yaw: 1.06335747e-05
            Roll: 7.67578e-05
          }
          Scale {
            X: 0.999998689
            Y: 0.999998689
            Z: 0.999998689
          }
        }
        ParentId: 14794722701161137259
        ChildIds: 18240747476705105861
        ChildIds: 12561529154965917976
        ChildIds: 9237750418351925464
        ChildIds: 17520425227302579416
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
        Id: 18240747476705105861
        Name: "Gem - Diamond 6-Sided Polished"
        Transform {
          Location {
            Z: -0.0499191284
          }
          Rotation {
          }
          Scale {
            X: 0.390576094
            Y: 0.390576094
            Z: 0.289087087
          }
        }
        ParentId: 13719330122387369163
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14281127479253422757
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13410490565345583042
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
        Id: 12561529154965917976
        Name: "Ring - Beveled"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.27896225
          }
        }
        ParentId: 13719330122387369163
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 17053596771740821379
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
        Id: 9237750418351925464
        Name: "Star - Outline"
        Transform {
          Location {
            Z: -2.23415184
          }
          Rotation {
          }
          Scale {
            X: 1.29130399
            Y: 1.29130399
            Z: 0.50811106
          }
        }
        ParentId: 13719330122387369163
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 17520425227302579416
        Name: "Star - Outline"
        Transform {
          Location {
            Z: 2.09114265
          }
          Rotation {
            Yaw: 29.9999962
          }
          Scale {
            X: 1.53345561
            Y: 1.53345561
            Z: 0.697206616
          }
        }
        ParentId: 13719330122387369163
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11938178055515736038
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
        Id: 2068845187307283047
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: 77.7315521
            Y: 65.2166443
            Z: 4.3040123
          }
          Rotation {
          }
          Scale {
            X: 0.304755121
            Y: 0.304755121
            Z: 0.304755121
          }
        }
        ParentId: 14794722701161137259
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 11033355171769780513
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: -25.4466171
            Y: 178.704971
            Z: -26.4467754
          }
          Rotation {
            Pitch: 5.49695635
            Yaw: 2.04895234
            Roll: 20.4795132
          }
          Scale {
            X: 0.304754972
            Y: 0.304754972
            Z: 0.304754972
          }
        }
        ParentId: 14794722701161137259
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 16124905287457500438
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: 76.5170059
            Y: -67.8276215
            Z: 4.68164349
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 3.98415941e-05
            Roll: -3.83370972
          }
          Scale {
            X: 0.304754972
            Y: 0.304754972
            Z: 0.304754972
          }
        }
        ParentId: 14794722701161137259
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 14596025576605627826
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: -25.5388
            Y: -179.415115
            Z: -24.3799725
          }
          Rotation {
            Pitch: 8.64662266
            Yaw: 1.25620914
            Roll: -11.3511963
          }
          Scale {
            X: 0.304754972
            Y: 0.304754972
            Z: 0.304754972
          }
        }
        ParentId: 14794722701161137259
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 15444804909955894597
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: -160.148529
            Y: -212.115021
            Z: -82.4737854
          }
          Rotation {
            Pitch: 26.9388866
            Yaw: -2.06115723
            Roll: -18.6091919
          }
          Scale {
            X: 0.476720721
            Y: 0.476720721
            Z: 0.476720721
          }
        }
        ParentId: 14794722701161137259
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 9016332364995053781
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: -163.413727
            Y: 218.883606
            Z: -87.9485703
          }
          Rotation {
            Pitch: 25.9417744
            Yaw: -21.6409
            Roll: 4.92814589
          }
          Scale {
            X: 0.476720959
            Y: 0.476720959
            Z: 0.476720959
          }
        }
        ParentId: 14794722701161137259
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 11494725337695893569
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: 191.875183
            Y: -0.0480251908
            Z: -13.9078922
          }
          Rotation {
            Pitch: -8.9034729
            Yaw: 3.52943198e-06
            Roll: 7.72561107e-05
          }
          Scale {
            X: 0.304755121
            Y: 0.304755121
            Z: 0.304755121
          }
        }
        ParentId: 14794722701161137259
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 268632546859843097
        Name: "Cape"
        Transform {
          Location {
            X: 2.15741682
            Y: 0.878325224
            Z: 20.1371288
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: -33.5128975
            Roll: 4.14822534e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12457316888811441237
        ChildIds: 364661518417715100
        ChildIds: 1646398317719188723
        ChildIds: 2534900880147737585
        ChildIds: 13327407519581537904
        ChildIds: 2850654081638533063
        ChildIds: 12733169503430076671
        ChildIds: 13301833484671244904
        ChildIds: 10933639402805969997
        ChildIds: 6151994655325720337
        ChildIds: 4116758031280496178
        ChildIds: 18292499975436012355
        ChildIds: 9322062588005504531
        ChildIds: 11391885723848414177
        ChildIds: 7539013005197264913
        ChildIds: 17018451411161630333
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
        Id: 364661518417715100
        Name: "Horn"
        Transform {
          Location {
            X: -3.91957092
            Y: -23.4612427
            Z: -8.57077
          }
          Rotation {
            Pitch: -25.0804405
            Yaw: -47.0235443
            Roll: 65.345253
          }
          Scale {
            X: 0.116040356
            Y: 0.116040453
            Z: 0.108165935
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
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
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 1646398317719188723
        Name: "Curtains Straight"
        Transform {
          Location {
            X: -25.087326
            Y: -3.90948486
            Z: -43.5868073
          }
          Rotation {
            Yaw: 104.203362
          }
          Scale {
            X: 0.179443926
            Y: 0.0578076728
            Z: 0.124942094
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.357545823
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.24719502
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0800000429
              B: 0.0370861068
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
            Id: 6977568964552625050
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
        Id: 2534900880147737585
        Name: "Horn"
        Transform {
          Location {
            X: -22.0483627
            Y: 1.51086426
            Z: -7.46865845
          }
          Rotation {
            Pitch: 26.2124
            Yaw: -55.9204102
            Roll: 68.8614426
          }
          Scale {
            X: 0.116040818
            Y: 0.116040893
            Z: 0.111070603
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
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
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 13327407519581537904
        Name: "Horn"
        Transform {
          Location {
            X: -23.5146637
            Y: 3.67822266
            Z: -8.75697327
          }
          Rotation {
            Pitch: 42.5014801
            Yaw: -64.4895935
            Roll: 63.9703064
          }
          Scale {
            X: 0.116040818
            Y: 0.116040893
            Z: 0.111070603
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
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
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 2850654081638533063
        Name: "Horn"
        Transform {
          Location {
            X: -5.72039795
            Y: -21.5283813
            Z: -7.3343811
          }
          Rotation {
            Pitch: -8.80087566
            Yaw: -54.4114609
            Roll: 67.5222473
          }
          Scale {
            X: 0.116040356
            Y: 0.116040453
            Z: 0.108165935
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
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
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 12733169503430076671
        Name: "Ring - Quarter"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -12.8448734
            Yaw: -99.8647537
            Roll: -13.9079771
          }
          Scale {
            X: 0.554263353
            Y: 0.554263532
            Z: 0.368246198
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.357545823
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.279557
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 13301833484671244904
        Name: "Ring - Quarter"
        Transform {
          Location {
            X: 2.13344073
            Y: 1.26645708
            Z: -1.79925537
          }
          Rotation {
            Pitch: -12.8448792
            Yaw: -97.9766235
            Roll: -13.9085388
          }
          Scale {
            X: 0.626491249
            Y: 0.626491487
            Z: 0.416233629
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.717968583
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.178056553
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 10933639402805969997
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -21.0537415
            Y: 1.92156982
            Z: -8.18655396
          }
          Rotation {
            Pitch: -78.9145432
            Yaw: 96.4226532
            Roll: -36.5384483
          }
          Scale {
            X: 0.140571028
            Y: 0.188862801
            Z: 0.163794518
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
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
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 6151994655325720337
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -5.820961
            Y: -20.7114868
            Z: -8.18655396
          }
          Rotation {
            Pitch: -81.571785
            Yaw: -87.8284378
            Roll: -84.9583282
          }
          Scale {
            X: 0.140570953
            Y: 0.188862756
            Z: 0.2229525
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
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
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 4116758031280496178
        Name: "Curtains Straight"
        Transform {
          Location {
            X: -14.2405472
            Y: -20.8495483
            Z: -43.5868073
          }
          Rotation {
            Yaw: 141.967712
          }
          Scale {
            X: 0.179443926
            Y: 0.0578076728
            Z: 0.124942094
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.357545823
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.24719502
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0800000429
              B: 0.0370861068
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
            Id: 6977568964552625050
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
        Id: 18292499975436012355
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -18.085083
            Y: -7.52642822
            Z: -9.58105469
          }
          Rotation {
            Pitch: -72.6070404
            Yaw: 23.4556141
            Roll: 83.2632828
          }
          Scale {
            X: 0.140571043
            Y: 0.159599274
            Z: 0.163794383
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
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
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 9322062588005504531
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            X: -11.4677877
            Y: -16.5734596
            Z: -9.30519104
          }
          Rotation {
            Pitch: -72.6064758
            Yaw: 46.9972687
            Roll: 83.2624893
          }
          Scale {
            X: 0.140570968
            Y: 0.159599051
            Z: 0.203783602
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
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
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 11391885723848414177
        Name: "Ring - Quarter"
        Transform {
          Location {
            X: -14.8805771
            Y: -10.1092911
            Z: -13.6015015
          }
          Rotation {
            Pitch: -0.013092041
            Yaw: -53.2151794
            Roll: -52.3498535
          }
          Scale {
            X: 0.408032566
            Y: 0.325178295
            Z: 0.286701232
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.227729484
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 7539013005197264913
        Name: "Ring - Quarter"
        Transform {
          Location {
            X: -11.3096962
            Y: -10.5824471
            Z: -10.6287537
          }
          Rotation {
            Pitch: 9.30836582
            Yaw: -56.9034424
            Roll: -21.7025757
          }
          Scale {
            X: 0.408031225
            Y: 0.27160421
            Z: 0.489696503
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.227729484
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 17018451411161630333
        Name: "Ring - Quarter"
        Transform {
          Location {
            X: -13.3328037
            Y: -6.76381207
            Z: -15.514801
          }
          Rotation {
            Pitch: -27.7684631
            Yaw: -53.1738281
            Roll: -19.1456604
          }
          Scale {
            X: 0.408032149
            Y: 0.271603
            Z: 0.406360865
          }
        }
        ParentId: 268632546859843097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13560184903873632544
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.227729484
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.257543117
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0800000429
              B: 0.0370861068
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
        Id: 6900502683857656426
        Name: "Satchel"
        Transform {
          Location {
            X: 6.67477274
            Y: 30.995
            Z: -69.2030487
          }
          Rotation {
            Pitch: -9.61825562
            Yaw: 177.957
            Roll: -3.18457031
          }
          Scale {
            X: 0.884456515
            Y: 0.884456515
            Z: 0.884456515
          }
        }
        ParentId: 12457316888811441237
        ChildIds: 10552018046343694237
        ChildIds: 2041826389800942832
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
        Id: 10552018046343694237
        Name: "Strap"
        Transform {
          Location {
            X: 4.35937405
            Y: 30.0711021
            Z: 13.8114491
          }
          Rotation {
            Yaw: 2.18847802e-07
            Roll: -30.9081421
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6900502683857656426
        ChildIds: 4348196762232189582
        ChildIds: 6103351430960715695
        ChildIds: 7928445839071088630
        ChildIds: 7271117590088990514
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
        Id: 4348196762232189582
        Name: "Manticore Logo"
        Transform {
          Location {
            X: -23.1614304
            Y: 16.399559
            Z: 61.0564804
          }
          Rotation {
            Pitch: -23.8745117
            Yaw: 85.3441925
            Roll: 73.2153091
          }
          Scale {
            X: 0.0543594
            Y: 0.0543591306
            Z: 0.284457743
          }
        }
        ParentId: 10552018046343694237
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 6103351430960715695
        Name: "Strap"
        Transform {
          Location {
            X: -7.79423
            Y: 21.5426044
            Z: 74.7407227
          }
          Rotation {
            Pitch: 7.11567688
            Yaw: 6.39555454
            Roll: 125.598404
          }
          Scale {
            X: 0.208871439
            Y: 0.124583445
            Z: 0.0649893805
          }
        }
        ParentId: 10552018046343694237
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3462632205505346671
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.923382878
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.383361787
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7646486682504338874
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
        Id: 7928445839071088630
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: 11.5491524
            Y: 5.07691956
            Z: 43.4066849
          }
          Rotation {
            Pitch: 33.508091
            Yaw: -94.815155
            Roll: -23.3805542
          }
          Scale {
            X: 0.830293536
            Y: 0.816783965
            Z: 2.4813633
          }
        }
        ParentId: 10552018046343694237
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1848963245568864173
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 3462632205505346671
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 10.4780645
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 14.154274
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 7271117590088990514
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: -13.7587376
            Y: 0.448364258
            Z: 37.3381577
          }
          Rotation {
            Pitch: -33.5079651
            Yaw: 85.1845169
            Roll: 1.80405092
          }
          Scale {
            X: 0.830293536
            Y: 0.816783965
            Z: 2.4813633
          }
        }
        ParentId: 10552018046343694237
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1848963245568864173
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 3462632205505346671
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.489583343
              G: 0.173172042
              B: 0.0586480126
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
            Id: 5649559338683583195
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
        Id: 2041826389800942832
        Name: "Bag"
        Transform {
          Location {
            X: 9.47525597
            Y: 7.33273697
            Z: 10.670085
          }
          Rotation {
            Pitch: 12.3807964
            Yaw: -1.27890015
            Roll: -13.0364075
          }
          Scale {
            X: 1.13395274
            Y: 1.13395274
            Z: 1.13395274
          }
        }
        ParentId: 6900502683857656426
        ChildIds: 6384623157028888156
        ChildIds: 10303796096895934351
        ChildIds: 1495541493160952569
        ChildIds: 9048564883345813736
        ChildIds: 7044212800113495376
        ChildIds: 16190350317651313791
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
        Id: 6384623157028888156
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: 0.621795654
            Y: 1.56069946
            Z: 2.84495544
          }
          Rotation {
            Roll: 18.9337196
          }
          Scale {
            X: 0.426550359
            Y: 0.120290995
            Z: 0.289946496
          }
        }
        ParentId: 2041826389800942832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3462632205505346671
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.68498027
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.2473501
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2007256510569021566
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
        Id: 10303796096895934351
        Name: "Fantasy Shield Strap 01"
        Transform {
          Location {
            X: 0.987516284
            Y: 4.12055826
            Z: 17.5398121
          }
          Rotation {
            Pitch: 4.53782034
            Yaw: -88.7193604
            Roll: -88.5834351
          }
          Scale {
            X: 0.597104609
            Y: 0.597104609
            Z: 0.597104609
          }
        }
        ParentId: 2041826389800942832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 1495541493160952569
        Name: "Lid"
        Transform {
          Location {
            X: 0.350006104
            Y: 1.49761963
            Z: 5.94821167
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2041826389800942832
        ChildIds: 10535855664749410965
        ChildIds: 2493489922091859310
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
        Id: 10535855664749410965
        Name: "Pipe - Quarter Thin"
        Transform {
          Location {
            X: -20.2835388
            Y: -0.952758789
          }
          Rotation {
            Pitch: -81.9405518
            Yaw: -88.4429
            Roll: 88.8887329
          }
          Scale {
            X: 0.264344394
            Y: 0.0967243239
            Z: 0.410476893
          }
        }
        ParentId: 1495541493160952569
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3462632205505346671
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.881634116
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 3.07473779
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.317708343
              G: 0.129387215
              B: 0.061225038
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
            Id: 14451595530263497460
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
        Id: 2493489922091859310
        Name: "Pipe - Quarter Thin"
        Transform {
          Location {
            X: 20.2835693
            Y: 0.952758789
            Z: 6.27727509
          }
          Rotation {
            Pitch: -87.8278503
            Yaw: -85.3449326
            Roll: -94.2036514
          }
          Scale {
            X: 0.13811627
            Y: 0.173853189
            Z: 0.410476297
          }
        }
        ParentId: 1495541493160952569
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13761796555206813823
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
            Id: 17871396240059270159
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
        Id: 9048564883345813736
        Name: "Sign Bracket - Round"
        Transform {
          Location {
            X: 0.0986328125
            Y: -4.21188354
            Z: 4.13315582
          }
          Rotation {
            Pitch: 0.400501788
            Yaw: 1.65236759
            Roll: 18.7139931
          }
          Scale {
            X: 0.386877716
            Y: 0.194901526
            Z: 0.386877775
          }
        }
        ParentId: 2041826389800942832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 6621828543054646629
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
        Id: 7044212800113495376
        Name: "Closure"
        Transform {
          Location {
            X: 0.11895752
            Y: -5.49264526
          }
          Rotation {
            Roll: 30.901783
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2041826389800942832
        ChildIds: 7893810085549781257
        ChildIds: 17914419540997774404
        ChildIds: 6437533202423439677
        ChildIds: 14848078828563400888
        ChildIds: 7124267784970529221
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
        Id: 7893810085549781257
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            Y: 5.14531708
            Z: 10.1311808
          }
          Rotation {
            Pitch: 61.4507103
            Yaw: -89.9996338
            Roll: -89.9996338
          }
          Scale {
            X: 0.294243872
            Y: 0.195145547
            Z: 0.195843965
          }
        }
        ParentId: 7044212800113495376
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.74206114
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.84833896
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 17914419540997774404
        Name: "Ring - Extra Thick"
        Transform {
          Location {
            Y: -1.38920498
            Z: 0.473578632
          }
          Rotation {
            Pitch: 75.8752213
            Yaw: -89.9994202
            Roll: -89.9993591
          }
          Scale {
            X: 0.0900008529
            Y: 0.0250282735
            Z: 0.0900007933
          }
        }
        ParentId: 7044212800113495376
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.84833896
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.472094268
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 6437533202423439677
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 89.9999466
            Roll: 97.6491318
          }
          Scale {
            X: 0.0390559137
            Y: 0.0390557162
            Z: 0.0524475425
          }
        }
        ParentId: 7044212800113495376
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
            Float: 3.7026639
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 3.27403688
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 14848078828563400888
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: -89.9996338
            Roll: 97.5676804
          }
          Scale {
            X: 0.0390559137
            Y: 0.0390557162
            Z: 0.0524475425
          }
        }
        ParentId: 7044212800113495376
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
            Float: 3.7026639
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 3.27403688
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 7124267784970529221
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            Y: 2.68565702
            Z: 14.2406874
          }
          Rotation {
            Pitch: 61.4511795
            Yaw: -89.9996643
            Roll: 90.0001526
          }
          Scale {
            X: 0.188481018
            Y: 0.195145011
            Z: 0.195843965
          }
        }
        ParentId: 7044212800113495376
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13761796555206813823
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.252795279
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
        Id: 16190350317651313791
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: 0.62178123
            Y: 4.55930519
            Z: 9.38959503
          }
          Rotation {
            Yaw: 0.00015214739
            Roll: 19.133934
          }
          Scale {
            X: 0.442891032
            Y: 0.0912924185
            Z: 0.148558781
          }
        }
        ParentId: 2041826389800942832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 284970304952400506
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.132270351
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.129245624
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0885416642
              G: 0.0380298048
              B: 0.0156267341
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
            Id: 2007256510569021566
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
        Id: 13879121867550805143
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
        ParentId: 7409618946245289721
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
        Id: 17631115579134591934
        Name: "AnimatedMesh"
        Transform {
          Location {
            Z: 126
          }
          Rotation {
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 7409618946245289721
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
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14247879825147835731
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11034401590223327193
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
      Id: 16372496464315477095
      Name: "Ring - Beveled Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_003"
      }
    }
    Assets {
      Id: 14519065406787674128
      Name: "Star - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_star_chubby_001"
      }
    }
    Assets {
      Id: 990344647068844639
      Name: "Ring - Beveled"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_001"
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
      Id: 13410490565345583042
      Name: "Gem - Diamond 6-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_diamond_6_sided_polished_001"
      }
    }
    Assets {
      Id: 17053596771740821379
      Name: "Ring - Beveled Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_002"
      }
    }
    Assets {
      Id: 11938178055515736038
      Name: "Star - Outline"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_star_outline_001"
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
      Id: 13560184903873632544
      Name: "Moss 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_moss_001_uv"
      }
    }
    Assets {
      Id: 6977568964552625050
      Name: "Curtains Straight"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_curtain_02"
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
      Id: 2901702164758099337
      Name: "Ring - Extra Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_006"
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
      Id: 4873121214410681542
      Name: "Manticore Logo"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_logo_manticore_01"
      }
    }
    Assets {
      Id: 7646486682504338874
      Name: "Pipe - Half Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half-pipe_003"
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
      Id: 2007256510569021566
      Name: "Cube - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_rounded_002"
      }
    }
    Assets {
      Id: 10291375382347379579
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 14451595530263497460
      Name: "Pipe - Quarter Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter-pipe_002"
      }
    }
    Assets {
      Id: 17871396240059270159
      Name: "Pipe - Quarter"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter-pipe_001"
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
      Id: 6621828543054646629
      Name: "Sign Bracket - Round"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_signbracket_round_001"
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
      Id: 853087330042215159
      Name: "Bone Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bone_raw_001_uv_ref"
      }
    }
    Assets {
      Id: 284970304952400506
      Name: "Leather Tufted 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fabric_tufted_001_uv_ref"
      }
    }
    Assets {
      Id: 11034401590223327193
      Name: "Fantasy Human Guy 2"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_human_guy_fantasy_003_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
