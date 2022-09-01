Assets {
  Id: 17610051242321523395
  Name: "DailyRPCrateEffectCharge_Epic"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 18445847277421588491
      Objects {
        Id: 18445847277421588491
        Name: "DailyRPCrateEffectCharge_Epic"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16915664122484249031
        ChildIds: 1357453018654605033
        ChildIds: 3284204979018815271
        ChildIds: 3408151384527979817
        ChildIds: 15998283170944266995
        ChildIds: 3479631477142864642
        ChildIds: 14506553645961402819
        Lifespan: 8
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16915664122484249031
        Name: "Charge Up Effect"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 3.5
            Y: 3.5
            Z: 3.5
          }
        }
        ParentId: 18445847277421588491
        UnregisteredParameters {
          Overrides {
            Name: "bp:Charge Up Duration"
            Float: 4
          }
          Overrides {
            Name: "bp:Enable Outer Core"
            Bool: false
          }
          Overrides {
            Name: "bp:Ring Size"
            Float: 3
          }
          Overrides {
            Name: "bp:Ring Density"
            Float: 3
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 30
          }
          Overrides {
            Name: "bp:Inner Core Color"
            Color {
              R: 0.363249958
              G: 0.150999963
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.166666985
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Ring Color"
            Color {
              R: 0.10376671
              B: 0.566000044
              A: 1
            }
          }
          Overrides {
            Name: "bp:Outer Core Color"
            Color {
              R: 0.400000155
              G: 0.24999994
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Outer Core Edge Color"
            Color {
              R: 9.84756756
              G: 8.2794342
              B: 15
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 11589177028607376843
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
      Objects {
        Id: 1357453018654605033
        Name: "Lerp Float Smart Property"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18445847277421588491
        UnregisteredParameters {
          Overrides {
            Name: "cs:EffectObject"
            ObjectReference {
              SubObjectId: 3284204979018815271
            }
          }
          Overrides {
            Name: "cs:SmartPropertyName"
            String: "Pulse Scale"
          }
          Overrides {
            Name: "cs:StartValue"
            Float: 0
          }
          Overrides {
            Name: "cs:EndValue"
            Float: 1
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
              X: 4
              Y: 4
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
      Objects {
        Id: 3284204979018815271
        Name: "Pulse Scan Post Process"
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
        ParentId: 18445847277421588491
        UnregisteredParameters {
          Overrides {
            Name: "bp:Pulse Scale"
            Float: 0
          }
          Overrides {
            Name: "bp:Texture Pattern"
            Enum {
              Value: "mc:escanpulsetexturepattern:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Pulse Color"
            Color {
              R: 0.500001907
              B: 5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pulse Range"
            Float: 100
          }
          Overrides {
            Name: "bp:Line Highlight Width"
            Float: 14.0515432
          }
          Overrides {
            Name: "bp:Draw Hot Leading Edge"
            Bool: true
          }
          Overrides {
            Name: "bp:Pulse Min Range"
            Float: 1
          }
          Overrides {
            Name: "bp:Line Color"
            Color {
              R: 22.5000153
              B: 150
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 7681455597662509058
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3408151384527979817
        Name: "Effect Controller"
        Transform {
          Location {
            X: 275.000458
            Y: 875.001709
            Z: 425
          }
          Rotation {
            Pitch: -44.999958
            Yaw: -179.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18445847277421588491
        UnregisteredParameters {
          Overrides {
            Name: "cs:EffectObject"
            ObjectReference {
              SubObjectId: 15998283170944266995
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 1
          }
          Overrides {
            Name: "cs:StartDelayRange"
            Vector2 {
              X: 4
              Y: 4
            }
          }
          Overrides {
            Name: "cs:IntervalDelayRange"
            Vector2 {
            }
          }
          Overrides {
            Name: "cs:PlayEffectEventName"
            String: ""
          }
          Overrides {
            Name: "cs:StopEffectEventName"
            String: ""
          }
          Overrides {
            Name: "cs:OnPlayedEventName"
            String: ""
          }
          Overrides {
            Name: "cs:OnStoppedEventName"
            String: ""
          }
          Overrides {
            Name: "cs:AutoStart:tooltip"
            String: "If true, the specified effect object will play at the start of the game automatically."
          }
          Overrides {
            Name: "cs:EffectObject:tooltip"
            String: "Reference to a Vfx or Audio object in the hierarchy that you wish to Play or Stop."
          }
          Overrides {
            Name: "cs:RepeatCount:tooltip"
            String: "Number of times the Effect Object is played. If set to -1, the effect will keep calling Play() infinitely."
          }
          Overrides {
            Name: "cs:StartDelayRange:tooltip"
            String: "Random start delay range to play the Effect Object at the start of the game."
          }
          Overrides {
            Name: "cs:IntervalDelayRange:tooltip"
            String: "Random delay time between each lerp repeat."
          }
          Overrides {
            Name: "cs:OnPlayedEventName:tooltip"
            String: "Specify the event name that will be broadcasted once the Effect Object is played. Leave empty if you don\'t wish to broadcast any event on Play() call."
          }
          Overrides {
            Name: "cs:OnStoppedEventName:tooltip"
            String: "Specify the event name that will be broadcasted once the Effect Object is stopped. Leave empty if you don\'t wish to broadcast any event on Stop() call."
          }
          Overrides {
            Name: "cs:PlayEffectEventName:tooltip"
            String: "Specify the event name that will be listened by this script to Play() the Effect Object. Leave empty if you don\'t wish this script to listen to any event."
          }
          Overrides {
            Name: "cs:StopEffectEventName:tooltip"
            String: "Specify the event name that will be listened by this script to Stop() the Effect Object. Leave empty if you don\'t wish this script to listen to any event."
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
            Id: 8669677169670126854
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15998283170944266995
        Name: "Open Sound"
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
        ParentId: 18445847277421588491
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
        AudioInstance {
          AudioAsset {
            Id: 9612536851815782467
          }
          Volume: 1
          Falloff: -1
          Radius: -1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3479631477142864642
        Name: "Wood Wheel Turning Movement Loop 02 SFX"
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
        ParentId: 18445847277421588491
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
        AudioInstance {
          AudioAsset {
            Id: 13958527150795101532
          }
          AutoPlay: true
          Pitch: -300
          Volume: 1
          Falloff: -1
          Radius: -1
          FadeInTime: 1
          FadeOutTime: 0.5
          StartTime: 2
          StopTime: 6
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14506553645961402819
        Name: "Magical Buildup Riser Whoosh Sparkles 04 SFX"
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
        ParentId: 18445847277421588491
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
        AudioInstance {
          AudioAsset {
            Id: 14213056283951495950
          }
          AutoPlay: true
          Pitch: -400
          Volume: 1
          Falloff: -1
          Radius: -1
          FadeInTime: 0.2
          StartTime: 0.4
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 11589177028607376843
      Name: "Energy Charge Up Start VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ChargeUp_var1"
      }
    }
    Assets {
      Id: 7681455597662509058
      Name: "Pulse Scan Post Process"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_ppm_pulse_scan"
      }
    }
    Assets {
      Id: 9612536851815782467
      Name: "Magic Designed Fire Dragon Fury 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_designed_fire_dragon_fury_01a_Cue_ref"
      }
    }
    Assets {
      Id: 13958527150795101532
      Name: "Wood Wheel Turning Movement Loop 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_wood_wheel_turning_movement_loop_02_Cue_ref"
      }
    }
    Assets {
      Id: 14213056283951495950
      Name: "Magical Buildup Riser Whoosh Sparkles 04 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magical_anticipation_windup_buildup_riser_whoosh_with_sparkles_04_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
