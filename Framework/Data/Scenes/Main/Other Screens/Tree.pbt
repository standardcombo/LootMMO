Name: "Other Screens"
RootId: 16937607096047638534
Objects {
  Id: 3993525529671177181
  Name: "Class, Abilities, Inventory & Shop"
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
  ParentId: 16937607096047638534
  ChildIds: 13804872117946282211
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
  NetworkContext {
    MinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
  }
  InstanceHistory {
    SelfId: 3993525529671177181
    SubobjectId: 8067326117451680903
    InstanceId: 17902194835412958227
    TemplateId: 15017071524491817913
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13804872117946282211
  Name: "UI Container"
  Transform {
    Location {
      X: 17575
      Y: -3925
      Z: 13100
    }
    Rotation {
      Yaw: -157.500015
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3993525529671177181
  ChildIds: 9469091642679901274
  ChildIds: 5394203861609443312
  ChildIds: 17010761493710352127
  ChildIds: 3762385627674705658
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
  InstanceHistory {
    SelfId: 13804872117946282211
    SubobjectId: 16648679857669058489
    InstanceId: 17902194835412958227
    TemplateId: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3762385627674705658
  Name: "Input_UI_Connection"
  Transform {
    Location {
      X: 14735.1484
      Y: -10351.8828
      Z: -13100
    }
    Rotation {
      Yaw: 157.500031
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13804872117946282211
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
      Id: 13419876937528545067
    }
  }
  InstanceHistory {
    SelfId: 3762385627674705658
    SubobjectId: 7829949786842505632
    InstanceId: 17902194835412958227
    TemplateId: 15017071524491817913
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17010761493710352127
  Name: "Shop UI"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13804872117946282211
  TemplateInstance {
    ParameterOverrideMap {
      key: 16224725013193256052
      value {
        Overrides {
          Name: "Name"
          String: "Shop UI"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 19185.8887
            Y: -9185.08203
            Z: -27601.6484
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -102.870392
          }
        }
      }
    }
    TemplateAsset {
      Id: 9398869833167484305
    }
  }
  InstanceHistory {
    SelfId: 17010761493710352127
    SubobjectId: 1469020281923212012
    InstanceId: 17902194835412958227
    TemplateId: 15017071524491817913
  }
}
Objects {
  Id: 5394203861609443312
  Name: "Inventory UI"
  Transform {
    Location {
      X: 19185.9023
      Y: -9185.08789
      Z: -27601.6484
    }
    Rotation {
      Yaw: -102.870392
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13804872117946282211
  ChildIds: 5038361833779537974
  ChildIds: 8230713052883361351
  ChildIds: 8776310147784731902
  ChildIds: 14631961764608307768
  ChildIds: 1090376570430179094
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
    Width: 100
    Height: 100
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
  InstanceHistory {
    SelfId: 5394203861609443312
    SubobjectId: 13278664966407104232
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    WasRoot: true
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1090376570430179094
  Name: "Main  Panel"
  Transform {
    Location {
      X: 40499.8555
      Y: 69778.5547
      Z: 37338.2969
    }
    Rotation {
      Yaw: 48.2331
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5394203861609443312
  ChildIds: 11380181052113554652
  ChildIds: 2593632236914243229
  ChildIds: 18116270282805639416
  ChildIds: 1988874435665193361
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
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 841534158063459245
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
    SelfId: 1090376570430179094
    SubobjectId: 18283082924615896590
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1988874435665193361
  Name: "Center Panel"
  Transform {
    Location {
      X: -80646.4609
      Y: -20577.25
      Z: -22836.6484
    }
    Rotation {
      Yaw: -147.862656
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1090376570430179094
  ChildIds: 15752705756935715982
  ChildIds: 3969791087346977672
  ChildIds: 12555045159792756274
  ChildIds: 17839965229914413770
  ChildIds: 8409305522628904385
  ChildIds: 14759079719048366094
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
    Width: 1900
    Height: 720
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
    SelfId: 1988874435665193361
    SubobjectId: 16790161000962072713
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14759079719048366094
  Name: "Outside Border"
  Transform {
    Location {
      X: -74599.9922
      Y: -10400.0244
      Z: -23025
    }
    Rotation {
      Yaw: 1.36602976e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1988874435665193361
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
  InstanceHistory {
    SelfId: 14759079719048366094
    SubobjectId: 4488272939381621014
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8409305522628904385
  Name: "Title Border"
  Transform {
    Location {
      X: -74599.9922
      Y: -10400.0225
      Z: -23025
    }
    Rotation {
      Yaw: 1.3660343e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1988874435665193361
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
    UIY: 45
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
  InstanceHistory {
    SelfId: 8409305522628904385
    SubobjectId: 9667150779921534169
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17839965229914413770
  Name: "StatDisplay"
  Transform {
    Location {
      X: 7039.00391
      Y: -32678.3789
      Z: 31401.6484
    }
    Rotation {
      Yaw: 35.3704262
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1988874435665193361
  ChildIds: 3723295033098269302
  ChildIds: 6492551494443678157
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
    Width: 450
    Height: 385
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Panel {
      Opacity: 1
      OpacityMaskBrush {
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
  InstanceHistory {
    SelfId: 17839965229914413770
    SubobjectId: 364524804449342418
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6492551494443678157
  Name: "UI Panel"
  Transform {
    Location {
      X: 13176.4473
      Y: 30721.4062
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17839965229914413770
  ChildIds: 7981519479576339060
  ChildIds: 17680759267508289549
  ChildIds: 11534648032370543472
  ChildIds: 14416997259831901858
  ChildIds: 7161011763030508695
  ChildIds: 9137528416117528719
  ChildIds: 3191562144257448609
  ChildIds: 15739193156633633416
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
    Width: 350
    Height: 465
    UIY: 22.5
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
    SelfId: 6492551494443678157
    SubobjectId: 12142102157149401301
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15739193156633633416
  Name: "Vitality Panel"
  Transform {
    Location {
      X: 13176.4287
      Y: 30721.3789
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6492551494443678157
  ChildIds: 15355414597859374258
  ChildIds: 8177769600262151981
  ChildIds: 9220284828763629739
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
    Width: 225
    Height: 45
    UIY: 420
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
  InstanceHistory {
    SelfId: 15739193156633633416
    SubobjectId: 2952000097010051984
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9220284828763629739
  Name: "Vitality"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15739193156633633416
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
    Width: 80
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "0"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9220284828763629739
    SubobjectId: 10191167156960027059
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8177769600262151981
  Name: "UI Image"
  Transform {
    Location {
      X: 0.00390624953
      Y: -0.00488281297
    }
    Rotation {
      Yaw: -5.69955238e-12
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15739193156633633416
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
    Width: 45
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Image {
      Brush {
        Id: 8581549570846151612
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
        X: 1
        Y: 2
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 8177769600262151981
    SubobjectId: 9504286968247670325
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15355414597859374258
  Name: "UI Text Box"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15739193156633633416
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
    Width: 120
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Vitality"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
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
    SelfId: 15355414597859374258
    SubobjectId: 2846873663663947178
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3191562144257448609
  Name: "Agility Panel"
  Transform {
    Location {
      X: 13176.4336
      Y: 30721.3828
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6492551494443678157
  ChildIds: 1137987476987833969
  ChildIds: 10745226577699204920
  ChildIds: 7662067873534742336
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
    Width: 225
    Height: 45
    UIY: 365
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
  InstanceHistory {
    SelfId: 3191562144257448609
    SubobjectId: 16055878474549121977
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7662067873534742336
  Name: "Agility"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3191562144257448609
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
    Width: 80
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "0"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7662067873534742336
    SubobjectId: 11010850947653125720
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10745226577699204920
  Name: "UI Image"
  Transform {
    Location {
      X: 0.00390624953
      Y: -0.00488281297
    }
    Rotation {
      Yaw: -5.69955238e-12
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3191562144257448609
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
    Width: 45
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Image {
      Brush {
        Id: 7515999011531429367
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
        X: 1
        Y: 2
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 10745226577699204920
    SubobjectId: 7459634575678055968
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1137987476987833969
  Name: "UI Text Box"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3191562144257448609
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
    Width: 120
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Agility"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
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
    SelfId: 1137987476987833969
    SubobjectId: 18253569979719362409
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9137528416117528719
  Name: "Wisdom Panel"
  Transform {
    Location {
      X: 13176.4365
      Y: 30721.3848
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6492551494443678157
  ChildIds: 511973312215805877
  ChildIds: 5894861110111941702
  ChildIds: 13972694423895743663
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
    Width: 225
    Height: 45
    UIY: 320
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
  InstanceHistory {
    SelfId: 9137528416117528719
    SubobjectId: 10111778623429202327
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13972694423895743663
  Name: "Wisdom"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9137528416117528719
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
    Width: 80
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "0"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13972694423895743663
    SubobjectId: 3707517164089562551
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5894861110111941702
  Name: "UI Image"
  Transform {
    Location {
      X: 0.00390624953
      Y: -0.00488281297
    }
    Rotation {
      Yaw: -5.69955238e-12
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9137528416117528719
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
    Width: 45
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Image {
      Brush {
        Id: 707747492659711457
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
        X: 1
        Y: 2
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 5894861110111941702
    SubobjectId: 11769458651933670750
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 511973312215805877
  Name: "UI Text Box"
  Transform {
    Location {
      X: 0.000690534
      Y: -0.000690533896
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9137528416117528719
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
    Width: 120
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Wisdom"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
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
    SelfId: 511973312215805877
    SubobjectId: 17690598623844345517
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7161011763030508695
  Name: "Skill Resist Panel"
  Transform {
    Location {
      X: 13176.4404
      Y: 30721.3945
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6492551494443678157
  ChildIds: 11821607731057608462
  ChildIds: 2752807063344996800
  ChildIds: 15759060851129975881
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
    Width: 225
    Height: 45
    UIY: 240
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
  InstanceHistory {
    SelfId: 7161011763030508695
    SubobjectId: 10518793521598041487
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15759060851129975881
  Name: "SkillR"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7161011763030508695
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
    Width: 80
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "0"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15759060851129975881
    SubobjectId: 2893609913924570449
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2752807063344996800
  Name: "UI Image"
  Transform {
    Location {
      X: 0.00390624953
      Y: -0.0048828125
    }
    Rotation {
      Yaw: -5.69955238e-12
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7161011763030508695
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
    Width: 45
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Image {
      Brush {
        Id: 9982015852491840084
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
        X: 1
        Y: 2
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 2752807063344996800
    SubobjectId: 15323686622886013144
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11821607731057608462
  Name: "UI Text Box"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7161011763030508695
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
    Width: 120
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Skill Resist"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
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
    SelfId: 11821607731057608462
    SubobjectId: 6239048039934758422
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14416997259831901858
  Name: "Skill Power Panel"
  Transform {
    Location {
      X: 13176.4453
      Y: 30721.4
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6492551494443678157
  ChildIds: 12082323746394607543
  ChildIds: 638560369559359365
  ChildIds: 10688756027765818640
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
    Width: 225
    Height: 45
    UIY: 185
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
  InstanceHistory {
    SelfId: 14416997259831901858
    SubobjectId: 4217676183234721722
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10688756027765818640
  Name: "SkillP"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14416997259831901858
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
    Width: 80
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "0"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10688756027765818640
    SubobjectId: 7407667406230244360
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 638560369559359365
  Name: "UI Image"
  Transform {
    Location {
      X: 0.00390624953
      Y: -0.0048828125
    }
    Rotation {
      Yaw: -5.69955238e-12
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14416997259831901858
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
    Width: 45
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Image {
      Brush {
        Id: 1578447854616165479
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
        X: 1
        Y: 2
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 638560369559359365
    SubobjectId: 18034625117809641117
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12082323746394607543
  Name: "UI Text Box"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14416997259831901858
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
    Width: 120
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Skill Power"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
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
    SelfId: 12082323746394607543
    SubobjectId: 6140180720569927343
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11534648032370543472
  Name: "Attack Panel"
  Transform {
    Location {
      X: 13176.4453
      Y: 30721.4
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6492551494443678157
  ChildIds: 17949987377857647265
  ChildIds: 7448943131328762332
  ChildIds: 12862836579925374760
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
    Width: 225
    Height: 45
    UIY: 130
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
  InstanceHistory {
    SelfId: 11534648032370543472
    SubobjectId: 5947014295907795560
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12862836579925374760
  Name: "Attack"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11534648032370543472
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
    Width: 80
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "0"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12862836579925374760
    SubobjectId: 4619212192582073904
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7448943131328762332
  Name: "UI Image"
  Transform {
    Location {
      X: 0.00390624953
      Y: -0.0048828125
    }
    Rotation {
      Yaw: -2.84977619e-12
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11534648032370543472
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
    Width: 45
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Image {
      Brush {
        Id: 1396009735179489274
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
        X: 1
        Y: 2
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 7448943131328762332
    SubobjectId: 10791947368827984068
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17949987377857647265
  Name: "UI Text Box"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11534648032370543472
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
    Width: 120
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Attack Power"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
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
    SelfId: 17949987377857647265
    SubobjectId: 828784175978421177
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17680759267508289549
  Name: "Block Panel"
  Transform {
    Location {
      X: 13176.4473
      Y: 30721.4062
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6492551494443678157
  ChildIds: 17703754232242191141
  ChildIds: 13848363134584052564
  ChildIds: 1862888944952846296
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
    Width: 225
    Height: 45
    UIY: 50
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
  InstanceHistory {
    SelfId: 17680759267508289549
    SubobjectId: 560109208035182869
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1862888944952846296
  Name: "Block"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17680759267508289549
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
    Width: 80
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "0"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1862888944952846296
    SubobjectId: 16951842687230766784
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13848363134584052564
  Name: "UI Image"
  Transform {
    Location {
      X: 0.00390624953
      Y: -0.0048828125
    }
    Rotation {
      Yaw: -2.84977619e-12
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17680759267508289549
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
    Width: 45
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Image {
      Brush {
        Id: 1101004555062815624
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
        X: 1
        Y: 2
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 13848363134584052564
    SubobjectId: 3653545600527667788
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17703754232242191141
  Name: "UI Text Box"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17680759267508289549
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
    Width: 120
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Block"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
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
    SelfId: 17703754232242191141
    SubobjectId: 516535268833423933
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7981519479576339060
  Name: "Health Panel"
  Transform {
    Location {
      X: 13176.4473
      Y: 30721.4062
      Z: -31401.6484
    }
    Rotation {
      Yaw: -35.3704453
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6492551494443678157
  ChildIds: 4749708068562836464
  ChildIds: 2633945241611464813
  ChildIds: 14403379791494854792
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
    Width: 225
    Height: 45
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
  InstanceHistory {
    SelfId: 7981519479576339060
    SubobjectId: 11267805152135474028
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14403379791494854792
  Name: "Health"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7981519479576339060
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
    Width: 80
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "100"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14403379791494854792
    SubobjectId: 3852918680208601488
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2633945241611464813
  Name: "UI Image"
  Transform {
    Location {
      X: 0.00390625
      Y: -0.0048828125
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7981519479576339060
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
    Width: 45
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
    Image {
      Brush {
        Id: 5263345044092346839
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
        X: 1
        Y: 2
      }
      ScreenshotIndex: 1
      RetainAspectRatio: true
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
  InstanceHistory {
    SelfId: 2633945241611464813
    SubobjectId: 15426767738593294709
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4749708068562836464
  Name: "UI Text Box"
  Transform {
    Location {
      X: 0.00069053378
      Y: -0.000690533896
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7981519479576339060
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
    Width: 120
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Health"
      Color {
        R: 1
        G: 0.456411242
        A: 1
      }
      Size: 22
      Justification {
        Value: "mc:etextjustify:right"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 0.781
      }
      ShadowOffset {
        X: 1
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
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
    SelfId: 4749708068562836464
    SubobjectId: 12930149991806489320
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3723295033098269302
  Name: "Stats Sub Title"
  Transform {
    Location {
      X: -74599.7266
      Y: -10400.0078
      Z: -23025
    }
    Rotation {
      Yaw: 5.46415067e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17839965229914413770
  ChildIds: 10954412406076999457
  ChildIds: 4782039849958072163
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
  InstanceHistory {
    SelfId: 3723295033098269302
    SubobjectId: 13920777772627114862
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4782039849958072163
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
  ParentId: 3723295033098269302
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
      Label: "STATS"
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
  InstanceHistory {
    SelfId: 4782039849958072163
    SubobjectId: 12737995400038356603
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10954412406076999457
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
  ParentId: 3723295033098269302
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
  InstanceHistory {
    SelfId: 10954412406076999457
    SubobjectId: 7682754695269568057
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12555045159792756274
  Name: "Character Equipment Panel"
  Transform {
    Location {
      X: -80646.4609
      Y: -20577.25
      Z: -22836.6484
    }
    Rotation {
      Yaw: -147.862656
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1988874435665193361
  ChildIds: 11230498012522433836
  ChildIds: 11249631902798551174
  ChildIds: 7792067746044696925
  ChildIds: 5794109851988397431
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
    Width: 450
    Height: 100
    UIX: 1000
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
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
  InstanceHistory {
    SelfId: 12555045159792756274
    SubobjectId: 6676375024845492010
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5794109851988397431
  Name: "Left Seperator"
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
  ParentId: 12555045159792756274
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
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
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
  InstanceHistory {
    SelfId: 5794109851988397431
    SubobjectId: 11741891990454256751
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7792067746044696925
  Name: "EquipmentSlots"
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
  ParentId: 12555045159792756274
  ChildIds: 15367961850328215242
  ChildIds: 7496541975521882967
  ChildIds: 10378776734395958475
  ChildIds: 993374603450468442
  ChildIds: 726827940615708667
  ChildIds: 15497536234335828604
  ChildIds: 13167428277514229446
  ChildIds: 3437630453949424979
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
    Width: 310
    Height: 600
    UIY: 22.5
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
    SelfId: 7792067746044696925
    SubobjectId: 11437376066723647557
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3437630453949424979
  Name: "Slot"
  Transform {
    Location {
      X: 11901.3672
      Y: 21776.4609
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8628235
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7792067746044696925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7307779190775787410
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Ring"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9961
            Y: -75590.2344
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862549
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
          Name: "ShadowOffset"
          Vector2 {
            Y: 3
          }
        }
        Overrides {
          Name: "UIY"
          Float: 450
        }
        Overrides {
          Name: "Width"
          Int: 150
        }
        Overrides {
          Name: "Height"
          Int: 150
        }
        Overrides {
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "UIX"
          Float: 160
        }
      }
    }
    ParameterOverrideMap {
      key: 17759629232812980019
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "PanelControl.OpacityMaskBrush"
          AssetReference {
            Id: 3716322990654389808
          }
        }
        Overrides {
          Name: "Opacity"
          Float: 0.809
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 3437630453949424979
    SubobjectId: 14478830599363830248
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 13167428277514229446
  Name: "Slot"
  Transform {
    Location {
      X: 11901.3672
      Y: 21776.4609
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8628235
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7792067746044696925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7307779190775787410
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Foot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9961
            Y: -75590.2344
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862549
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
          Name: "ShadowOffset"
          Vector2 {
            Y: 3
          }
        }
        Overrides {
          Name: "UIY"
          Float: 450
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "Width"
          Int: 150
        }
        Overrides {
          Name: "Height"
          Int: 150
        }
      }
    }
    ParameterOverrideMap {
      key: 17759629232812980019
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "PanelControl.OpacityMaskBrush"
          AssetReference {
            Id: 17923540808516649059
          }
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
        Overrides {
          Name: "Opacity"
          Float: 0.809
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 13167428277514229446
    SubobjectId: 5901918219860447869
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 15497536234335828604
  Name: "Slot"
  Transform {
    Location {
      X: 11901.3672
      Y: 21776.4609
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8628235
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7792067746044696925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7307779190775787410
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Waist"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9961
            Y: -75590.2344
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862549
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
          Name: "ShadowOffset"
          Vector2 {
          }
        }
        Overrides {
          Name: "UIY"
          Float: 300
        }
        Overrides {
          Name: "Width"
          Int: 150
        }
        Overrides {
          Name: "Height"
          Int: 150
        }
        Overrides {
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "UIX"
          Float: 160
        }
      }
    }
    ParameterOverrideMap {
      key: 17759629232812980019
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "PanelControl.OpacityMaskBrush"
          AssetReference {
            Id: 8634195622628323616
          }
        }
        Overrides {
          Name: "Opacity"
          Float: 0.809
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 15497536234335828604
    SubobjectId: 3479459524091297479
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 726827940615708667
  Name: "Slot"
  Transform {
    Location {
      X: 11901.3672
      Y: 21776.4609
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8628464
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7792067746044696925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7307779190775787410
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "hand"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9961
            Y: -75590.2344
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862549
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
          Name: "ShadowOffset"
          Vector2 {
          }
        }
        Overrides {
          Name: "UIY"
          Float: 300
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "Width"
          Int: 150
        }
        Overrides {
          Name: "Height"
          Int: 150
        }
      }
    }
    ParameterOverrideMap {
      key: 17759629232812980019
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "PanelControl.OpacityMaskBrush"
          AssetReference {
            Id: 14945771806919897413
          }
        }
        Overrides {
          Name: "Opacity"
          Float: 0.809
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 726827940615708667
    SubobjectId: 17099603949597563712
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 993374603450468442
  Name: "Slot"
  Transform {
    Location {
      X: 11901.3672
      Y: 21776.4609
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8628693
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7792067746044696925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7307779190775787410
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Chest"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9961
            Y: -75590.2344
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862564
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
          Name: "ShadowOffset"
          Vector2 {
          }
        }
        Overrides {
          Name: "UIY"
          Float: 150
        }
        Overrides {
          Name: "Width"
          Int: 150
        }
        Overrides {
          Name: "Height"
          Int: 150
        }
        Overrides {
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "UIX"
          Float: 160
        }
      }
    }
    ParameterOverrideMap {
      key: 17759629232812980019
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "PanelControl.OpacityMaskBrush"
          AssetReference {
            Id: 12385328426085025461
          }
        }
        Overrides {
          Name: "Opacity"
          Float: 0.809
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 993374603450468442
    SubobjectId: 16902825139242274017
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 10378776734395958475
  Name: "Slot"
  Transform {
    Location {
      X: 11901.3672
      Y: 21776.4609
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8629
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7792067746044696925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7307779190775787410
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Necklace"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9961
            Y: -75590.2344
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862625
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
          Name: "ShadowOffset"
          Vector2 {
            Y: 3
          }
        }
        Overrides {
          Name: "UIY"
          Float: 150
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "Width"
          Int: 150
        }
        Overrides {
          Name: "Height"
          Int: 150
        }
      }
    }
    ParameterOverrideMap {
      key: 17759629232812980019
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "PanelControl.OpacityMaskBrush"
          AssetReference {
            Id: 4106662450040501179
          }
        }
        Overrides {
          Name: "Opacity"
          Float: 0.809
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 10378776734395958475
    SubobjectId: 8598246262545432688
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 7496541975521882967
  Name: "Slot"
  Transform {
    Location {
      X: 11901.3672
      Y: 21776.4609
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7792067746044696925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7307779190775787410
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "UIInheritParentHeight"
          Bool: true
        }
        Overrides {
          Name: "Width"
          Int: 31
        }
        Overrides {
          Name: "RetainAspectRatio"
          Bool: true
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Head"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9961
            Y: -75590.2344
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862686
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
          Name: "ShadowOffset"
          Vector2 {
          }
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
        Overrides {
          Name: "Width"
          Int: 150
        }
        Overrides {
          Name: "Height"
          Int: 150
        }
        Overrides {
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "UIX"
          Float: 160
        }
      }
    }
    ParameterOverrideMap {
      key: 17759629232812980019
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "PanelControl.OpacityMaskBrush"
          AssetReference {
            Id: 1281351767004184340
          }
        }
        Overrides {
          Name: "Opacity"
          Float: 0.809
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 7496541975521882967
    SubobjectId: 10327554586055948268
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 15367961850328215242
  Name: "Slot"
  Transform {
    Location {
      X: 11901.3506
      Y: 21776.4531
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8629532
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7792067746044696925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7307779190775787410
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Weapon"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9961
            Y: -75590.2344
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862686
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
          Name: "UIY"
          Float: 0
        }
        Overrides {
          Name: "ShadowOffset"
          Vector2 {
          }
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "Width"
          Int: 150
        }
        Overrides {
          Name: "Height"
          Int: 150
        }
      }
    }
    ParameterOverrideMap {
      key: 17759629232812980019
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "PanelControl.OpacityMaskBrush"
          AssetReference {
            Id: 1537292179389629833
          }
        }
        Overrides {
          Name: "Opacity"
          Float: 0.809
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 15367961850328215242
    SubobjectId: 3611393193318951537
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 11249631902798551174
  Name: "Right Seperator"
  Transform {
    Location {
      X: -74599.9297
      Y: -10400.0156
      Z: -23025
    }
    Rotation {
      Yaw: 2.73207515e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12555045159792756274
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
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
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
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11249631902798551174
    SubobjectId: 7964048761237164446
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11230498012522433836
  Name: "Equipment Sub Title"
  Transform {
    Location {
      X: -74599.7891
      Y: -10400
      Z: -23025
    }
    Rotation {
      Yaw: 1.7075472e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12555045159792756274
  ChildIds: 391914495758873134
  ChildIds: 5010892778785656224
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
  InstanceHistory {
    SelfId: 11230498012522433836
    SubobjectId: 7584618997933048884
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5010892778785656224
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
  ParentId: 11230498012522433836
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
      Label: "EQUIPPED ITEMS"
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
  InstanceHistory {
    SelfId: 5010892778785656224
    SubobjectId: 13191325698646410424
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 391914495758873134
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
  ParentId: 11230498012522433836
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
  InstanceHistory {
    SelfId: 391914495758873134
    SubobjectId: 17864399369375284022
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3969791087346977672
  Name: "Inventory Panel"
  Transform {
    Location {
      X: -80646.4609
      Y: -20577.25
      Z: -22836.6484
    }
    Rotation {
      Yaw: -147.862656
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1988874435665193361
  ChildIds: 607642116603777705
  ChildIds: 5531468018329855182
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
    Width: 1000
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentHeight: true
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
  InstanceHistory {
    SelfId: 3969791087346977672
    SubobjectId: 14234967261693592208
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5531468018329855182
  Name: "Slots"
  Transform {
    Location {
      X: 22220.8281
      Y: 33357.7344
      Z: 65675
    }
    Rotation {
      Yaw: -44.9999962
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3969791087346977672
  ChildIds: 2303088471230122961
  ChildIds: 9676272958214648193
  ChildIds: 8589854555453902572
  ChildIds: 10780602277822284924
  ChildIds: 7676473113443880067
  ChildIds: 4452010739819962758
  ChildIds: 4203900956878927720
  ChildIds: 9429930302496249886
  ChildIds: 8065831835323800851
  ChildIds: 8771068499368264976
  ChildIds: 10342812745852226329
  ChildIds: 3401426706595215409
  ChildIds: 14156173432252389946
  ChildIds: 9026223347053761018
  ChildIds: 9781176844853394076
  ChildIds: 11452025398274880084
  ChildIds: 7439262445480820243
  ChildIds: 17667078594353764438
  ChildIds: 15391520550096481548
  ChildIds: 13500421235560390979
  ChildIds: 6913914199232644746
  ChildIds: 12001960294961282811
  ChildIds: 5271016424106210758
  ChildIds: 5071109175866682938
  ChildIds: 2052504260283714617
  ChildIds: 8517053538144310629
  ChildIds: 3449473180898243467
  ChildIds: 5864987026376233805
  ChildIds: 5447201851883931890
  ChildIds: 7956549593503793348
  ChildIds: 16127357146444439281
  ChildIds: 11972616624754780116
  ChildIds: 9064943260016431753
  ChildIds: 9219125610857653812
  ChildIds: 13407452297626948575
  ChildIds: 1493730059403051964
  ChildIds: 5182895050622071546
  ChildIds: 16639758475833232691
  ChildIds: 9607565869819678044
  ChildIds: 15104951750988608692
  ChildIds: 4031593650145168458
  ChildIds: 9971719348378087914
  ChildIds: 7416021142293008007
  ChildIds: 10133962212253448357
  ChildIds: 1910658648244137357
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
    Width: 948
    Height: 535
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
    SelfId: 5531468018329855182
    SubobjectId: 13715990158324002262
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1910658648244137357
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.2188
      Y: 11376.5254
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8623734
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.7969
            Y: -75589.8594
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862335
          }
        }
        Overrides {
          Name: "UIX"
          Float: 848
        }
        Overrides {
          Name: "UIY"
          Float: 450
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 1910658648244137357
    SubobjectId: 18293565551911758134
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 10133962212253448357
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.2422
      Y: 11376.5195
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8624115
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8125
            Y: -75589.8906
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862381
          }
        }
        Overrides {
          Name: "UIX"
          Float: 742
        }
        Overrides {
          Name: "UIY"
          Float: 450
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 10133962212253448357
    SubobjectId: 7780207948181175326
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 7416021142293008007
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.2812
      Y: 11376.5215
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8624802
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8359
            Y: -75589.9062
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862427
          }
        }
        Overrides {
          Name: "UIX"
          Float: 636
        }
        Overrides {
          Name: "UIY"
          Float: 450
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 7416021142293008007
    SubobjectId: 9345311136719964732
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 9971719348378087914
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3125
      Y: 11376.5254
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8625259
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8594
            Y: -75589.9297
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862488
          }
        }
        Overrides {
          Name: "UIX"
          Float: 530
        }
        Overrides {
          Name: "UIY"
          Float: 450
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 9971719348378087914
    SubobjectId: 7870428419617224017
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 4031593650145168458
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3359
      Y: 11376.4961
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8625717
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8594
            Y: -75589.9609
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862534
          }
        }
        Overrides {
          Name: "UIX"
          Float: 424
        }
        Overrides {
          Name: "UIY"
          Float: 450
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 4031593650145168458
    SubobjectId: 15035496090650855665
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 15104951750988608692
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3906
      Y: 11376.5098
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8626633
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9062
            Y: -75589.9922
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862625
          }
        }
        Overrides {
          Name: "UIX"
          Float: 318
        }
        Overrides {
          Name: "UIY"
          Float: 450
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 15104951750988608692
    SubobjectId: 3946376542431244303
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 9607565869819678044
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.4766
      Y: 11376.4727
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8627
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9453
            Y: -75590.0781
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862671
          }
        }
        Overrides {
          Name: "UIX"
          Float: 212
        }
        Overrides {
          Name: "UIY"
          Float: 450
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 9607565869819678044
    SubobjectId: 7065909606129568231
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 16639758475833232691
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.4922
      Y: 11376.4707
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8627548
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9453
            Y: -75590.0938
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862717
          }
        }
        Overrides {
          Name: "UIX"
          Float: 106
        }
        Overrides {
          Name: "UIY"
          Float: 450
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 16639758475833232691
    SubobjectId: 123713976898849160
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 5182895050622071546
  Name: "Slot"
  Transform {
    Location {
      X: -62698.4609
      Y: 11376.4824
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8627853
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9336
            Y: -75590.0625
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862732
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
          Name: "UIY"
          Float: 450
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 5182895050622071546
    SubobjectId: 11580617825943696961
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 1493730059403051964
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.2422
      Y: 11376.5195
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8624115
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8125
            Y: -75589.8906
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862381
          }
        }
        Overrides {
          Name: "UIX"
          Float: 848
        }
        Overrides {
          Name: "UIY"
          Float: 344
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 1493730059403051964
    SubobjectId: 17573330020750952199
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 13407452297626948575
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.2812
      Y: 11376.5215
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8624802
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8359
            Y: -75589.9062
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862427
          }
        }
        Overrides {
          Name: "UIX"
          Float: 742
        }
        Overrides {
          Name: "UIY"
          Float: 344
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 13407452297626948575
    SubobjectId: 6722501833129449316
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 9219125610857653812
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3125
      Y: 11376.5254
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8625259
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8594
            Y: -75589.9297
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862488
          }
        }
        Overrides {
          Name: "UIX"
          Float: 636
        }
        Overrides {
          Name: "UIY"
          Float: 344
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 9219125610857653812
    SubobjectId: 11000922786124997263
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 9064943260016431753
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3359
      Y: 11376.5176
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8625717
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.875
            Y: -75589.9531
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862534
          }
        }
        Overrides {
          Name: "UIX"
          Float: 530
        }
        Overrides {
          Name: "UIY"
          Float: 344
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 9064943260016431753
    SubobjectId: 11139351059615618610
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 11972616624754780116
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3672
      Y: 11376.4902
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8626175
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.875
            Y: -75589.9922
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862579
          }
        }
        Overrides {
          Name: "UIX"
          Float: 424
        }
        Overrides {
          Name: "UIY"
          Float: 344
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 11972616624754780116
    SubobjectId: 4718803164297077615
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 16127357146444439281
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.4141
      Y: 11376.5137
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8627
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9219
            Y: -75590.0156
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862671
          }
        }
        Overrides {
          Name: "UIX"
          Float: 318
        }
        Overrides {
          Name: "UIY"
          Float: 344
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 16127357146444439281
    SubobjectId: 4076928608918493770
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 7956549593503793348
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.5
      Y: 11376.4668
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8627548
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9531
            Y: -75590.1
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862717
          }
        }
        Overrides {
          Name: "UIX"
          Float: 212
        }
        Overrides {
          Name: "UIY"
          Float: 344
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 7956549593503793348
    SubobjectId: 9885575643314898047
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 5447201851883931890
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.5078
      Y: 11376.4609
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8628
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9609
            Y: -75590.1172
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862762
          }
        }
        Overrides {
          Name: "UIX"
          Float: 106
        }
        Overrides {
          Name: "UIY"
          Float: 344
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 5447201851883931890
    SubobjectId: 12448952269544557641
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 5864987026376233805
  Name: "Slot"
  Transform {
    Location {
      X: -62698.4922
      Y: 11376.4707
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8628235
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9453
            Y: -75590.0938
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862793
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
          Name: "UIY"
          Float: 344
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 5864987026376233805
    SubobjectId: 13132311489139791862
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 3449473180898243467
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.2812
      Y: 11376.5215
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8624802
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8359
            Y: -75589.9062
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862427
          }
        }
        Overrides {
          Name: "UIX"
          Float: 848
        }
        Overrides {
          Name: "UIY"
          Float: 238
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 3449473180898243467
    SubobjectId: 14449012755576289072
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 8517053538144310629
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3125
      Y: 11376.5254
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8625183
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8594
            Y: -75589.9297
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862488
          }
        }
        Overrides {
          Name: "UIX"
          Float: 742
        }
        Overrides {
          Name: "UIY"
          Float: 238
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 8517053538144310629
    SubobjectId: 10478026995681202654
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 2052504260283714617
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3359
      Y: 11376.5176
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8625717
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.875
            Y: -75589.9531
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862534
          }
        }
        Overrides {
          Name: "UIX"
          Float: 636
        }
        Overrides {
          Name: "UIY"
          Float: 238
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 2052504260283714617
    SubobjectId: 18095530205290727554
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 5071109175866682938
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3672
      Y: 11376.5
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8626175
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8828
            Y: -75589.9844
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862579
          }
        }
        Overrides {
          Name: "UIX"
          Float: 530
        }
        Overrides {
          Name: "UIY"
          Float: 238
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 5071109175866682938
    SubobjectId: 11618156695671974529
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 5271016424106210758
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.4
      Y: 11376.4883
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8626709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9
            Y: -75590.0156
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862625
          }
        }
        Overrides {
          Name: "UIX"
          Float: 424
        }
        Overrides {
          Name: "UIY"
          Float: 238
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 5271016424106210758
    SubobjectId: 12573382319290904957
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 12001960294961282811
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.4453
      Y: 11376.5039
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8627548
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9453
            Y: -75590.0391
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862717
          }
        }
        Overrides {
          Name: "UIX"
          Float: 318
        }
        Overrides {
          Name: "UIY"
          Float: 238
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 12001960294961282811
    SubobjectId: 4743502431941900864
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 6913914199232644746
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.5156
      Y: 11376.4609
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8628
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9648
            Y: -75590.125
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862762
          }
        }
        Overrides {
          Name: "UIX"
          Float: 212
        }
        Overrides {
          Name: "UIY"
          Float: 238
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 6913914199232644746
    SubobjectId: 13306132823624761905
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 13500421235560390979
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.5234
      Y: 11376.4648
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.862854
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9688
            Y: -75590.125
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862808
          }
        }
        Overrides {
          Name: "UIX"
          Float: 106
        }
        Overrides {
          Name: "UIY"
          Float: 238
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 13500421235560390979
    SubobjectId: 6629554344535320056
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 15391520550096481548
  Name: "Slot"
  Transform {
    Location {
      X: -62698.5078
      Y: 11376.4609
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8628693
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9609
            Y: -75590.1172
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862839
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
          Name: "UIY"
          Float: 238
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 15391520550096481548
    SubobjectId: 3657595234008394167
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 17667078594353764438
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3125
      Y: 11376.5254
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8625183
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8594
            Y: -75589.9297
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862488
          }
        }
        Overrides {
          Name: "UIX"
          Float: 848
        }
        Overrides {
          Name: "UIY"
          Float: 132
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 17667078594353764438
    SubobjectId: 1330210575175015661
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 7439262445480820243
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3359
      Y: 11376.5176
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8625488
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.875
            Y: -75589.9531
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862518
          }
        }
        Overrides {
          Name: "UIX"
          Float: 742
        }
        Overrides {
          Name: "UIY"
          Float: 132
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 7439262445480820243
    SubobjectId: 9252180201684794024
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 11452025398274880084
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3672
      Y: 11376.5
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8626175
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8828
            Y: -75589.9844
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862579
          }
        }
        Overrides {
          Name: "UIX"
          Float: 636
        }
        Overrides {
          Name: "UIY"
          Float: 132
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 11452025398274880084
    SubobjectId: 8770212118037772015
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 9781176844853394076
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.3906
      Y: 11376.5
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8626709
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9
            Y: -75590.0078
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862625
          }
        }
        Overrides {
          Name: "UIX"
          Float: 530
        }
        Overrides {
          Name: "UIY"
          Float: 132
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 9781176844853394076
    SubobjectId: 6982393189400870439
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 9026223347053761018
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.4297
      Y: 11376.4883
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8627319
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.918
            Y: -75590.0391
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862686
          }
        }
        Overrides {
          Name: "UIX"
          Float: 424
        }
        Overrides {
          Name: "UIY"
          Float: 132
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 9026223347053761018
    SubobjectId: 11103729710073468225
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 14156173432252389946
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.4688
      Y: 11376.4941
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8628
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9531
            Y: -75590.0625
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862762
          }
        }
        Overrides {
          Name: "UIX"
          Float: 318
        }
        Overrides {
          Name: "UIY"
          Float: 132
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 14156173432252389946
    SubobjectId: 2535277701596618369
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 3401426706595215409
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.5312
      Y: 11376.4609
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8628464
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9766
            Y: -75590.1328
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862808
          }
        }
        Overrides {
          Name: "UIX"
          Float: 212
        }
        Overrides {
          Name: "UIY"
          Float: 132
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 3401426706595215409
    SubobjectId: 14442906057115778186
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 10342812745852226329
  Name: "Slot_Template"
  Transform {
    Location {
      X: -62698.5547
      Y: 11376.459
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.862915
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9844
            Y: -75590.1406
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862869
          }
        }
        Overrides {
          Name: "UIX"
          Float: 106
        }
        Overrides {
          Name: "UIY"
          Float: 132
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 10342812745852226329
    SubobjectId: 7553315562923544482
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 8771068499368264976
  Name: "Slot"
  Transform {
    Location {
      X: -62698.5234
      Y: 11376.4648
      Z: -16183.7969
    }
    Rotation {
      Yaw: 89.8629303
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9688
            Y: -75590.125
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862885
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
          Name: "UIY"
          Float: 132
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 8771068499368264976
    SubobjectId: 11448943330565390763
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 8065831835323800851
  Name: "Slot_Template"
  Transform {
    Location {
      X: 11901.6406
      Y: 21776.5547
      Z: 6841.20312
    }
    Rotation {
      Yaw: 89.8625412
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.8906
            Y: -75589.9766
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862518
          }
        }
        Overrides {
          Name: "UIX"
          Float: 848
        }
        Overrides {
          Name: "UIY"
          Float: 26
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 8065831835323800851
    SubobjectId: 9850601953130207656
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 9429930302496249886
  Name: "Slot_Template"
  Transform {
    Location {
      X: 11901.6172
      Y: 21776.5508
      Z: 6841.20312
    }
    Rotation {
      Yaw: 89.8625946
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9
            Y: -75590
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862564
          }
        }
        Overrides {
          Name: "UIX"
          Float: 742
        }
        Overrides {
          Name: "UIY"
          Float: 26
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 9429930302496249886
    SubobjectId: 7315568441847471269
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 4203900956878927720
  Name: "Slot_Template"
  Transform {
    Location {
      X: 11901.5859
      Y: 21776.5352
      Z: 6841.20312
    }
    Rotation {
      Yaw: 89.8626556
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9141
            Y: -75590.0234
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862625
          }
        }
        Overrides {
          Name: "UIX"
          Float: 636
        }
        Overrides {
          Name: "UIY"
          Float: 26
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 4203900956878927720
    SubobjectId: 15928256328895181779
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 4452010739819962758
  Name: "Slot_Template"
  Transform {
    Location {
      X: 11901.5469
      Y: 21776.5332
      Z: 6841.20312
    }
    Rotation {
      Yaw: 89.8627167
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9336
            Y: -75590.0547
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862686
          }
        }
        Overrides {
          Name: "UIX"
          Float: 530
        }
        Overrides {
          Name: "UIY"
          Float: 26
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 4452010739819962758
    SubobjectId: 15750056802507171133
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 7676473113443880067
  Name: "Slot_Template"
  Transform {
    Location {
      X: 11901.5156
      Y: 21776.5234
      Z: 6841.20312
    }
    Rotation {
      Yaw: 89.8627777
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.957
            Y: -75590.0859
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862747
          }
        }
        Overrides {
          Name: "UIX"
          Float: 424
        }
        Overrides {
          Name: "UIY"
          Float: 26
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 7676473113443880067
    SubobjectId: 10219659894017198136
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 10780602277822284924
  Name: "Slot_Template"
  Transform {
    Location {
      X: 11901.4766
      Y: 21776.5156
      Z: 6841.20312
    }
    Rotation {
      Yaw: 89.8628235
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9766
            Y: -75590.1172
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862808
          }
        }
        Overrides {
          Name: "UIX"
          Float: 318
        }
        Overrides {
          Name: "UIY"
          Float: 26
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 10780602277822284924
    SubobjectId: 8270770279236894919
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 8589854555453902572
  Name: "Slot_Template"
  Transform {
    Location {
      X: 11901.4453
      Y: 21776.5078
      Z: 6841.20312
    }
    Rotation {
      Yaw: 89.8628922
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44503.9922
            Y: -75590.1484
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862854
          }
        }
        Overrides {
          Name: "UIX"
          Float: 212
        }
        Overrides {
          Name: "UIY"
          Float: 26
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 8589854555453902572
    SubobjectId: 10407398922854238807
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 9676272958214648193
  Name: "Slot_Template"
  Transform {
    Location {
      X: 11901.416
      Y: 21776.4883
      Z: 6841.20117
    }
    Rotation {
      Yaw: 89.8629608
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10959758885803739280
      value {
        Overrides {
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44504.0078
            Y: -75590.1719
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862915
          }
        }
        Overrides {
          Name: "UIX"
          Float: 106
        }
        Overrides {
          Name: "UIY"
          Float: 26
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
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topleft"
          }
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 9676272958214648193
    SubobjectId: 6994881757917050170
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 2303088471230122961
  Name: "Slot"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5531468018329855182
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15486898897841666860
      value {
        Overrides {
          Name: "Name"
          String: "Slot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -44504.0078
            Y: -75590.1719
            Z: -81858.8
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 134.862946
          }
        }
        Overrides {
          Name: "UIX"
          Float: 0
        }
      }
    }
    TemplateAsset {
      Id: 5133444388016553382
    }
  }
  InstanceHistory {
    SelfId: 2303088471230122961
    SubobjectId: 17919259812053602154
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
}
Objects {
  Id: 607642116603777705
  Name: "Inventory Sub Title"
  Transform {
    Location {
      X: -74599.8438
      Y: -10400.0039
      Z: -23025
    }
    Rotation {
      Yaw: -1.36603758e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3969791087346977672
  ChildIds: 4935659828407100764
  ChildIds: 5995809316389196080
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
  InstanceHistory {
    SelfId: 607642116603777705
    SubobjectId: 18083504958374140849
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5995809316389196080
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
  ParentId: 607642116603777705
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
      Label: "INVENTORY"
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
  InstanceHistory {
    SelfId: 5995809316389196080
    SubobjectId: 11650284976074709032
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4935659828407100764
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
  ParentId: 607642116603777705
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
  InstanceHistory {
    SelfId: 4935659828407100764
    SubobjectId: 13179143076570278980
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15752705756935715982
  Name: "Dark BG"
  Transform {
    Location {
      X: -74599.9844
      Y: -10400.0234
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603212e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1988874435665193361
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
    Height: 840
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
  InstanceHistory {
    SelfId: 15752705756935715982
    SubobjectId: 2884448733854741910
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18116270282805639416
  Name: "Main Title Panel"
  Transform {
    Location {
      X: -6046.50195
      Y: -10177.2305
      Z: 188.351562
    }
    Rotation {
      Yaw: -147.862671
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1090376570430179094
  ChildIds: 2615271314816753192
  ChildIds: 11512846089601796477
  ChildIds: 3791416936354413606
  ChildIds: 13986216036568044971
  ChildIds: 2319975807865950410
  ChildIds: 859419925889403178
  ChildIds: 3729572162698811118
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
    Height: 100
    UIY: 20
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
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
  InstanceHistory {
    SelfId: 18116270282805639416
    SubobjectId: 716828175182836192
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3729572162698811118
  Name: "UI Button"
  Transform {
    Location {
      X: -1472.73669
      Y: 281.171265
      Z: -35717.2695
    }
    Rotation {
      Yaw: 107.297989
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18116270282805639416
  ChildIds: 247751953595287197
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
    Height: 50
    UIX: -115
    UIY: 54.5
    RotationAngle: 45
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    IsHittable: true
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 0.230000019
        G: 0.149710208
        B: 0.09223
        A: 1
      }
      HoveredColor {
        R: 0.303
        G: 0.230401203
        B: 0.121502973
        A: 1
      }
      PressedColor {
        R: 0.0990000069
        G: 0.0396989919
        B: 0.0871397853
        A: 1
      }
      DisabledColor {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Brush {
        Id: 8031754533012253259
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
          Value: "mc:euianchor:topright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3729572162698811118
    SubobjectId: 13932270984313888758
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 247751953595287197
  Name: "GenericButtonScript"
  Transform {
    Location {
      X: -5233.91553
      Y: -2142.23535
      Z: 50218.918
    }
    Rotation {
      Yaw: 153.072479
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3729572162698811118
  UnregisteredParameters {
    Overrides {
      Name: "cs:BroadcastString"
      String: "OpenInventory"
    }
    Overrides {
      Name: "cs:PressedSound"
      AssetReference {
        Id: 1988019442596915822
      }
    }
    Overrides {
      Name: "cs:HoverSound"
      AssetReference {
        Id: 5485819788848077082
      }
    }
    Overrides {
      Name: "cs:OnReleased"
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
      Id: 7641244062269779132
    }
  }
  InstanceHistory {
    SelfId: 247751953595287197
    SubobjectId: 17432156169449705349
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 859419925889403178
  Name: "UI Image"
  Transform {
    Location {
      X: -74599.9922
      Y: -10400.0225
      Z: -23025
    }
    Rotation {
      Yaw: 1.3660343e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18116270282805639416
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
    Height: 2
    UIY: 3.11251831
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
          Value: "mc:euianchor:middlecenter"
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
    SelfId: 859419925889403178
    SubobjectId: 17975556497691377714
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2319975807865950410
  Name: "UI Image"
  Transform {
    Location {
      X: -74599.9844
      Y: -10400.0234
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603703e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18116270282805639416
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
    Height: 2
    UIY: 4.5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2653837865451130928
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
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2319975807865950410
    SubobjectId: 15179788330347944402
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13986216036568044971
  Name: "UI Image"
  Transform {
    Location {
      X: -74599.9844
      Y: -10400.0234
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603585e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18116270282805639416
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
    Height: 2
    UIY: 9
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
          Value: "mc:euianchor:middlecenter"
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
    SelfId: 13986216036568044971
    SubobjectId: 3495428665164520627
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3791416936354413606
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
  ParentId: 18116270282805639416
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
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Text {
      Label: "INVENTORY"
      Color {
        R: 1
        G: 0.456411034
        A: 1
      }
      Size: 43
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
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
    SelfId: 3791416936354413606
    SubobjectId: 14269256460911654206
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11512846089601796477
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
  ParentId: 18116270282805639416
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
    UIY: 9
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
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
  InstanceHistory {
    SelfId: 11512846089601796477
    SubobjectId: 7880908191052988517
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2615271314816753192
  Name: "BG"
  Transform {
    Location {
      X: -74599.9844
      Y: -10400.0234
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603458e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18116270282805639416
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
    Height: 109
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
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
  InstanceHistory {
    SelfId: 2615271314816753192
    SubobjectId: 15478884960566253360
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2593632236914243229
  Name: "BG2"
  Transform {
    Location {
      X: -74599.9844
      Y: -10400.0234
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603212e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1090376570430179094
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
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 1328793714507056410
      }
      Color {
        R: 0.0497065671
        G: 0.0144438483
        A: 0.655000031
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
    SelfId: 2593632236914243229
    SubobjectId: 15088512842801725317
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11380181052113554652
  Name: "BG"
  Transform {
    Location {
      X: -74599.9844
      Y: -10400.0234
      Z: -23025
    }
    Rotation {
      Yaw: 1.36603758e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1090376570430179094
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
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        R: 0.0497065671
        G: 0.0144438483
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 0.802000046
      }
      ShadowOffset {
        X: 1
        Y: 2
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
  InstanceHistory {
    SelfId: 11380181052113554652
    SubobjectId: 8031539797770618308
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14631961764608307768
  Name: "Inventory_render"
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
  ParentId: 5394203861609443312
  UnregisteredParameters {
    Overrides {
      Name: "cs:Slots"
      ObjectReference {
        SelfId: 5531468018329855182
      }
    }
    Overrides {
      Name: "cs:EquipmentSlots"
      ObjectReference {
        SelfId: 7792067746044696925
      }
    }
    Overrides {
      Name: "cs:HoverPanel"
      ObjectReference {
        SelfId: 1672793592632319691
      }
    }
    Overrides {
      Name: "cs:dragPanel"
      ObjectReference {
        SelfId: 2527195991306419762
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 5394203861609443312
      }
    }
    Overrides {
      Name: "cs:StatDisplay"
      ObjectReference {
        SelfId: 17839965229914413770
      }
    }
    Overrides {
      Name: "cs:MaterialsBar"
      ObjectReference {
        SelfId: 14837606131599131035
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
  Script {
    ScriptAsset {
      Id: 4719693358227172331
    }
  }
  InstanceHistory {
    SelfId: 14631961764608307768
    SubobjectId: 4149063238841580320
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8776310147784731902
  Name: "AppStateCloseHook"
  Transform {
    Location {
      X: -0.0014355334
      Y: 0.00321512157
    }
    Rotation {
      Yaw: -1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5394203861609443312
  UnregisteredParameters {
    Overrides {
      Name: "cs:state"
      String: "Inventory"
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
      Id: 3880950714690107989
    }
  }
  InstanceHistory {
    SelfId: 8776310147784731902
    SubobjectId: 10038790954645104102
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8230713052883361351
  Name: "EventAppstateConnect"
  Transform {
    Location {
      X: -0.00662827957
      Y: -0.0157142133
    }
    Rotation {
      Yaw: -1.02452814e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5394203861609443312
  UnregisteredParameters {
    Overrides {
      Name: "cs:Event"
      String: "OpenInventory"
    }
    Overrides {
      Name: "cs:None"
      Bool: true
    }
    Overrides {
      Name: "cs:Settings"
      Bool: true
    }
    Overrides {
      Name: "cs:SocialHub"
      Bool: true
    }
    Overrides {
      Name: "cs:Mailbox"
      Bool: true
    }
    Overrides {
      Name: "cs:Shop"
      Bool: true
    }
    Overrides {
      Name: "cs:Study"
      Bool: true
    }
    Overrides {
      Name: "cs:Anvil"
      Bool: true
    }
    Overrides {
      Name: "cs:Cauldron"
      Bool: true
    }
    Overrides {
      Name: "cs:Adventure"
      Bool: true
    }
    Overrides {
      Name: "cs:Inventory"
      Bool: true
    }
    Overrides {
      Name: "cs:appstate"
      String: "Inventory"
    }
    Overrides {
      Name: "cs:Ability"
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
      Id: 14830362213629847488
    }
  }
  InstanceHistory {
    SelfId: 8230713052883361351
    SubobjectId: 9268998823900043103
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5038361833779537974
  Name: "appstateHook"
  Transform {
    Location {
      X: -5503.91602
      Y: -16933.3848
      Z: 27326.6484
    }
    Rotation {
      Yaw: 102.870399
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5394203861609443312
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 5394203861609443312
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
  InstanceHistory {
    SelfId: 5038361833779537974
    SubobjectId: 13218240688053510446
    InstanceId: 17902194835412958227
    TemplateId: 16383229967904859891
    NestedInstanceIds: 2245772577262041256
    OuterTemplateIds: 15017071524491817913
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9469091642679901274
  Name: "Abilities and Class UI"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13804872117946282211
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10075780642854712533
      value {
        Overrides {
          Name: "Name"
          String: "Abilities and Class UI"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 14735.1484
            Y: -10351.8828
            Z: -13100
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 157.500031
          }
        }
      }
    }
    TemplateAsset {
      Id: 13661131819183159129
    }
  }
  InstanceHistory {
    SelfId: 9469091642679901274
    SubobjectId: 8870305623117463625
    InstanceId: 17902194835412958227
    TemplateId: 15017071524491817913
  }
}
Objects {
  Id: 17732797197477866073
  Name: "ServerContext"
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
  ParentId: 16937607096047638534
  ChildIds: 14258563675719013355
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
  NetworkContext {
    Type: Server
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14258563675719013355
  Name: "Class_Select_Server"
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
  ParentId: 17732797197477866073
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
      Id: 10103064316001271897
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7381221756579241431
  Name: "Character Select Screen"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16937607096047638534
  TemplateInstance {
    ParameterOverrideMap {
      key: 12879506879962929374
      value {
        Overrides {
          Name: "Name"
          String: "Character Select Screen"
        }
      }
    }
    TemplateAsset {
      Id: 11500783014495285293
    }
  }
}
