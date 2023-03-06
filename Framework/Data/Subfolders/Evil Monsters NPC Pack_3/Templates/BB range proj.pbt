Assets {
  Id: 10420786300019942175
  Name: "BB range proj"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10057183917158700076
      Objects {
        Id: 10057183917158700076
        Name: "BB range proj"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12304283103287692579
        ChildIds: 6214945528193967377
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
        Id: 12304283103287692579
        Name: "Basic Pepper 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 180
            Yaw: 90
            Roll: -90
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.8
          }
        }
        ParentId: 10057183917158700076
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16694215187130078105
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
            Id: 458809079388447445
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
      Objects {
        Id: 6214945528193967377
        Name: "Basic Water Splash VFX"
        Transform {
          Location {
            X: 31.317627
          }
          Rotation {
            Pitch: 60
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10057183917158700076
        UnregisteredParameters {
          Overrides {
            Name: "bp:Looping"
            Bool: true
          }
          Overrides {
            Name: "bp:Loop Duration"
            Float: 0.01
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: false
          }
          Overrides {
            Name: "bp:Gravity"
            Float: -4.53422642
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.24000001
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
        Blueprint {
          BlueprintAsset {
            Id: 11273470069309136148
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 458809079388447445
      Name: "Basic Pepper 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_org_pepper_001_ref"
      }
    }
    Assets {
      Id: 11273470069309136148
      Name: "Basic Water Splash VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_watersplash"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
}
