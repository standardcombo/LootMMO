Assets {
  Id: 4448343537793806376
  Name: "Node_BirchTree_3"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7927894008764910879
      Objects {
        Id: 7927894008764910879
        Name: "Node_BirchTree_3"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 799306539458612209
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
        Id: 799306539458612209
        Name: "Tree Birch 01"
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
        ParentId: 7927894008764910879
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:color"
            Color {
              G: 0.121000007
              B: 0.0705833584
              A: 1
            }
          }
          Overrides {
            Name: "ma:Nature_Trunk:id"
            AssetReference {
              Id: 16312634948617448792
            }
          }
          Overrides {
            Name: "ma:Nature_Trunk:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Nature_Trunk:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 6788543086576276280
            }
          }
          Overrides {
            Name: "ma:Nature_Trunk:smart"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7136798186812893292
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 7136798186812893292
      Name: "Tree Birch 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tree_birch_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Harvesting"
  VirtualFolderPath: "NodeGeo"
}
