Assets {
  Id: 4898860718920247137
  Name: "AbilityHelper_Effect_PhaseOutCast"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17964785927858343572
      Objects {
        Id: 17964785927858343572
        Name: "AbilityHelper_Effect_PhaseOutCast"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3781943601209536572
        ChildIds: 15014622230822476765
        Lifespan: 2
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 3781943601209536572
        Name: "Sci-fi Barrier Energy Shield Small Impact Startup 04 SFX"
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
        ParentId: 17964785927858343572
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 11614720705808348939
          }
          AutoPlay: true
          Volume: 0.5
          Falloff: 2000
          Radius: 3500
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15014622230822476765
        Name: "Beam Up Teleport VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.743434668
            Y: 0.743434668
            Z: 0.743434668
          }
        }
        ParentId: 17964785927858343572
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.381655902
              B: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "bp:Particle Color"
            Color {
              R: 0.273377627
              B: 0.480000019
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Ground Element Color"
            Color {
              R: 0.138278171
              B: 0.179999948
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Color"
            Color {
              R: 0.0338363647
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Spiral Elements"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Central Flare Element"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Ground Hot Spot"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Central Particles"
            Bool: false
          }
          Overrides {
            Name: "bp:Teleport Duration"
            Float: 0.65
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
        Blueprint {
          BlueprintAsset {
            Id: 17751238382294660233
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
      Id: 11614720705808348939
      Name: "Sci-fi Barrier Energy Shield Small Impact Startup 04 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_scifi_barrier_energy_shield_small_impact_startup_04a_Cue_ref"
      }
    }
    Assets {
      Id: 17751238382294660233
      Name: "Beam Up Teleport VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Teleporter"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
