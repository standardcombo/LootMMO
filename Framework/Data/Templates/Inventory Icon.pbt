Assets {
  Id: 6369796579891266339
  Name: "Inventory Icon"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9519480929651841606
      Objects {
        Id: 9519480929651841606
        Name: "Inventory Icon"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6800252700034067522
        ChildIds: 6634531328857049192
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
        Id: 6634531328857049192
        Name: "Geo"
        Transform {
          Location {
            X: 0.778991699
            Y: 57.8166466
            Z: -41.8956299
          }
          Rotation {
            Yaw: 32.344986
          }
          Scale {
            X: 0.583330512
            Y: 0.583330512
            Z: 0.583330512
          }
        }
        ParentId: 9519480929651841606
        ChildIds: 2715736132811579934
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
        Id: 2715736132811579934
        Name: "Example UI Crate - Icon"
        Transform {
          Location {
            X: -7.08802128
            Y: 4.48865366
            Z: 26.4427299
          }
          Rotation {
            Pitch: 18.7362118
            Yaw: -5.48577881
            Roll: -32.3857727
          }
          Scale {
            X: 0.85969162
            Y: 0.85969162
            Z: 0.85969162
          }
        }
        ParentId: 6634531328857049192
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
            Id: 6892861472875270100
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 6892861472875270100
      Name: "Simple Crate 150cm"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crate_simple_150cm_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "Inventory"
}
