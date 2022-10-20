Assets {
  Id: 6869984067508925664
  Name: "ITEM_Warhammer_WoodenWarhammer"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14221847442462413670
      Objects {
        Id: 14221847442462413670
        Name: "ITEM_Warhammer_WoodenWarhammer"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1589897103681799204
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 1306233566151844622
            }
          }
          Overrides {
            Name: "cs:AnimationStance"
            String: "2hand_melee_stance"
          }
          Overrides {
            Name: "cs:SOCKET_Right_Prop"
            ObjectReference {
              SubObjectId: 1589897103681799204
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
        Id: 1589897103681799204
        Name: "Hammer"
        Transform {
          Location {
            Z: -5.08514404
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
        ChildIds: 3761044715536348033
        ChildIds: 16262330669536470685
        ChildIds: 8216781085631044723
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
        Id: 3761044715536348033
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
        ParentId: 1589897103681799204
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
              R: 0.994791687
              G: 0.606074452
              B: 0.248697922
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 16262330669536470685
        Name: "Head"
        Transform {
          Location {
            Z: 42.2322464
          }
          Rotation {
          }
          Scale {
            X: 0.947533548
            Y: 0.947533548
            Z: 0.947533548
          }
        }
        ParentId: 1589897103681799204
        ChildIds: 7091981346606830714
        ChildIds: 5809114620681535469
        ChildIds: 13012261103597050083
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
        Id: 7091981346606830714
        Name: "Fantasy Hammer Head 01"
        Transform {
          Location {
            Z: 19.9999886
          }
          Rotation {
            Yaw: -179.999939
          }
          Scale {
            X: 0.316170871
            Y: 0.186975256
            Z: 0.186975405
          }
        }
        ParentId: 16262330669536470685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2689515300535701625
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
              R: 0.4375
              G: 0.292303592
              B: 0.155978858
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
            Id: 7695830393755413980
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
        Id: 5809114620681535469
        Name: "Fantasy Hammer Head 01"
        Transform {
          Location {
            X: -10.855504
            Z: 9.4919
          }
          Rotation {
            Yaw: -179.999939
          }
          Scale {
            X: 0.080627881
            Y: 0.20236975
            Z: 0.202369377
          }
        }
        ParentId: 16262330669536470685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13761796555206813823
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 10291375382347379579
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
            Float: 0.32489115
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.174648046
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
        Id: 13012261103597050083
        Name: "Fantasy Hammer Head 01"
        Transform {
          Location {
            X: 11.262929
            Z: 9.4919
          }
          Rotation {
            Yaw: -179.999939
          }
          Scale {
            X: 0.080627881
            Y: 0.20236975
            Z: 0.202369377
          }
        }
        ParentId: 16262330669536470685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13761796555206813823
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 10291375382347379579
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
            Float: 0.32489115
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.174648046
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
        Id: 8216781085631044723
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
        ParentId: 1589897103681799204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
    }
    Assets {
      Id: 1306233566151844622
      Name: "Fantasy Hammer 007"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Hammer_007"
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
      Id: 7695830393755413980
      Name: "Cube - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_003"
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
      Id: 3077043113591575273
      Name: "Metal Iron Rusted 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_003"
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
      Id: 10291375382347379579
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
