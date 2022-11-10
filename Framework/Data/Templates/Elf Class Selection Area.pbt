Assets {
  Id: 17438833840976829517
  Name: "Elf Class Selection Area"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12295150610950578052
      Objects {
        Id: 12295150610950578052
        Name: "Elf Class Selection Area"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16937607096047638534
        ChildIds: 5651898751047574163
        ChildIds: 7178602346230973161
        ChildIds: 14180922740616031370
        ChildIds: 5145801805166039320
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
        Id: 5651898751047574163
        Name: "MMOSafeZone"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -1.36603794e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12295150610950578052
        ChildIds: 11752528963731076593
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 11752528963731076593
            }
          }
          Overrides {
            Name: "cs:ZoneName"
            String: "Bag Selection Screen"
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
            Id: 7595779808583929273
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11752528963731076593
        Name: "SafeZone Trigger"
        Transform {
          Location {
            X: 450.272125
            Y: -114.145737
            Z: 100
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 8
            Z: 3
          }
        }
        ParentId: 5651898751047574163
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
        Id: 7178602346230973161
        Name: "Spawn Point"
        Transform {
          Location {
            X: 459.26355
            Y: -24.8502331
            Z: 128
          }
          Rotation {
            Yaw: -37.640564
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12295150610950578052
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        PlayerSpawnPoint {
          TeamInt: 1
          PlayerScaleMultiplier: 1
          SpawnKey: "BagSelection"
          SpawnEffectsTemplate {
            Id: 841534158063459245
          }
          ShouldDecrowdPlayers: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14180922740616031370
        Name: "Floor"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -130.303406
          }
          Scale {
            X: 18.0755596
            Y: 18.0755596
            Z: 0.54022342
          }
        }
        ParentId: 12295150610950578052
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18198612390204212876
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.651041687
              G: 0.651041687
              B: 0.651041687
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
            Id: 10777523509111713302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5145801805166039320
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
        ParentId: 12295150610950578052
        ChildIds: 14049161596096041219
        ChildIds: 1648371588411962591
        ChildIds: 17754174449654312371
        ChildIds: 4948063215505413501
        ChildIds: 7563429377744845840
        ChildIds: 17028544406318149871
        ChildIds: 3520886091652075803
        ChildIds: 9845372602283348891
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          DetailRelevance {
            Value: "mc:edetaillevel:low"
          }
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
        Id: 14049161596096041219
        Name: "MergedModel"
        Transform {
          Location {
            X: -5700.99512
            Y: -669.7677
            Z: -14261.5781
          }
          Rotation {
            Yaw: 15.0536423
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5145801805166039320
        ChildIds: 16962009909230882681
        ChildIds: 9758763284856313556
        ChildIds: 3089025726690723662
        ChildIds: 10777530408515088074
        ChildIds: 17584998638173553449
        ChildIds: 4960040689332322575
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
          Model {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:high"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16962009909230882681
        Name: "Palm_Tree_kelp_01_new"
        Transform {
          Location {
            X: 5830.0957
            Y: 1017.74463
            Z: 14127.3936
          }
          Rotation {
            Pitch: 22.4642239
            Yaw: 93.7449493
            Roll: 7.19223309
          }
          Scale {
            X: 0.97847724
            Y: 0.97847724
            Z: 0.97847724
          }
        }
        ParentId: 14049161596096041219
        ChildIds: 16857845492160599292
        ChildIds: 1088614889655079241
        ChildIds: 5486834643783726178
        ChildIds: 1013313900570226131
        ChildIds: 15032199243990568331
        ChildIds: 11419108387163607778
        ChildIds: 9025485683632389353
        ChildIds: 4221357783600240426
        ChildIds: 263874342368941852
        ChildIds: 17819427677467699969
        ChildIds: 5330509653777282735
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
        Id: 16857845492160599292
        Name: "Teardrop - Truncated"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: 2.77476465e-06
            Roll: -1.19861797e-05
          }
          Scale {
            X: 1.39091361
            Y: 1.39091361
            Z: 5.10751343
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8220563240647999580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.285120934
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.59300232
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 3702365963781758101
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1088614889655079241
        Name: "Bush Green 01"
        Transform {
          Location {
            X: 0.8828125
            Y: -2.6171875
            Z: 795.653809
          }
          Rotation {
            Pitch: -0.0128202643
            Yaw: 1.02504563
            Roll: -159.300491
          }
          Scale {
            X: 0.419044316
            Y: 0.293457508
            Z: 0.526468873
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.100000024
              G: 0.04406045
              B: 0.0203125048
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5486834643783726178
        Name: "Bush Green 01"
        Transform {
          Location {
            X: -18.0371094
            Y: 84.5117188
            Z: 915.015381
          }
          Rotation {
            Pitch: 10.2478924
            Yaw: 7.62842464
            Roll: -142.11084
          }
          Scale {
            X: 0.422923744
            Y: 0.422924638
            Z: 0.635927379
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.100000024
              G: 0.04406045
              B: 0.0203125048
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1013313900570226131
        Name: "Bush Green 01"
        Transform {
          Location {
            X: 48.6015625
            Y: 54.6464844
            Z: 1166.27856
          }
          Rotation {
            Pitch: -6.45387268
            Yaw: 0.307067931
            Roll: -173.625885
          }
          Scale {
            X: 0.637665093
            Y: 0.637666225
            Z: 0.958822131
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.100000024
              G: 0.04406045
              B: 0.0203125048
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15032199243990568331
        Name: "Horn"
        Transform {
          Location {
            X: 0.9140625
            Y: -0.4296875
            Z: 709.269531
          }
          Rotation {
            Pitch: 4.75353813
            Yaw: -84.4660492
            Roll: 2.90210509
          }
          Scale {
            X: 0.784117103
            Y: 0.777814507
            Z: 2.92030454
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8220563240647999580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.295751333
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.18859982
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11419108387163607778
        Name: "Horn"
        Transform {
          Location {
            X: 35.5234375
            Y: 37.6308594
            Z: 1061.09424
          }
          Rotation {
            Pitch: -11.6220512
            Yaw: -151.020325
            Roll: 16.1558456
          }
          Scale {
            X: 0.299942225
            Y: 0.299942225
            Z: 0.511068702
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5512000712628422335
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.416666657
              G: 0.346360147
              B: 0.290499628
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
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9025485683632389353
        Name: "Horn"
        Transform {
          Location {
            X: 49.1738281
            Y: 44.3476562
            Z: 1123.90576
          }
          Rotation {
            Pitch: -1.95551717
            Yaw: 157.524506
            Roll: -8.44107151
          }
          Scale {
            X: 0.223520085
            Y: 0.223528221
            Z: 0.69232589
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5512000712628422335
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.791666687
              G: 0.658084333
              B: 0.551949322
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
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4221357783600240426
        Name: "Fern 03"
        Transform {
          Location {
            X: 38.9414062
            Y: 39.9941406
            Z: 1109.49121
          }
          Rotation {
            Pitch: -6.82326317
            Yaw: -41.5188713
            Roll: 19.885479
          }
          Scale {
            X: 2.54142141
            Y: 2.54141855
            Z: 2.39355087
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 532304363034804995
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 12416815806534727809
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 263874342368941852
        Name: "Fern 03"
        Transform {
          Location {
            X: 43.6210938
            Y: 54.7363281
            Z: 1134.57324
          }
          Rotation {
            Pitch: 1.02307343
            Yaw: -45.2230606
            Roll: 31.0987129
          }
          Scale {
            X: 2.90592861
            Y: 2.90592551
            Z: 3.38072848
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 532304363034804995
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 1984553197323830660
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17819427677467699969
        Name: "Fern 03"
        Transform {
          Location {
            X: -12.3242188
            Y: 77.4375
            Z: 925.193115
          }
          Rotation {
            Pitch: 23.0329876
            Yaw: -135.679138
            Roll: -42.953331
          }
          Scale {
            X: 1.79650187
            Y: 1.79650843
            Z: 3.37851739
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 532304363034804995
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 1984553197323830660
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5330509653777282735
        Name: "Horn"
        Transform {
          Location {
            X: 0.9140625
            Y: 10.3066406
            Z: 782.44043
          }
          Rotation {
            Pitch: 2.91541839
            Yaw: 0.976737261
            Roll: 17.7615318
          }
          Scale {
            X: 0.59924686
            Y: 0.594422519
            Z: 1.22857702
          }
        }
        ParentId: 16962009909230882681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8220563240647999580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.183762923
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.396376163
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9758763284856313556
        Name: "Palm_Tree_kelp_01_new"
        Transform {
          Location {
            X: 5864.16
            Y: 915.477051
            Z: 14188.0078
          }
          Rotation {
            Yaw: -15.4721985
          }
          Scale {
            X: 1.10803139
            Y: 1.10803139
            Z: 1.10803139
          }
        }
        ParentId: 14049161596096041219
        ChildIds: 1337069616330135601
        ChildIds: 1645549908401474185
        ChildIds: 11063720724446850963
        ChildIds: 5877355048686081783
        ChildIds: 14602561660816510279
        ChildIds: 9866934607637187243
        ChildIds: 3247674554080814072
        ChildIds: 12544808658636884865
        ChildIds: 10021696296361075610
        ChildIds: 4969004533519106573
        ChildIds: 14016581586247893056
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
        Id: 1337069616330135601
        Name: "Teardrop - Truncated"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: 2.77476465e-06
            Roll: -1.19861797e-05
          }
          Scale {
            X: 1.39091361
            Y: 1.39091361
            Z: 5.10751343
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8220563240647999580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.285120934
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.59300232
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.416666657
              G: 0.391929686
              B: 0.303819418
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
            Id: 3702365963781758101
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1645549908401474185
        Name: "Bush Green 01"
        Transform {
          Location {
            X: 0.8828125
            Y: -2.6171875
            Z: 795.653809
          }
          Rotation {
            Pitch: -0.0128202643
            Yaw: 1.02504563
            Roll: -159.300491
          }
          Scale {
            X: 0.419044316
            Y: 0.293457508
            Z: 0.526468873
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.100000024
              G: 0.04406045
              B: 0.0203125048
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11063720724446850963
        Name: "Bush Green 01"
        Transform {
          Location {
            X: -18.0371094
            Y: 84.5117188
            Z: 915.015381
          }
          Rotation {
            Pitch: 10.2478924
            Yaw: 7.62842464
            Roll: -142.11084
          }
          Scale {
            X: 0.422923744
            Y: 0.422924638
            Z: 0.635927379
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0677083358
              G: 0.0298325904
              B: 0.0137532558
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5877355048686081783
        Name: "Bush Green 01"
        Transform {
          Location {
            X: 48.6015625
            Y: 54.6464844
            Z: 1166.27856
          }
          Rotation {
            Pitch: -6.45387268
            Yaw: 0.307067931
            Roll: -173.625885
          }
          Scale {
            X: 0.637665093
            Y: 0.637666225
            Z: 0.958822131
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0677083358
              G: 0.0298325904
              B: 0.0137532558
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14602561660816510279
        Name: "Horn"
        Transform {
          Location {
            X: 0.9140625
            Y: -0.4296875
            Z: 709.269531
          }
          Rotation {
            Pitch: 4.75353813
            Yaw: -84.4660492
            Roll: 2.90210509
          }
          Scale {
            X: 0.784117103
            Y: 0.777814507
            Z: 2.92030454
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8220563240647999580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.295751333
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.18859982
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.416666657
              G: 0.391929686
              B: 0.303819418
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
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9866934607637187243
        Name: "Horn"
        Transform {
          Location {
            X: 35.5234375
            Y: 37.6308594
            Z: 1061.09424
          }
          Rotation {
            Pitch: -11.6220512
            Yaw: -151.020325
            Roll: 16.1558456
          }
          Scale {
            X: 0.299942225
            Y: 0.299942225
            Z: 0.511068702
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5512000712628422335
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.416666657
              G: 0.346360147
              B: 0.290499628
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
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3247674554080814072
        Name: "Horn"
        Transform {
          Location {
            X: 49.1738281
            Y: 44.3476562
            Z: 1123.90576
          }
          Rotation {
            Pitch: -1.95551717
            Yaw: 157.524506
            Roll: -8.44107151
          }
          Scale {
            X: 0.223520085
            Y: 0.223528221
            Z: 0.69232589
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5512000712628422335
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.791666687
              G: 0.658084333
              B: 0.551949322
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
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12544808658636884865
        Name: "Fern 03"
        Transform {
          Location {
            X: 38.9414062
            Y: 39.9941406
            Z: 1109.49121
          }
          Rotation {
            Pitch: -6.82326317
            Yaw: -41.5188713
            Roll: 19.885479
          }
          Scale {
            X: 2.54142141
            Y: 2.54141855
            Z: 2.39355087
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 532304363034804995
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 12416815806534727809
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10021696296361075610
        Name: "Fern 03"
        Transform {
          Location {
            X: 43.6210938
            Y: 54.7363281
            Z: 1134.57324
          }
          Rotation {
            Pitch: 1.02307343
            Yaw: -45.2230606
            Roll: 31.0987129
          }
          Scale {
            X: 2.90592861
            Y: 2.90592551
            Z: 3.38072848
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 2152887979477253565
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 1984553197323830660
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4969004533519106573
        Name: "Fern 03"
        Transform {
          Location {
            X: -12.3242188
            Y: 77.4375
            Z: 925.193115
          }
          Rotation {
            Pitch: 23.0329876
            Yaw: -135.679138
            Roll: -42.953331
          }
          Scale {
            X: 1.79650187
            Y: 1.79650843
            Z: 3.37851739
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 532304363034804995
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 1984553197323830660
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14016581586247893056
        Name: "Horn"
        Transform {
          Location {
            X: 0.9140625
            Y: 10.3066406
            Z: 782.44043
          }
          Rotation {
            Pitch: 2.91541839
            Yaw: 0.976737261
            Roll: 17.7615318
          }
          Scale {
            X: 0.59924686
            Y: 0.594422519
            Z: 1.22857702
          }
        }
        ParentId: 9758763284856313556
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8220563240647999580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.183762923
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.396376163
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3089025726690723662
        Name: "Palm_Tree_kelp_01_new"
        Transform {
          Location {
            X: 6035.78125
            Y: 1113.51807
            Z: 14127.3936
          }
          Rotation {
            Pitch: -18.9303894
            Yaw: -100.645416
            Roll: 17.192194
          }
          Scale {
            X: 0.773502648
            Y: 0.773502648
            Z: 0.773502648
          }
        }
        ParentId: 14049161596096041219
        ChildIds: 3057076981711733678
        ChildIds: 2440581374726194879
        ChildIds: 9471057392426754183
        ChildIds: 1954157048663299640
        ChildIds: 2338500784773450397
        ChildIds: 11148562045714837796
        ChildIds: 16807706118117990978
        ChildIds: 1409846757402518276
        ChildIds: 14534689172049446378
        ChildIds: 5231326138102330575
        ChildIds: 13008629282406871864
        ChildIds: 17682078485700922100
        ChildIds: 10816637116452513822
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
        Id: 3057076981711733678
        Name: "Teardrop - Truncated"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: 2.77476465e-06
            Roll: -1.19861797e-05
          }
          Scale {
            X: 1.39091361
            Y: 1.39091361
            Z: 5.10751343
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8220563240647999580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.285120934
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.59300232
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 3702365963781758101
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2440581374726194879
        Name: "Bush Green 01"
        Transform {
          Location {
            X: 0.8828125
            Y: -2.6171875
            Z: 795.653809
          }
          Rotation {
            Pitch: -0.0128202643
            Yaw: 1.02504563
            Roll: -159.300491
          }
          Scale {
            X: 0.419044316
            Y: 0.293457508
            Z: 0.526468873
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.100000024
              G: 0.04406045
              B: 0.0203125048
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9471057392426754183
        Name: "Sphere"
        Transform {
          Location {
            X: 8.91796875
            Y: 68.921875
            Z: 1096.4082
          }
          Rotation {
            Pitch: 5.63401079
            Yaw: -3.00592089
            Roll: -28.1413174
          }
          Scale {
            X: 0.767500818
            Y: 0.767500818
            Z: 0.767500818
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1964254608213071037
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.708333313
              G: 0.708333313
              B: 0.708333313
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
            Id: 3179843506183788979
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1954157048663299640
        Name: "Bush Green 01"
        Transform {
          Location {
            X: -18.0371094
            Y: 84.5117188
            Z: 915.015381
          }
          Rotation {
            Pitch: 10.2478924
            Yaw: 7.62842464
            Roll: -142.11084
          }
          Scale {
            X: 0.422923744
            Y: 0.422924638
            Z: 0.635927379
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.100000024
              G: 0.04406045
              B: 0.0203125048
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2338500784773450397
        Name: "Sphere"
        Transform {
          Location {
            X: -36.1660156
            Y: 103.810547
            Z: 917.238037
          }
          Rotation {
            Pitch: 5.63401079
            Yaw: -3.00592089
            Roll: 8.24372578
          }
          Scale {
            X: 0.767500818
            Y: 0.767500818
            Z: 0.767500818
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1964254608213071037
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.708333313
              G: 0.708333313
              B: 0.708333313
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
            Id: 3179843506183788979
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11148562045714837796
        Name: "Bush Green 01"
        Transform {
          Location {
            X: 48.6015625
            Y: 54.6464844
            Z: 1166.27856
          }
          Rotation {
            Pitch: -6.45387268
            Yaw: 0.307067931
            Roll: -173.625885
          }
          Scale {
            X: 0.637665093
            Y: 0.637666225
            Z: 0.958822131
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.100000024
              G: 0.04406045
              B: 0.0203125048
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16807706118117990978
        Name: "Horn"
        Transform {
          Location {
            X: 0.9140625
            Y: -0.4296875
            Z: 709.269531
          }
          Rotation {
            Pitch: 4.75353813
            Yaw: -84.4660492
            Roll: 2.90210509
          }
          Scale {
            X: 0.784117103
            Y: 0.777814507
            Z: 2.92030454
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8220563240647999580
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.295751333
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.18859982
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1409846757402518276
        Name: "Horn"
        Transform {
          Location {
            X: 35.5234375
            Y: 37.6308594
            Z: 1061.09424
          }
          Rotation {
            Pitch: -11.6220512
            Yaw: -151.020325
            Roll: 16.1558456
          }
          Scale {
            X: 0.299942225
            Y: 0.299942225
            Z: 0.511068702
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5512000712628422335
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.416666657
              G: 0.346360147
              B: 0.290499628
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
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14534689172049446378
        Name: "Horn"
        Transform {
          Location {
            X: 49.1738281
            Y: 44.3476562
            Z: 1123.90576
          }
          Rotation {
            Pitch: -1.95551717
            Yaw: 157.524506
            Roll: -8.44107151
          }
          Scale {
            X: 0.223520085
            Y: 0.223528221
            Z: 0.69232589
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5512000712628422335
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.791666687
              G: 0.658084333
              B: 0.551949322
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
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5231326138102330575
        Name: "Fern 03"
        Transform {
          Location {
            X: 38.9414062
            Y: 39.9941406
            Z: 1109.49121
          }
          Rotation {
            Pitch: -6.82326317
            Yaw: -41.5188713
            Roll: 19.885479
          }
          Scale {
            X: 2.54142141
            Y: 2.54141855
            Z: 2.39355087
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 532304363034804995
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 12416815806534727809
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13008629282406871864
        Name: "Fern 03"
        Transform {
          Location {
            X: 43.6210938
            Y: 54.7363281
            Z: 1134.57324
          }
          Rotation {
            Pitch: 1.02307343
            Yaw: -45.2230606
            Roll: 31.0987129
          }
          Scale {
            X: 2.90592861
            Y: 2.90592551
            Z: 3.38072848
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 532304363034804995
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 1984553197323830660
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17682078485700922100
        Name: "Fern 03"
        Transform {
          Location {
            X: -12.3242188
            Y: 77.4375
            Z: 925.193115
          }
          Rotation {
            Pitch: 23.0329876
            Yaw: -135.679138
            Roll: -42.953331
          }
          Scale {
            X: 1.79650187
            Y: 1.79650843
            Z: 3.37851739
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 532304363034804995
            }
          }
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.0797902197
              G: 0.159999967
              B: 0.0191666652
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
            Id: 1984553197323830660
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10816637116452513822
        Name: "Horn"
        Transform {
          Location {
            X: 0.9140625
            Y: 10.3066406
            Z: 782.44043
          }
          Rotation {
            Pitch: 2.91541839
            Yaw: 0.976737261
            Roll: 17.7615318
          }
          Scale {
            X: 0.59924686
            Y: 0.594422519
            Z: 1.22857702
          }
        }
        ParentId: 3089025726690723662
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17938161672663144037
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.183762923
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.396376163
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 114278397929005302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10777530408515088074
        Name: "Plant_flower_part_02"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14049161596096041219
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 5652087806941531378
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 6894922659357543217
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 13596306798365901416
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 15917029441460979278
            value {
              Overrides {
                Name: "Name"
                String: "Plant_flower_part_02"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: 5932.95117
                  Y: 885.96582
                  Z: 15415.8154
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Pitch: 10.5479975
                  Yaw: 19.1850071
                  Roll: -42.0323181
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 2.85910082
                  Y: 2.85910082
                  Z: 2.85910082
                }
              }
            }
          }
          TemplateAsset {
            Id: 3588891595602626762
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17584998638173553449
        Name: "Plant_part_02"
        Transform {
          Location {
            X: 5869.74609
            Y: 913.180664
            Z: 15448.0146
          }
          Rotation {
            Pitch: 41.7026787
            Yaw: 29.3027401
            Roll: 9.04446125
          }
          Scale {
            X: 2.08244014
            Y: 2.08244014
            Z: 2.08244014
          }
        }
        ParentId: 14049161596096041219
        ChildIds: 7228168106968377594
        ChildIds: 7233928382722383330
        ChildIds: 6349365978905659989
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
        Id: 7228168106968377594
        Name: "Coral Table 02"
        Transform {
          Location {
            X: -0.291015625
            Y: 1.11132812
          }
          Rotation {
            Pitch: -9.50164604
            Yaw: -4.50369549
            Roll: -14.2630844
          }
          Scale {
            X: 0.19532384
            Y: 0.19532384
            Z: 0.744195163
          }
        }
        ParentId: 17584998638173553449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.570000052
              B: 0.215165272
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16167680134006870113
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13161146325196931920
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7233928382722383330
        Name: "Coral Tubes Small"
        Transform {
          Location {
            X: 0.799241722
            Y: -1.83661485
            Z: 3.48285985
          }
          Rotation {
            Pitch: 2.75285983
            Yaw: 30.3989334
            Roll: -15.5359192
          }
          Scale {
            X: 0.194210961
            Y: 0.194210961
            Z: 0.37800464
          }
        }
        ParentId: 17584998638173553449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15891502903232153966
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14281826121533999733
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6349365978905659989
        Name: "Coral Table 02"
        Transform {
          Location {
            X: -0.217055246
            Y: 0.730286
            Z: 0.0889320895
          }
          Rotation {
            Pitch: 0.82514143
            Yaw: 30.4888878
            Roll: -17.5620422
          }
          Scale {
            X: 0.165388197
            Y: 0.165415034
            Z: 0.9022246
          }
        }
        ParentId: 17584998638173553449
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16167680134006870113
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13161146325196931920
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4960040689332322575
        Name: "Plant_part_02"
        Transform {
          Location {
            X: 5718.39062
            Y: 605.853271
            Z: 15152.2
          }
          Rotation {
            Pitch: 45.5884705
            Yaw: 100.353119
            Roll: -10.3739014
          }
          Scale {
            X: 2.17728233
            Y: 2.17728233
            Z: 2.17728233
          }
        }
        ParentId: 14049161596096041219
        ChildIds: 11029876718561639878
        ChildIds: 9420846141120362271
        ChildIds: 8070078256449543603
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
        Id: 11029876718561639878
        Name: "Coral Table 02"
        Transform {
          Location {
            X: -0.291015625
            Y: 1.11132812
          }
          Rotation {
            Pitch: -9.50164604
            Yaw: -4.50369549
            Roll: -14.2630844
          }
          Scale {
            X: 0.19532384
            Y: 0.19532384
            Z: 0.744195163
          }
        }
        ParentId: 4960040689332322575
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.570000052
              B: 0.215165272
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16167680134006870113
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13161146325196931920
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9420846141120362271
        Name: "Coral Tubes Small"
        Transform {
          Location {
            X: 0.799241722
            Y: -1.83661485
            Z: 3.48285985
          }
          Rotation {
            Pitch: 2.75285983
            Yaw: 30.3989334
            Roll: -15.5359192
          }
          Scale {
            X: 0.194210961
            Y: 0.194210961
            Z: 0.37800464
          }
        }
        ParentId: 4960040689332322575
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15891502903232153966
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14281826121533999733
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8070078256449543603
        Name: "Coral Table 02"
        Transform {
          Location {
            X: -0.217055246
            Y: 0.730286
            Z: 0.0889320895
          }
          Rotation {
            Pitch: 0.82514143
            Yaw: 30.4888878
            Roll: -17.5620422
          }
          Scale {
            X: 0.165388197
            Y: 0.165415034
            Z: 0.9022246
          }
        }
        ParentId: 4960040689332322575
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16167680134006870113
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13161146325196931920
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1648371588411962591
        Name: "Elven_column_building"
        Transform {
          Location {
            X: 20.5277214
            Y: 127.340118
            Z: -190.262695
          }
          Rotation {
            Yaw: 106.498
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5145801805166039320
        ChildIds: 8263274592569876817
        ChildIds: 16713640117417549148
        ChildIds: 11922363296521927228
        ChildIds: 8377107859080708286
        ChildIds: 3524624646390214036
        ChildIds: 6868771062573787360
        ChildIds: 8043693685941100073
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
        Id: 8263274592569876817
        Name: "Ivy 05"
        Transform {
          Location {
            X: 48.7479858
            Y: 507.663025
            Z: 396.207031
          }
          Rotation {
            Pitch: -0.67477417
            Yaw: 177.026199
            Roll: 91.6429
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1648371588411962591
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11521250418432815603
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
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
        Id: 16713640117417549148
        Name: "Ivy 04"
        Transform {
          Location {
            X: 427.535278
            Y: 127.095673
            Z: 829.746094
          }
          Rotation {
            Pitch: -0.708898485
            Yaw: 131.388275
            Roll: 95.6490631
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1648371588411962591
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
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
        Id: 11922363296521927228
        Name: "Ivy 05"
        Transform {
          Location {
            X: 361.298889
            Y: 565.74646
            Z: 1023.83301
          }
          Rotation {
            Pitch: -12.4783516
            Yaw: 141.389282
            Roll: 85.4434814
          }
          Scale {
            X: 1.13754809
            Y: 1.13754809
            Z: 1.13754809
          }
        }
        ParentId: 1648371588411962591
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11521250418432815603
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
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
        Id: 8377107859080708286
        Name: "Ivy 03"
        Transform {
          Location {
            X: 56.5274048
            Y: 636.562561
            Z: 957.955078
          }
          Rotation {
            Pitch: -2.68499756
            Yaw: -54.4092712
            Roll: -115.409027
          }
          Scale {
            X: 1.76321411
            Y: 1.76321411
            Z: 1.76321411
          }
        }
        ParentId: 1648371588411962591
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
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
        Id: 3524624646390214036
        Name: "Decal Vines End 01"
        Transform {
          Location {
            X: 291.657562
            Y: 551.872498
            Z: 812.770508
          }
          Rotation {
            Pitch: 2.95450735
            Yaw: 163.377945
            Roll: 86.8881531
          }
          Scale {
            X: 0.999992311
            Y: 1.00001216
            Z: 0.943663716
          }
        }
        ParentId: 1648371588411962591
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
            Id: 2406204288165372094
          }
          TeamSettings {
          }
          DecalBP {
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
        Id: 6868771062573787360
        Name: "MergedModel"
        Transform {
          Location {
            X: 3998.87793
            Y: 5832.62695
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1648371588411962591
        ChildIds: 1792698912890305910
        ChildIds: 17617201798637240573
        ChildIds: 5398305235161615048
        ChildIds: 4244442952325947586
        ChildIds: 17481156391052122409
        ChildIds: 16311275059593926239
        ChildIds: 10445511679276609598
        ChildIds: 267160162406644127
        ChildIds: 68669467572947921
        ChildIds: 6942887138135468563
        ChildIds: 5356089266327092022
        ChildIds: 3834649239293260420
        ChildIds: 16835397284714772397
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
          Model {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:high"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1792698912890305910
        Name: "Group"
        Transform {
          Location {
            X: -4115.14209
            Y: -5776.78223
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6868771062573787360
        ChildIds: 15030420864916986439
        ChildIds: 963441540156526802
        ChildIds: 9799439237260069298
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
        Id: 15030420864916986439
        Name: "Elf_column"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1792698912890305910
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 3213966160840712952
            value {
              Overrides {
                Name: "Name"
                String: "Elf_column"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -675.711487
                  Y: -29.6539307
                  Z: 196.167969
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 19.0079479
                }
              }
            }
          }
          TemplateAsset {
            Id: 4075384341934062930
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 963441540156526802
        Name: "Elv_Arch_Element_01"
        Transform {
          Location {
            X: -614.22345
            Y: 282.474731
            Z: 944.441895
          }
          Rotation {
            Yaw: -36.2269592
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 1792698912890305910
        ChildIds: 36654519158536741
        ChildIds: 9581635263927052962
        ChildIds: 12820513416088712752
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
        Id: 36654519158536741
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 70.4195862
            Y: 186.257309
            Z: 416.464844
          }
          Rotation {
            Pitch: -4.09851074
            Yaw: 10.6113234
            Roll: 179.77623
          }
          Scale {
            X: 0.531674862
            Y: 0.457501501
            Z: 0.303426594
          }
        }
        ParentId: 963441540156526802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9581635263927052962
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 116.233101
            Y: -201.123291
            Z: 20.5208321
          }
          Rotation {
            Pitch: 8.08681393
            Yaw: 10.3661289
            Roll: -0.779998779
          }
          Scale {
            X: 0.692338347
            Y: 0.845704138
            Z: 0.654289544
          }
        }
        ParentId: 963441540156526802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12820513416088712752
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 111.218933
            Y: -179.999786
            Z: 40.7421875
          }
          Rotation {
            Pitch: -5.11209106
            Yaw: 10.5451736
            Roll: -0.77532959
          }
          Scale {
            X: 0.714597583
            Y: 0.778622687
            Z: 0.852051914
          }
        }
        ParentId: 963441540156526802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9799439237260069298
        Name: "Elf_column"
        Transform {
          Location {
            X: 18112.8633
            Y: 15522.875
            Z: 5765.84229
          }
          Rotation {
            Yaw: 4.42959404
          }
          Scale {
            X: 1.03729403
            Y: 1.03729403
            Z: 1.03729403
          }
        }
        ParentId: 1792698912890305910
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 3213966160840712952
            value {
              Overrides {
                Name: "Name"
                String: "Elf_column"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -375.531525
                  Y: 566.283752
                  Z: 196.167969
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 19.0079079
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.03729403
                  Y: 1.03729403
                  Z: 1.03729403
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 10903975137501348580
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 1626097446304398136
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.760416687
                  G: 0.760416687
                  B: 0.760416687
                  A: 1
                }
              }
            }
          }
          TemplateAsset {
            Id: 4075384341934062930
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17617201798637240573
        Name: "Group"
        Transform {
          Location {
            X: -4115.14209
            Y: -5776.78223
          }
          Rotation {
            Yaw: -60.0000381
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6868771062573787360
        ChildIds: 8579801415981513398
        ChildIds: 6683595999965777574
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
        Id: 8579801415981513398
        Name: "Elv_Arch_Element_01"
        Transform {
          Location {
            X: -614.22345
            Y: 282.474731
            Z: 944.441895
          }
          Rotation {
            Yaw: -36.2269592
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 17617201798637240573
        ChildIds: 6203971048940339132
        ChildIds: 17397774530201052599
        ChildIds: 14698454395343128975
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
        Id: 6203971048940339132
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 74.4349899
            Y: 176.844421
            Z: 416.443268
          }
          Rotation {
            Pitch: -4.09851074
            Yaw: 10.61131
            Roll: 179.77623
          }
          Scale {
            X: 0.531674862
            Y: 0.457501501
            Z: 0.303426594
          }
        }
        ParentId: 8579801415981513398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17397774530201052599
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 116.232933
            Y: -201.123047
            Z: 20.5208321
          }
          Rotation {
            Pitch: 8.08681393
            Yaw: 10.3661289
            Roll: -0.779998779
          }
          Scale {
            X: 0.692338347
            Y: 0.845704138
            Z: 0.654289544
          }
        }
        ParentId: 8579801415981513398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14698454395343128975
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 111.217827
            Y: -179.999863
            Z: 40.7421875
          }
          Rotation {
            Pitch: -5.11209106
            Yaw: 10.5451736
            Roll: -0.77532959
          }
          Scale {
            X: 0.714597583
            Y: 0.778622687
            Z: 0.852051914
          }
        }
        ParentId: 8579801415981513398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6683595999965777574
        Name: "Elf_column"
        Transform {
          Location {
            X: 18112.8633
            Y: 15522.875
            Z: 5765.84229
          }
          Rotation {
            Yaw: 4.42959404
          }
          Scale {
            X: 1.03729403
            Y: 1.03729403
            Z: 1.03729403
          }
        }
        ParentId: 17617201798637240573
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 3213966160840712952
            value {
              Overrides {
                Name: "Name"
                String: "Elf_column"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -375.531525
                  Y: 566.283752
                  Z: 196.167969
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 19.0079079
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.03729403
                  Y: 1.03729403
                  Z: 1.03729403
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 10903975137501348580
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 1626097446304398136
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.760416687
                  G: 0.760416687
                  B: 0.760416687
                  A: 1
                }
              }
            }
          }
          TemplateAsset {
            Id: 4075384341934062930
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5398305235161615048
        Name: "Group"
        Transform {
          Location {
            X: -4115.14209
            Y: -5776.78223
          }
          Rotation {
            Yaw: -120.000008
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6868771062573787360
        ChildIds: 9940719027109397275
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
        Id: 9940719027109397275
        Name: "Elv_Arch_Element_01"
        Transform {
          Location {
            X: -614.22345
            Y: 282.474731
            Z: 944.441895
          }
          Rotation {
            Yaw: -36.2269592
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 5398305235161615048
        ChildIds: 6511083418460502151
        ChildIds: 15277282186576200648
        ChildIds: 4679703242180407910
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
        Id: 6511083418460502151
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 77.5231247
            Y: 186.919601
            Z: 416.480286
          }
          Rotation {
            Pitch: -4.09851074
            Yaw: 10.61131
            Roll: 179.77623
          }
          Scale {
            X: 0.531674862
            Y: 0.457501501
            Z: 0.303426594
          }
        }
        ParentId: 9940719027109397275
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15277282186576200648
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 116.232986
            Y: -201.123459
            Z: 20.5208321
          }
          Rotation {
            Pitch: 8.08681393
            Yaw: 10.3661289
            Roll: -0.779998779
          }
          Scale {
            X: 0.692338347
            Y: 0.845704138
            Z: 0.654289544
          }
        }
        ParentId: 9940719027109397275
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4679703242180407910
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 111.218193
            Y: -180.000137
            Z: 40.7421875
          }
          Rotation {
            Pitch: -5.11209106
            Yaw: 10.5451736
            Roll: -0.77532959
          }
          Scale {
            X: 0.714597583
            Y: 0.778622687
            Z: 0.852051914
          }
        }
        ParentId: 9940719027109397275
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4244442952325947586
        Name: "Group"
        Transform {
          Location {
            X: -4115.14209
            Y: -5776.78223
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6868771062573787360
        ChildIds: 5665034760436298644
        ChildIds: 9155180584212638555
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
        Id: 5665034760436298644
        Name: "Elf_column"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4244442952325947586
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 3213966160840712952
            value {
              Overrides {
                Name: "Name"
                String: "Elf_column"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -675.711487
                  Y: -29.6539307
                  Z: 196.167969
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 19.0079479
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.03729403
                  Y: 1.03729403
                  Z: 1.03729403
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 10903975137501348580
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 1626097446304398136
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.760416687
                  G: 0.760416687
                  B: 0.760416687
                  A: 1
                }
              }
            }
          }
          TemplateAsset {
            Id: 4075384341934062930
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9155180584212638555
        Name: "Elv_Arch_Element_01"
        Transform {
          Location {
            X: -614.22345
            Y: 282.474731
            Z: 944.441895
          }
          Rotation {
            Yaw: -36.2269592
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 4244442952325947586
        ChildIds: 13408393380136135353
        ChildIds: 14580051881828856177
        ChildIds: 17070687738717475828
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
        Id: 13408393380136135353
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 79.9310379
            Y: 188.592422
            Z: 416.468903
          }
          Rotation {
            Pitch: -4.09851074
            Yaw: 10.6113367
            Roll: 179.77623
          }
          Scale {
            X: 0.531674862
            Y: 0.457501501
            Z: 0.303426594
          }
        }
        ParentId: 9155180584212638555
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14580051881828856177
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 116.232948
            Y: -201.123291
            Z: 20.5208321
          }
          Rotation {
            Pitch: 8.08681393
            Yaw: 10.3661289
            Roll: -0.779998779
          }
          Scale {
            X: 0.692338347
            Y: 0.845704138
            Z: 0.654289544
          }
        }
        ParentId: 9155180584212638555
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17070687738717475828
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 111.218628
            Y: -179.999893
            Z: 40.7421875
          }
          Rotation {
            Pitch: -5.11209106
            Yaw: 10.5451736
            Roll: -0.77532959
          }
          Scale {
            X: 0.714597583
            Y: 0.778622687
            Z: 0.852051914
          }
        }
        ParentId: 9155180584212638555
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17481156391052122409
        Name: "Group"
        Transform {
          Location {
            X: -4115.14209
            Y: -5776.78223
          }
          Rotation {
            Yaw: 119.999863
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6868771062573787360
        ChildIds: 5817322768860402190
        ChildIds: 6986034426603896612
        ChildIds: 17586472684258590959
        ChildIds: 6989404658428275682
        ChildIds: 15903919640011659099
        ChildIds: 6732384207670670631
        ChildIds: 1733712063718488051
        ChildIds: 12786018607196365993
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
        Id: 5817322768860402190
        Name: "Prism - 8-Sided"
        Transform {
          Location {
            Z: -369.50708
          }
          Rotation {
            Yaw: 3.19870615
          }
          Scale {
            X: 18.3000011
            Y: 18.3000011
            Z: 11.5653982
          }
        }
        ParentId: 17481156391052122409
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15380009543243484126
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.651041687
              G: 0.651041687
              B: 0.651041687
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
            Id: 10777523509111713302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6986034426603896612
        Name: "Elf_column"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17481156391052122409
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 2687176109397299431
            value {
              Overrides {
                Name: "DisableCastShadows"
                Bool: false
              }
            }
          }
          ParameterOverrideMap {
            key: 3213966160840712952
            value {
              Overrides {
                Name: "Name"
                String: "Elf_column"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -675.711487
                  Y: -29.6539307
                  Z: 196.167969
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 19.0079479
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.03729403
                  Y: 1.03729403
                  Z: 1.03729403
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 4665460184897816916
            value {
              Overrides {
                Name: "DisableCastShadows"
                Bool: false
              }
            }
          }
          ParameterOverrideMap {
            key: 9306839694617463602
            value {
              Overrides {
                Name: "DisableCastShadows"
                Bool: false
              }
            }
          }
          ParameterOverrideMap {
            key: 10903975137501348580
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 1626097446304398136
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.760416687
                  G: 0.760416687
                  B: 0.760416687
                  A: 1
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 11990023407897065158
            value {
              Overrides {
                Name: "DisableCastShadows"
                Bool: false
              }
            }
          }
          ParameterOverrideMap {
            key: 15530557103067096821
            value {
              Overrides {
                Name: "DisableCastShadows"
                Bool: false
              }
            }
          }
          TemplateAsset {
            Id: 4075384341934062930
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17586472684258590959
        Name: "Elv_Arch_Element_01"
        Transform {
          Location {
            X: -614.22345
            Y: 282.474731
            Z: 944.441895
          }
          Rotation {
            Yaw: -36.2269592
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 17481156391052122409
        ChildIds: 14014328626829970656
        ChildIds: 692090399382331217
        ChildIds: 16089609884205781520
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
        Id: 14014328626829970656
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 77.8338
            Y: 187.759888
            Z: 416.450592
          }
          Rotation {
            Pitch: -4.09851074
            Yaw: 10.611351
            Roll: 179.77623
          }
          Scale {
            X: 0.531674862
            Y: 0.457501501
            Z: 0.303426594
          }
        }
        ParentId: 17586472684258590959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 692090399382331217
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 116.232605
            Y: -201.123505
            Z: 20.5208321
          }
          Rotation {
            Pitch: 8.08681393
            Yaw: 10.3661289
            Roll: -0.779998779
          }
          Scale {
            X: 0.692338347
            Y: 0.845704138
            Z: 0.654289544
          }
        }
        ParentId: 17586472684258590959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16089609884205781520
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 111.217926
            Y: -179.999756
            Z: 40.7421875
          }
          Rotation {
            Pitch: -5.11209106
            Yaw: 10.5451736
            Roll: -0.77532959
          }
          Scale {
            X: 0.714597583
            Y: 0.778622687
            Z: 0.852051914
          }
        }
        ParentId: 17586472684258590959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6989404658428275682
        Name: "Prism - 8-Sided"
        Transform {
          Location {
            Z: 1030.62891
          }
          Rotation {
            Yaw: 3.19870901
          }
          Scale {
            X: 12.3270426
            Y: 12.3270426
            Z: 8.75195694
          }
        }
        ParentId: 17481156391052122409
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17409295383154929877
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0411512554
              G: 0.179063499
              B: 0.213541672
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
            Id: 7147607578013694397
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15903919640011659099
        Name: "Prism - 8-Sided"
        Transform {
          Location {
            Z: 1025.62891
          }
          Rotation {
            Yaw: 3.19870472
          }
          Scale {
            X: 13.285388
            Y: 13.285388
            Z: 0.675528347
          }
        }
        ParentId: 17481156391052122409
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12371872750459640945
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6732384207670670631
        Name: "Prism - 8-Sided"
        Transform {
          Location {
            Z: 164.226562
          }
          Rotation {
            Yaw: 3.19870019
          }
          Scale {
            X: 20.8712254
            Y: 20.8712254
            Z: 0.98863709
          }
        }
        ParentId: 17481156391052122409
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8329339828071933523
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.228988484
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.45057178
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.844238281
              G: 0.857845902
              B: 0.947916687
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
            Id: 10777523509111713302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1733712063718488051
        Name: "Elv_Arch_Element_01"
        Transform {
          Location {
            X: -88.522583
            Y: 674.780273
            Z: 944.441895
          }
          Rotation {
            Yaw: -97.0882568
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 17481156391052122409
        ChildIds: 17609447498008213733
        ChildIds: 15169841097687214262
        ChildIds: 1143434474761260802
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
        Id: 17609447498008213733
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 77.8985062
            Y: 187.413635
            Z: 416.449371
          }
          Rotation {
            Pitch: -4.09851074
            Yaw: 10.6113367
            Roll: 179.77623
          }
          Scale {
            X: 0.531674862
            Y: 0.457501501
            Z: 0.303426594
          }
        }
        ParentId: 1733712063718488051
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15169841097687214262
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 116.232399
            Y: -201.12294
            Z: 20.5208321
          }
          Rotation {
            Pitch: 8.08681393
            Yaw: 10.3661289
            Roll: -0.779998779
          }
          Scale {
            X: 0.692338347
            Y: 0.845704138
            Z: 0.654289544
          }
        }
        ParentId: 1733712063718488051
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1143434474761260802
        Name: "Arch Fancy Peaked 6m"
        Transform {
          Location {
            X: 111.217499
            Y: -180.000168
            Z: 40.7421875
          }
          Rotation {
            Pitch: -5.11209106
            Yaw: 10.5451736
            Roll: -0.77532959
          }
          Scale {
            X: 0.714597583
            Y: 0.778622687
            Z: 0.852051914
          }
        }
        ParentId: 1733712063718488051
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7142781972612396783
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12786018607196365993
        Name: "Prism - 8-Sided"
        Transform {
          Location {
            Z: 190.262207
          }
          Rotation {
            Yaw: 3.19872522
          }
          Scale {
            X: 18.0755596
            Y: 18.0755596
            Z: 0.54022342
          }
        }
        ParentId: 17481156391052122409
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18198612390204212876
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.651041687
              G: 0.651041687
              B: 0.651041687
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
            Id: 10777523509111713302
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16311275059593926239
        Name: "Fantasy Castle Accessory Roof 02"
        Transform {
          Location {
            X: -4112.4458
            Y: -5764.53076
            Z: 1328.26514
          }
          Rotation {
            Yaw: -134.626083
          }
          Scale {
            X: 0.651585639
            Y: 0.651585639
            Z: 0.651585639
          }
        }
        ParentId: 6868771062573787360
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallOuter:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7700976009969522757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10445511679276609598
        Name: "Elven_bannister"
        Transform {
          Location {
            X: 10706.3994
            Y: 13081.4521
            Z: 4165.40918
          }
          Rotation {
            Pitch: 2.30789351
            Yaw: 25.7555351
            Roll: -15.4989805
          }
          Scale {
            X: 1.24802315
            Y: 1.24802315
            Z: 1.24802315
          }
        }
        ParentId: 6868771062573787360
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 1087970490233162383
            value {
            }
          }
          ParameterOverrideMap {
            key: 1098764772194726930
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.723958313
                  G: 0.723958313
                  B: 0.606010079
                  A: 1
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 8830366910998568517
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 10903999051012644632
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12743444847015052782
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12959015206063195225
            value {
              Overrides {
                Name: "Name"
                String: "Elven_bannister"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -4798.97461
                  Y: -5796.84
                  Z: 190.813965
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -26.7501812
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.24802315
                  Y: 1.24802315
                  Z: 1.24802315
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 14497495760541582849
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          TemplateAsset {
            Id: 5576557899363017038
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 267160162406644127
        Name: "Elven_bannister"
        Transform {
          Location {
            X: 10243.374
            Y: 13730.5947
            Z: 4331.34961
          }
          Rotation {
            Yaw: 115.405617
          }
          Scale {
            X: 1.24802315
            Y: 1.24802315
            Z: 1.24802315
          }
        }
        ParentId: 6868771062573787360
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 1087970490233162383
            value {
            }
          }
          ParameterOverrideMap {
            key: 1098764772194726930
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.723958313
                  G: 0.723958313
                  B: 0.606010079
                  A: 1
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 8830366910998568517
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 10903999051012644632
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12743444847015052782
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12959015206063195225
            value {
              Overrides {
                Name: "Name"
                String: "Elven_bannister"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -4456.51
                  Y: -5205.47949
                  Z: 190.813965
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -86.4328613
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.24802315
                  Y: 1.24802315
                  Z: 1.24802315
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 14497495760541582849
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          TemplateAsset {
            Id: 5576557899363017038
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 68669467572947921
        Name: "Elven_bannister"
        Transform {
          Location {
            X: 9610.12695
            Y: 13473.7158
            Z: 4331.34961
          }
          Rotation {
            Yaw: 55.72295
          }
          Scale {
            X: 1.24802315
            Y: 1.24802315
            Z: 1.24802315
          }
        }
        ParentId: 6868771062573787360
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 1087970490233162383
            value {
            }
          }
          ParameterOverrideMap {
            key: 1098764772194726930
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.723958313
                  G: 0.723958313
                  B: 0.606010079
                  A: 1
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 8830366910998568517
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 10903999051012644632
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12743444847015052782
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12959015206063195225
            value {
              Overrides {
                Name: "Name"
                String: "Elven_bannister"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -3801.81
                  Y: -5188.06104
                  Z: 190.813965
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -147.386887
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.24802315
                  Y: 1.24802315
                  Z: 1.24802315
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 14497495760541582849
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          TemplateAsset {
            Id: 5576557899363017038
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6942887138135468563
        Name: "Elven_bannister"
        Transform {
          Location {
            X: 9082.43457
            Y: 13861.6299
            Z: 4331.34961
          }
          Rotation {
            Yaw: -5.23111248
          }
          Scale {
            X: 1.24802315
            Y: 1.24802315
            Z: 1.24802315
          }
        }
        ParentId: 6868771062573787360
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 1087970490233162383
            value {
            }
          }
          ParameterOverrideMap {
            key: 1098764772194726930
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.723958313
                  G: 0.723958313
                  B: 0.606010079
                  A: 1
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 8830366910998568517
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 10903999051012644632
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12743444847015052782
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12959015206063195225
            value {
              Overrides {
                Name: "Name"
                String: "Elven_bannister"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -3457.04443
                  Y: -5794.04785
                  Z: 190.813965
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 152.43515
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.24802315
                  Y: 1.24802315
                  Z: 1.24802315
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 14497495760541582849
            value {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 11337413471323694429
                }
              }
            }
          }
          TemplateAsset {
            Id: 5576557899363017038
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5356089266327092022
        Name: "Short Banner Fleur-de-lis"
        Transform {
          Location {
            X: -4141.7334
            Y: -4887.46533
            Z: 165.162109
          }
          Rotation {
            Yaw: 3.93693113
          }
          Scale {
            X: 2.792768
            Y: 2.792768
            Z: 2.792768
          }
        }
        ParentId: 6868771062573787360
        UnregisteredParameters {
          Overrides {
            Name: "ma:Prop_Cloth:color"
            Color {
              G: 0.387499511
              B: 0.484375
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
            Id: 17853943551029294903
          }
          Teams {
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3834649239293260420
        Name: "Ivy 05"
        Transform {
          Location {
            X: -3369.85938
            Y: -5288.7959
            Z: 130.75
          }
          Rotation {
            Pitch: 1.77214718
            Yaw: -53.0676765
            Roll: 96.6197739
          }
          Scale {
            X: 1.61385632
            Y: 1.61385632
            Z: 1.61385632
          }
        }
        ParentId: 6868771062573787360
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11521250418432815603
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16835397284714772397
        Name: "Ivy 04"
        Transform {
          Location {
            X: -3760.63477
            Y: -4859.17871
            Z: -4.67773438
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: -0.257778287
            Roll: 92.2410049
          }
          Scale {
            X: 1.581236
            Y: 1.581236
            Z: 1.581236
          }
        }
        ParentId: 6868771062573787360
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8043693685941100073
        Name: "Ivy 05"
        Transform {
          Location {
            X: 512.02948
            Y: 4.6340332
            Z: 918.305664
          }
          Rotation {
            Pitch: -12.478241
            Yaw: 114.789192
            Roll: 85.4431305
          }
          Scale {
            X: 1.13754809
            Y: 1.13754809
            Z: 1.13754809
          }
        }
        ParentId: 1648371588411962591
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11521250418432815603
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
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
        Id: 17754174449654312371
        Name: "Elf_flower_pot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5145801805166039320
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 12117263865094098545
            value {
              Overrides {
                Name: "Name"
                String: "Elf_flower_pot"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: 183.379715
                  Y: -297.863281
                  Z: 27.0117188
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 0.537840366
                  Y: 0.537840366
                  Z: 0.537840366
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -15.3972225
                }
              }
            }
          }
          TemplateAsset {
            Id: 6905881845296895516
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4948063215505413501
        Name: "Small_palm"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5145801805166039320
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 4182307201867080222
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 10143524279940654328
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 16295755683547083001
            value {
              Overrides {
                Name: "Name"
                String: "Small_palm"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -832.816467
                  Y: -175.478104
                  Z: -71.984375
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.1564796
                  Y: 1.1564796
                  Z: 1.1564796
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 15.0536423
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 17624963925719290447
            value {
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          TemplateAsset {
            Id: 2576864945443041003
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7563429377744845840
        Name: "Small_palm_flower"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5145801805166039320
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 3572973441900576158
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 4137738316238168700
            value {
              Overrides {
                Name: "Name"
                String: "Small_palm_flower"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -828.517456
                  Y: -5.16132307
                  Z: 6.76464844
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.13689232
                  Y: 1.13689232
                  Z: 1.13689232
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 15.0536423
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 5207518042932427826
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 7098276047549943934
            value {
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 9338269498777302214
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 9592143972325852580
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 17165211897140797991
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 17212955378837482682
            value {
              Overrides {
                Name: "CoreProxy.CameraCollidable"
                Enum {
                  Value: "mc:ecollisionsetting:forceoff"
                }
              }
              Overrides {
                Name: "CoreProxy.Relevance"
                Enum {
                  Value: "mc:eproxyrelevance:medium"
                }
              }
            }
          }
          TemplateAsset {
            Id: 15098451683578824339
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17028544406318149871
        Name: "Group"
        Transform {
          Location {
            X: 361.526459
            Y: -92.492
            Z: 263.094727
          }
          Rotation {
            Yaw: 15.0536423
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5145801805166039320
        ChildIds: 1621598054694043093
        ChildIds: 2325396774346662912
        ChildIds: 7101240933711786883
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
        Id: 1621598054694043093
        Name: "Spotlight"
        Transform {
          Location {
            X: -420.580078
            Y: 53.9053955
            Z: 109.655273
          }
          Rotation {
            Yaw: 20.3667946
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17028544406318149871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Light {
          Intensity: 10
          Color {
            R: 0.77
            G: 0.89033103
            B: 1
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 996.858521
              SpotLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
                InnerConeAngle: 30
                OuterConeAngle: 40
                Profile {
                  Value: "mc:espotlightprofile:basicspotlight"
                }
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
          ShadowBias: 0.4
          ShadowSlopeBias: 0.6
        }
        Relevance {
          Value: "mc:eproxyrelevance:low"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2325396774346662912
        Name: "Spotlight"
        Transform {
          Location {
            X: 285.765625
            Y: 111.668457
          }
          Rotation {
            Yaw: -153.44722
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17028544406318149871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Light {
          Intensity: 6
          Color {
            R: 1
            G: 0.911721826
            B: 0.69
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 478.801636
              SpotLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
                InnerConeAngle: 30
                OuterConeAngle: 40
                Profile {
                  Value: "mc:espotlightprofile:basicspotlight"
                }
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
          ShadowBias: 0.4
          ShadowSlopeBias: 0.6
        }
        Relevance {
          Value: "mc:eproxyrelevance:low"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7101240933711786883
        Name: "Spotlight"
        Transform {
          Location {
            X: 134.808594
            Y: -165.573975
          }
          Rotation {
            Yaw: 120.388283
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17028544406318149871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Light {
          Intensity: 3
          Color {
            R: 0.941721916
            G: 0.8
            B: 1
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 478.801636
              SpotLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
                InnerConeAngle: 30
                OuterConeAngle: 40
                Profile {
                  Value: "mc:espotlightprofile:basicspotlight"
                }
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
          ShadowBias: 0.4
          ShadowSlopeBias: 0.6
        }
        Relevance {
          Value: "mc:eproxyrelevance:low"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3520886091652075803
        Name: "Tree_big"
        Transform {
          Location {
            X: -9977.35742
            Y: 6064.36475
            Z: -9388.06445
          }
          Rotation {
            Yaw: -120.349869
          }
          Scale {
            X: 5.22607088
            Y: 5.22607088
            Z: 5.22607088
          }
        }
        ParentId: 5145801805166039320
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              R: 0.566000223
              G: 0.160000026
              B: 1
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 10784387645319107096
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9845372602283348891
        Name: "BG Foliage"
        Transform {
          Location {
            X: -2172.69751
            Y: 981.980225
            Z: -56.1474609
          }
          Rotation {
            Yaw: 15.0536423
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5145801805166039320
        ChildIds: 14571521536108123595
        ChildIds: 10487140558574517657
        ChildIds: 11426651991727812005
        ChildIds: 6220466316077156529
        ChildIds: 18209594808309423682
        ChildIds: 13713417710912144625
        ChildIds: 16309430022190923342
        ChildIds: 10913914089449120624
        ChildIds: 704813455615734550
        ChildIds: 9955903209563353372
        ChildIds: 9006161034454569318
        ChildIds: 4700179204352808601
        ChildIds: 13234635400945294658
        ChildIds: 13638038831765282758
        ChildIds: 16978352989802281873
        ChildIds: 14000064740779658386
        ChildIds: 1720557848920778515
        ChildIds: 4328847411714128294
        ChildIds: 12269289346448350428
        ChildIds: 18145078609557083889
        ChildIds: 12750069685710621220
        ChildIds: 4771597703233800251
        ChildIds: 6223153245588578754
        ChildIds: 15181562017348438189
        ChildIds: 14554898829535309357
        ChildIds: 5652050358042807335
        ChildIds: 11320826745997780515
        ChildIds: 4432544550256490079
        ChildIds: 14088370122135204558
        ChildIds: 9831022312786162646
        ChildIds: 13965133049503923886
        ChildIds: 6690928608101505073
        ChildIds: 12830876760324533648
        ChildIds: 6510103088262943247
        ChildIds: 14625989685137500185
        ChildIds: 10216878706375146068
        ChildIds: 9630552309137175666
        ChildIds: 4361839487590777030
        ChildIds: 17071234127521758638
        ChildIds: 14780117762731579342
        ChildIds: 15290762659377823028
        ChildIds: 11304751418958219240
        ChildIds: 281079176855271663
        ChildIds: 10782079187896847519
        ChildIds: 8282669450468740200
        ChildIds: 487562038862952288
        ChildIds: 6505713333130938589
        ChildIds: 16943204863678228352
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
        Id: 14571521536108123595
        Name: "Sphere"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 2.28198647
            Yaw: -0.0240173284
            Roll: -1.47497559
          }
          Scale {
            X: 26.8268452
            Y: 26.8268986
            Z: 6.49778509
          }
        }
        ParentId: 9845372602283348891
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2148407408977013770
            }
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
            Id: 7363477334452929865
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
          Value: "mc:eproxyrelevance:high"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10487140558574517657
        Name: "Fern 01"
        Transform {
          Location {
            X: -417.361328
            Y: -2.85302734
            Z: 291.790039
          }
          Rotation {
          }
          Scale {
            X: 0.612651587
            Y: 0.612651587
            Z: 0.971323311
          }
        }
        ParentId: 9845372602283348891
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 17201051112233946141
            }
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
            Id: 12478223806335538230
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11426651991727812005
        Name: "Bush Leafy Tall 01"
        Transform {
          Location {
            X: -77.0371094
            Y: 63.0459
            Z: 323.075195
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6220466316077156529
        Name: "Grass Short"
        Transform {
          Location {
            X: -288.476562
            Y: -71.8735352
            Z: 305.979492
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18209594808309423682
        Name: "Grass Short"
        Transform {
          Location {
            X: -464.539062
            Y: -158.226807
            Z: 276.333984
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13713417710912144625
        Name: "Grass Short"
        Transform {
          Location {
            X: -644.273438
            Y: -152.168213
            Z: 237.775391
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16309430022190923342
        Name: "Grass Short"
        Transform {
          Location {
            X: 120.130859
            Y: -91.0231934
            Z: 325.029297
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10913914089449120624
        Name: "Grass Short"
        Transform {
          Location {
            X: -88.8945312
            Y: -117.480713
            Z: 316.885742
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 704813455615734550
        Name: "Grass Short"
        Transform {
          Location {
            X: 82.8613281
            Y: 99.8823242
            Z: 328.833984
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9955903209563353372
        Name: "Grass Short"
        Transform {
          Location {
            X: 187.998047
            Y: 245.841064
            Z: 325.800781
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9006161034454569318
        Name: "Grass Short"
        Transform {
          Location {
            X: -39.1601562
            Y: 267.788818
            Z: 322.035156
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4700179204352808601
        Name: "Grass Short"
        Transform {
          Location {
            X: -269.4375
            Y: 129.909912
            Z: 307.97168
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13234635400945294658
        Name: "Grass Short"
        Transform {
          Location {
            X: -631.257812
            Y: 7.9987793
            Z: 250.263672
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13638038831765282758
        Name: "Grass Short"
        Transform {
          Location {
            X: -473.283203
            Y: 170.207275
            Z: 279.501953
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16978352989802281873
        Name: "Grass Short"
        Transform {
          Location {
            X: -269.566406
            Y: 307.326904
            Z: 300.732422
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14000064740779658386
        Name: "Grass Short"
        Transform {
          Location {
            X: 2.25585938
            Y: 415.069092
            Z: 312.875
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1720557848920778515
        Name: "Grass Short"
        Transform {
          Location {
            X: -262.78125
            Y: -239.426758
            Z: 295.866211
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4328847411714128294
        Name: "Bush Leafy Low 01"
        Transform {
          Location {
            X: 930.257812
            Y: -745.059082
            Z: 169.353516
          }
          Rotation {
            Pitch: -11.7200298
            Yaw: 0.125119731
            Roll: -1.89688087
          }
          Scale {
            X: 1.26786911
            Y: 1.26786911
            Z: 1.26786911
          }
        }
        ParentId: 9845372602283348891
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12269289346448350428
        Name: "Grass Short"
        Transform {
          Location {
            X: 287.753906
            Y: -567.210449
            Z: 275.30957
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18145078609557083889
        Name: "Grass Short"
        Transform {
          Location {
            X: 85.2832
            Y: -485.944092
            Z: 284.435547
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12750069685710621220
        Name: "Grass Short"
        Transform {
          Location {
            X: -97.6875
            Y: -478.358398
            Z: 267.40332
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4771597703233800251
        Name: "Grass Short"
        Transform {
          Location {
            X: 671.816406
            Y: -419.042969
            Z: 269.265625
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6223153245588578754
        Name: "Grass Short"
        Transform {
          Location {
            X: 463.193359
            Y: -445.97168
            Z: 283.723633
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15181562017348438189
        Name: "Grass Short"
        Transform {
          Location {
            X: 635.691406
            Y: -228.944336
            Z: 289.417
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14554898829535309357
        Name: "Grass Short"
        Transform {
          Location {
            X: 740.117188
            Y: -82.5644531
            Z: 283.455078
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5652050358042807335
        Name: "Grass Short"
        Transform {
          Location {
            X: 514.107422
            Y: -61.550293
            Z: 307.411133
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11320826745997780515
        Name: "Grass Short"
        Transform {
          Location {
            X: 283.425781
            Y: -199.408691
            Z: 311.413086
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4432544550256490079
        Name: "Grass Short"
        Transform {
          Location {
            X: -82.9394531
            Y: -319.234375
            Z: 288.397461
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14088370122135204558
        Name: "Grass Short"
        Transform {
          Location {
            X: 77.7480469
            Y: -158.408936
            Z: 309.341797
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9831022312786162646
        Name: "Grass Short"
        Transform {
          Location {
            X: 282.884766
            Y: -21.8918457
            Z: 315.46582
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13965133049503923886
        Name: "Grass Short"
        Transform {
          Location {
            X: 554.542969
            Y: 86.2177734
            Z: 302.838867
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6690928608101505073
        Name: "Grass Short"
        Transform {
          Location {
            X: 263.802734
            Y: -400.758057
            Z: 298.897461
          }
          Rotation {
            Pitch: -6.64776802
            Yaw: 0.286159933
            Roll: -3.64672875
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12830876760324533648
        Name: "Grass Short"
        Transform {
          Location {
            X: 424.431641
            Y: -265.181885
            Z: 308.176758
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6510103088262943247
        Name: "Grass Short"
        Transform {
          Location {
            X: 873.753906
            Y: -595.259033
            Z: 211.744141
          }
          Rotation {
            Pitch: -7.33575249
            Yaw: -5.38012159e-08
            Roll: -9.10828781
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14625989685137500185
        Name: "Grass Short"
        Transform {
          Location {
            X: 674.849609
            Y: -820.447
            Z: 196.842773
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10216878706375146068
        Name: "Grass Short"
        Transform {
          Location {
            X: 670.140625
            Y: -658.75293
            Z: 240.478516
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9630552309137175666
        Name: "Grass Short"
        Transform {
          Location {
            X: 456.214844
            Y: -877.055664
            Z: 211.981445
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4361839487590777030
        Name: "Grass Short"
        Transform {
          Location {
            X: 432.029297
            Y: -687.118896
            Z: 254.15332
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17071234127521758638
        Name: "Grass Short"
        Transform {
          Location {
            X: 874.873047
            Y: -404.860596
            Z: 245.157227
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14780117762731579342
        Name: "Grass Short"
        Transform {
          Location {
            X: 898.199219
            Y: -233.416748
            Z: 255.272461
          }
          Rotation {
            Pitch: -3.05071759
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15290762659377823028
        Name: "Grass Short"
        Transform {
          Location {
            X: 801.607422
            Y: 49.2226562
            Z: 287.162109
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11304751418958219240
        Name: "Grass Short"
        Transform {
          Location {
            X: 1066.82812
            Y: -588.111572
            Z: 156.081055
          }
          Rotation {
            Pitch: -21.0982895
            Yaw: -0.252807558
            Roll: -11.4607105
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 281079176855271663
        Name: "Grass Short"
        Transform {
          Location {
            X: 1124.47852
            Y: -415.459229
            Z: 167.637695
          }
          Rotation {
            Pitch: -22.5000019
            Roll: -3.2411809
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10782079187896847519
        Name: "Grass Short"
        Transform {
          Location {
            X: 971.923828
            Y: -459.405029
            Z: 213.480469
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8282669450468740200
        Name: "Grass Short"
        Transform {
          Location {
            X: 1037.10547
            Y: -271.293945
            Z: 219.651367
          }
          Rotation {
            Pitch: -5.96396399
            Yaw: 0.231190905
            Roll: -2.22396827
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 487562038862952288
        Name: "Grass Short"
        Transform {
          Location {
            X: 1093.49805
            Y: -749.839111
            Z: 133.583008
          }
          Rotation {
            Pitch: -4.98995829
            Yaw: 10.2612934
            Roll: -12.8942776
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6505713333130938589
        Name: "Grass Short"
        Transform {
          Location {
            X: 1196.08789
            Y: -625.872314
            Z: 68.1191406
          }
          Rotation {
            Pitch: 1.3221128
            Yaw: 66.0527039
            Roll: -26.4814224
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16943204863678228352
        Name: "Grass Short"
        Transform {
          Location {
            X: 1210.24414
            Y: -494.328369
            Z: 108.041016
          }
          Rotation {
            Pitch: -18.9690456
            Yaw: 6.31458521
            Roll: -13.5583391
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9845372602283348891
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
            Id: 4044214825842439722
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 10777523509111713302
      Name: "Prism - 6-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_hexagon_hq_001"
      }
    }
    Assets {
      Id: 18198612390204212876
      Name: "Bricks Cobblestone Floor Arches 001"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_brick_cobblestone_floor_arch_001"
      }
    }
    Assets {
      Id: 3702365963781758101
      Name: "Teardrop - Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_truncated_teardrop_001"
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
      Id: 12889861000896994476
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 114278397929005302
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
      }
    }
    Assets {
      Id: 5512000712628422335
      Name: "Bark Dead Advanced 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bark_dead_001_uv"
      }
    }
    Assets {
      Id: 12416815806534727809
      Name: "Kelp Bush 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_kelp_bush_01"
      }
    }
    Assets {
      Id: 1984553197323830660
      Name: "Kelp Bush 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_kelp_bush_02"
      }
    }
    Assets {
      Id: 3179843506183788979
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 1964254608213071037
      Name: "Bark Redwood Advanced 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bark_redwood_001_uv"
      }
    }
    Assets {
      Id: 13161146325196931920
      Name: "Coral Table 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_coral_table_02"
      }
    }
    Assets {
      Id: 14281826121533999733
      Name: "Coral Tubes Small"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_coral_tube_small_01"
      }
    }
    Assets {
      Id: 11521250418432815603
      Name: "Ivy 05"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ivy_generic_005"
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
      Id: 15977747936357021178
      Name: "Ivy 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ivy_generic_003"
      }
    }
    Assets {
      Id: 2406204288165372094
      Name: "Decal Vines End 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_liane_002"
      }
    }
    Assets {
      Id: 7142781972612396783
      Name: "Arch Fancy Peaked 6m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_arch_fancy_ogive_6m_001"
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
      Id: 1626097446304398136
      Name: "Stucco Tintable"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_stucco_tint_001_uv"
      }
    }
    Assets {
      Id: 7147607578013694397
      Name: "Sphere - Half Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_002"
      }
    }
    Assets {
      Id: 17409295383154929877
      Name: "Wood Planks Beveled Painted 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_bevel_planks_white_001_uv"
      }
    }
    Assets {
      Id: 12371872750459640945
      Name: "Pipe"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_001"
      }
    }
    Assets {
      Id: 7754470856388882901
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
    Assets {
      Id: 8329339828071933523
      Name: "Concrete Basic 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_gen_concrete_001"
      }
    }
    Assets {
      Id: 7700976009969522757
      Name: "Fantasy Castle Accessory Roof 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_acc_roof_002"
      }
    }
    Assets {
      Id: 17853943551029294903
      Name: "Short Banner Fleur-de-lis"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_banner_003"
      }
    }
    Assets {
      Id: 10784387645319107096
      Name: "Tree Oak 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tree_oak_001"
      }
    }
    Assets {
      Id: 7363477334452929865
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 2148407408977013770
      Name: "Grass Clumps"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_002_uv"
      }
    }
    Assets {
      Id: 12478223806335538230
      Name: "Fern 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fern_generic_001"
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
      Id: 4044214825842439722
      Name: "Grass Short"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_grass_generic_002"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
}
