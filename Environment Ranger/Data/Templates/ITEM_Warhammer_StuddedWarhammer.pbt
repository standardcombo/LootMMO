Assets {
  Id: 10872694883122482428
  Name: "ITEM_Warhammer_StuddedWarhammer"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14221847442462413670
      Objects {
        Id: 14221847442462413670
        Name: "ITEM_Warhammer_StuddedWarhammer"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17121006160913565418
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 1748191403758594023
            }
          }
          Overrides {
            Name: "cs:AnimationStance"
            String: "2hand_melee_stance"
          }
          Overrides {
            Name: "cs:SOCKET_Right_Prop"
            ObjectReference {
              SubObjectId: 17121006160913565418
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17121006160913565418
        Name: "Hammer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.23699093
            Y: 1.23699093
            Z: 1.23699093
          }
        }
        ParentId: 14221847442462413670
        ChildIds: 10224275105862172556
        ChildIds: 8080979995544271733
        ChildIds: 8305595850113415839
        ChildIds: 12135145744353701904
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
        Id: 10224275105862172556
        Name: "Fantasy Axe Grip 01"
        Transform {
          Location {
            Z: -57.4970703
          }
          Rotation {
          }
          Scale {
            X: 1.21939731
            Y: 1.21939731
            Z: 1.45923281
          }
        }
        ParentId: 17121006160913565418
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12386794446411920970
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 18.9114857
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 33.7538338
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13761796555206813823
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 22.7633896
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 46.6893
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.713541687
              G: 0.43353048
              B: 0.325542
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
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
            Id: 820217430221713418
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
        Id: 8080979995544271733
        Name: "Head"
        Transform {
          Location {
            Z: 31.8912773
          }
          Rotation {
          }
          Scale {
            X: 1.32051992
            Y: 1.32051992
            Z: 1.32051992
          }
        }
        ParentId: 17121006160913565418
        ChildIds: 2142170656663309272
        ChildIds: 13182225615477036973
        ChildIds: 440492672427841933
        ChildIds: 16535584507928967886
        ChildIds: 9168070662944419040
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
        Id: 2142170656663309272
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: 0.674042761
            Y: -8.97418308
            Z: 19.7066898
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.114641681
            Y: 0.114641681
            Z: 0.114641681
          }
        }
        ParentId: 8080979995544271733
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1381354497149909715
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 13182225615477036973
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: 0.674042761
            Y: 8.99084663
            Z: 19.7066898
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.114641681
            Y: 0.114641681
            Z: 0.114641681
          }
        }
        ParentId: 8080979995544271733
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1381354497149909715
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 440492672427841933
        Name: "Fantasy Hammer Head 01"
        Transform {
          Location {
            X: 0.679875
            Z: 10.7921829
          }
          Rotation {
            Yaw: -179.999939
          }
          Scale {
            X: 0.325823
            Y: 0.180047274
            Z: 0.180047423
          }
        }
        ParentId: 8080979995544271733
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1381354497149909715
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1381354497149909715
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 30.7657471
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 50.0506
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.3
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 31.4870071
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 44.5748482
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 3077043113591575273
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
              G: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14188491484766840409
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
        Id: 16535584507928967886
        Name: "Fantasy Hammer Head 01"
        Transform {
          Location {
            X: -10.4739075
            Z: 19.9999695
          }
          Rotation {
            Yaw: -179.999939
          }
          Scale {
            X: 0.0543974116
            Y: 0.202369809
            Z: 0.202369377
          }
        }
        ParentId: 8080979995544271733
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 8541340586281732265
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 30.7657471
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 50.0506
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.197840914
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.983172774
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 31.4870071
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 44.5748482
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 3077043113591575273
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
              G: 0.578145742
              B: 0.3
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
            Id: 666374143927038811
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
        Id: 9168070662944419040
        Name: "Fantasy Hammer Head 01"
        Transform {
          Location {
            X: 11.6445255
            Z: 19.9999695
          }
          Rotation {
            Yaw: -179.999939
          }
          Scale {
            X: 0.0543974116
            Y: 0.202369809
            Z: 0.202369377
          }
        }
        ParentId: 8080979995544271733
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 8541340586281732265
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 30.7657471
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 50.0506
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.197840914
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.983172774
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 31.4870071
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 44.5748482
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 3077043113591575273
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
              G: 0.578145742
              B: 0.3
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
            Id: 666374143927038811
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
        Id: 8305595850113415839
        Name: "Fantasy Mace Guard 01"
        Transform {
          Location {
            Z: -64.8230209
          }
          Rotation {
          }
          Scale {
            X: 1.21024168
            Y: 1.21024168
            Z: 2.00543261
          }
        }
        ParentId: 17121006160913565418
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
            Id: 273448105943087596
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
        Id: 12135145744353701904
        Name: "Fantasy Hammer Guard 01"
        Transform {
          Location {
            Z: -80.0057373
          }
          Rotation {
          }
          Scale {
            X: 1.42071259
            Y: 1.42071259
            Z: 1.42071259
          }
        }
        ParentId: 17121006160913565418
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 31.4870071
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 40.6288223
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 25.5597343
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 52.4248199
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1863549408108808768
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
    }
    Assets {
      Id: 1748191403758594023
      Name: "Fantasy Hammer 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Hammer_002"
      }
    }
    Assets {
      Id: 820217430221713418
      Name: "Fantasy Axe Grip 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_grip_axe_001"
      }
    }
    Assets {
      Id: 12386794446411920970
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
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
      Id: 11337413471323694429
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
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
      Id: 1381354497149909715
      Name: "Stone Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "stone_001"
      }
    }
    Assets {
      Id: 14188491484766840409
      Name: "Cube - Arcade 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_arcade_cube_001"
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
      Id: 666374143927038811
      Name: "Cube - Chamfered Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_chamfer"
      }
    }
    Assets {
      Id: 8541340586281732265
      Name: "Metal Iron Rusted 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_002"
      }
    }
    Assets {
      Id: 273448105943087596
      Name: "Fantasy Mace Guard 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_guard_mace_001"
      }
    }
    Assets {
      Id: 1863549408108808768
      Name: "Fantasy Hammer Guard 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_guard_hammer_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
