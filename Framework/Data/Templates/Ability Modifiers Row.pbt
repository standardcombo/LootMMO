Assets {
  Id: 15189401435418775948
  Name: "Ability Modifiers Row"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8504445518383473580
      Objects {
        Id: 8504445518383473580
        Name: "Ability Modifiers Row"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2432516294700515738
        ChildIds: 14745765748049505364
        ChildIds: 12736712916509053991
        ChildIds: 264584740035558893
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            ObjectReference {
              SubObjectId: 14745765748049505364
            }
          }
          Overrides {
            Name: "cs:Value"
            ObjectReference {
              SubObjectId: 12736712916509053991
            }
          }
          Overrides {
            Name: "cs:Upgrade"
            ObjectReference {
              SubObjectId: 12079326007659885070
            }
          }
          Overrides {
            Name: "cs:Formula"
            ObjectReference {
              SubObjectId: 264584740035558893
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
        Control {
          Width: 100
          Height: 50
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 841534158063459245
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14745765748049505364
        Name: "Modifier Name"
        Transform {
          Location {
            X: -37668.4141
            Y: 10538.9297
            Z: -64032.1562
          }
          Rotation {
            Yaw: 5.07199192
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8504445518383473580
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
        Control {
          Width: 165
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentHeight: true
          Text {
            Label: "Cooldown:"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 24
            Justification {
              Value: "mc:etextjustify:left"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            OutlineColor {
              A: 1
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12736712916509053991
        Name: "Modifier Value"
        Transform {
          Location {
            X: -37668.4102
            Y: 10538.9297
            Z: -64032.1562
          }
          Rotation {
            Yaw: 5.07199764
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8504445518383473580
        ChildIds: 12079326007659885070
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
        Control {
          Width: 40
          Height: 200
          UIX: 165
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentHeight: true
          Text {
            Label: "30"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 24
            Justification {
              Value: "mc:etextjustify:left"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            OutlineColor {
              A: 1
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12079326007659885070
        Name: "Modifier Upgrade"
        Transform {
          Location {
            X: -37668.4141
            Y: 10538.9307
            Z: -64032.1562
          }
          Rotation {
            Yaw: 5.07201719
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12736712916509053991
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
        Control {
          Width: 66
          Height: 200
          UIX: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentHeight: true
          Text {
            Label: "-0.5"
            Color {
              G: 1
              B: 1
              A: 1
            }
            Size: 24
            Justification {
              Value: "mc:etextjustify:left"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            OutlineColor {
              A: 1
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
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 264584740035558893
        Name: "Modifier Formula"
        Transform {
          Location {
            X: -37668.4141
            Y: 10538.9307
            Z: -64032.1562
          }
          Rotation {
            Yaw: 5.07203865
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8504445518383473580
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
        Control {
          Width: 500
          Height: 200
          UIX: 308
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentHeight: true
          Text {
            Label: "(30 - Star Rating * -0.5)"
            Color {
              R: 0.353000015
              G: 0.353000015
              B: 0.353000015
              A: 1
            }
            Size: 24
            Justification {
              Value: "mc:etextjustify:left"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            OutlineColor {
              A: 1
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
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 11336346532215892341
      Name: "Germania One"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "GermaniaOneRegular_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
