Assets {
  Id: 12972220158729906763
  Name: "AbilityHelper_Effect_IlluminateTargetAreaOthers"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3974208877160737975
      Objects {
        Id: 3974208877160737975
        Name: "AbilityHelper_Effect_IlluminateTargetAreaOthers"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10853105890035591697
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
        Id: 10853105890035591697
        Name: "Group"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 3974208877160737975
        ChildIds: 8234004907755817735
        ChildIds: 957937620336384091
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
        Id: 8234004907755817735
        Name: "Treasure Ray Burst"
        Transform {
          Location {
            Z: 25
          }
          Rotation {
          }
          Scale {
            X: 3.3
            Y: 3.3
            Z: 3.3
          }
        }
        ParentId: 10853105890035591697
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2
          }
          Overrides {
            Name: "bp:Treasure Base Emissive Boost"
            Float: 0.357248694
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.00701977918
              G: 0.53
              A: 1
            }
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.8
          }
          Overrides {
            Name: "bp:Density"
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
            Id: 6499652814951159903
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
        Id: 957937620336384091
        Name: "Cast Burst Ring VFX"
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
        ParentId: 10853105890035591697
        ChildIds: 3714806701442292940
        ChildIds: 5009878594011763097
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.714437068
              G: 0.929999948
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.5
              G: 1.5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.4
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 25
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 1
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
            Id: 1092850666123875983
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
        Id: 3714806701442292940
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 0.773784637
            Y: 0.773784637
            Z: 0.773784637
          }
        }
        ParentId: 957937620336384091
        ChildIds: 689976410550261489
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.756556213
              G: 0.960000038
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.5
              G: 1.5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.4
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 28
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.8
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
            Id: 1092850666123875983
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
        Id: 689976410550261489
        Name: "VFX_Repeater"
        Transform {
          Location {
            X: 9204.0293
            Y: 16583.1953
            Z: 1054.18872
          }
          Rotation {
          }
          Scale {
            X: 1.29234922
            Y: 1.29234922
            Z: 1.29234922
          }
        }
        ParentId: 3714806701442292940
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 3714806701442292940
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 4
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 1
              Y: 1
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
        Script {
          ScriptAsset {
            Id: 10594085518880585884
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5009878594011763097
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 65
          }
          Rotation {
          }
          Scale {
            X: 0.773784637
            Y: 0.773784637
            Z: 0.773784637
          }
        }
        ParentId: 957937620336384091
        ChildIds: 17134157315290263652
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0215231404
              G: 0.65
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.5
              G: 1.5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.4
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 28
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.8
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
            Id: 1092850666123875983
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
        Id: 17134157315290263652
        Name: "VFX_Repeater"
        Transform {
          Location {
            X: 9204.0293
            Y: 16583.1934
            Z: 1037.36426
          }
          Rotation {
          }
          Scale {
            X: 1.29234922
            Y: 1.29234922
            Z: 1.29234922
          }
        }
        ParentId: 5009878594011763097
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 5009878594011763097
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 4
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 1
              Y: 1
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
        Script {
          ScriptAsset {
            Id: 10594085518880585884
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 6499652814951159903
      Name: "Treasure Ray Burst"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Treasure_Rays"
      }
    }
    Assets {
      Id: 1092850666123875983
      Name: "Cast Burst Ring VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_cast_circle_generic"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
