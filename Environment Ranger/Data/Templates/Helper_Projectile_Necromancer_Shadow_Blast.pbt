Assets {
  Id: 4482173223807306785
  Name: "Helper_Projectile_Necromancer_Shadow_Blast"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3091730133586088574
      Objects {
        Id: 3091730133586088574
        Name: "Helper_Projectile_Necromancer_Shadow_Blast"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3493556478041803573
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
        Id: 3493556478041803573
        Name: "Plasma Ball Projectile VFX"
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
        ParentId: 3091730133586088574
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.216887474
              B: 0.25
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 25
          }
          Overrides {
            Name: "bp:Enable Arc Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Arcs "
            Bool: false
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.700089
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
