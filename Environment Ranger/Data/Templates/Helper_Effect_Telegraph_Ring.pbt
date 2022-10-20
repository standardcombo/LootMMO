Assets {
  Id: 10754094689579112181
  Name: "Helper_Effect_Telegraph_Ring"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9716432895203116529
      Objects {
        Id: 9716432895203116529
        Name: "Helper_Effect_Telegraph_Ring"
        Transform {
          Scale {
            X: 0.78125
            Y: 0.78125
            Z: 5
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "bp:Sides"
            Int: 3
          }
          Overrides {
            Name: "bp:Stroke Width"
            Float: 0.526394784
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 3.59676385
          }
          Overrides {
            Name: "bp:Volume Display Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.526041687
              G: 0.381076485
              B: 0.109267704
              A: 0.279
            }
          }
          Overrides {
            Name: "bp:Stroke Color"
            Color {
              R: 0.4
              A: 0.4
            }
          }
          Overrides {
            Name: "bp:Indent"
            Float: 0
          }
          Overrides {
            Name: "bp:Corner Rounding"
            Float: 1
          }
          Overrides {
            Name: "bp:Blur"
            Float: 0
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.526041687
              G: 0.381076396
              B: 0.109267704
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
            Id: 3965397322580208730
          }
          TeamSettings {
          }
          DecalBP {
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
      Id: 3965397322580208730
      Name: "2D Basic Shapes Decal"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "dcl_basicShapes"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
