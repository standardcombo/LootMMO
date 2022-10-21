Assets {
  Id: 3975813129004303590
  Name: "A Fancy Folding Fan"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8173585214867451857
      Objects {
        Id: 8173585214867451857
        Name: "The Sensu of Sesshomaru"
        Transform {
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5838154136893871693
        WantsNetworking: true
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
        Id: 5838154136893871693
        Name: "Japanese Hand Fan 01"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1.5999999
            Y: 1.5999999
            Z: 1.5999999
          }
        }
        ParentId: 8173585214867451857
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 3951878902125146760
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 4
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 4
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.357000023
              G: 0.0110669862
              B: 0.0110669862
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.229000017
              G: 0.0239958
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.357000023
              G: 0.0110669862
              B: 0.0110669862
              A: 1
            }
          }
        }
        WantsNetworking: true
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
            Id: 5507813529975068483
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
      Id: 5507813529975068483
      Name: "Japanese Hand Fan 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_jpn_fan_hand_001_ref"
      }
    }
    Assets {
      Id: 3951878902125146760
      Name: "Wallpaper Japanese Hex 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_jpn_wallpaper_hex_001_uv_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "Treasure"
}
