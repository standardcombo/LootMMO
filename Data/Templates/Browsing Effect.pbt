Assets {
  Id: 17339221888055867533
  Name: "Browsing Effect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12567401236198200524
      Objects {
        Id: 12567401236198200524
        Name: "Browsing Effect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8973072880196491857
        UnregisteredParameters {
          Overrides {
            Name: "cs:Indicator"
            ObjectReference {
              SubObjectId: 8973072880196491857
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8973072880196491857
        Name: "Virtual Interface VFX"
        Transform {
          Location {
            X: 30
            Z: 150
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12567401236198200524
        UnregisteredParameters {
          Overrides {
            Name: "bp:Scroll Duration"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Reverse Motion"
            Bool: true
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 1
          }
          Overrides {
            Name: "bp:Scroll Count"
            Int: 1
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
            Id: 11371314875946582896
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
    }
    Assets {
      Id: 11371314875946582896
      Name: "Virtual Interface VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_browser_indicator"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
