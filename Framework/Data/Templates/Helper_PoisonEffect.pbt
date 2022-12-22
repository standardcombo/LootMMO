Assets {
  Id: 3466880615205517635
  Name: "Helper_PoisonEffect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10432915752075773829
      Objects {
        Id: 10432915752075773829
        Name: "Helper_PoisonEffect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14162296025304194376
        ChildIds: 4836173587469706583
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 4836173587469706583
        Name: "Stars"
        Transform {
          Location {
            Z: 110.059082
          }
          Rotation {
          }
          Scale {
            X: 0.829055071
            Y: 0.829055071
            Z: 0.829055071
          }
        }
        ParentId: 10432915752075773829
        ChildIds: 12678635461681307749
        ChildIds: 7105189765957330637
        ChildIds: 12449143687008166402
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
        Id: 12678635461681307749
        Name: "Magic Dark Large Item Collect 01 SFX"
        Transform {
          Location {
            Z: 180
          }
          Rotation {
          }
          Scale {
            X: 1.20619249
            Y: 1.20619249
            Z: 1.20619249
          }
        }
        ParentId: 4836173587469706583
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
            Id: 8585786257765314832
          }
          AutoPlay: true
          Pitch: 400
          Volume: 1
          Falloff: -1
          Radius: -1
          FadeInTime: 1.5
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7105189765957330637
        Name: "Magic Dark Large Item Collect 01 SFX"
        Transform {
          Location {
            Z: 180.000076
          }
          Rotation {
          }
          Scale {
            X: 1.20619249
            Y: 1.20619249
            Z: 1.20619249
          }
        }
        ParentId: 4836173587469706583
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
            Id: 9967979245780796155
          }
          AutoPlay: true
          Volume: 0.3
          Falloff: -1
          Radius: -1
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12449143687008166402
        Name: "Smoke Puff Radial VFX"
        Transform {
          Location {
            Z: 159.543106
          }
          Rotation {
          }
          Scale {
            X: 1.20619249
            Y: 1.20619249
            Z: 0.2
          }
        }
        ParentId: 4836173587469706583
        UnregisteredParameters {
          Overrides {
            Name: "bp:Burst"
            Bool: false
          }
          Overrides {
            Name: "bp:Density"
            Float: 3.11165404
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.60608238
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.64
              B: 0.0169537347
              A: 1
            }
          }
          Overrides {
            Name: "bp:Local Space"
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
            Id: 11736239447341257999
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
      Id: 8585786257765314832
      Name: "Creature Beast Huff Long 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_creature_beast_huff_long_01_Cue_ref"
      }
    }
    Assets {
      Id: 9967979245780796155
      Name: "Cooking Food Drop Frying Sizzle 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_cooking_food_drop_frying_sizzle_01a_Cue_ref"
      }
    }
    Assets {
      Id: 11736239447341257999
      Name: "Smoke Puff Radial VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_smoke_puff_radial"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Ability"
  VirtualFolderPath: "StatusEffects"
}
