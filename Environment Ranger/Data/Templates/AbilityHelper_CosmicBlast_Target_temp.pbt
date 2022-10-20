Assets {
  Id: 9802536836358802692
  Name: "AbilityHelper_CosmicBlast_Target_temp"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12337081305132817260
      Objects {
        Id: 12337081305132817260
        Name: "AbilityHelper_CosmicBlast_Target_temp"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1076717931212142019
        ChildIds: 17398289408869504964
        ChildIds: 12053739115284072511
        Lifespan: 2
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
        Id: 1076717931212142019
        Name: "Magic Projectile VFX"
        Transform {
          Location {
            Z: 872.985352
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12337081305132817260
        ChildIds: 8950739742105526541
        ChildIds: 9239241761835981024
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 4
          }
          Overrides {
            Name: "bp:Density"
            Float: 2
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 2
              G: 0.999999762
              B: 3
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 3
          }
          Overrides {
            Name: "bp:Secondary Emissive Boost"
            Float: 3
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
            Id: 9919395327939304349
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
        Id: 8950739742105526541
        Name: "Plasma Ball Projectile VFX"
        Transform {
          Location {
            Z: -5.03289795
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1076717931212142019
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 3.39869308
              B: 5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 1
          }
          Overrides {
            Name: "bp:Enable Arcs "
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Arc Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Plasma"
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
            Id: 7009243008104945347
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
        Id: 9239241761835981024
        Name: "Object Mover Continuous"
        Transform {
          Location {
            Z: -872.985352
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1076717931212142019
        UnregisteredParameters {
          Overrides {
            Name: "cs:Object"
            ObjectReference {
              SubObjectId: 1076717931212142019
            }
          }
          Overrides {
            Name: "cs:MoveVelocity"
            Vector {
              Z: -5500
            }
          }
          Overrides {
            Name: "cs:LocalSpace"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelayRange"
            Vector2 {
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
        Id: 17398289408869504964
        Name: "Plasma Impact VFX"
        Transform {
          Location {
            X: -8.04312134
            Y: 10.8148441
            Z: 35
          }
          Rotation {
          }
          Scale {
            X: 2.3
            Y: 2.3
            Z: 2.3
          }
        }
        ParentId: 12337081305132817260
        ChildIds: 8251719709346167479
        ChildIds: 12211106654232039917
        ChildIds: 10827491066276280995
        ChildIds: 5694578919539732297
        ChildIds: 8050304121248278536
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Plasma Radial"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Plasma Core"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Arc"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Impact Ring"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.40132457
              B: 0.6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
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
            Id: 12387224521968571600
          }
          TeamSettings {
          }
          Vfx {
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
        Id: 8251719709346167479
        Name: "Plasma Impact VFX"
        Transform {
          Location {
            X: -69.5009918
            Y: 43.5100327
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17398289408869504964
        ChildIds: 16447882736618007586
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Plasma Radial"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Plasma Core"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Arc"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Impact Ring"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.40132457
              B: 0.6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
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
            Id: 12387224521968571600
          }
          TeamSettings {
          }
          Vfx {
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
        Id: 16447882736618007586
        Name: "UtilityVFXOneshot"
        Transform {
          Location {
            X: 72.998
            Y: -48.2121353
            Z: -15.217391
          }
          Rotation {
          }
          Scale {
            X: 0.434782535
            Y: 0.434782535
            Z: 0.434782535
          }
        }
        ParentId: 8251719709346167479
        UnregisteredParameters {
          Overrides {
            Name: "cs:Delay"
            Float: 0.25
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
            Id: 1948828140381252845
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12211106654232039917
        Name: "Plasma Impact VFX"
        Transform {
          Location {
            X: -62.3824272
            Y: -48.5803528
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17398289408869504964
        ChildIds: 10646514175630624176
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Plasma Radial"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Plasma Core"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Arc"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Impact Ring"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.40132457
              B: 0.6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
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
            Id: 12387224521968571600
          }
          TeamSettings {
          }
          Vfx {
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
        Id: 10646514175630624176
        Name: "UtilityVFXOneshot"
        Transform {
          Location {
            X: 65.8794327
            Y: 43.8782463
            Z: -15.217391
          }
          Rotation {
          }
          Scale {
            X: 0.434782505
            Y: 0.434782505
            Z: 0.434782505
          }
        }
        ParentId: 12211106654232039917
        UnregisteredParameters {
          Overrides {
            Name: "cs:Delay"
            Float: 0.39
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
            Id: 1948828140381252845
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10827491066276280995
        Name: "Plasma Impact VFX"
        Transform {
          Location {
            X: 53.7593842
            Y: -72.8581848
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17398289408869504964
        ChildIds: 6877004441475511487
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Plasma Radial"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Plasma Core"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Arc"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Impact Ring"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.40132457
              B: 0.6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
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
            Id: 12387224521968571600
          }
          TeamSettings {
          }
          Vfx {
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
        Id: 6877004441475511487
        Name: "UtilityVFXOneshot"
        Transform {
          Location {
            X: -50.2623749
            Y: 68.1560745
            Z: -15.217391
          }
          Rotation {
          }
          Scale {
            X: 0.434782505
            Y: 0.434782505
            Z: 0.434782505
          }
        }
        ParentId: 10827491066276280995
        UnregisteredParameters {
          Overrides {
            Name: "cs:Delay"
            Float: 0.35
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
            Id: 1948828140381252845
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5694578919539732297
        Name: "Plasma Impact VFX"
        Transform {
          Location {
            X: 70.1002579
            Y: 62.9122391
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17398289408869504964
        ChildIds: 6206687698786867809
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Plasma Radial"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Plasma Core"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Arc"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Impact Ring"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.40132457
              B: 0.6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
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
            Id: 12387224521968571600
          }
          TeamSettings {
          }
          Vfx {
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
        Id: 6206687698786867809
        Name: "UtilityVFXOneshot"
        Transform {
          Location {
            X: -66.6032486
            Y: -67.6143494
            Z: -15.217391
          }
          Rotation {
          }
          Scale {
            X: 0.434782505
            Y: 0.434782505
            Z: 0.434782505
          }
        }
        ParentId: 5694578919539732297
        UnregisteredParameters {
          Overrides {
            Name: "cs:Delay"
            Float: 0.32
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
            Id: 1948828140381252845
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8050304121248278536
        Name: "UtilityVFXOneshot"
        Transform {
          Location {
            X: 3.49700928
            Y: -4.702106
            Z: -15.217391
          }
          Rotation {
          }
          Scale {
            X: 0.434782594
            Y: 0.434782594
            Z: 0.434782594
          }
        }
        ParentId: 17398289408869504964
        UnregisteredParameters {
          Overrides {
            Name: "cs:Delay"
            Float: 0.38
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
            Id: 1948828140381252845
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12053739115284072511
        Name: "Magic Fireball Medium Impact 01 SFX"
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
        ParentId: 12337081305132817260
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
            Id: 10442815159566456356
          }
          AutoPlay: true
          Volume: 0.3
          Falloff: 1300
          Radius: 3050
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 9919395327939304349
      Name: "Magic Projectile VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_magic_projectile"
      }
    }
    Assets {
      Id: 7009243008104945347
      Name: "Plasma Ball Projectile VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasmaball_projectile"
      }
    }
    Assets {
      Id: 12387224521968571600
      Name: "Plasma Impact VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasma_impact"
      }
    }
    Assets {
      Id: 10442815159566456356
      Name: "Magic Fireball Medium Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_fireball_medium_impact_02_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
