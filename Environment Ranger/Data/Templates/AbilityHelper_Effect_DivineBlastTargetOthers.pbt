Assets {
  Id: 10381945042861298201
  Name: "AbilityHelper_Effect_DivineBlastTargetOthers"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3115913519535703581
      Objects {
        Id: 3115913519535703581
        Name: "AbilityHelper_Effect_DivineBlastTargetOthers"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17500946244164537639
        ChildIds: 9024017272366816740
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
        Id: 17500946244164537639
        Name: "Magic Frost Wind Whoosh 02 SFX"
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
        ParentId: 3115913519535703581
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
            Id: 8264557223244339436
          }
          AutoPlay: true
          Volume: 0.1
          Falloff: 3300
          Radius: -1
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9024017272366816740
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 111
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3115913519535703581
        ChildIds: 7296638292724270165
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.714437068
              G: 0.929999948
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.332582742
              G: 0.809999943
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.4
          }
          Overrides {
            Name: "bp:Count"
            Int: 3
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 3
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 1
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
      Objects {
        Id: 7296638292724270165
        Name: "Plasma Impact VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.659288228
            Y: 0.659288228
            Z: 0.659288228
          }
        }
        ParentId: 9024017272366816740
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 2
              G: 1.49999952
              B: 0.100000024
              A: 0.436000019
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 0
          }
          Overrides {
            Name: "bp:Enable Lightning Arc"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Plasma Core"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Impact Ring"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Plasma Radial"
            Bool: true
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
            Id: 12387224521968571600
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
      Id: 8264557223244339436
      Name: "Magic Frost Wind Whoosh 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_frost_wind_whoosh_02_Cue_ref"
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
    Assets {
      Id: 12387224521968571600
      Name: "Plasma Impact VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasma_impact"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
