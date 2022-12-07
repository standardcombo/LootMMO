Assets {
  Id: 2576864945443041003
  Name: "Small_palm"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16295755683547083001
      Objects {
        Id: 16295755683547083001
        Name: "Small_palm"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10143524279940654328
        ChildIds: 17624963925719290447
        ChildIds: 4182307201867080222
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
        Id: 10143524279940654328
        Name: "Kelp Bush 01"
        Transform {
          Location {
            X: -0.966796875
            Y: 1.77148438
            Z: 121.889648
          }
          Rotation {
            Yaw: -5.32648325
          }
          Scale {
            X: 1.12164593
            Y: 1.12164593
            Z: 1.12164593
          }
        }
        ParentId: 16295755683547083001
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
              R: 0.032864254
              G: 0.0800000429
              B: 0.0312500149
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17624963925719290447
        Name: "Tree Oak Stump 01"
        Transform {
          Location {
            X: 2.06835938
            Y: -3.80078125
            Z: 25.9023438
          }
          Rotation {
          }
          Scale {
            X: 0.0946011
            Y: 0.0946011
            Z: 0.385304868
          }
        }
        ParentId: 16295755683547083001
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Trunk:id"
            AssetReference {
              Id: 6883788449530957799
            }
          }
          Overrides {
            Name: "ma:Nature_Trunk:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Nature_Trunk:utile"
            Float: 0.228898808
          }
          Overrides {
            Name: "ma:Nature_Trunk:vtile"
            Float: 0.493734181
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
            Id: 12558067698426651158
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4182307201867080222
        Name: "Kelp Bush 01"
        Transform {
          Location {
            X: 4.50195312
            Y: -0.0703125
            Z: 139.467773
          }
          Rotation {
            Yaw: 115.510078
          }
          Scale {
            X: 0.976167738
            Y: 0.976167738
            Z: 1.89688194
          }
        }
        ParentId: 16295755683547083001
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
              R: 0.032864254
              G: 0.0800000429
              B: 0.0312500149
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
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
      Id: 12558067698426651158
      Name: "Tree Oak Stump 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tree_oak_stump_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "Outdoors Props"
}
