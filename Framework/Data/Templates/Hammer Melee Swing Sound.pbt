Assets {
  Id: 5202188592339298281
  Name: "Hammer Melee Swing Sound"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5008269954370499338
      Objects {
        Id: 5008269954370499338
        Name: "Hammer Melee Swing Sound"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "bp:Sword/Blade Type"
            Enum {
              Value: "mc:esfx_swordbladeswipes:20"
            }
          }
          Overrides {
            Name: "bp:Air Swoosh Type"
            Enum {
              Value: "mc:esfx_airswooshes:19"
            }
          }
          Overrides {
            Name: "bp:Sword/Blade Pitch"
            Float: -679.957275
          }
          Overrides {
            Name: "bp:Air Swoosh Pitch"
            Float: -600
          }
          Overrides {
            Name: "bp:Air Swoosh Volume"
            Float: 20
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
        Blueprint {
          BlueprintAsset {
            Id: 5588725286865802105
          }
          AudioBP {
            AutoPlay: true
            Transient: true
            Volume: 1
            Falloff: 3600
            Radius: 400
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:medium"
        }
      }
    }
    Assets {
      Id: 5588725286865802105
      Name: "Sword & Blade - Swings Swipes Air Swooshes Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_sword_blade_swooshes_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
  VirtualFolderPath: "Weapons"
}
