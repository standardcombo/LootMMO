Assets {
  Id: 15956959895870896180
  Name: "Assassin Orc Deaths Shadow Attack Target"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15042360112529946824
      Objects {
        Id: 15042360112529946824
        Name: "Assassin Orc Deaths Shadow Attack Target"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16157739707212249441
        ChildIds: 15611780568830914232
        Lifespan: 1.5
        WantsNetworking: true
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
        Id: 16157739707212249441
        Name: "Ground Explosion VFX"
        Transform {
          Location {
            Z: -96
          }
          Rotation {
            Roll: 1.36603658e-05
          }
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 15042360112529946824
        ChildIds: 4726481249761175428
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Flash"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Fireball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Glow"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Burst Spikes"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Dust"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Shockwave"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Air Shockwave"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Spikes"
            Bool: true
          }
          Overrides {
            Name: "bp:Shockwave Color"
            Color {
              R: 0.98
              G: 0.292053074
              A: 0.483
            }
          }
          Overrides {
            Name: "bp:Smoke Color"
            Color {
              R: 0.98
              G: 0.292053
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 0.98
              G: 0.292053
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.98
              G: 0.292053
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 1.5
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 30
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
            Id: 2839312775702113675
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:high"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4726481249761175428
        Name: "AudioDelay"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 1.9636791e-05
            Roll: -2.8814859e-06
          }
          Scale {
            X: 1.57039487
            Y: 1.57039487
            Z: 1.57039487
          }
        }
        ParentId: 16157739707212249441
        UnregisteredParameters {
          Overrides {
            Name: "cs:DURATION"
            Float: 0.2
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
        Script {
          ScriptAsset {
            Id: 4511050349143547769
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15611780568830914232
        Name: "Plasma Muzzleflash VFX"
        Transform {
          Location {
            Z: 260
          }
          Rotation {
            Pitch: 180
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 15042360112529946824
        ChildIds: 17610113343288859956
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.98
              G: 0.292053
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5
          }
          Overrides {
            Name: "bp:Enable Ring"
            Bool: false
          }
          Overrides {
            Name: "bp:Particle Size Multiplier"
            Float: 2.8
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
            Id: 17189152410452932534
          }
          TeamSettings {
          }
          Vfx {
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
      Objects {
        Id: 17610113343288859956
        Name: "AudioDelay"
        Transform {
          Location {
            Z: -12.5
          }
          Rotation {
            Yaw: 1.96367855e-05
          }
          Scale {
            X: 0.785197377
            Y: 0.785197377
            Z: 0.785197377
          }
        }
        ParentId: 15611780568830914232
        UnregisteredParameters {
          Overrides {
            Name: "cs:DURATION"
            Float: 0.1
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
        Script {
          ScriptAsset {
            Id: 4511050349143547769
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 2839312775702113675
      Name: "Ground Explosion VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_mil_explosion_ground"
      }
    }
    Assets {
      Id: 17189152410452932534
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
  SerializationVersion: 123
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Ability"
  VirtualFolderPath: "Assets"
}
