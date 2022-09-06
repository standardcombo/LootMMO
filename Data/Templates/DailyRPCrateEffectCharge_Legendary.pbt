Assets {
  Id: 8502588601676520577
  Name: "DailyRPCrateEffectCharge_Legendary"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10493233018930018665
      Objects {
        Id: 10493233018930018665
        Name: "DailyRPCrateEffectCharge_Legendary"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1714496154891685916
        ChildIds: 12195119232479663331
        ChildIds: 14194743696564209773
        ChildIds: 9905865944753354070
        ChildIds: 4198516114364777889
        ChildIds: 7382791625102666208
        ChildIds: 18363982033039016109
        ChildIds: 1371694287959800880
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
        Id: 1714496154891685916
        Name: "Charge Up Effect"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 10493233018930018665
        UnregisteredParameters {
          Overrides {
            Name: "bp:Charge Up Duration"
            Float: 4.5
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
              R: 1
              G: 0.816666722
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 0.333333373
              A: 1
            }
          }
          Overrides {
            Name: "bp:Ring Color"
            Color {
              R: 0.566000044
              G: 0.245266721
              A: 1
            }
          }
          Overrides {
            Name: "bp:Outer Core Color"
            Color {
              R: 1
              G: 0.333333373
              A: 1
            }
          }
          Overrides {
            Name: "bp:Outer Core Edge Color"
            Color {
              R: 15
              G: 13.4318676
              B: 8.2794342
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
        Id: 12195119232479663331
        Name: "Lerp Float Smart Property"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10493233018930018665
        UnregisteredParameters {
          Overrides {
            Name: "cs:EffectObject"
            ObjectReference {
              SubObjectId: 14194743696564209773
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
              X: 4.5
              Y: 4.5
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
        Id: 14194743696564209773
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
        ParentId: 10493233018930018665
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
              R: 5
              G: 1.75000012
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pulse Range"
            Float: 200
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
              R: 150
              G: 92.5
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
        Id: 9905865944753354070
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
        ParentId: 10493233018930018665
        UnregisteredParameters {
          Overrides {
            Name: "cs:EffectObject"
            ObjectReference {
              SubObjectId: 4198516114364777889
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
              X: 4.5
              Y: 4.5
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
        Id: 4198516114364777889
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
        ParentId: 10493233018930018665
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
        Id: 7382791625102666208
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
        ParentId: 10493233018930018665
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
      Objects {
        Id: 18363982033039016109
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
        ParentId: 10493233018930018665
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
          StopTime: 6.5
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1371694287959800880
        Name: "Material Rolling Movement Rock Heavy Rumble 02 SFX"
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
        ParentId: 10493233018930018665
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
            Id: 2555182720796455610
          }
          AutoPlay: true
          Pitch: 407.894287
          Volume: 0.7
          Falloff: -1
          Radius: -1
          FadeInTime: 1
          FadeOutTime: 0.5
          StopTime: 4.5
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
      Id: 14213056283951495950
      Name: "Magical Buildup Riser Whoosh Sparkles 04 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magical_anticipation_windup_buildup_riser_whoosh_with_sparkles_04_Cue_ref"
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
      Id: 2555182720796455610
      Name: "Material Rolling Movement Rock Heavy Rumble 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_material_rolling_movement__rock_heavy_rumble_02_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}