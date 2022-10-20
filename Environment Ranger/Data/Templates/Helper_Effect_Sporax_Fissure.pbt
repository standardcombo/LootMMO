Assets {
  Id: 11382885155691583192
  Name: "Helper_Effect_Sporax_Fissure"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15412989836637794506
      Objects {
        Id: 15412989836637794506
        Name: "Helper_Effect_Sporax_Fissure"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15157233798439898217
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15157233798439898217
        Name: "Ice Spikes Trail VFX"
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
        ParentId: 15412989836637794506
        UnregisteredParameters {
          Overrides {
            Name: "bp:Base Color"
            Color {
              R: 0.365099669
              B: 0.37
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.854305
              B: 1.5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              G: 0.0271522682
              B: 0.409999967
              A: 1
            }
          }
          Overrides {
            Name: "bp:Ground Frost Color"
            Color {
              R: 0.320000052
              B: 0.0508609079
              A: 1
            }
          }
          Overrides {
            Name: "bp:Cracks Color"
            Color {
              R: 0.230000019
              B: 0.022847645
              A: 1
            }
          }
          Overrides {
            Name: "bp:Vapor Color"
            Color {
              R: 0.5
              B: 0.0695362091
              A: 0.113725
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
            Id: 8791469872267736633
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
      Id: 8791469872267736633
      Name: "Ice Spikes Trail VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ice_spikes_line"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
