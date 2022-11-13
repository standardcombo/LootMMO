Assets {
  Id: 5206884298318866926
  Name: "Helper_AttackUp"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6178124633342917694
      Objects {
        Id: 6178124633342917694
        Name: "Helper_AttackUp"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10126847082140571194
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
        Id: 10126847082140571194
        Name: "Blood"
        Transform {
          Location {
            Z: 11.9594727
          }
          Rotation {
          }
          Scale {
            X: 1.71977937
            Y: 1.71977937
            Z: 1.71977937
          }
        }
        ParentId: 6178124633342917694
        ChildIds: 14219935751461006569
        ChildIds: 5918148150618254311
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
        Id: 14219935751461006569
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
        ParentId: 10126847082140571194
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
            Id: 7902544077848658206
          }
          AutoPlay: true
          Pitch: -400
          Volume: 1
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
        Id: 5918148150618254311
        Name: "Group"
        Transform {
          Location {
            Z: 146.970566
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 0.907999
            Y: 0.907999
            Z: 0.907999
          }
        }
        ParentId: 10126847082140571194
        ChildIds: 8084803927833705368
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
        Id: 8084803927833705368
        Name: "Weapon Rain VFX"
        Transform {
          Location {
            X: -0.00341796875
            Z: -25.4355469
          }
          Rotation {
            Roll: 180
          }
          Scale {
            X: -0.320193112
            Y: -0.320193112
            Z: -0.320193112
          }
        }
        ParentId: 5918148150618254311
        UnregisteredParameters {
          Overrides {
            Name: "bp:Looping"
            Bool: true
          }
          Overrides {
            Name: "bp:Weapon Types"
            Enum {
              Value: "mc:eweaponcards:4"
            }
          }
          Overrides {
            Name: "bp:Density"
            Float: 2
          }
          Overrides {
            Name: "bp:Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.391218752
          }
          Overrides {
            Name: "bp:Enable Glowing Weapon"
            Bool: true
          }
          Overrides {
            Name: "bp:Velocity Scale"
            Float: -0.2
          }
          Overrides {
            Name: "bp:Glow Color"
            Color {
              R: 0.87
              G: 0.743245125
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 20
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 15552561872725913463
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
      Id: 7902544077848658206
      Name: "Sword Parry Swipe Metal 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sword_parry_swipe_metal_01a_Cue_ref"
      }
    }
    Assets {
      Id: 15552561872725913463
      Name: "Weapon Rain VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_swordRain"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
}
