Assets {
  Id: 11751321570122047444
  Name: "AbilityHelper_Effect_WoundCast"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5987358707759769287
      Objects {
        Id: 5987358707759769287
        Name: "AbilityHelper_Effect_WoundCast"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11450046074595486310
        ChildIds: 14847464402895439223
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
        Id: 11450046074595486310
        Name: "Leather Gear Clothing Whoosh 01 SFX"
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
        ParentId: 5987358707759769287
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
            Id: 15367366665375883762
          }
          AutoPlay: true
          Volume: 0.5
          Falloff: 1500
          Radius: 2500
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14847464402895439223
        Name: "Plasma Muzzleflash VFX"
        Transform {
          Location {
            Z: 75
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 5987358707759769287
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.74
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2
          }
          Overrides {
            Name: "bp:Particle Size Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Enable Electrical Elements"
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
        Blueprint {
          BlueprintAsset {
            Id: 7862841815049611787
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
      Id: 15367366665375883762
      Name: "Leather Gear Clothing Whoosh 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_leather_clothing_whoosh_01a_Cue_ref"
      }
    }
    Assets {
      Id: 7862841815049611787
      Name: "Plasma Muzzle Flash VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasma_muzzleflash"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
