Assets {
  Id: 16354732930197094246
  Name: "AbilityHelper_Effect_CosmicBlastCast"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2519461878471171563
      Objects {
        Id: 2519461878471171563
        Name: "AbilityHelper_Effect_CosmicBlastCast"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9330876200673674493
        ChildIds: 15518284972391373252
        ChildIds: 1747408777462290173
        ChildIds: 1645344112299527232
        ChildIds: 17650303894966734758
        ChildIds: 12329362287827803089
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
        Id: 9330876200673674493
        Name: "Magic Dark Whoosh 01 SFX"
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
        ParentId: 2519461878471171563
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
            Id: 6610911296460171669
          }
          AutoPlay: true
          Pitch: -1100
          Volume: 0.4
          Falloff: -1
          Radius: -1
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15518284972391373252
        Name: "Magic Dark Portal Spell Cast 01 SFX"
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
        ParentId: 2519461878471171563
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
            Id: 13338949103821379181
          }
          AutoPlay: true
          Volume: 0.4
          Falloff: 1300
          Radius: 3050
          FadeOutTime: 1
          StartTime: 1
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1747408777462290173
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
        ParentId: 2519461878471171563
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.386159301
              B: 0.49
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Spiral"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Base Rays"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Beam"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Inner Spirals"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Ground Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Outer Particle Swirls"
            Bool: true
          }
          Overrides {
            Name: "bp:Ground Burst Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: true
          }
          Overrides {
            Name: "bp:Ground Element Color"
            Color {
              R: 0.141854391
              B: 0.179999948
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Color"
            Color {
              R: 0.0701987445
              B: 0.200000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 25
          }
          Overrides {
            Name: "bp:Upward Velocity"
            Float: 8
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
        Id: 1645344112299527232
        Name: "Level Up VFX"
        Transform {
          Location {
            Z: 25
          }
          Rotation {
          }
          Scale {
            X: 0.6
            Y: 0.6
            Z: 0.6
          }
        }
        ParentId: 2519461878471171563
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.387814641
              B: 0.480000019
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Spiral"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Base Rays"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Beam"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Inner Spirals"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Ground Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Outer Particle Swirls"
            Bool: true
          }
          Overrides {
            Name: "bp:Ground Burst Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: false
          }
          Overrides {
            Name: "bp:Ground Element Color"
            Color {
              R: 0.194966927
              B: 0.320000052
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Color"
            Color {
              R: 0.0701987445
              B: 0.200000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 1.5
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 23
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
        Id: 17650303894966734758
        Name: "Level Up VFX"
        Transform {
          Location {
            Z: 15
          }
          Rotation {
          }
          Scale {
            X: 0.6
            Y: 0.6
            Z: 0.6
          }
        }
        ParentId: 2519461878471171563
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.387814641
              B: 0.480000019
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Spiral"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Base Rays"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Beam"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Inner Spirals"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Ground Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Outer Particle Swirls"
            Bool: true
          }
          Overrides {
            Name: "bp:Ground Burst Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: false
          }
          Overrides {
            Name: "bp:Ground Element Color"
            Color {
              R: 0.194966927
              B: 0.320000052
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Color"
            Color {
              R: 0.0701987445
              B: 0.200000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 2
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 23
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
        Id: 12329362287827803089
        Name: "Flare Ray VFX"
        Transform {
          Location {
            Z: 500
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2519461878471171563
        ChildIds: 8826693327192675388
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.572516859
              B: 0.909999967
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 0.257947147
              B: 0.409999967
              A: 1
            }
          }
          Overrides {
            Name: "bp:color c"
            Color {
              R: 0.171125859
              B: 0.38
              A: 1
            }
          }
          Overrides {
            Name: "bp:Ray Width"
            Float: 125
          }
          Overrides {
            Name: "bp:Ray Height"
            Float: 55
          }
          Overrides {
            Name: "bp:Emissive Brightness"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Ray Appearance"
            Enum {
              Value: "mc:erayappearance:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Ray Color Method"
            Enum {
              Value: "mc:eraycoloringoptions:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Depth Fade"
            Float: 0.216677487
          }
        }
        Lifespan: 1.3
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
            Id: 810853486133637096
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
        Id: 8826693327192675388
        Name: "Lerp Float Smart Property"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12329362287827803089
        UnregisteredParameters {
          Overrides {
            Name: "cs:EffectObject"
            ObjectReference {
              SubObjectId: 12329362287827803089
            }
          }
          Overrides {
            Name: "cs:SmartPropertyName"
            String: "Emissive Brightness"
          }
          Overrides {
            Name: "cs:StartValue"
            Float: 0.2
          }
          Overrides {
            Name: "cs:EndValue"
            Float: 0
          }
          Overrides {
            Name: "cs:LerpDuration"
            Float: 1
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelayRange"
            Vector2 {
            }
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 1
          }
          Overrides {
            Name: "cs:BounceOnRepeat"
            Bool: false
          }
          Overrides {
            Name: "cs:IntervalDelayRange"
            Vector2 {
            }
          }
          Overrides {
            Name: "cs:StartLerpEventName"
            String: ""
          }
          Overrides {
            Name: "cs:StopLerpEventName"
            String: ""
          }
          Overrides {
            Name: "cs:OnLerpStartedEventName"
            String: ""
          }
          Overrides {
            Name: "cs:OnLerpStoppedEventName"
            String: ""
          }
          Overrides {
            Name: "cs:EffectObject:tooltip"
            String: "VFX or Audio object to lerp a property on"
          }
          Overrides {
            Name: "cs:SmartPropertyName:tooltip"
            String: "Smart property to lerp"
          }
          Overrides {
            Name: "cs:AutoStart:tooltip"
            String: "If true, the lerp starts automatically at the beginning of the game."
          }
          Overrides {
            Name: "cs:StartDelayRange:tooltip"
            String: "Lerp is delayed by a random time in this range when started"
          }
          Overrides {
            Name: "cs:BounceOnRepeat:tooltip"
            String: "Whether to reverse alternating lerps, so that it bounces back and forth"
          }
          Overrides {
            Name: "cs:IntervalDelayRange:tooltip"
            String: "Random delay time between each lerp"
          }
          Overrides {
            Name: "cs:LerpDuration:tooltip"
            String: "Duration of each lerp"
          }
          Overrides {
            Name: "cs:RepeatCount:tooltip"
            String: "Number of times to lerp. If set to -1, lerp indefinitely."
          }
          Overrides {
            Name: "cs:OnLerpStoppedEventName:tooltip"
            String: "Event that will be broadcasted when the lerp ends all repeats"
          }
          Overrides {
            Name: "cs:OnLerpStartedEventName:tooltip"
            String: "Event that will be broadcasted when the lerp starts"
          }
          Overrides {
            Name: "cs:StopLerpEventName:tooltip"
            String: "This event will trigger this lerp to end."
          }
          Overrides {
            Name: "cs:StartLerpEventName:tooltip"
            String: "This event will trigger this lerp to start."
          }
          Overrides {
            Name: "cs:StartValue:tooltip"
            String: "Lerp start value"
          }
          Overrides {
            Name: "cs:EndValue:tooltip"
            String: "Lerp end value"
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
            Id: 9682000431034342808
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 6610911296460171669
      Name: "Magic Dark Whoosh 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_dark_whoosh_01_Cue_ref"
      }
    }
    Assets {
      Id: 13338949103821379181
      Name: "Magic Dark Portal Spell Cast 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_dark_portal_spell_cast_01_Cue_ref"
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
      Id: 810853486133637096
      Name: "Flare Ray VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ray_system"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
