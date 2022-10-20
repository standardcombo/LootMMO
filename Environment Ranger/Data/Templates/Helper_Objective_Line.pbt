Assets {
  Id: 6917522942167372582
  Name: "Helper_Objective_Line"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17976538438827686490
      Objects {
        Id: 17976538438827686490
        Name: "Helper_Objective_Line"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15925476400905474821
        ChildIds: 10023962797233367273
        ChildIds: 15195760825496592570
        ChildIds: 2934367539020373643
        UnregisteredParameters {
          Overrides {
            Name: "cs:TextBox"
            ObjectReference {
              SubObjectId: 2934367539020373643
            }
          }
          Overrides {
            Name: "cs:Circle"
            ObjectReference {
              SubObjectId: 10023962797233367273
            }
          }
          Overrides {
            Name: "cs:Check"
            ObjectReference {
              SubObjectId: 15195760825496592570
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
        Control {
          Width: 200
          Height: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10023962797233367273
        Name: "Circle"
        Transform {
          Location {
            X: -5785.69531
            Y: -20398.7148
            Z: 9111.32227
          }
          Rotation {
            Pitch: -38.5845604
            Yaw: 89.9999771
            Roll: -89.9999771
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17976538438827686490
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 8
          Height: 8
          UIX: 16
          UIY: 11
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 15688582493787673908
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15195760825496592570
        Name: "Check"
        Transform {
          Location {
            X: -5785.69336
            Y: -20398.7129
            Z: 9111.31641
          }
          Rotation {
            Pitch: -38.5845528
            Yaw: 89.9999542
            Roll: -89.9999542
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17976538438827686490
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 20
          Height: 20
          UIX: 5
          UIY: 5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 15002233724434219397
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2934367539020373643
        Name: "TextBox"
        Transform {
          Location {
            X: 21627.8945
            Y: 5599.83496
            Z: 5785.69287
          }
          Rotation {
            Pitch: 90
            Yaw: 36.8698845
            Roll: 88.2853088
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17976538438827686490
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -30
          Height: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "Defeat the enemies!"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 15
            Justification {
              Value: "mc:etextjustify:left"
            }
            AutoWrapText: true
            Font {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 15688582493787673908
      Name: "Center Circle 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "CenterCircle_001"
      }
    }
    Assets {
      Id: 15002233724434219397
      Name: "Icon Checkmark"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Checkmark"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
