Assets {
  Id: 1063698984721441989
  Name: "Helper_Effect_Boss4_Draw_Power_Beam"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13166094146178080929
      Objects {
        Id: 13166094146178080929
        Name: "Helper_Effect_Boss4_Draw_Power_Beam"
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
            Name: "bp:Beam Length"
            Float: 4
          }
          Overrides {
            Name: "bp:Beam Width Scale"
            Float: 0.4
          }
          Overrides {
            Name: "bp:Spiral Width Multiplier"
            Float: 2
          }
          Overrides {
            Name: "bp:Spiral Rotation Multiplier"
            Int: 2
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.0480131581
              B: 0.289999962
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Color"
            Color {
              G: 0.25
              B: 0.150662243
              A: 1
            }
          }
        }
        Lifespan: 10
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
            Id: 17231692810425186346
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
      Id: 17231692810425186346
      Name: "Laser Beam VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Laser_Beam"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
