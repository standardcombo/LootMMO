Assets {
  Id: 13033197038424522750
  Name: "Staff Melee Swing Sound"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2701017997616595765
      Objects {
        Id: 2701017997616595765
        Name: "Staff Melee Swing Sound"
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
              Value: "mc:esfx_airswooshes:12"
            }
          }
          Overrides {
            Name: "bp:Sword/Blade Pitch"
            Float: -100
          }
          Overrides {
            Name: "bp:Air Swoosh Pitch"
            Float: -200
          }
          Overrides {
            Name: "bp:Air Swoosh Volume"
            Float: 10
          }
          Overrides {
            Name: "bp:Sword/Blade Volume"
            Float: 25
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
          Value: "mc:eproxyrelevance:critical"
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
  SerializationVersion: 116
  VirtualFolderPath: "Weapons"
}
