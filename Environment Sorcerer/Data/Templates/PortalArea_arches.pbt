Assets {
  Id: 13089574437712349134
  Name: "PortalArea_arches"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7437434092068507395
      Objects {
        Id: 7437434092068507395
        Name: "Beams"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17284234759992919337
        ChildIds: 18023647716409628227
        ChildIds: 12618469618526330215
        ChildIds: 8850547322510159193
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
        Id: 18023647716409628227
        Name: "Fantasy Castle Pillar 01 Top"
        Transform {
          Location {
            X: 20.2121716
            Y: -56.5062828
            Z: 623.778259
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: -160.308731
            Roll: -89.9997559
          }
          Scale {
            X: 1.06314671
            Y: 0.817274034
            Z: 0.658836484
          }
        }
        ParentId: 7437434092068507395
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
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
            Id: 7822473577673662489
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12618469618526330215
        Name: "Fantasy Castle Pillar 01 Top"
        Transform {
          Location {
            X: 236.259323
            Y: -660.185059
            Z: -295.70755
          }
          Rotation {
            Pitch: 0.000129773587
            Yaw: 109.690208
            Roll: -3.05175781e-05
          }
          Scale {
            X: 1.63040495
            Y: 1.63040495
            Z: 1.63040495
          }
        }
        ParentId: 7437434092068507395
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 13576367259465906358
            }
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
            Id: 11679638938136483441
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8850547322510159193
        Name: "Fantasy Castle Pillar 01 Top"
        Transform {
          Location {
            X: -321.187256
            Y: 897.523438
            Z: -295.707764
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: -70.3094482
            Roll: 3.58067409e-05
          }
          Scale {
            X: 1.63
            Y: 1.63
            Z: 1.63
          }
        }
        ParentId: 7437434092068507395
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 13576367259465906358
            }
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
            Id: 11679638938136483441
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
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
      Id: 7822473577673662489
      Name: "Fantasy Castle Pillar 01 Mid"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_pillar_001_mid"
      }
    }
    Assets {
      Id: 11679638938136483441
      Name: "Fantasy Castle Pillar Wall 01 Arch"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_pillar_wall_001_arch_01"
      }
    }
    Assets {
      Id: 13576367259465906358
      Name: "Stone Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "stone_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
