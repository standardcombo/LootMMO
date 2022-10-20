Assets {
  Id: 7454378427809590911
  Name: "AbilityHelper_Effect_CleaveTargetSelf"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4245423259916156308
      Objects {
        Id: 4245423259916156308
        Name: "AbilityHelper_Effect_CleaveTargetSelf"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15740479858028047010
        ChildIds: 3834515042759160821
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
        Id: 15740479858028047010
        Name: "Sword Blade Body Flesh Impact 01 SFX"
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
        ParentId: 4245423259916156308
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
            Id: 12403295330639135512
          }
          AutoPlay: true
          Volume: 0.4
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
        Id: 3834515042759160821
        Name: "Generic Player Impact VFX"
        Transform {
          Location {
            X: -7983.2207
            Y: -5596.74
            Z: -278.125732
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4245423259916156308
        ChildIds: 9755925762727770794
        ChildIds: 12923099324859924394
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.700000048
              G: 0.0417218767
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Mist"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Bits"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Pass Through"
            Bool: true
          }
          Overrides {
            Name: "bp:Mist Size"
            Float: 0.7
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.7
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
            Id: 16039011261841658489
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
        Id: 9755925762727770794
        Name: "Impact Sparks VFX"
        Transform {
          Location {
            Z: -0.761444092
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3834515042759160821
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.78
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 3
          }
          Overrides {
            Name: "bp:Enable Spark Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Hotspot"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Flash"
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
            Id: 11887549032181544333
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
        Id: 12923099324859924394
        Name: "Impact Sparks VFX"
        Transform {
          Location {
            Z: 16.0444336
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3834515042759160821
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.78
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 3
          }
          Overrides {
            Name: "bp:Enable Spark Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Hotspot"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Flash"
            Bool: false
          }
          Overrides {
            Name: "bp:Initial Velocity"
            Vector {
              X: 300
              Y: 300
              Z: 300
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
            Id: 11887549032181544333
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
      Id: 12403295330639135512
      Name: "Sword Blade Body Flesh Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sword_body_flesh_impact_01a_Cue_ref"
      }
    }
    Assets {
      Id: 16039011261841658489
      Name: "Generic Player Impact VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_player_impact"
      }
    }
    Assets {
      Id: 11887549032181544333
      Name: "Impact Sparks VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_impact_sparks"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
