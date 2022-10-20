Assets {
  Id: 14503970582048843829
  Name: "AbilityHelper_Effect_EmpowerEnergiesCast"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 686847525287777781
      Objects {
        Id: 686847525287777781
        Name: "AbilityHelper_Effect_EmpowerEnergiesCast"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7814063696194037955
        ChildIds: 930666849156219234
        Lifespan: 3.5
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
        Id: 7814063696194037955
        Name: "Magic Dark Powerup 02 SFX"
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
        ParentId: 686847525287777781
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
            Id: 4442186195856977060
          }
          AutoPlay: true
          Volume: 0.5
          Falloff: 1300
          Radius: 3050
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 930666849156219234
        Name: "Group"
        Transform {
          Location {
            Z: 300
          }
          Rotation {
          }
          Scale {
            X: 0.486997813
            Y: 0.486997813
            Z: 0.486997813
          }
        }
        ParentId: 686847525287777781
        ChildIds: 2278653301585590859
        ChildIds: 13510807088074303936
        ChildIds: 17542641991713318007
        ChildIds: 14979981351891086670
        ChildIds: 10238025459593278424
        ChildIds: 7378797938532483323
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
        Id: 2278653301585590859
        Name: "Energy Shield Panel"
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
        ParentId: 930666849156219234
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evfxshieldpanels:11"
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.259602755
              B: 0.700000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pattern Blend Amount"
            Float: 1
          }
          Overrides {
            Name: "bp:Pattern Opacity"
            Float: 0.946284413
          }
          Overrides {
            Name: "bp:Overall Opacity"
            Float: 0.24919121
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
            Id: 3422899817721348945
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
        Id: 13510807088074303936
        Name: "Energy Shield Panel"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 930666849156219234
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evfxshieldpanels:11"
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.259602755
              B: 0.700000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Pattern Blend Amount"
            Float: 1
          }
          Overrides {
            Name: "bp:Pattern Opacity"
            Float: 0.946284413
          }
          Overrides {
            Name: "bp:Overall Opacity"
            Float: 0.24919121
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
            Id: 3422899817721348945
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
        Id: 17542641991713318007
        Name: "Signal Flare"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 2.05339718
            Y: 2.05339718
            Z: 2.05339718
          }
        }
        ParentId: 930666849156219234
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0149008529
              B: 0.450000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Smoke"
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
            Id: 3749675108062627523
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
        Id: 14979981351891086670
        Name: "Object Mover Continuous"
        Transform {
          Location {
            Z: -710.403748
          }
          Rotation {
          }
          Scale {
            X: 2.05339718
            Y: 2.05339718
            Z: 2.05339718
          }
        }
        ParentId: 930666849156219234
        UnregisteredParameters {
          Overrides {
            Name: "cs:Object"
            ObjectReference {
              SubObjectId: 930666849156219234
            }
          }
          Overrides {
            Name: "cs:MoveVelocity"
            Vector {
              Z: -200
            }
          }
          Overrides {
            Name: "cs:LocalSpace"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelayRange"
            Vector2 {
              X: 0.3
              Y: 0.3
            }
          }
          Overrides {
            Name: "cs:StartDelayRange:tooltip"
            String: "Random delay range for the object to take action at the start of the game."
          }
          Overrides {
            Name: "cs:LocalSpace:tooltip"
            String: "Whether RotateTo is in local space"
          }
          Overrides {
            Name: "cs:Object:tooltip"
            String: "Object to transform"
          }
          Overrides {
            Name: "cs:MoveVelocity:tooltip"
            String: "Smoothly moves the object over time by the given velocity vector."
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
            Id: 2331688389429807128
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10238025459593278424
        Name: "Object Scaler"
        Transform {
          Location {
            Z: -915.743286
          }
          Rotation {
          }
          Scale {
            X: 2.05339718
            Y: 2.05339718
            Z: 2.05339718
          }
        }
        ParentId: 930666849156219234
        UnregisteredParameters {
          Overrides {
            Name: "cs:Object"
            ObjectReference {
              SubObjectId: 930666849156219234
            }
          }
          Overrides {
            Name: "cs:ScaleTo"
            Vector {
              X: 0.01
              Y: 0.01
              Z: 0.01
            }
          }
          Overrides {
            Name: "cs:LocalSpace"
            Bool: true
          }
          Overrides {
            Name: "cs:Reverse"
            Bool: false
          }
          Overrides {
            Name: "cs:Duration"
            Float: 1
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelayRange"
            Vector2 {
              X: 0.2
              Y: 0.2
            }
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 1
          }
          Overrides {
            Name: "cs:IntervalDelayRange"
            Vector2 {
              Y: 1
            }
          }
          Overrides {
            Name: "cs:BounceOnRepeat"
            Bool: false
          }
          Overrides {
            Name: "cs:StartEventName"
            String: ""
          }
          Overrides {
            Name: "cs:StopEventName"
            String: ""
          }
          Overrides {
            Name: "cs:ResetEventName"
            String: ""
          }
          Overrides {
            Name: "cs:OnStartedEventName"
            String: ""
          }
          Overrides {
            Name: "cs:OnStoppedEventName"
            String: ""
          }
          Overrides {
            Name: "cs:OnResetEventName"
            String: ""
          }
          Overrides {
            Name: "cs:OnCompletedEventName"
            String: ""
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "Time in seconds for the object to perform the action."
          }
          Overrides {
            Name: "cs:StartDelayRange:tooltip"
            String: "Random delay range for the object to take action at the start of the game."
          }
          Overrides {
            Name: "cs:LocalSpace:tooltip"
            String: "Whether ScaleTo is in local space"
          }
          Overrides {
            Name: "cs:Reverse:tooltip"
            String: "If true, the object will start from ScaleTo and scale towards the initial scale."
          }
          Overrides {
            Name: "cs:ScaleTo:tooltip"
            String: "Target scale for the object to scale to."
          }
          Overrides {
            Name: "cs:Object:tooltip"
            String: "Object to transform"
          }
          Overrides {
            Name: "cs:AutoStart:tooltip"
            String: "If true, the specified object will start the action automatically."
          }
          Overrides {
            Name: "cs:RepeatCount:tooltip"
            String: "Number of times the object is scaled. If set to -1, the action will keep repeating indefinitely."
          }
          Overrides {
            Name: "cs:BounceOnRepeat:tooltip"
            String: "Whether to reverse alternating repeats, so that the object transforms smoothly."
          }
          Overrides {
            Name: "cs:StartEventName:tooltip"
            String: "Specify the event that will trigger this action to start"
          }
          Overrides {
            Name: "cs:StopEventName:tooltip"
            String: "Specify the event that will trigger this action to stop"
          }
          Overrides {
            Name: "cs:ResetEventName:tooltip"
            String: "This event will trigger this action to reset"
          }
          Overrides {
            Name: "cs:OnStartedEventName:tooltip"
            String: "Event that will be broadcasted when the action starts"
          }
          Overrides {
            Name: "cs:OnStoppedEventName:tooltip"
            String: "Event that will be broadcasted when the action stops"
          }
          Overrides {
            Name: "cs:OnResetEventName:tooltip"
            String: "Event that will be broadcasted when the action is reset"
          }
          Overrides {
            Name: "cs:OnCompletedEventName:tooltip"
            String: "Event that will be broadcasted when the action is completed"
          }
          Overrides {
            Name: "cs:IntervalDelayRange:tooltip"
            String: "Random delay time between each action repeat."
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
            Id: 6126478455621128065
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7378797938532483323
        Name: "Level Up VFX"
        Transform {
          Location {
            Z: 0.578520596
          }
          Rotation {
          }
          Scale {
            X: 1.4864887
            Y: 1.4864887
            Z: 1.4864887
          }
        }
        ParentId: 930666849156219234
        UnregisteredParameters {
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
            Name: "bp:Enable Rings"
            Bool: true
          }
          Overrides {
            Name: "bp:Ground Burst Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Ground Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Outer Particle Swirls"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Inner Spirals"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0349669643
              B: 0.480000019
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Color"
            Color {
              R: 0.0149008529
              B: 0.450000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Ground Element Color"
            Color {
              G: 0.0238410197
              B: 0.36
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
    }
    Assets {
      Id: 4442186195856977060
      Name: "Magic Dark Powerup 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_dark_buff_powerup_02_Cue_ref"
      }
    }
    Assets {
      Id: 3422899817721348945
      Name: "Energy Shield Panel"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_forceField"
      }
    }
    Assets {
      Id: 3749675108062627523
      Name: "Signal Flare"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Signal_Flare"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
