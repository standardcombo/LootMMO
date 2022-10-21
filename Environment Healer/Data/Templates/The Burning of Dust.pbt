Assets {
  Id: 2385867559129501973
  Name: "The Burning of Dust"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7819491199238990583
      Objects {
        Id: 7819491199238990583
        Name: "The Burning of Dust"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3481537406902442803
        ChildIds: 14422029589562979080
        ChildIds: 11497497978847806182
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
        Id: 14422029589562979080
        Name: "Fantasy Book 03"
        Transform {
          Location {
            Y: 1.90734863e-05
            Z: 11.7949219
          }
          Rotation {
            Yaw: -90
            Roll: -90
          }
          Scale {
            X: 1
            Y: 1.80000007
            Z: 1
          }
        }
        ParentId: 7819491199238990583
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.677000046
              G: 0.430910528
              B: 0.18482098
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.134
              G: 0.0531532131
              B: 0.0127300043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1512708355930270667
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 4
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
            Id: 10004921774949051980
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
      Objects {
        Id: 11497497978847806182
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
        ParentId: 7819491199238990583
        ChildIds: 4818887116873225040
        ChildIds: 17747938504624413228
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        NetworkContext {
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
        Id: 4818887116873225040
        Name: "Signal Flare"
        Transform {
          Location {
            Y: 1.71661377e-05
            Z: 11.7949219
          }
          Rotation {
          }
          Scale {
            X: 1.59996164
            Y: 1.59996164
            Z: 1.59996164
          }
        }
        ParentId: 11497497978847806182
        UnregisteredParameters {
          Overrides {
            Name: "bp:Flash"
            Bool: false
          }
          Overrides {
            Name: "bp:Smoke Life"
            Float: 3
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.171411425
          }
          Overrides {
            Name: "bp:Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:Central Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Coronal Glow"
            Bool: false
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Smoke Gravity"
            Float: 0.05
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 0.233333349
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5
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
        Blueprint {
          BlueprintAsset {
            Id: 12764320832246126584
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 17747938504624413228
        Name: "Signal Flare"
        Transform {
          Location {
            X: -0.0368652344
            Y: 1.41075706
            Z: 13.5631409
          }
          Rotation {
          }
          Scale {
            X: 1.59996164
            Y: 1.59996164
            Z: 1.59996164
          }
        }
        ParentId: 11497497978847806182
        UnregisteredParameters {
          Overrides {
            Name: "bp:Flash"
            Bool: false
          }
          Overrides {
            Name: "bp:Smoke Life"
            Float: 3
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.509688795
          }
          Overrides {
            Name: "bp:Sparks"
            Bool: true
          }
          Overrides {
            Name: "bp:Central Hot Spot"
            Bool: true
          }
          Overrides {
            Name: "bp:Coronal Glow"
            Bool: false
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Smoke Gravity"
            Float: 0.05
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 0.233333349
              A: 1
            }
          }
          Overrides {
            Name: "bp:Smoke"
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
        Blueprint {
          BlueprintAsset {
            Id: 12764320832246126584
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
      Id: 10004921774949051980
      Name: "Fantasy Book 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fan_book_003_ref"
      }
    }
    Assets {
      Id: 1512708355930270667
      Name: "Burning Wood"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_burning_erode"
      }
    }
    Assets {
      Id: 12764320832246126584
      Name: "Signal Flare"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Signal_Flare"
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
