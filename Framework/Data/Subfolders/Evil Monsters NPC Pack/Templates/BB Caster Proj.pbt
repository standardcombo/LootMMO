Assets {
  Id: 3695011270334962953
  Name: "BB Caster Proj"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4708680347741239728
      Objects {
        Id: 4708680347741239728
        Name: "BB Caster Proj"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5855540808686380068
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.52
              B: 0.0619865954
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 22.2791882
          }
          Overrides {
            Name: "bp:Initial Velocity"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
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
            Id: 17489278419866888461
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
        Id: 5855540808686380068
        Name: "Spark Trail Wavy VFX"
        Transform {
          Location {
            Z: 10.5820312
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4708680347741239728
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 22.2791882
          }
          Overrides {
            Name: "bp:Life"
            Float: 2.49442196
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 1.63287449
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.52
              B: 0.0619865954
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spawn Radius"
            Float: 2.76634097
          }
          Overrides {
            Name: "bp:Chaos"
            Float: 0
          }
          Overrides {
            Name: "bp:Density"
            Float: 1.03831232
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
            Id: 10512475014164524007
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
      Id: 17489278419866888461
      Name: "Torch Fire VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_torch_fire"
      }
    }
    Assets {
      Id: 10512475014164524007
      Name: "Spark Trail Wavy VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_spark_trail_wavy"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
}
