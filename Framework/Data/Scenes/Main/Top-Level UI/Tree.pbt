Name: "Top-Level UI"
RootId: 764194984864902660
Objects {
  Id: 2459707962432567133
  Name: "Floating Item Details Panel"
  Transform {
    Location {
      X: 2128.86572
      Y: -4079.07056
      Z: 14501.6484
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  ChildIds: 2294404792323567979
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
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
  Id: 2294404792323567979
  Name: "UI Container"
  Transform {
    Location {
      X: -7330.96924
      Y: -5562.41406
      Z: -29003.2969
    }
    Rotation {
      Yaw: 99.6295776
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2459707962432567133
  ChildIds: 1672793592632319691
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
    UIX: 1494.21423
    UIY: 576.110046
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
      IsHUD: true
      CanvasWorldSize {
        X: 1024
        Y: 1024
      }
      RedrawTime: 30
      UseSafeZoneAdjustment: true
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
  Id: 1672793592632319691
  Name: "Item Details Floating Panel"
  Transform {
    Location {
      X: 2128.86572
      Y: -4079.07056
      Z: 14501.6484
    }
    Rotation {
      Yaw: -99.62957
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2294404792323567979
  ChildIds: 1250961074803003830
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 673
    Height: 326
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1250961074803003830
  Name: "BG"
  Transform {
    Location {
      X: 59590.6484
      Y: 47904.6055
      Z: 2819.11523
    }
    Rotation {
      Yaw: 45.1145248
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1672793592632319691
  ChildIds: 14603410138588594482
  ChildIds: 12479244865849968313
  ChildIds: 10360465240479805058
  ChildIds: 5018680577436446556
  ChildIds: 1995181292698685755
  ChildIds: 10879275597981709674
  ChildIds: 12915422758912368276
  ChildIds: 17126765301736171536
  ChildIds: 2803956330068095427
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
    Width: 98
    Height: 98
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 1
      OpacityMaskBrush {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2803956330068095427
  Name: "Stats"
  Transform {
    Location {
      X: -27180.8086
      Y: -34556.125
      Z: -9570.40918
    }
    Rotation {
      Yaw: -91.5516663
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
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
    Width: -93
    Height: -118
    UIX: 44.952
    UIY: 99
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Text {
      Color {
        R: 0.799102962
        G: 0.693872035
        B: 0.533276618
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:left"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:top"
      }
      ShadowColor {
        R: 0.0129830334
        G: 0.00367650762
        A: 1
      }
      ShadowOffset {
        Y: 2
      }
      OutlineColor {
        R: 0.0129830334
        G: 0.00367650762
        A: 1
      }
      OutlineSize: 1
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
  Id: 17126765301736171536
  Name: "Background"
  Transform {
    Location {
      X: -0.00828087
      Y: 0.00277869427
    }
    Rotation {
      Yaw: -2.3905659e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 7542904062235710665
      }
      Color {
        R: 0.651405632
        G: 0.351532608
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  Id: 12915422758912368276
  Name: "Top_Banner_BG"
  Transform {
    Location {
      X: -0.00828087
      Y: 0.00277869566
    }
    Rotation {
      Yaw: -2.73207515e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
  ChildIds: 5449221612676191636
  ChildIds: 16706871049393650055
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
    Width: 200
    Height: 96
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
      }
      Color {
        R: 0.013
        G: 0.00377756986
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16706871049393650055
  Name: "Name"
  Transform {
    Location {
      X: -27180.8086
      Y: -34556.125
      Z: -9570.40918
    }
    Rotation {
      Yaw: -91.5517044
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12915422758912368276
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
    Width: -226
    Height: 43
    UIX: 124.23349
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:left"
      }
      AutoWrapText: true
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
        Y: 1
      }
      ScaleToFit: true
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleleft"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5449221612676191636
  Name: "Itemicon"
  Transform {
    Location {
      X: -35279.4219
      Y: 26235.1074
      Z: 9570.40918
    }
    Rotation {
      Yaw: 91.5516891
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12915422758912368276
  ChildIds: 2822570739976712497
  UnregisteredParameters {
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
    Width: 84
    Height: 84
    UIX: 20.32
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleleft"
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
  Id: 2822570739976712497
  Name: "Icon"
  Transform {
    Location {
      X: -35279.4883
      Y: 26235.1152
      Z: 9570.40918
    }
    Rotation {
      Yaw: 91.5516891
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5449221612676191636
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
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 9736987041818260224
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.869
      }
      ShadowOffset {
        X: 1
        Y: 4
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
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
  Id: 10879275597981709674
  Name: "Background"
  Transform {
    Location {
      X: -0.00828087
      Y: 0.00277869427
    }
    Rotation {
      Yaw: -2.3905659e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.775000036
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  Id: 1995181292698685755
  Name: "Background"
  Transform {
    Location {
      X: -0.00781249953
      Y: 0.0010986363
    }
    Rotation {
      Yaw: -2.56132062e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
      }
      Color {
        R: 0.0497065671
        G: 0.0144438483
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.775000036
      }
      ShadowOffset {
        X: 1
        Y: 3
      }
      ScreenshotIndex: 1
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
  Id: 5018680577436446556
  Name: "Bottom Right Arrow"
  Transform {
    Location {
      X: 0.00832503662
      Y: 0.0193183497
    }
    Rotation {
      Yaw: 3.07358496e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Control {
    Width: 53
    Height: 37
    RotationAngle: 135
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1100030183663206451
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
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
  Id: 10360465240479805058
  Name: "Bottom Left Arrow"
  Transform {
    Location {
      X: 0.00832503662
      Y: 0.0193183497
    }
    Rotation {
      Yaw: 3.41509403e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Control {
    Width: 53
    Height: 37
    RotationAngle: -135
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1100030183663206451
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
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
  Id: 12479244865849968313
  Name: "Top Right Arrow"
  Transform {
    Location {
      X: 0.00832504
      Y: 0.0193183478
    }
    Rotation {
      Yaw: 2.39056571e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Control {
    Width: 53
    Height: 37
    RotationAngle: 45
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1100030183663206451
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
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
Objects {
  Id: 14603410138588594482
  Name: "Top Left Arrow"
  Transform {
    Location {
      X: 0.00832503662
      Y: 0.0193183497
    }
    Rotation {
      Yaw: 3.07358496e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1250961074803003830
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Control {
    Width: 53
    Height: 37
    RotationAngle: -45
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1100030183663206451
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
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
  Id: 14849121469663870690
  Name: "MaterialsBar"
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
  ParentId: 764194984864902660
  ChildIds: 17334131569377236542
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
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
  Id: 17334131569377236542
  Name: "UI Container"
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
  ParentId: 14849121469663870690
  ChildIds: 14837606131599131035
  ChildIds: 4562758555775068587
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
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
      IsHUD: true
      CanvasWorldSize {
        X: 1024
        Y: 1024
      }
      RedrawTime: 30
      UseSafeZoneAdjustment: true
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
  Id: 4562758555775068587
  Name: "appstateHook"
  Transform {
    Location {
      X: 13950.0078
      Y: -5374.99219
      Z: 12825
    }
    Rotation {
      Yaw: -157.500031
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17334131569377236542
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 14837606131599131035
      }
    }
    Overrides {
      Name: "cs:Ability"
      Bool: false
    }
    Overrides {
      Name: "cs:Inventory"
      Bool: true
    }
    Overrides {
      Name: "cs:ShowMouse"
      Bool: true
    }
    Overrides {
      Name: "cs:SocialHub"
      Bool: false
    }
    Overrides {
      Name: "cs:Anvil"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 14793085226451615550
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14837606131599131035
  Name: "Materials Inventory Bar"
  Transform {
    Location {
      X: 2128.86963
      Y: -4079.04321
      Z: 14501.6484
    }
    Rotation {
      Yaw: -99.6295776
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17334131569377236542
  ChildIds: 3565644339750435338
  ChildIds: 18196462739945588566
  ChildIds: 15445341869380923288
  ChildIds: 14788214990306574767
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 1495
    Height: 155
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 841534158063459245
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14788214990306574767
  Name: "ResourceSlots"
  Transform {
    Location {
      X: 22220.793
      Y: 33357.6875
      Z: 65675
    }
    Rotation {
      Yaw: -45.0000381
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14837606131599131035
  ChildIds: 7089162298825929495
  ChildIds: 12626738872644164513
  ChildIds: 1317059989296092146
  ChildIds: 14126133481034704891
  ChildIds: 12792174203291807035
  ChildIds: 8052848129750684339
  ChildIds: 11529387507011568112
  ChildIds: 18097093907552887966
  ChildIds: 15742863074604161493
  ChildIds: 16201546506816549864
  ChildIds: 425240424001232847
  ChildIds: 2143804672798077844
  ChildIds: 6472738901116315391
  ChildIds: 9817115720960330040
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
    Width: 1480
    Height: 96
    UIY: 49
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 841534158063459245
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9817115720960330040
  Name: "Slot"
  Transform {
    Location {
      X: -44503.918
      Y: -75590.0391
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862686
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 16749159459076849079
  ChildIds: 262823916578270673
  ChildIds: 18404688030580195322
  ChildIds: 10398307949607046348
  ChildIds: 12684598748645190498
  ChildIds: 9633164791577438868
  ChildIds: 4591003884927421848
  ChildIds: 11051149015070625128
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
    Width: 96
    Height: 96
    UIX: 1378
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 9098048465441794626
    SubobjectId: 15486898897841666860
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11051149015070625128
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9817115720960330040
  ChildIds: 7205159878176641287
  ChildIds: 11405361688481638675
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4966784087157038485
    SubobjectId: 17024672367240105211
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11405361688481638675
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11051149015070625128
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9288919207987396214
    SubobjectId: 2902174482182156056
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7205159878176641287
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11051149015070625128
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3518390224351237274
    SubobjectId: 10988101231077361140
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4591003884927421848
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9817115720960330040
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3510173541642066430
    SubobjectId: 10959758885803739280
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9633164791577438868
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9817115720960330040
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 18107087532202330082
    SubobjectId: 6045812786336667276
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12684598748645190498
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9817115720960330040
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14827034053087149820
    SubobjectId: 7307779190775787410
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10398307949607046348
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9817115720960330040
  ChildIds: 4693286802349512111
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 12936808215029855448
    SubobjectId: 1956391933772965302
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4693286802349512111
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10398307949607046348
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 9708419429771122422
    SubobjectId: 3320695085318637464
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18404688030580195322
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9817115720960330040
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14273446028472516995
    SubobjectId: 7979025141048742125
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 262823916578270673
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9817115720960330040
  ChildIds: 2120460927865209047
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6834395159383926365
    SubobjectId: 17759629232812980019
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2120460927865209047
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 262823916578270673
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4944307761693754165
    SubobjectId: 17020214770797187675
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16749159459076849079
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9817115720960330040
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 14745232910536543080
    SubobjectId: 7210212064153934342
    InstanceId: 11947928240899638942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6472738901116315391
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9531
      Y: -75590.0625
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862762
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 12976207984177544943
  ChildIds: 8681880153102945298
  ChildIds: 7629722236352547268
  ChildIds: 14841389085664530827
  ChildIds: 5310116585122701168
  ChildIds: 14939307551552659369
  ChildIds: 9354131474110592536
  ChildIds: 7664602959352978131
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
    Width: 96
    Height: 96
    UIX: 1272
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 4459679219152056162
    SubobjectId: 15486898897841666860
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7664602959352978131
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6472738901116315391
  ChildIds: 3365273922780952207
  ChildIds: 798508829019867870
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 526001624326543541
    SubobjectId: 17024672367240105211
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 798508829019867870
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7664602959352978131
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14072036557383662422
    SubobjectId: 2902174482182156056
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3365273922780952207
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7664602959352978131
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8318959108076360122
    SubobjectId: 10988101231077361140
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9354131474110592536
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6472738901116315391
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8293255852769483998
    SubobjectId: 10959758885803739280
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14939307551552659369
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6472738901116315391
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13324031799607608002
    SubobjectId: 6045812786336667276
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5310116585122701168
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6472738901116315391
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10260607966666095580
    SubobjectId: 7307779190775787410
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14841389085664530827
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6472738901116315391
  ChildIds: 16378906861323170073
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 17305630193040781816
    SubobjectId: 1956391933772965302
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16378906861323170073
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14841389085664530827
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 14202673684548670422
    SubobjectId: 3320695085318637464
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7629722236352547268
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6472738901116315391
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9634400230210094243
    SubobjectId: 7979025141048742125
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8681880153102945298
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6472738901116315391
  ChildIds: 15768373978146435354
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2123889575200269181
    SubobjectId: 17759629232812980019
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15768373978146435354
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8681880153102945298
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 521434360205493781
    SubobjectId: 17020214770797187675
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12976207984177544943
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6472738901116315391
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 10304415486798188104
    SubobjectId: 7210212064153934342
    InstanceId: 9476229263868785377
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2143804672798077844
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9766
      Y: -75590.1328
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862808
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 5401757669546592777
  ChildIds: 10732304614065953146
  ChildIds: 17583898544057067464
  ChildIds: 2397285107134139864
  ChildIds: 16034244585104093471
  ChildIds: 3385581309696215352
  ChildIds: 3080311033174966581
  ChildIds: 12441205099447915337
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
    Width: 96
    Height: 96
    UIX: 1166
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 635761748814206244
    SubobjectId: 15486898897841666860
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12441205099447915337
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2143804672798077844
  ChildIds: 16505940423092315309
  ChildIds: 1039717160988644018
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3638311322286220019
    SubobjectId: 17024672367240105211
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1039717160988644018
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12441205099447915337
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17760140702262231312
    SubobjectId: 2902174482182156056
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16505940423092315309
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12441205099447915337
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5063095282804304892
    SubobjectId: 10988101231077361140
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3080311033174966581
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2143804672798077844
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5054951021972088472
    SubobjectId: 10959758885803739280
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3385581309696215352
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2143804672798077844
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10221239577649821828
    SubobjectId: 6045812786336667276
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16034244585104093471
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2143804672798077844
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13498515117046301082
    SubobjectId: 7307779190775787410
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2397285107134139864
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2143804672798077844
  ChildIds: 11754391629748580501
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 14202287889108011966
    SubobjectId: 1956391933772965302
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11754391629748580501
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2397285107134139864
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 17306017362862549392
    SubobjectId: 3320695085318637464
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17583898544057067464
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2143804672798077844
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12719599767650877157
    SubobjectId: 7979025141048742125
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10732304614065953146
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2143804672798077844
  ChildIds: 13270598112978404847
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2902791231951231291
    SubobjectId: 17759629232812980019
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13270598112978404847
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10732304614065953146
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3606779289801768019
    SubobjectId: 17020214770797187675
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5401757669546592777
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2143804672798077844
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 13416777600542848014
    SubobjectId: 7210212064153934342
    InstanceId: 13395866969748416911
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 425240424001232847
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9844
      Y: -75590.1406
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862869
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 10973490304188806850
  ChildIds: 727505657679512486
  ChildIds: 6635028475981342803
  ChildIds: 1328252768039260066
  ChildIds: 13342912262126186289
  ChildIds: 17066176653932182631
  ChildIds: 13501509616617059365
  ChildIds: 8002130667509730140
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
    Width: 96
    Height: 96
    UIX: 1060
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 3280731215912590473
    SubobjectId: 15486898897841666860
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8002130667509730140
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 425240424001232847
  ChildIds: 12323281554105836632
  ChildIds: 9715057298426140623
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1668639219439741790
    SubobjectId: 17024672367240105211
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9715057298426140623
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8002130667509730140
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15216928145557375165
    SubobjectId: 2902174482182156056
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12323281554105836632
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8002130667509730140
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7140008660332896849
    SubobjectId: 10988101231077361140
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13501509616617059365
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 425240424001232847
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7166099424836300597
    SubobjectId: 10959758885803739280
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17066176653932182631
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 425240424001232847
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12145347708154048809
    SubobjectId: 6045812786336667276
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13342912262126186289
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 425240424001232847
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11385532664348035127
    SubobjectId: 7307779190775787410
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1328252768039260066
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 425240424001232847
  ChildIds: 551675355947654191
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 16162710767022817811
    SubobjectId: 1956391933772965302
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 551675355947654191
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1328252768039260066
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 15383875489725767741
    SubobjectId: 3320695085318637464
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6635028475981342803
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 425240424001232847
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10795351238898874184
    SubobjectId: 7979025141048742125
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 727505657679512486
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 425240424001232847
  ChildIds: 15261618188004203847
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 944941627796426902
    SubobjectId: 17759629232812980019
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15261618188004203847
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 727505657679512486
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1682104347972204030
    SubobjectId: 17020214770797187675
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10973490304188806850
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 425240424001232847
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 11485351670240345507
    SubobjectId: 7210212064153934342
    InstanceId: 4484714029027949526
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16201546506816549864
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9688
      Y: -75590.125
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862885
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 5667275445638561283
  ChildIds: 17590403879192927685
  ChildIds: 3205960658732766346
  ChildIds: 4920680087085696857
  ChildIds: 15195354842477003929
  ChildIds: 1565444907959013312
  ChildIds: 7095811654764204170
  ChildIds: 10401554938820783643
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
    Width: 96
    Height: 96
    UIX: 954
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 2449850484568841256
    SubobjectId: 15486898897841666860
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10401554938820783643
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16201546506816549864
  ChildIds: 4450440052536626884
  ChildIds: 1179998854604228257
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1968305201508494335
    SubobjectId: 17024672367240105211
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1179998854604228257
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10401554938820783643
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16092911947847911452
    SubobjectId: 2902174482182156056
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4450440052536626884
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10401554938820783643
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8029506564216906480
    SubobjectId: 10988101231077361140
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7095811654764204170
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16201546506816549864
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8001762752772550548
    SubobjectId: 10959758885803739280
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1565444907959013312
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16201546506816549864
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11886143758316237192
    SubobjectId: 6045812786336667276
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15195354842477003929
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16201546506816549864
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10554581564092074134
    SubobjectId: 7307779190775787410
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4920680087085696857
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16201546506816549864
  ChildIds: 4089047268058082380
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 17020680166475350706
    SubobjectId: 1956391933772965302
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4089047268058082380
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4920680087085696857
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 15638293278468300956
    SubobjectId: 3320695085318637464
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3205960658732766346
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16201546506816549864
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11072147379127449577
    SubobjectId: 7979025141048742125
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17590403879192927685
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16201546506816549864
  ChildIds: 7086256995231112961
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 100762299018711095
    SubobjectId: 17759629232812980019
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7086256995231112961
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17590403879192927685
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1954818834884982111
    SubobjectId: 17020214770797187675
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5667275445638561283
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16201546506816549864
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 10600571770766851330
    SubobjectId: 7210212064153934342
    InstanceId: 13526252539364973175
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15742863074604161493
  Name: "Slot"
  Transform {
    Location {
      X: -44503.8906
      Y: -75589.9766
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862518
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 2535708667809947389
  ChildIds: 983469959007538174
  ChildIds: 5896905388842830822
  ChildIds: 6421532157917475323
  ChildIds: 10443138783221490925
  ChildIds: 8850714106449738540
  ChildIds: 9786122766988584146
  ChildIds: 9097463983830202162
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
    Width: 96
    Height: 96
    UIX: 848
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 16162645614466122300
    SubobjectId: 15486898897841666860
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9097463983830202162
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15742863074604161493
  ChildIds: 13480864042041342895
  ChildIds: 13063906870723442712
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15772183835585525227
    SubobjectId: 17024672367240105211
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13063906870723442712
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9097463983830202162
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2226850398731326984
    SubobjectId: 2902174482182156056
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13480864042041342895
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9097463983830202162
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12600041691829566692
    SubobjectId: 10988101231077361140
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9786122766988584146
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15742863074604161493
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12590136361194467712
    SubobjectId: 10959758885803739280
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8850714106449738540
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15742863074604161493
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7297747026696368028
    SubobjectId: 6045812786336667276
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10443138783221490925
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15742863074604161493
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6038120419273496194
    SubobjectId: 7307779190775787410
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6421532157917475323
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15742863074604161493
  ChildIds: 11852382157176185007
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 3280666626097208486
    SubobjectId: 1956391933772965302
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11852382157176185007
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6421532157917475323
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 1780257094008012424
    SubobjectId: 3320695085318637464
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5896905388842830822
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15742863074604161493
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6348656985757837821
    SubobjectId: 7979025141048742125
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 983469959007538174
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15742863074604161493
  ChildIds: 16806161111970974840
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13895615042546503203
    SubobjectId: 17759629232812980019
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16806161111970974840
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 983469959007538174
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15749712261423557451
    SubobjectId: 17020214770797187675
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2535708667809947389
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15742863074604161493
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 5957722828011430678
    SubobjectId: 7210212064153934342
    InstanceId: 502988156436595955
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18097093907552887966
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9
      Y: -75590
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862564
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 13681860376516471813
  ChildIds: 16473878924478190190
  ChildIds: 3253624097093545319
  ChildIds: 6982110692845263531
  ChildIds: 4932131744517315450
  ChildIds: 7297528990244460904
  ChildIds: 12439583045321149323
  ChildIds: 9277237354903239114
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
    Width: 96
    Height: 96
    UIX: 742
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 10336703530487410428
    SubobjectId: 15486898897841666860
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9277237354903239114
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18097093907552887966
  ChildIds: 3343473509963133148
  ChildIds: 10581832409414333630
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13104371244743432491
    SubobjectId: 17024672367240105211
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10581832409414333630
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9277237354903239114
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8203664296537520840
    SubobjectId: 2902174482182156056
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3343473509963133148
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9277237354903239114
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13970815567702118436
    SubobjectId: 10988101231077361140
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12439583045321149323
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18097093907552887966
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13945184888551677248
    SubobjectId: 10959758885803739280
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7297528990244460904
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18097093907552887966
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 754590245820515164
    SubobjectId: 6045812786336667276
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4932131744517315450
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18097093907552887966
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4392609505530706498
    SubobjectId: 7307779190775787410
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6982110692845263531
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18097093907552887966
  ChildIds: 11183751414679018673
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 4807976881414336614
    SubobjectId: 1956391933772965302
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11183751414679018673
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6982110692845263531
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 8613881889801523784
    SubobjectId: 3320695085318637464
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3253624097093545319
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18097093907552887966
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3973560743589627197
    SubobjectId: 7979025141048742125
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16473878924478190190
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18097093907552887966
  ChildIds: 9076536239213573242
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12675730622009975523
    SubobjectId: 17759629232812980019
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9076536239213573242
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16473878924478190190
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13090889133214058379
    SubobjectId: 17020214770797187675
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13681860376516471813
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18097093907552887966
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 4436059707872268246
    SubobjectId: 7210212064153934342
    InstanceId: 15350472945749187942
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11529387507011568112
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9141
      Y: -75590.0234
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862625
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 13122429825987114662
  ChildIds: 11606880043847528304
  ChildIds: 15288533347592918674
  ChildIds: 11815369465841561571
  ChildIds: 10896979383147563598
  ChildIds: 5979181438046734909
  ChildIds: 1893470868511982978
  ChildIds: 5115215066886322121
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
    Width: 96
    Height: 96
    UIX: 636
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 16136910913217405140
    SubobjectId: 15486898897841666860
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5115215066886322121
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11529387507011568112
  ChildIds: 11050594827357721246
  ChildIds: 1608895487977651863
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16527823421125318403
    SubobjectId: 17024672367240105211
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1608895487977651863
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5115215066886322121
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2403742239196230880
    SubobjectId: 2902174482182156056
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11050594827357721246
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5115215066886322121
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10475589741824253452
    SubobjectId: 10988101231077361140
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1893470868511982978
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11529387507011568112
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10449956593067643752
    SubobjectId: 10959758885803739280
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5979181438046734909
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11529387507011568112
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6555653596205256052
    SubobjectId: 6045812786336667276
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10896979383147563598
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11529387507011568112
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7815756294746387562
    SubobjectId: 7307779190775787410
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11815369465841561571
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11529387507011568112
  ChildIds: 6874356674033945001
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 1313879687075020366
    SubobjectId: 1956391933772965302
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6874356674033945001
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11815369465841561571
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 2812546423172799584
    SubobjectId: 3320695085318637464
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15288533347592918674
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11529387507011568112
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7468770914278050581
    SubobjectId: 7979025141048742125
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11606880043847528304
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11529387507011568112
  ChildIds: 16267874049361973523
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 18405004642006789323
    SubobjectId: 17759629232812980019
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16267874049361973523
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11606880043847528304
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16514319042345306531
    SubobjectId: 17020214770797187675
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13122429825987114662
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11529387507011568112
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 7859492939195384318
    SubobjectId: 7210212064153934342
    InstanceId: 1463419156037457540
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8052848129750684339
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9336
      Y: -75590.0547
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862686
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 2551496535301863383
  ChildIds: 16870307242500451372
  ChildIds: 18133386528158256766
  ChildIds: 10493718432114918121
  ChildIds: 5534704177596696816
  ChildIds: 16748444586508438275
  ChildIds: 13724326107430134875
  ChildIds: 16320033821960618323
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
    Width: 96
    Height: 96
    UIX: 530
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 2597578925788968437
    SubobjectId: 15486898897841666860
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16320033821960618323
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8052848129750684339
  ChildIds: 12375706589563972938
  ChildIds: 16188352958635465664
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2207671373785842210
    SubobjectId: 17024672367240105211
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16188352958635465664
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16320033821960618323
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15755395155225944513
    SubobjectId: 2902174482182156056
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12375706589563972938
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16320033821960618323
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7682406359663020845
    SubobjectId: 10988101231077361140
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13724326107430134875
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8052848129750684339
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7707931206319326793
    SubobjectId: 10959758885803739280
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16748444586508438275
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8052848129750684339
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11603518434910935125
    SubobjectId: 6045812786336667276
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5534704177596696816
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8052848129750684339
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10919683522438504779
    SubobjectId: 7307779190775787410
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10493718432114918121
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8052848129750684339
  ChildIds: 12015230117208191886
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 16845274749712378735
    SubobjectId: 1956391933772965302
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12015230117208191886
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10493718432114918121
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 15921784536397056321
    SubobjectId: 3320695085318637464
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18133386528158256766
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8052848129750684339
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11266811291808013876
    SubobjectId: 7979025141048742125
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16870307242500451372
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8052848129750684339
  ChildIds: 17237337058709811006
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 330469811743717866
    SubobjectId: 17759629232812980019
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17237337058709811006
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16870307242500451372
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2221122423975419010
    SubobjectId: 17020214770797187675
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2551496535301863383
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8052848129750684339
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 10875948529271772383
    SubobjectId: 7210212064153934342
    InstanceId: 12505527332034900027
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12792174203291807035
  Name: "Slot"
  Transform {
    Location {
      X: -44503.957
      Y: -75590.0859
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862747
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 2910546468937165459
  ChildIds: 17843273750455225248
  ChildIds: 13065977967620245107
  ChildIds: 11083925409566754893
  ChildIds: 13710895226778196668
  ChildIds: 4938730618117454447
  ChildIds: 5136821685126761578
  ChildIds: 11705820247251971135
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
    Width: 96
    Height: 96
    UIX: 424
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 15867738663251816657
    SubobjectId: 15486898897841666860
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11705820247251971135
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12792174203291807035
  ChildIds: 10324808812415756045
  ChildIds: 6048224024140737449
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16616810454612166406
    SubobjectId: 17024672367240105211
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6048224024140737449
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11705820247251971135
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2494875516961367269
    SubobjectId: 2902174482182156056
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10324808812415756045
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11705820247251971135
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10566746113644203529
    SubobjectId: 10988101231077361140
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5136821685126761578
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12792174203291807035
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10574996060674311021
    SubobjectId: 10959758885803739280
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4938730618117454447
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12792174203291807035
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6430584957235240305
    SubobjectId: 6045812786336667276
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13710895226778196668
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12792174203291807035
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8048915722837435503
    SubobjectId: 7307779190775787410
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11083925409566754893
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12792174203291807035
  ChildIds: 16549386213969601940
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 1296909535614381643
    SubobjectId: 1956391933772965302
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16549386213969601940
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11083925409566754893
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 2651624945501277285
    SubobjectId: 3320695085318637464
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13065977967620245107
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12792174203291807035
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7233411397797387024
    SubobjectId: 7979025141048742125
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17843273750455225248
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12792174203291807035
  ChildIds: 3204443668862578326
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 18208032340621622478
    SubobjectId: 17759629232812980019
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3204443668862578326
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17843273750455225248
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16639392599372700070
    SubobjectId: 17020214770797187675
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2910546468937165459
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12792174203291807035
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 7986814991024460283
    SubobjectId: 7210212064153934342
    InstanceId: 15989621445950508096
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14126133481034704891
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9766
      Y: -75590.1172
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862808
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 16685445149828982181
  ChildIds: 9093727307106795110
  ChildIds: 8786204464939185685
  ChildIds: 4957109570469448132
  ChildIds: 9466538038345837893
  ChildIds: 14725950680715531434
  ChildIds: 7847670630915727549
  ChildIds: 16269112522758469592
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
    Width: 96
    Height: 96
    UIX: 318
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 4542868941614288453
    SubobjectId: 15486898897841666860
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16269112522758469592
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14126133481034704891
  ChildIds: 9875720599880674510
  ChildIds: 15688703189372613508
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 406676453324749202
    SubobjectId: 17024672367240105211
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15688703189372613508
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16269112522758469592
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13952608035504724593
    SubobjectId: 2902174482182156056
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9875720599880674510
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16269112522758469592
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8186018683492544669
    SubobjectId: 10988101231077361140
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7847670630915727549
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14126133481034704891
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8214537023708331513
    SubobjectId: 10959758885803739280
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14725950680715531434
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14126133481034704891
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13402727846975251429
    SubobjectId: 6045812786336667276
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9466538038345837893
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14126133481034704891
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10127879992672000763
    SubobjectId: 7307779190775787410
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4957109570469448132
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14126133481034704891
  ChildIds: 16156112075262917718
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 17492411257122492639
    SubobjectId: 1956391933772965302
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16156112075262917718
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4957109570469448132
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 14407716504040846065
    SubobjectId: 3320695085318637464
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8786204464939185685
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14126133481034704891
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9753730620708726148
    SubobjectId: 7979025141048742125
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9093727307106795110
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14126133481034704891
  ChildIds: 1396975170472386963
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2274854323908985434
    SubobjectId: 17759629232812980019
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1396975170472386963
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9093727307106795110
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 420229414611560242
    SubobjectId: 17020214770797187675
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16685445149828982181
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14126133481034704891
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 10225659275511803759
    SubobjectId: 7210212064153934342
    InstanceId: 2318990324642809669
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1317059989296092146
  Name: "Slot"
  Transform {
    Location {
      X: -44503.9922
      Y: -75590.1484
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862854
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 3804603150874811733
  ChildIds: 1652091773913033380
  ChildIds: 16822465406682063049
  ChildIds: 16392202644338002668
  ChildIds: 17761093784960027120
  ChildIds: 14750241802217933651
  ChildIds: 14370808219120984519
  ChildIds: 1201948205637734470
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
    Width: 96
    Height: 96
    UIX: 212
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 9221033479302874223
    SubobjectId: 15486898897841666860
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1201948205637734470
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1317059989296092146
  ChildIds: 762314943286951
  ChildIds: 12330663991245138548
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4997021103867687864
    SubobjectId: 17024672367240105211
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12330663991245138548
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1201948205637734470
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9321797251624013915
    SubobjectId: 2902174482182156056
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 762314943286951
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1201948205637734470
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3559715884543949495
    SubobjectId: 10988101231077361140
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14370808219120984519
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1317059989296092146
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3531903774327830483
    SubobjectId: 10959758885803739280
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14750241802217933651
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1317059989296092146
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 18085400386632690127
    SubobjectId: 6045812786336667276
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17761093784960027120
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1317059989296092146
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14731633999256883409
    SubobjectId: 7307779190775787410
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16392202644338002668
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1317059989296092146
  ChildIds: 9645540049423132390
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 12843621271947352821
    SubobjectId: 1956391933772965302
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9645540049423132390
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16392202644338002668
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 9731803739725314267
    SubobjectId: 3320695085318637464
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16822465406682063049
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1317059989296092146
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14384502097090949038
    SubobjectId: 7979025141048742125
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1652091773913033380
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1317059989296092146
  ChildIds: 15448795356010900057
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6876387329244481648
    SubobjectId: 17759629232812980019
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15448795356010900057
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1652091773913033380
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4983451028206759192
    SubobjectId: 17020214770797187675
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3804603150874811733
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1317059989296092146
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 14777687848354653509
    SubobjectId: 7210212064153934342
    InstanceId: 13107937012782675302
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12626738872644164513
  Name: "Slot"
  Transform {
    Location {
      X: -44504.0078
      Y: -75590.1719
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862915
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 12582184488558295828
  ChildIds: 1685857336633374526
  ChildIds: 14914511857932436057
  ChildIds: 8168416817302053667
  ChildIds: 14095020122343629489
  ChildIds: 12270726839440526013
  ChildIds: 7038133519596613847
  ChildIds: 6012922468665533408
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
    Width: 96
    Height: 96
    UIX: 106
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 15891507525962480967
    SubobjectId: 15486898897841666860
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6012922468665533408
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12626738872644164513
  ChildIds: 8859960961678052598
  ChildIds: 18339673145772389431
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16584141458362878608
    SubobjectId: 17024672367240105211
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18339673145772389431
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6012922468665533408
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2460062485255203187
    SubobjectId: 2902174482182156056
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8859960961678052598
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6012922468665533408
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10527426093431587743
    SubobjectId: 10988101231077361140
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7038133519596613847
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12626738872644164513
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10555768168185220859
    SubobjectId: 10959758885803739280
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12270726839440526013
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12626738872644164513
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6449848634397790439
    SubobjectId: 6045812786336667276
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14095020122343629489
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12626738872644164513
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8002632585713003001
    SubobjectId: 7307779190775787410
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8168416817302053667
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12626738872644164513
  ChildIds: 16325708225872392149
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 1244116658444248029
    SubobjectId: 1956391933772965302
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16325708225872392149
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8168416817302053667
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 2625606336909443571
    SubobjectId: 3320695085318637464
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14914511857932436057
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12626738872644164513
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7268331013377496710
    SubobjectId: 7979025141048742125
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1685857336633374526
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12626738872644164513
  ChildIds: 73054131464639760
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 18164034526437241176
    SubobjectId: 17759629232812980019
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 73054131464639760
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1685857336633374526
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16597610377352844336
    SubobjectId: 17020214770797187675
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12582184488558295828
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12626738872644164513
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 7956361016939158637
    SubobjectId: 7210212064153934342
    InstanceId: 8092131162260340123
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7089162298825929495
  Name: "Slot"
  Transform {
    Location {
      X: -44504.0078
      Y: -75590.1719
      Z: -81858.8
    }
    Rotation {
      Yaw: 134.862946
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14788214990306574767
  ChildIds: 13677797288450376445
  ChildIds: 15743329742069844507
  ChildIds: 5329343079919745006
  ChildIds: 15816202673584984918
  ChildIds: 7200745267945984329
  ChildIds: 12178484066547819229
  ChildIds: 6967901369808599756
  ChildIds: 9887461883271807618
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
    Width: 96
    Height: 96
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
      }
      Color {
        R: 0.104
        G: 0.104
        B: 0.104
        A: 0.517
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 7684530761423749494
    SubobjectId: 15486898897841666860
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
    WasRoot: true
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9887461883271807618
  Name: "Level Frame"
  Transform {
    Location {
      X: -6291.92529
      Y: -3673.86377
      Z: -50441.0938
    }
    Rotation {
      Yaw: 158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7089162298825929495
  ChildIds: 17567599911740159363
  ChildIds: 6978017039459157910
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
    Width: 29
    Height: 29
    UIX: 15
    UIY: -14
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 299308943708112015
      }
      Color {
        R: 0.0600000024
        G: 0.0600000024
        B: 0.0600000024
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5767911746748905121
    SubobjectId: 17024672367240105211
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6978017039459157910
  Name: "Level Text"
  Transform {
    Location {
      X: -4555.94141
      Y: -5685.86
      Z: 50441.0938
    }
    Rotation {
      Yaw: -158.985062
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9887461883271807618
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
    Width: 50
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "15"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10668724246994195778
    SubobjectId: 2902174482182156056
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17567599911740159363
  Name: "UI Image"
  Transform {
    Location {
      X: -0.00143691804
      Y: 0.001017206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9887461883271807618
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
    Width: 2
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 653554309488938617
      }
      Color {
        R: 0.880000055
        G: 0.619314551
        B: 0.398639977
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2609246267341160366
    SubobjectId: 10988101231077361140
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6967901369808599756
  Name: "Button"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7089162298825929495
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
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.115
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.052
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 841534158063459245
      }
      IsButtonEnabled: true
      ClickMode {
        Value: "mc:ebuttonclickmode:default"
      }
      Font {
      }
      Justification {
        Value: "mc:etextjustify:center"
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2616757265445122762
    SubobjectId: 10959758885803739280
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12178484066547819229
  Name: "count"
  Transform {
    Location {
      X: -11226.1953
      Y: -62725.6914
      Z: 16183.7969
    }
    Rotation {
      Yaw: -89.862709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7089162298825929495
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
    Width: -20
    Height: 60
    UIY: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "999"
      Color {
        R: 0.908356667
        G: 0.916000068
        B: 0.83356005
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:right"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        G: 0.00331124943
        B: 0.0499999523
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17271162526701759702
    SubobjectId: 6045812786336667276
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7200745267945984329
  Name: "frame"
  Transform {
    Location {
      X: -9749.04102
      Y: 30591.9922
      Z: 21154.498
    }
    Rotation {
      Yaw: 138.096176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7089162298825929495
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
    Width: 5
    Height: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 8613898665967287780
      }
      Color {
        R: 0.822785735
        G: 0.434153646
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15646074692793177544
    SubobjectId: 7307779190775787410
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15816202673584984918
  Name: "IsBag"
  Transform {
    Location {
      X: -9151.64062
      Y: 46064.0781
      Z: -11345.6992
    }
    Rotation {
      Yaw: -115.459084
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7089162298825929495
  ChildIds: 7416519638064744192
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 40
    Height: 40
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 1941777917013843020
      }
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      FlipHorizontal: true
      FlipVertical: true
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 12064849165998235628
    SubobjectId: 1956391933772965302
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7416519638064744192
  Name: "bagicon"
  Transform {
    Location {
      X: -21804.8984
      Y: 11849.2842
      Z: -6841.20312
    }
    Rotation {
      Yaw: -89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15816202673584984918
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
    Width: 20
    Height: 20
    UIX: -5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2539011265476877653
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 10546602308572659138
    SubobjectId: 3320695085318637464
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5329343079919745006
  Name: "icon"
  Transform {
    Location {
      X: -9749.03125
      Y: 30591.9766
      Z: 21154.4961
    }
    Rotation {
      Yaw: 138.096161
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7089162298825929495
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
    Width: -10
    Height: -10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 510429477254030635
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.911000073
      }
      ShadowOffset {
        X: 3
        Y: 3
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15200569491426323127
    SubobjectId: 7979025141048742125
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15743329742069844507
  Name: "bg"
  Transform {
    Location {
      X: -1467.40015
      Y: 3318.61035
      Z: -46100.1953
    }
    Rotation {
      Yaw: -28.555172
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7089162298825929495
  ChildIds: 14115546873303625883
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -20
    Height: -20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 0.8
      OpacityMaskBrush {
        Id: 2209571276009564471
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5349877013915225449
    SubobjectId: 17759629232812980019
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14115546873303625883
  Name: "bg"
  Transform {
    Location {
      X: -22924.9922
      Y: 1312.28809
      Z: 42308.9922
    }
    Rotation {
      Yaw: -83.8078
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15743329742069844507
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        G: 0.000333330652
        B: 0.0100000007
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5799377748543481857
    SubobjectId: 17020214770797187675
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13677797288450376445
  Name: "Gradient"
  Transform {
    Location {
      X: 0.0216314867
      Y: -0.0614718534
    }
    Rotation {
      Yaw: -6.83018698e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7089162298825929495
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
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        R: 0.00500000035
        A: 0.251000017
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  InstanceHistory {
    SelfId: 15584607374301044828
    SubobjectId: 7210212064153934342
    InstanceId: 14556824056948618365
    TemplateId: 5133444388016553382
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15445341869380923288
  Name: "Outside Border"
  Transform {
    Location {
      X: -74599.9922
      Y: -10400.0244
      Z: -23025
    }
    Rotation {
      Yaw: 1.36602785e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14837606131599131035
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
    Width: 942
    Height: 537
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 7542904062235710665
      }
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18196462739945588566
  Name: "Resources Sub Title"
  Transform {
    Location {
      X: -74599.7188
      Y: -10400.0059
      Z: -23025
    }
    Rotation {
      Yaw: 5.12264087e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14837606131599131035
  ChildIds: 6251133308122965531
  ChildIds: 9360153775135024709
  ChildIds: 17432609861545357344
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
    Width: 600
    Height: 45
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        R: 0.0129830325
        G: 0.00367650716
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
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
  Id: 17432609861545357344
  Name: "Title Border"
  Transform {
    Location {
      X: -74599.9922
      Y: -10400.0225
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603239e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18196462739945588566
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
    Height: 3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 14060330023043759337
      }
      Color {
        R: 0.752942204
        G: 0.401977777
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9360153775135024709
  Name: "UI Text Box"
  Transform {
    Location {
      X: 105299.945
      Y: 12949.9932
      Z: 38225
    }
    Rotation {
      Yaw: -89.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18196462739945588566
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
    Width: 1189
    Height: -6
    UIY: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Text {
      Label: "MATERIALS"
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      Size: 43
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.817000031
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      ScaleToFit: true
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6251133308122965531
  Name: "Text BG"
  Transform {
    Location {
      X: -74599.9922
      Y: -10400.0225
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603594e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18196462739945588566
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
    Width: 723
    Height: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        A: 0.379
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3565644339750435338
  Name: "UI Image"
  Transform {
    Location {
      X: -74599.9844
      Y: -10400.0234
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603103e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14837606131599131035
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
    Width: 337
    Height: 345
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        R: 0.0129830325
        G: 0.00367650716
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3902248818464519377
  Name: "Fade Layer"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  TemplateInstance {
    ParameterOverrideMap {
      key: 14705646024795445827
      value {
        Overrides {
          Name: "Name"
          String: "Fade Layer"
        }
      }
    }
    TemplateAsset {
      Id: 9913224587088657507
    }
  }
}
Objects {
  Id: 12428289812693890356
  Name: "DropPanel"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  TemplateInstance {
    ParameterOverrideMap {
      key: 3496174957010040393
      value {
        Overrides {
          Name: "Name"
          String: "DropPanel"
        }
      }
    }
    TemplateAsset {
      Id: 2738102251407328100
    }
  }
}
Objects {
  Id: 13538073745225936914
  Name: "Reward Toast UI"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  TemplateInstance {
    ParameterOverrideMap {
      key: 10097200626876299952
      value {
        Overrides {
          Name: "Name"
          String: "Reward Toast UI"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -6291.92725
            Y: -3673.86475
            Z: -50441.0938
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 816526729401422220
    }
  }
}
Objects {
  Id: 16660806578145495134
  Name: "EnemyHealthBarTopUI"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7836656182518814459
      value {
        Overrides {
          Name: "Name"
          String: "EnemyHealthBarTopUI"
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 6510175741766471704
    }
  }
}
Objects {
  Id: 16594009381829640598
  Name: "XpBar"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 360320156536995277
      value {
        Overrides {
          Name: "Name"
          String: "XpBar"
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:inheritfromparent"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 16880048014117415600
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:forceoff"
          }
        }
      }
    }
    TemplateAsset {
      Id: 7928961812369481920
    }
  }
}
Objects {
  Id: 2371187470299143774
  Name: "Resource Display"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  TemplateInstance {
    ParameterOverrideMap {
      key: 17394653803189289318
      value {
        Overrides {
          Name: "Name"
          String: "Resource Display"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -2056.07617
            Y: -4728.86035
            Z: 4402.29297
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 1.70754674e-06
          }
        }
      }
    }
    TemplateAsset {
      Id: 12416181249712484944
    }
  }
}
Objects {
  Id: 18067922938863195130
  Name: "ProfileImage"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  TemplateInstance {
    ParameterOverrideMap {
      key: 10170366951884863971
      value {
        Overrides {
          Name: "Name"
          String: "ProfileImage"
        }
      }
    }
    TemplateAsset {
      Id: 7725181499865013921
    }
  }
}
