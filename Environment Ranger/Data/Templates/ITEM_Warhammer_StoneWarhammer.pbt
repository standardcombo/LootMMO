Assets {
  Id: 7760367276622256369
  Name: "ITEM_Warhammer_StoneWarhammer"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14221847442462413670
      Objects {
        Id: 14221847442462413670
        Name: "ITEM_Warhammer_StoneWarhammer"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12887531952796808359
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 8687209533841484342
            }
          }
          Overrides {
            Name: "cs:AnimationStance"
            String: "2hand_melee_stance"
          }
          Overrides {
            Name: "cs:SOCKET_Right_Prop"
            ObjectReference {
              SubObjectId: 12887531952796808359
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
        Id: 12887531952796808359
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
        ChildIds: 10062385248183755162
        ChildIds: 13876885258422823326
        ChildIds: 2636193707127092346
        ChildIds: 473306448932725981
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
        Id: 10062385248183755162
        Name: "Fantasy Axe Grip 01"
        Transform {
          Location {
            Z: -50.150692
          }
          Rotation {
          }
          Scale {
            X: 1.21939731
            Y: 1.21939731
            Z: 1.45923281
          }
        }
        ParentId: 12887531952796808359
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
              R: 0.0625
              G: 0.0625
              B: 0.0625
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
              Id: 8541340586281732265
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 13876885258422823326
        Name: "Head"
        Transform {
          Location {
            Z: 42.2322464
          }
          Rotation {
          }
          Scale {
            X: 1.21591675
            Y: 1.21591675
            Z: 1.21591675
          }
        }
        ParentId: 12887531952796808359
        ChildIds: 12684157164943320367
        ChildIds: 9061936429063186613
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
        Id: 12684157164943320367
        Name: "Fantasy Hammer Head 01"
        Transform {
          Location {
            X: 9.0000267
            Z: 20.0000076
          }
          Rotation {
          }
          Scale {
            X: 0.187894568
            Y: 0.187894568
            Z: 0.187894568
          }
        }
        ParentId: 13876885258422823326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 8541340586281732265
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 9061936429063186613
        Name: "Fantasy Hammer Head 01"
        Transform {
          Location {
            X: -9.0000267
            Z: 20.0000076
          }
          Rotation {
            Yaw: -179.999939
          }
          Scale {
            X: 0.192408025
            Y: 0.192408025
            Z: 0.192408025
          }
        }
        ParentId: 13876885258422823326
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
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 2636193707127092346
        Name: "Fantasy Mace Guard 01"
        Transform {
          Location {
            Z: 13.5231123
          }
          Rotation {
          }
          Scale {
            X: 1.21024168
            Y: 1.21024168
            Z: 1.21024168
          }
        }
        ParentId: 12887531952796808359
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 473306448932725981
        Name: "Fantasy Hammer Guard 01"
        Transform {
          Location {
            Z: -56.1507339
          }
          Rotation {
          }
          Scale {
            X: 1.15187526
            Y: 1.15187526
            Z: 1.15187526
          }
        }
        ParentId: 12887531952796808359
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 8541340586281732265
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3077043113591575273
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
      Id: 8687209533841484342
      Name: "Fantasy Hammer 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Hammer_001"
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
      Id: 8541340586281732265
      Name: "Metal Iron Rusted 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_002"
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
      Id: 1381354497149909715
      Name: "Stone Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "stone_001"
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
