Assets {
  Id: 15213291372203662834
  Name: "AbilityHelper_Effect_DivineBlastCast"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4554060990196433136
      Objects {
        Id: 4554060990196433136
        Name: "AbilityHelper_Effect_DivineBlastCast"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15434238935578814743
        ChildIds: 1172424441923375811
        ChildIds: 1699219634953537169
        Lifespan: 3
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
        Id: 15434238935578814743
        Name: "Magic Bright Light Spell Cast 01 SFX"
        Transform {
          Location {
            X: 4423.69824
            Y: 4667.74609
            Z: 996.110962
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4554060990196433136
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
            Id: 16848893117836582991
          }
          AutoPlay: true
          Volume: 0.2
          Falloff: -1
          Radius: -1
          FadeOutTime: 3
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1172424441923375811
        Name: "Level Up VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.6
            Y: 0.6
            Z: 0.6
          }
        }
        ParentId: 4554060990196433136
        UnregisteredParameters {
          Overrides {
            Name: "bp:Ground Burst Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Outer Particle Swirls"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Ground Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Inner Spirals"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Beam"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Base Rays"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Spiral"
            Bool: false
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.8
          }
          Overrides {
            Name: "bp:Upward Velocity"
            Float: 25
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
            Id: 3096700893524267361
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
      Objects {
        Id: 1699219634953537169
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            X: -4486.02637
            Y: -4305.97754
            Z: 130.716858
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4554060990196433136
        UnregisteredParameters {
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.74
              G: 0.191125825
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 1092850666123875983
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
      Id: 16848893117836582991
      Name: "Magic Bright Light Spell Cast 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_bright_light_spell_cast_01_Cue_ref"
      }
    }
    Assets {
      Id: 3096700893524267361
      Name: "Level Up VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Level_Up"
      }
    }
    Assets {
      Id: 1092850666123875983
      Name: "Cast Burst Ring VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_cast_circle_generic"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
