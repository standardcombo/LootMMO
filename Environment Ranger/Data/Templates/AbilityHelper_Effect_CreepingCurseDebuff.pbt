Assets {
  Id: 1066637007583221849
  Name: "AbilityHelper_Effect_CreepingCurseDebuff"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 455890127597309950
      Objects {
        Id: 455890127597309950
        Name: "AbilityHelper_Effect_CreepingCurseDebuff"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13493079439219016086
        Lifespan: 10
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
        Id: 13493079439219016086
        Name: "Road Flare"
        Transform {
          Location {
            Z: 221.025497
          }
          Rotation {
          }
          Scale {
            X: 2.34008
            Y: 2.34008
            Z: 1.29132068
          }
        }
        ParentId: 455890127597309950
        UnregisteredParameters {
          Overrides {
            Name: "bp:Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:FlameJet"
            Bool: false
          }
          Overrides {
            Name: "bp:Smoke"
            Bool: true
          }
          Overrides {
            Name: "bp:Coronal_Glow"
            Bool: true
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0903009176
              B: 0.114583336
              A: 1
            }
          }
          Overrides {
            Name: "bp:Smoke Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 3
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 2.3
          }
          Overrides {
            Name: "bp:Density"
            Float: 1
          }
          Overrides {
            Name: "bp:Coronal Emissive Boost"
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
        Blueprint {
          BlueprintAsset {
            Id: 18263838195174429559
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
      Id: 18263838195174429559
      Name: "Road Flare"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Road_Flare"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
