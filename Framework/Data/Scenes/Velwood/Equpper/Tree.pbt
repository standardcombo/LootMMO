Name: "Equpper"
RootId: 11659756986527455673
Objects {
  Id: 8131074867531430832
  Name: "ClientContext"
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
  ParentId: 11659756986527455673
  ChildIds: 12733248680099954947
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
    IsAllowedForPC: true
    IsAllowedForMobile: true
    IsAllowedForLowMemoryMobile: true
    PCMinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    PCMaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
    MobileMinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MobileMaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
  }
  InstanceHistory {
    SelfId: 4953936116879637169
    SubobjectId: 15015498174232369775
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12733248680099954947
  Name: "Equipper_Client"
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
  ParentId: 8131074867531430832
  ChildIds: 16947799671931854678
  ChildIds: 10377558090673414033
  ChildIds: 10836698933296158585
  UnregisteredParameters {
    Overrides {
      Name: "cs:RenderRoot"
      ObjectReference {
        SelfId: 10836698933296158585
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
      Id: 10737690191975389021
    }
  }
  InstanceHistory {
    SelfId: 14508105586173842546
    SubobjectId: 6739930995374666924
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10836698933296158585
  Name: "AbilityDisplay"
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
  ParentId: 12733248680099954947
  ChildIds: 9900240902617302668
  ChildIds: 3021070523756027165
  ChildIds: 3089934386070898395
  ChildIds: 16865922130221455793
  ChildIds: 4633611488578371192
  ChildIds: 3977004193073043372
  ChildIds: 3630724467158050611
  ChildIds: 11028118493078607137
  ChildIds: 4616107738787081173
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
    SelfId: 15911407193147640949
    SubobjectId: 5192230512577096875
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4616107738787081173
  Name: "Attack"
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
  ParentId: 10836698933296158585
  ChildIds: 17950009696952344863
  ChildIds: 16208538304421147926
  ChildIds: 6767026123619504447
  ChildIds: 3018043181537661947
  ChildIds: 2327068497691618578
  ChildIds: 3589110444692941116
  ChildIds: 13802737872585866571
  ChildIds: 6872976434564021960
  UnregisteredParameters {
  }
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
    Width: 150
    Height: 150
    UIX: -75
    UIY: -75
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9541729775839706355
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6872976434564021960
  Name: "Bubble"
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
  ParentId: 4616107738787081173
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
        Id: 6951220689761147886
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
    SelfId: 12417793017090089512
    SubobjectId: 4074335285226767094
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13802737872585866571
  Name: "Ability Active"
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
  ParentId: 4616107738787081173
  ChildIds: 5009567378902410293
  ChildIds: 10112321866058824855
  ChildIds: 13184543726143501194
  ChildIds: 7375193227101919402
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 4917976940453856942
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7375193227101919402
  Name: "Text Panel"
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
  ParentId: 13802737872585866571
  ChildIds: 6333340180840202298
  ChildIds: 4150028281500965458
  ChildIds: 15642848274038789265
  ChildIds: 8865135097100047297
  ChildIds: 969904510277836947
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
    UIY: -2.00698328
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
    SelfId: 11284957374138920675
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 969904510277836947
  Name: "MAKRO_TEXT"
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
  ParentId: 7375193227101919402
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 2484775083025620467
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8865135097100047297
  Name: "MAKRO_TEXT"
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
  ParentId: 7375193227101919402
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 17145865465891355913
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15642848274038789265
  Name: "MAKRO_TEXT"
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
  ParentId: 7375193227101919402
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 5897214126259321508
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4150028281500965458
  Name: "MAKRO_TEXT"
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
  ParentId: 7375193227101919402
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 1626523816789792943
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6333340180840202298
  Name: "MAKRO_TEXT"
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
  ParentId: 7375193227101919402
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9308713051207224696
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13184543726143501194
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 13802737872585866571
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4777480323184824056
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10112321866058824855
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 13802737872585866571
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14798558153037916708
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5009567378902410293
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 13802737872585866571
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16281483807100094976
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3589110444692941116
  Name: "Ability Level"
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
  ParentId: 4616107738787081173
  ChildIds: 9901976223841418403
  ChildIds: 17429911669417830617
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 14731496997333623244
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17429911669417830617
  Name: "LevelText"
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
  ParentId: 3589110444692941116
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 13405288345375432278
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9901976223841418403
  Name: "UI Panel"
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
  ParentId: 3589110444692941116
  ChildIds: 2898163573023689237
  ChildIds: 7176607964987745855
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 8228776686718194490
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7176607964987745855
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 9901976223841418403
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13593243111226056888
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2898163573023689237
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 9901976223841418403
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14032811501857609588
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2327068497691618578
  Name: "Frame"
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
  ParentId: 4616107738787081173
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
    Width: 6
    Height: 6
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.013708625
        B: 0.0900000334
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 14468346860303948535
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3018043181537661947
  Name: "AbilityName"
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
  ParentId: 4616107738787081173
  UnregisteredParameters {
  }
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 9908550583388538858
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6767026123619504447
  Name: "Cutout"
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
  ParentId: 4616107738787081173
  ChildIds: 2248425180619879940
  ChildIds: 12722576458153411539
  ChildIds: 977634971666110088
  ChildIds: 14308033386293538743
  ChildIds: 9310853661129162028
  ChildIds: 4473908671403641
  ChildIds: 9845091761589262098
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
        Id: 10067297865473811114
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
    SelfId: 11326347427431942160
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9845091761589262098
  Name: "Text Panel"
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
  ParentId: 6767026123619504447
  ChildIds: 9700141928661282140
  ChildIds: 3547484975127792933
  ChildIds: 15387818893934764689
  ChildIds: 12625739328990001933
  ChildIds: 17823005760458850167
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
    UIY: 36.1133499
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6426021144408079067
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17823005760458850167
  Name: "MAKRO_TEXT"
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
  ParentId: 9845091761589262098
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "Attack"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 16211962023554154883
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12625739328990001933
  Name: "MAKRO_TEXT"
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
  ParentId: 9845091761589262098
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "Attack"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 3346817677487908577
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15387818893934764689
  Name: "MAKRO_TEXT"
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
  ParentId: 9845091761589262098
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "Attack"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 17486153547308713006
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3547484975127792933
  Name: "MAKRO_TEXT"
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
  ParentId: 9845091761589262098
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "Attack"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 6340820123543286833
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9700141928661282140
  Name: "MAKRO_TEXT"
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
  ParentId: 9845091761589262098
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "Attack"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 3137882013191321844
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4473908671403641
  Name: "MAKRO_BG"
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
  ParentId: 6767026123619504447
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
    Width: 74
    Height: 148
    UIY: 19.2600708
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13305488357814219014
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9310853661129162028
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 6767026123619504447
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
    Width: 132
    Height: 27
    UIY: 10.7667046
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 10805224738081299054
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14308033386293538743
  Name: "Cooldown Indicator"
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
  ParentId: 6767026123619504447
  ChildIds: 4794820148230552861
  ChildIds: 15420095583041451459
  ChildIds: 8419809033725892903
  UnregisteredParameters {
  }
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
    Width: 150
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      IsClipping: true
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
  InstanceHistory {
    SelfId: 10162888531613196024
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8419809033725892903
  Name: "CountdownTime"
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
  ParentId: 14308033386293538743
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "5"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 30
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
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
    SelfId: 9905700707994695561
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15420095583041451459
  Name: "LeftClip"
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
  ParentId: 14308033386293538743
  ChildIds: 952864238002664569
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
    Width: 75
    Height: 150
    UIX: 3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 42944469740359618
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 952864238002664569
  Name: "LeftShadow"
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
  ParentId: 15420095583041451459
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 828230777617426443
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4794820148230552861
  Name: "RightClip"
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
  ParentId: 14308033386293538743
  ChildIds: 13207678948387348765
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
    Width: 75
    Height: 150
    UIX: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11326507302652223712
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13207678948387348765
  Name: "RightShadow"
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
  ParentId: 4794820148230552861
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 17978888048508994529
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 977634971666110088
  Name: "Icon"
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
  ParentId: 6767026123619504447
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
        Id: 17239930915626961643
      }
      Color {
        R: 1
        G: 1
        B: 1
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
    SelfId: 616528210939268212
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12722576458153411539
  Name: "BG"
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
  ParentId: 6767026123619504447
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
    Width: 343
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
        R: 0.026
        G: 0.026
        B: 0.026
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
  InstanceHistory {
    SelfId: 4742279688118553411
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2248425180619879940
  Name: "BG_SHADOW"
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
  ParentId: 6767026123619504447
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3867709258397687399
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16208538304421147926
  Name: "Active Flash"
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
  ParentId: 4616107738787081173
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15458517833246926183
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17950009696952344863
  Name: "AbilityDisplayClientAttack"
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
  ParentId: 4616107738787081173
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 4616107738787081173
      }
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 977634971666110088
      }
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 3018043181537661947
      }
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 8419809033725892903
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 14308033386293538743
      }
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 13207678948387348765
      }
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 952864238002664569
      }
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 875107398691381245
      }
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 13802737872585866571
      }
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 9845091761589262098
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
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
      Id: 16759298589791082027
    }
  }
  InstanceHistory {
    SelfId: 17027063557959304354
    SubobjectId: 8688119579028415612
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11028118493078607137
  Name: "c"
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
  ParentId: 10836698933296158585
  ChildIds: 17020487511694635530
  ChildIds: 37580322728356939
  ChildIds: 2247398022619440586
  ChildIds: 7886237881123822519
  ChildIds: 8357136040191497446
  ChildIds: 13833212308105534686
  ChildIds: 4237457999007618029
  ChildIds: 8985763069247515348
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 11028118493078607137
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 3919131636767479738
      }
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 2247398022619440586
      }
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 4206028926060935795
      }
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 18244931816174555591
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 8758428041989217653
      }
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 13339831723693883562
      }
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 13833212308105534686
      }
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 17020487511694635530
      }
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator"
      ObjectReference {
        SelfId: 4237457999007618029
      }
    }
    Overrides {
      Name: "cs:DurationIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText"
      ObjectReference {
        SelfId: 4013669525660413064
      }
    }
    Overrides {
      Name: "cs:LevelText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 5458478764747157817
      }
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
    }
  }
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
    Width: 100
    Height: 100
    UIX: -175
    UIY: -400
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6997227427922039843
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8985763069247515348
  Name: "Bubble"
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
  ParentId: 11028118493078607137
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
        Id: 6951220689761147886
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
    SelfId: 13774892807800356719
    SubobjectId: 3167278108771803057
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4237457999007618029
  Name: "Duration Indicator"
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
  ParentId: 11028118493078607137
  ChildIds: 1754337701616460865
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
    Width: 79
    Height: 15
    UIY: 18.671
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    StatBar {
      Color {
        G: 0.194617867
        B: 0.863157392
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.00556291314
        A: 1
      }
      Percent: 0.552933455
      FillBrush {
      }
      BackgroundBrush {
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
    SelfId: 13122614511445495177
    SubobjectId: 17293412896128553977
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1754337701616460865
  Name: "Shading"
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
  ParentId: 4237457999007618029
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
    Height: 7
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.4
      }
      TeamSettings {
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
    SelfId: 12112640472613857182
    SubobjectId: 17436479173850151406
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13833212308105534686
  Name: "Ability Active"
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
  ParentId: 11028118493078607137
  ChildIds: 3805916573420007358
  ChildIds: 5571910028817342676
  ChildIds: 76935505752432080
  ChildIds: 589762190864132223
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 11614787906140909182
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 589762190864132223
  Name: "Text Panel"
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
  ParentId: 13833212308105534686
  ChildIds: 9068550250151060739
  ChildIds: 7309557031125929733
  ChildIds: 3809559280524461224
  ChildIds: 16144411192398209761
  ChildIds: 2026154945382198526
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
    UIY: -2.00698328
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
    SelfId: 8785420172704941619
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2026154945382198526
  Name: "MAKRO_TEXT"
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
  ParentId: 589762190864132223
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 14342729157394527523
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16144411192398209761
  Name: "MAKRO_TEXT"
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
  ParentId: 589762190864132223
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 613180201526875609
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3809559280524461224
  Name: "MAKRO_TEXT"
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
  ParentId: 589762190864132223
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 13017427022442566260
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7309557031125929733
  Name: "MAKRO_TEXT"
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
  ParentId: 589762190864132223
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 17573818856155082879
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9068550250151060739
  Name: "MAKRO_TEXT"
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
  ParentId: 589762190864132223
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 7232531257251816872
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 76935505752432080
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 13833212308105534686
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12050833129619924520
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5571910028817342676
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 13833212308105534686
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2895576874653680372
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3805916573420007358
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 13833212308105534686
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 325207686098543312
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8357136040191497446
  Name: "Ability Level"
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
  ParentId: 11028118493078607137
  ChildIds: 12513650199399508530
  ChildIds: 4013669525660413064
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 2954616026942490908
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4013669525660413064
  Name: "LevelText"
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
  ParentId: 8357136040191497446
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 6879542349439039110
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12513650199399508530
  Name: "UI Panel"
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
  ParentId: 8357136040191497446
  ChildIds: 14416754039645198569
  ChildIds: 17191122689703998580
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 10899363267034102762
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17191122689703998580
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 12513650199399508530
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6473022308553263208
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14416754039645198569
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 12513650199399508530
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2868408540822093732
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7886237881123822519
  Name: "Frame"
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
  ParentId: 11028118493078607137
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
    Width: 4
    Height: 4
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.37
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 3294885846999020071
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2247398022619440586
  Name: "AbilityName"
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
  ParentId: 11028118493078607137
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 7850358723800575802
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 37580322728356939
  Name: "Cutout"
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
  ParentId: 11028118493078607137
  ChildIds: 1768612916418326299
  ChildIds: 12551915550099307996
  ChildIds: 3919131636767479738
  ChildIds: 18244931816174555591
  ChildIds: 5772776352112157978
  ChildIds: 9113118785505566491
  ChildIds: 5458478764747157817
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
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 10067297865473811114
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
    SelfId: 8673766930498527424
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5458478764747157817
  Name: "Text Panel"
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
  ParentId: 37580322728356939
  ChildIds: 16813981149239768999
  ChildIds: 9883866840208944966
  ChildIds: 15553349086720169953
  ChildIds: 13835835982576645294
  ChildIds: 16147989169535699426
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
    UIY: 29.7472591
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13573283886289326603
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16147989169535699426
  Name: "MAKRO_TEXT"
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
  ParentId: 5458478764747157817
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 399791740494096723
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13835835982576645294
  Name: "MAKRO_TEXT"
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
  ParentId: 5458478764747157817
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 14628365704562380337
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15553349086720169953
  Name: "MAKRO_TEXT"
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
  ParentId: 5458478764747157817
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 1719075339904052478
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9883866840208944966
  Name: "MAKRO_TEXT"
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
  ParentId: 5458478764747157817
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 12866559449454255329
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16813981149239768999
  Name: "MAKRO_TEXT"
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
  ParentId: 5458478764747157817
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 14914746554719113252
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9113118785505566491
  Name: "MAKRO_BG"
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
  ParentId: 37580322728356939
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
    Width: 74
    Height: 108
    UIY: 12.894
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6761797236834965974
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5772776352112157978
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 37580322728356939
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
    Width: 113
    Height: 27
    UIY: 4.40061617
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 8107591270626620094
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18244931816174555591
  Name: "Cooldown Indicator"
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
  ParentId: 37580322728356939
  ChildIds: 253680019036961202
  ChildIds: 164913065751471827
  ChildIds: 4206028926060935795
  UnregisteredParameters {
  }
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
      IsClipping: true
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
  InstanceHistory {
    SelfId: 7528321681034229288
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4206028926060935795
  Name: "CountdownTime"
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
  ParentId: 18244931816174555591
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "999"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
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
    SelfId: 7784528749286088537
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 164913065751471827
  Name: "LeftClip"
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
  ParentId: 18244931816174555591
  ChildIds: 13339831723693883562
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
    Width: 50
    Height: 100
    UIX: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 16566698126810392338
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13339831723693883562
  Name: "LeftShadow"
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
  ParentId: 164913065751471827
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 17153747440297705691
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 253680019036961202
  Name: "RightClip"
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
  ParentId: 18244931816174555591
  ChildIds: 8758428041989217653
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
    Width: 50
    Height: 100
    UIX: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8673927974009735216
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8758428041989217653
  Name: "RightShadow"
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
  ParentId: 253680019036961202
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 2085723547589520177
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3919131636767479738
  Name: "Icon"
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
  ParentId: 37580322728356939
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
    Image {
      Brush {
        Id: 126394590291373209
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
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
    SelfId: 17149272853771871396
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12551915550099307996
  Name: "BG"
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
  ParentId: 37580322728356939
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
    UIX: -2.5
    UIY: -1.5
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
        Id: 14060330023043759337
      }
      Color {
        R: 0.0199999809
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11871448660485333907
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1768612916418326299
  Name: "BG_SHADOW"
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
  ParentId: 37580322728356939
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15050169022220875447
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17020487511694635530
  Name: "Active Flash"
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
  ParentId: 11028118493078607137
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3744635310619872695
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3630724467158050611
  Name: "x"
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
  ParentId: 10836698933296158585
  ChildIds: 15782438467473276449
  ChildIds: 5946975901429736865
  ChildIds: 11284268745626233450
  ChildIds: 6386715181170957818
  ChildIds: 4407859330234977309
  ChildIds: 11924541868141481888
  ChildIds: 1734793621452336891
  ChildIds: 11288132747866083330
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 3630724467158050611
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 15526436954577314101
      }
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 11284268745626233450
      }
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 6795028102927571347
      }
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 10076131431505817177
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 13262642008687734586
      }
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 13583216774291108822
      }
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 11924541868141481888
      }
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 15782438467473276449
      }
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator"
      ObjectReference {
        SelfId: 1734793621452336891
      }
    }
    Overrides {
      Name: "cs:DurationIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText"
      ObjectReference {
        SelfId: 2436038215493545540
      }
    }
    Overrides {
      Name: "cs:LevelText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 12910815190886881440
      }
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
    }
  }
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
    Width: 100
    Height: 100
    UIX: -50
    UIY: -400
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17076023940744452780
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11288132747866083330
  Name: "Bubble"
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
  ParentId: 3630724467158050611
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
        Id: 6951220689761147886
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
    SelfId: 16932747605966817415
    SubobjectId: 9089137704155523161
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1734793621452336891
  Name: "Duration Indicator"
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
  ParentId: 3630724467158050611
  ChildIds: 4328360278603093248
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
    Width: 79
    Height: 15
    UIY: 18.671
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    StatBar {
      Color {
        G: 0.194617867
        B: 0.863157392
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.00556291314
        A: 1
      }
      Percent: 0.552933455
      FillBrush {
      }
      BackgroundBrush {
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
    SelfId: 4322884273763910406
    SubobjectId: 17293412896128553977
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4328360278603093248
  Name: "Shading"
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
  ParentId: 1734793621452336891
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
    Height: 7
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.4
      }
      TeamSettings {
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
    SelfId: 2736396770796988689
    SubobjectId: 17436479173850151406
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11924541868141481888
  Name: "Ability Active"
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
  ParentId: 3630724467158050611
  ChildIds: 274614453784798116
  ChildIds: 11983406728001715130
  ChildIds: 12288228093271327686
  ChildIds: 508716374733820917
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 3229388903165354225
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 508716374733820917
  Name: "Text Panel"
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
  ParentId: 11924541868141481888
  ChildIds: 203865505043164100
  ChildIds: 513039273768433015
  ChildIds: 2453360660552538655
  ChildIds: 13243827414973715132
  ChildIds: 2171054473073294246
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
    UIY: -2.00698328
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
    SelfId: 17585722090406496444
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2171054473073294246
  Name: "MAKRO_TEXT"
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
  ParentId: 508716374733820917
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 5398268001938652076
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13243827414973715132
  Name: "MAKRO_TEXT"
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
  ParentId: 508716374733820917
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9611640568036039510
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2453360660552538655
  Name: "MAKRO_TEXT"
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
  ParentId: 508716374733820917
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 4127035451859590395
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 513039273768433015
  Name: "MAKRO_TEXT"
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
  ParentId: 508716374733820917
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9080280679960624880
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 203865505043164100
  Name: "MAKRO_TEXT"
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
  ParentId: 508716374733820917
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 16842900563299216167
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12288228093271327686
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 11924541868141481888
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3088401627775461543
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11983406728001715130
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 11924541868141481888
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11947552675397880955
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 274614453784798116
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 11924541868141481888
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9899548194900749407
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4407859330234977309
  Name: "Ability Level"
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
  ParentId: 3630724467158050611
  ChildIds: 12719516173250151193
  ChildIds: 2436038215493545540
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 11881053920964839315
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2436038215493545540
  Name: "LevelText"
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
  ParentId: 4407859330234977309
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 15174904618570987529
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12719516173250151193
  Name: "UI Panel"
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
  ParentId: 4407859330234977309
  ChildIds: 10054461369441261482
  ChildIds: 10942720918946341878
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 1919462717971264869
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10942720918946341878
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 12719516173250151193
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15291365013855749863
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10054461369441261482
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 12719516173250151193
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12263229587662565675
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6386715181170957818
  Name: "Frame"
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
  ParentId: 3630724467158050611
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
    Width: 4
    Height: 4
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.37
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 11554219248236428456
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11284268745626233450
  Name: "AbilityName"
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
  ParentId: 3630724467158050611
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 16218323873334026677
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5946975901429736865
  Name: "Cutout"
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
  ParentId: 3630724467158050611
  ChildIds: 16501012627442662989
  ChildIds: 5720804956224104217
  ChildIds: 15526436954577314101
  ChildIds: 10076131431505817177
  ChildIds: 6687680341788348587
  ChildIds: 9674842939151238734
  ChildIds: 12910815190886881440
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
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 10067297865473811114
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
    SelfId: 17707719538007567951
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12910815190886881440
  Name: "Text Panel"
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
  ParentId: 5946975901429736865
  ChildIds: 332032888431462630
  ChildIds: 672618217486195125
  ChildIds: 3633049474540978163
  ChildIds: 17158772838365280434
  ChildIds: 1686745106321221667
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
    UIY: 29.7472591
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3583987683795754116
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1686745106321221667
  Name: "MAKRO_TEXT"
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
  ParentId: 12910815190886881440
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9830588812626192348
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17158772838365280434
  Name: "MAKRO_TEXT"
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
  ParentId: 12910815190886881440
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 5108059522215755966
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3633049474540978163
  Name: "MAKRO_TEXT"
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
  ParentId: 12910815190886881440
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 11113333436227986033
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 672618217486195125
  Name: "MAKRO_TEXT"
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
  ParentId: 12910815190886881440
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 4570643099484738158
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 332032888431462630
  Name: "MAKRO_TEXT"
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
  ParentId: 12910815190886881440
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 4835404683290468011
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9674842939151238734
  Name: "MAKRO_BG"
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
  ParentId: 5946975901429736865
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
    Width: 74
    Height: 108
    UIY: 12.894
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15003644070407853913
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6687680341788348587
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 5946975901429736865
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
    Width: 113
    Height: 27
    UIY: 4.40061617
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 18258418927468788785
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10076131431505817177
  Name: "Cooldown Indicator"
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
  ParentId: 5946975901429736865
  ChildIds: 6292562177729984688
  ChildIds: 10993692201462661920
  ChildIds: 6795028102927571347
  UnregisteredParameters {
  }
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
      IsClipping: true
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
  InstanceHistory {
    SelfId: 16544224634256554151
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6795028102927571347
  Name: "CountdownTime"
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
  ParentId: 10076131431505817177
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "999"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
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
    SelfId: 16278594760074662358
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10993692201462661920
  Name: "LeftClip"
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
  ParentId: 10076131431505817177
  ChildIds: 13583216774291108822
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
    Width: 50
    Height: 100
    UIX: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 7496699135180138909
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13583216774291108822
  Name: "LeftShadow"
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
  ParentId: 10993692201462661920
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 7201051713233243732
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6292562177729984688
  Name: "RightClip"
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
  ParentId: 10076131431505817177
  ChildIds: 13262642008687734586
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
    Width: 50
    Height: 100
    UIX: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17707845329525065407
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13262642008687734586
  Name: "RightShadow"
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
  ParentId: 6292562177729984688
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 10453108227996902846
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15526436954577314101
  Name: "Icon"
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
  ParentId: 5946975901429736865
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
    Image {
      Brush {
        Id: 126394590291373209
      }
      Color {
        R: 1
        G: 1
        B: 1
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
    SelfId: 6926369944092813867
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5720804956224104217
  Name: "BG"
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
  ParentId: 5946975901429736865
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
    UIX: -2.5
    UIY: -1.5
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
        Id: 14060330023043759337
      }
      Color {
        R: 0.0199999809
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
  InstanceHistory {
    SelfId: 2981039494453112092
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16501012627442662989
  Name: "BG_SHADOW"
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
  ParentId: 5946975901429736865
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6718786753749743672
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15782438467473276449
  Name: "Active Flash"
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
  ParentId: 3630724467158050611
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13697278190511948600
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3977004193073043372
  Name: "z"
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
  ParentId: 10836698933296158585
  ChildIds: 5379695725495302060
  ChildIds: 15610467992109656687
  ChildIds: 14919692213326132133
  ChildIds: 4669298884749551620
  ChildIds: 14645739861753806099
  ChildIds: 12637205208375793732
  ChildIds: 13531735615827813202
  ChildIds: 17920385281961311199
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 3977004193073043372
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 17299053379876879992
      }
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 14919692213326132133
      }
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 18059512530049286603
      }
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 16128272548122830964
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 5557472218256264729
      }
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 8192247449215391324
      }
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 12637205208375793732
      }
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 5379695725495302060
      }
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator"
      ObjectReference {
        SelfId: 17920385281961311199
      }
    }
    Overrides {
      Name: "cs:DurationIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText"
      ObjectReference {
        SelfId: 15177136988148007036
      }
    }
    Overrides {
      Name: "cs:LevelText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 3152506366614702028
      }
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
    }
  }
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
    Width: 100
    Height: 100
    UIX: -50
    UIY: -275
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1521613464531170171
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17920385281961311199
  Name: "Duration Indicator"
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
  ParentId: 3977004193073043372
  ChildIds: 11163945729584361001
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
    Width: 79
    Height: 15
    UIY: 18.671
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    StatBar {
      Color {
        G: 0.194617867
        B: 0.863157392
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.00556291314
        A: 1
      }
      Percent: 0.552933455
      FillBrush {
      }
      BackgroundBrush {
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
    SelfId: 13986520698070592209
    SubobjectId: 17293412896128553977
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11163945729584361001
  Name: "Shading"
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
  ParentId: 17920385281961311199
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
    Height: 7
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.4
      }
      TeamSettings {
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
    SelfId: 15861185796369678534
    SubobjectId: 17436479173850151406
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13531735615827813202
  Name: "Bubble"
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
  ParentId: 3977004193073043372
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
        Id: 6951220689761147886
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
    SelfId: 13180731992921960351
    SubobjectId: 2465003122981752641
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12637205208375793732
  Name: "Ability Active"
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
  ParentId: 3977004193073043372
  ChildIds: 361478505202206420
  ChildIds: 6958748450717524363
  ChildIds: 9917384688815057245
  ChildIds: 7266999636928089084
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 15363742295437674790
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7266999636928089084
  Name: "Text Panel"
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
  ParentId: 12637205208375793732
  ChildIds: 15885156067208407412
  ChildIds: 14713774089838704597
  ChildIds: 7683285046545014442
  ChildIds: 1241455418931896849
  ChildIds: 4171840460515960796
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
    UIY: -2.00698328
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
    SelfId: 1002872518959964523
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4171840460515960796
  Name: "MAKRO_TEXT"
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
  ParentId: 7266999636928089084
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 12902076306788602491
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1241455418931896849
  Name: "MAKRO_TEXT"
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
  ParentId: 7266999636928089084
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 8972448105206313601
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7683285046545014442
  Name: "MAKRO_TEXT"
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
  ParentId: 7266999636928089084
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 13880602918635156780
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14713774089838704597
  Name: "MAKRO_TEXT"
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
  ParentId: 7266999636928089084
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9792022976304142119
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15885156067208407412
  Name: "MAKRO_TEXT"
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
  ParentId: 7266999636928089084
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 1178222351043150576
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9917384688815057245
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 12637205208375793732
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15220995509939077488
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6958748450717524363
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 12637205208375793732
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6641078771735373228
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 361478505202206420
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 12637205208375793732
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8108063233264076168
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14645739861753806099
  Name: "Ability Level"
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
  ParentId: 3977004193073043372
  ChildIds: 15107015091937421929
  ChildIds: 15177136988148007036
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 6703073376919383620
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15177136988148007036
  Name: "LevelText"
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
  ParentId: 14645739861753806099
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 3134493756060651998
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15107015091937421929
  Name: "UI Panel"
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
  ParentId: 14645739861753806099
  ChildIds: 17356634453971172920
  ChildIds: 1423958815661860227
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 16376406574102420658
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1423958815661860227
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 15107015091937421929
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3301760137466883888
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17356634453971172920
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 15107015091937421929
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6037176976615708924
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4669298884749551620
  Name: "Frame"
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
  ParentId: 3977004193073043372
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
    Width: 4
    Height: 4
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.37
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 6466948196326937983
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14919692213326132133
  Name: "AbilityName"
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
  ParentId: 3977004193073043372
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 1798323341354371170
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15610467992109656687
  Name: "Cutout"
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
  ParentId: 3977004193073043372
  ChildIds: 4957654103557008221
  ChildIds: 6930517128306102072
  ChildIds: 17299053379876879992
  ChildIds: 16128272548122830964
  ChildIds: 14259134207283817380
  ChildIds: 5054626122775439856
  ChildIds: 3152506366614702028
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
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 10067297865473811114
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
    SelfId: 889908663187670936
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3152506366614702028
  Name: "Text Panel"
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
  ParentId: 15610467992109656687
  ChildIds: 15429302286193658498
  ChildIds: 514115606239030354
  ChildIds: 4759042387110619519
  ChildIds: 6625949978446640884
  ChildIds: 7380282027779770163
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
    UIY: 29.7472591
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14437137292129875283
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7380282027779770163
  Name: "MAKRO_TEXT"
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
  ParentId: 3152506366614702028
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 8181534603370302987
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6625949978446640884
  Name: "MAKRO_TEXT"
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
  ParentId: 3152506366614702028
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 13764297047912982889
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4759042387110619519
  Name: "MAKRO_TEXT"
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
  ParentId: 3152506366614702028
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 7196083488366283686
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 514115606239030354
  Name: "MAKRO_TEXT"
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
  ParentId: 3152506366614702028
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 14306191648358906809
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15429302286193658498
  Name: "MAKRO_TEXT"
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
  ParentId: 3152506366614702028
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 13473974999777720188
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5054626122775439856
  Name: "MAKRO_BG"
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
  ParentId: 15610467992109656687
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
    Width: 74
    Height: 108
    UIY: 12.894
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3012983902860557966
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14259134207283817380
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 15610467992109656687
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
    Width: 113
    Height: 27
    UIY: 4.40061617
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 325681294941672934
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16128272548122830964
  Name: "Cooldown Indicator"
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
  ParentId: 15610467992109656687
  ChildIds: 11655119005339495947
  ChildIds: 12293930373612319733
  ChildIds: 18059512530049286603
  UnregisteredParameters {
  }
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
      IsClipping: true
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
  InstanceHistory {
    SelfId: 2053367141185851760
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18059512530049286603
  Name: "CountdownTime"
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
  ParentId: 16128272548122830964
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "999"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
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
    SelfId: 1733548859415492609
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12293930373612319733
  Name: "LeftClip"
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
  ParentId: 16128272548122830964
  ChildIds: 8192247449215391324
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
    Width: 50
    Height: 100
    UIX: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 10515414797495074890
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8192247449215391324
  Name: "LeftShadow"
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
  ParentId: 12293930373612319733
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 11099301937014318979
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11655119005339495947
  Name: "RightClip"
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
  ParentId: 16128272548122830964
  ChildIds: 5557472218256264729
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
    Width: 50
    Height: 100
    UIX: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 889748649235558248
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5557472218256264729
  Name: "RightShadow"
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
  ParentId: 11655119005339495947
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 7563519199776115817
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17299053379876879992
  Name: "Icon"
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
  ParentId: 15610467992109656687
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
    Image {
      Brush {
        Id: 126394590291373209
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
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
    SelfId: 11094770424996643836
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6930517128306102072
  Name: "BG"
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
  ParentId: 15610467992109656687
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
    UIX: -2.5
    UIY: -1.5
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
        Id: 14060330023043759337
      }
      Color {
        R: 0.0199999809
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
  InstanceHistory {
    SelfId: 15040093727676613835
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4957654103557008221
  Name: "BG_SHADOW"
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
  ParentId: 15610467992109656687
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11878823301040902639
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5379695725495302060
  Name: "Active Flash"
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
  ParentId: 3977004193073043372
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5184034451715058415
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4633611488578371192
  Name: "4"
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
  ParentId: 10836698933296158585
  ChildIds: 3866845777700744171
  ChildIds: 11351598987925863330
  ChildIds: 1101044588908655471
  ChildIds: 16715012126270493012
  ChildIds: 5591340213264449165
  ChildIds: 6329320802502362693
  ChildIds: 11034319607944407418
  ChildIds: 16883972149512335210
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 4633611488578371192
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 10519712918839097057
      }
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 1101044588908655471
      }
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 8503841111782878466
      }
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 2021351309219086840
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 14298143267152845841
      }
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 14250296661455796353
      }
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 6329320802502362693
      }
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 3866845777700744171
      }
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator"
      ObjectReference {
        SelfId: 11034319607944407418
      }
    }
    Overrides {
      Name: "cs:DurationIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText"
      ObjectReference {
        SelfId: 11774573237332813324
      }
    }
    Overrides {
      Name: "cs:LevelText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 6229681218193335538
      }
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
    }
  }
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
    Width: 100
    Height: 100
    UIX: -300
    UIY: -300
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11241157442897742440
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16883972149512335210
  Name: "UI Image"
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
  ParentId: 4633611488578371192
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
        Id: 6951220689761147886
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
    SelfId: 7662765287985994583
    SubobjectId: 14892923694449335148
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11034319607944407418
  Name: "Duration Indicator"
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
  ParentId: 4633611488578371192
  ChildIds: 1305145697166709321
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
    Width: 79
    Height: 15
    UIY: 18.671
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    StatBar {
      Color {
        G: 0.194617867
        B: 0.863157392
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.00556291314
        A: 1
      }
      Percent: 0.552933455
      FillBrush {
      }
      BackgroundBrush {
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
    SelfId: 5406391273585710018
    SubobjectId: 17293412896128553977
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1305145697166709321
  Name: "Shading"
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
  ParentId: 11034319607944407418
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
    Height: 7
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.4
      }
      TeamSettings {
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
    SelfId: 6125746732587973077
    SubobjectId: 17436479173850151406
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6329320802502362693
  Name: "Ability Active"
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
  ParentId: 4633611488578371192
  ChildIds: 3771154330602319941
  ChildIds: 973617815225549069
  ChildIds: 7451996009282361274
  ChildIds: 18176372536808443988
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 6641609295224467509
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18176372536808443988
  Name: "Text Panel"
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
  ParentId: 6329320802502362693
  ChildIds: 8141795688784444171
  ChildIds: 11462671813046303195
  ChildIds: 13732450396478199240
  ChildIds: 4555894631909501142
  ChildIds: 14668396631924605054
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
    UIY: -2.00698328
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
    SelfId: 9581317491504732280
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14668396631924605054
  Name: "MAKRO_TEXT"
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
  ParentId: 18176372536808443988
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 4183883956051127144
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4555894631909501142
  Name: "MAKRO_TEXT"
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
  ParentId: 18176372536808443988
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 17697400802933377938
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13732450396478199240
  Name: "MAKRO_TEXT"
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
  ParentId: 18176372536808443988
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 5313271809620298815
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11462671813046303195
  Name: "MAKRO_TEXT"
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
  ParentId: 18176372536808443988
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 1078901577356291636
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8141795688784444171
  Name: "MAKRO_TEXT"
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
  ParentId: 18176372536808443988
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 11044133317114215395
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7451996009282361274
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 6329320802502362693
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 6496038414226323555
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 973617815225549069
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 6329320802502362693
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15363079826261990591
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3771154330602319941
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 6329320802502362693
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17985378884037655707
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5591340213264449165
  Name: "Ability Level"
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
  ParentId: 4633611488578371192
  ChildIds: 11259708677306274582
  ChildIds: 11774573237332813324
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 15283915280247691095
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11774573237332813324
  Name: "LevelText"
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
  ParentId: 5591340213264449165
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 11701111827685484749
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11259708677306274582
  Name: "UI Panel"
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
  ParentId: 5591340213264449165
  ChildIds: 10942517001051285307
  ChildIds: 16846191930352535196
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 7663412718883530145
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16846191930352535196
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 11259708677306274582
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11875837295518963235
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10942517001051285307
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 11259708677306274582
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15768538506175242735
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16715012126270493012
  Name: "Frame"
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
  ParentId: 4633611488578371192
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
    Width: 4
    Height: 4
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 15033703161235237996
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1101044588908655471
  Name: "AbilityName"
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
  ParentId: 4633611488578371192
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 10514123704685097329
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11351598987925863330
  Name: "Cutout"
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
  ParentId: 4633611488578371192
  ChildIds: 13435350450088334075
  ChildIds: 1510494852809851053
  ChildIds: 10519712918839097057
  ChildIds: 2021351309219086840
  ChildIds: 10046894601185306271
  ChildIds: 5980062230551680338
  ChildIds: 6229681218193335538
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
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 10067297865473811114
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
    SelfId: 9603030611692650123
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6229681218193335538
  Name: "Text Panel"
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
  ParentId: 11351598987925863330
  ChildIds: 4511218421567689203
  ChildIds: 7940678044820265224
  ChildIds: 10634035663901718170
  ChildIds: 2656628290286046602
  ChildIds: 11533242505483540547
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
    UIY: 29.7472591
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4703523417285872704
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11533242505483540547
  Name: "MAKRO_TEXT"
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
  ParentId: 6229681218193335538
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 17913032467871725336
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2656628290286046602
  Name: "MAKRO_TEXT"
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
  ParentId: 6229681218193335538
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 3898390483909726330
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10634035663901718170
  Name: "MAKRO_TEXT"
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
  ParentId: 6229681218193335538
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 16915759408286020277
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7940678044820265224
  Name: "MAKRO_TEXT"
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
  ParentId: 6229681218193335538
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 5734361887532630698
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4511218421567689203
  Name: "MAKRO_TEXT"
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
  ParentId: 6229681218193335538
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 3738104923070582383
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5980062230551680338
  Name: "MAKRO_BG"
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
  ParentId: 11351598987925863330
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
    Width: 74
    Height: 108
    UIY: 12.894
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11586920327829342109
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10046894601185306271
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 11351598987925863330
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
    Width: 113
    Height: 27
    UIY: 4.40061617
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 10202987595407863029
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2021351309219086840
  Name: "Cooldown Indicator"
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
  ParentId: 11351598987925863330
  ChildIds: 11512995081506136385
  ChildIds: 13732466831547631914
  ChildIds: 8503841111782878466
  UnregisteredParameters {
  }
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
      IsClipping: true
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
  InstanceHistory {
    SelfId: 10764237294306846819
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8503841111782878466
  Name: "CountdownTime"
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
  ParentId: 2021351309219086840
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "999"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
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
    SelfId: 10453852817625055506
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13732466831547631914
  Name: "LeftClip"
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
  ParentId: 2021351309219086840
  ChildIds: 14250296661455796353
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
    Width: 50
    Height: 100
    UIX: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 1797785396829550937
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14250296661455796353
  Name: "LeftShadow"
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
  ParentId: 13732466831547631914
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 1375253813479825040
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11512995081506136385
  Name: "RightClip"
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
  ParentId: 2021351309219086840
  ChildIds: 14298143267152845841
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
    Width: 50
    Height: 100
    UIX: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9602874996014569083
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14298143267152845841
  Name: "RightShadow"
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
  ParentId: 11512995081506136385
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 16278897346287039866
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10519712918839097057
  Name: "Icon"
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
  ParentId: 11351598987925863330
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
        Id: 17752702521577453302
      }
      Color {
        R: 1
        G: 1
        B: 1
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
    SelfId: 1217604312047500015
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1510494852809851053
  Name: "BG"
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
  ParentId: 11351598987925863330
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
    UIX: -2.5
    UIY: -1.5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 14060330023043759337
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
    SelfId: 6459397509289786840
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13435350450088334075
  Name: "BG_SHADOW"
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
  ParentId: 11351598987925863330
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3298685084891179260
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3866845777700744171
  Name: "Active Flash"
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
  ParentId: 4633611488578371192
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14910333829320315900
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16865922130221455793
  Name: "3"
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
  ParentId: 10836698933296158585
  ChildIds: 12454812313484747353
  ChildIds: 2135214986408886815
  ChildIds: 10447312024495526003
  ChildIds: 11003230919032789815
  ChildIds: 14671931537289793816
  ChildIds: 875107398691381245
  ChildIds: 10428187908721062777
  ChildIds: 12477426156554322450
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 16865922130221455793
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 11963676029028363437
      }
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 10447312024495526003
      }
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 3593377649868355401
      }
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 11341212085950862950
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 12064901640887537111
      }
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 7933904166305938603
      }
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 875107398691381245
      }
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 12454812313484747353
      }
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator"
      ObjectReference {
        SelfId: 10428187908721062777
      }
    }
    Overrides {
      Name: "cs:DurationIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText"
      ObjectReference {
        SelfId: 11496255547223180622
      }
    }
    Overrides {
      Name: "cs:LevelText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 14813838778819754659
      }
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
    }
  }
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
    Width: 100
    Height: 100
    UIX: -375
    UIY: -100
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8109290825914737689
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12477426156554322450
  Name: "UI Image"
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
  ParentId: 16865922130221455793
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
        Id: 6951220689761147886
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
    SelfId: 9718482425122305318
    SubobjectId: 14892923694449335148
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10428187908721062777
  Name: "Duration Indicator"
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
  ParentId: 16865922130221455793
  ChildIds: 1934756725834624952
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
    Width: 79
    Height: 15
    UIY: 18.671
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    StatBar {
      Color {
        G: 0.194617867
        B: 0.863157392
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.00556291314
        A: 1
      }
      Percent: 0.552933455
      FillBrush {
      }
      BackgroundBrush {
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
    SelfId: 12073653691921137075
    SubobjectId: 17293412896128553977
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1934756725834624952
  Name: "Shading"
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
  ParentId: 10428187908721062777
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
    Height: 7
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.4
      }
      TeamSettings {
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
    SelfId: 13369610709168134052
    SubobjectId: 17436479173850151406
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 875107398691381245
  Name: "Ability Active"
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
  ParentId: 16865922130221455793
  ChildIds: 1795813155587776042
  ChildIds: 8717442599648647137
  ChildIds: 17060286597657145095
  ChildIds: 656274874942300218
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 12727977798826368580
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 656274874942300218
  Name: "Text Panel"
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
  ParentId: 875107398691381245
  ChildIds: 10369829017728148987
  ChildIds: 1321115477634915205
  ChildIds: 7780425748432595887
  ChildIds: 11764277154079096452
  ChildIds: 3425364554363971073
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
    UIY: -2.00698328
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
    SelfId: 7529681399812699657
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3425364554363971073
  Name: "MAKRO_TEXT"
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
  ParentId: 656274874942300218
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 15463465984311018777
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11764277154079096452
  Name: "MAKRO_TEXT"
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
  ParentId: 656274874942300218
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 1806133029230175715
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7780425748432595887
  Name: "MAKRO_TEXT"
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
  ParentId: 656274874942300218
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 11904676994472747598
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1321115477634915205
  Name: "MAKRO_TEXT"
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
  ParentId: 656274874942300218
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 16316655167732564037
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10369829017728148987
  Name: "MAKRO_TEXT"
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
  ParentId: 656274874942300218
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 8488657015155316114
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17060286597657145095
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 875107398691381245
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13164004863351428626
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8717442599648647137
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 875107398691381245
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4160762677288973006
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1795813155587776042
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 875107398691381245
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1518142870311391978
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14671931537289793816
  Name: "Ability Level"
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
  ParentId: 16865922130221455793
  ChildIds: 10158592170803380908
  ChildIds: 11496255547223180622
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 4076390775486150950
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11496255547223180622
  Name: "LevelText"
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
  ParentId: 14671931537289793816
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 5686871080363574972
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10158592170803380908
  Name: "UI Panel"
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
  ParentId: 14671931537289793816
  ChildIds: 13543620827030591688
  ChildIds: 1875544402607125533
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 9714415491687156688
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1875544402607125533
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 10158592170803380908
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5207871121271928914
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13543620827030591688
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 10158592170803380908
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3917139991846129566
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11003230919032789815
  Name: "Frame"
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
  ParentId: 16865922130221455793
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
    Width: 4
    Height: 4
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 4335578272340640285
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10447312024495526003
  Name: "AbilityName"
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
  ParentId: 16865922130221455793
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 9034445040479837952
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2135214986408886815
  Name: "Cutout"
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
  ParentId: 16865922130221455793
  ChildIds: 16322107277835693411
  ChildIds: 292088041621332868
  ChildIds: 11963676029028363437
  ChildIds: 11341212085950862950
  ChildIds: 15413913115606220985
  ChildIds: 7202738247455492177
  ChildIds: 14813838778819754659
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
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 10067297865473811114
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
    SelfId: 7623944761828151546
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14813838778819754659
  Name: "Text Panel"
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
  ParentId: 2135214986408886815
  ChildIds: 2018082983918334354
  ChildIds: 6777623530334414738
  ChildIds: 7278985694842721194
  ChildIds: 1986821287310856465
  ChildIds: 18153273329760599707
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
    UIY: 29.7472591
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12524270358995247665
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18153273329760599707
  Name: "MAKRO_TEXT"
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
  ParentId: 14813838778819754659
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 1449737103827769705
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1986821287310856465
  Name: "MAKRO_TEXT"
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
  ParentId: 14813838778819754659
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 15749296073440509451
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7278985694842721194
  Name: "MAKRO_TEXT"
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
  ParentId: 14813838778819754659
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 453097362929212612
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6777623530334414738
  Name: "MAKRO_TEXT"
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
  ParentId: 14813838778819754659
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 11753809990567603419
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2018082983918334354
  Name: "MAKRO_TEXT"
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
  ParentId: 14813838778819754659
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 16098410124142518302
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7202738247455492177
  Name: "MAKRO_BG"
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
  ParentId: 2135214986408886815
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
    Width: 74
    Height: 108
    UIY: 12.894
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5495625805978839532
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15413913115606220985
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 2135214986408886815
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
    Width: 113
    Height: 27
    UIY: 4.40061617
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 6994418980699193988
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11341212085950862950
  Name: "Cooldown Indicator"
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
  ParentId: 2135214986408886815
  ChildIds: 17964631345891259103
  ChildIds: 6610111687103691634
  ChildIds: 3593377649868355401
  UnregisteredParameters {
  }
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
      IsClipping: true
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
  InstanceHistory {
    SelfId: 8785151652747806226
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3593377649868355401
  Name: "CountdownTime"
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
  ParentId: 11341212085950862950
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "999"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
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
    SelfId: 9050805784867368803
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6610111687103691634
  Name: "LeftClip"
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
  ParentId: 11341212085950862950
  ChildIds: 7933904166305938603
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
    Width: 50
    Height: 100
    UIX: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 17616503270165649192
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7933904166305938603
  Name: "LeftShadow"
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
  ParentId: 6610111687103691634
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 18418739679494189281
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17964631345891259103
  Name: "RightClip"
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
  ParentId: 11341212085950862950
  ChildIds: 12064901640887537111
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
    Width: 50
    Height: 100
    UIX: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7623789079485626378
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12064901640887537111
  Name: "RightShadow"
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
  ParentId: 17964631345891259103
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 964653001915439883
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11963676029028363437
  Name: "Icon"
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
  ParentId: 2135214986408886815
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
        Id: 17752702521577453302
      }
      Color {
        R: 1
        G: 1
        B: 1
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
    SelfId: 18189102677881836702
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 292088041621332868
  Name: "BG"
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
  ParentId: 2135214986408886815
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
    UIX: -2.5
    UIY: -1.5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 14060330023043759337
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
    SelfId: 13055095189760201641
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16322107277835693411
  Name: "BG_SHADOW"
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
  ParentId: 2135214986408886815
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 13929115450190497421
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12454812313484747353
  Name: "Active Flash"
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
  ParentId: 16865922130221455793
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2478463821580303757
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3089934386070898395
  Name: "2"
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
  ParentId: 10836698933296158585
  ChildIds: 131122096575312433
  ChildIds: 6089093342887643011
  ChildIds: 14796406444914426823
  ChildIds: 7699662483981535354
  ChildIds: 14898120739454660549
  ChildIds: 4640731576081168482
  ChildIds: 7866176058176826524
  ChildIds: 13818991431561657248
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 3089934386070898395
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 9749823716572671626
      }
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 14796406444914426823
      }
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 1365921611025321457
      }
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 6521618401222295865
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 5728180144812812976
      }
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 1391507726384847628
      }
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 4640731576081168482
      }
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 131122096575312433
      }
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator"
      ObjectReference {
        SelfId: 7866176058176826524
      }
    }
    Overrides {
      Name: "cs:DurationIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText"
      ObjectReference {
        SelfId: 9215293324953960130
      }
    }
    Overrides {
      Name: "cs:LevelText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 10289838840494391967
      }
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
    }
  }
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
    Width: 100
    Height: 100
    UIX: -175
    UIY: -275
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3031522129517002142
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13818991431561657248
  Name: "UI Image"
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
  ParentId: 3089934386070898395
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
        Id: 6951220689761147886
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
    SelfId: 15872127767864241313
    SubobjectId: 14892923694449335148
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7866176058176826524
  Name: "Duration Indicator"
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
  ParentId: 3089934386070898395
  ChildIds: 14854057199926037961
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
    Width: 79
    Height: 15
    UIY: 18.671
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    StatBar {
      Color {
        G: 0.194617867
        B: 0.863157392
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.00556291314
        A: 1
      }
      Percent: 0.552933455
      FillBrush {
      }
      BackgroundBrush {
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
    SelfId: 18236728876156396596
    SubobjectId: 17293412896128553977
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14854057199926037961
  Name: "Shading"
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
  ParentId: 7866176058176826524
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
    Height: 7
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.4
      }
      TeamSettings {
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
    SelfId: 16362063709169405475
    SubobjectId: 17436479173850151406
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4640731576081168482
  Name: "Ability Active"
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
  ParentId: 3089934386070898395
  ChildIds: 7618075082267856607
  ChildIds: 6024800644835993294
  ChildIds: 3714852990478904728
  ChildIds: 5659177440847426433
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 16877521101775259587
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5659177440847426433
  Name: "Text Panel"
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
  ParentId: 4640731576081168482
  ChildIds: 9198324330831138300
  ChildIds: 8318293190035706576
  ChildIds: 15616702470354525036
  ChildIds: 14613977461686748554
  ChildIds: 6573458357334554059
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
    UIY: -2.00698328
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
    SelfId: 3667356218756722574
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6573458357334554059
  Name: "MAKRO_TEXT"
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
  ParentId: 5659177440847426433
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 10088793481671744670
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14613977461686748554
  Name: "MAKRO_TEXT"
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
  ParentId: 5659177440847426433
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 4867107180211256420
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15616702470354525036
  Name: "MAKRO_TEXT"
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
  ParentId: 5659177440847426433
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 18423721387474811849
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8318293190035706576
  Name: "MAKRO_TEXT"
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
  ParentId: 5659177440847426433
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 13324949766386096578
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9198324330831138300
  Name: "MAKRO_TEXT"
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
  ParentId: 5659177440847426433
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 3410941043507858453
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3714852990478904728
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 4640731576081168482
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17020278332684521365
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6024800644835993294
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 4640731576081168482
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7144437192295770953
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7618075082267856607
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 4640731576081168482
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5731493254840453997
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14898120739454660549
  Name: "Ability Level"
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
  ParentId: 3089934386070898395
  ChildIds: 3323774305489560364
  ChildIds: 9215293324953960130
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 7064427673206136993
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9215293324953960130
  Name: "LevelText"
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
  ParentId: 14898120739454660549
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 1472693863903698747
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3323774305489560364
  Name: "UI Panel"
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
  ParentId: 14898120739454660549
  ChildIds: 1707027835541969420
  ChildIds: 1345105696854319381
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 15873874983205950039
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1345105696854319381
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 3323774305489560364
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1359470721055482325
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1707027835541969420
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 3323774305489560364
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7838416520418219545
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7699662483981535354
  Name: "Frame"
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
  ParentId: 3089934386070898395
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
    Width: 4
    Height: 4
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 7399639785132252058
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14796406444914426823
  Name: "AbilityName"
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
  ParentId: 3089934386070898395
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 2880922499715221127
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6089093342887643011
  Name: "Cutout"
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
  ParentId: 3089934386070898395
  ChildIds: 923029714497164886
  ChildIds: 5927358015971529724
  ChildIds: 9749823716572671626
  ChildIds: 6521618401222295865
  ChildIds: 17487555027152799613
  ChildIds: 4302931951274795011
  ChildIds: 10289838840494391967
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
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 10067297865473811114
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
    SelfId: 3699264008609876349
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10289838840494391967
  Name: "Text Panel"
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
  ParentId: 6089093342887643011
  ChildIds: 7083125681820086998
  ChildIds: 4564968654869638507
  ChildIds: 13985281258668704036
  ChildIds: 16959195350421801155
  ChildIds: 9590078787640465297
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
    UIY: 29.7472591
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17822144309017607094
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9590078787640465297
  Name: "MAKRO_TEXT"
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
  ParentId: 10289838840494391967
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 5658030131075629294
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16959195350421801155
  Name: "MAKRO_TEXT"
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
  ParentId: 10289838840494391967
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9226574982535178124
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13985281258668704036
  Name: "MAKRO_TEXT"
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
  ParentId: 10289838840494391967
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 6688520532262651203
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4564968654869638507
  Name: "MAKRO_TEXT"
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
  ParentId: 10289838840494391967
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 17980119805425612124
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7083125681820086998
  Name: "MAKRO_TEXT"
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
  ParentId: 10289838840494391967
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9652013265784600985
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4302931951274795011
  Name: "MAKRO_BG"
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
  ParentId: 6089093342887643011
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
    Width: 74
    Height: 108
    UIY: 12.894
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1648245821813387371
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17487555027152799613
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 6089093342887643011
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
    Width: 113
    Height: 27
    UIY: 4.40061617
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 4290513567296297731
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6521618401222295865
  Name: "Cooldown Indicator"
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
  ParentId: 6089093342887643011
  ChildIds: 14666377265133564649
  ChildIds: 11538301526804802948
  ChildIds: 1365921611025321457
  UnregisteredParameters {
  }
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
      IsClipping: true
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
  InstanceHistory {
    SelfId: 2553818872559689621
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1365921611025321457
  Name: "CountdownTime"
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
  ParentId: 6521618401222295865
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "999"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
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
    SelfId: 2810588881214387940
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11538301526804802948
  Name: "LeftClip"
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
  ParentId: 6521618401222295865
  ChildIds: 1391507726384847628
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
    Width: 50
    Height: 100
    UIX: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 12601555789104598703
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1391507726384847628
  Name: "LeftShadow"
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
  ParentId: 11538301526804802948
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 11891577231635868006
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14666377265133564649
  Name: "RightClip"
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
  ParentId: 6521618401222295865
  ChildIds: 5728180144812812976
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
    Width: 50
    Height: 100
    UIX: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3699425190709420429
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5728180144812812976
  Name: "RightShadow"
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
  ParentId: 14666377265133564649
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 6339096376106599052
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9749823716572671626
  Name: "Icon"
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
  ParentId: 6089093342887643011
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
        Id: 17752702521577453302
      }
      Color {
        R: 1
        G: 1
        B: 1
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
    SelfId: 12031209010110860569
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5927358015971529724
  Name: "BG"
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
  ParentId: 6089093342887643011
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
    UIX: -2.5
    UIY: -1.5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 14060330023043759337
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
    SelfId: 17273239427005712942
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 923029714497164886
  Name: "BG_SHADOW"
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
  ParentId: 6089093342887643011
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11229150531582779146
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 131122096575312433
  Name: "Active Flash"
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
  ParentId: 3089934386070898395
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 8718575171311543306
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3021070523756027165
  Name: "1"
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
  ParentId: 10836698933296158585
  ChildIds: 15719326388433199639
  ChildIds: 4874666105685333730
  ChildIds: 15234158230708818531
  ChildIds: 17923384872010052536
  ChildIds: 15609503244535460291
  ChildIds: 2146735142760849152
  ChildIds: 13739036068337712331
  ChildIds: 13978019491319261191
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 3021070523756027165
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 14481318902549564359
      }
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 15234158230708818531
      }
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 5708240695623043482
      }
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 11111853855702983720
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 5288445858636907867
      }
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 18249321249973348762
      }
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 2146735142760849152
      }
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 15719326388433199639
      }
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator"
      ObjectReference {
        SelfId: 13739036068337712331
      }
    }
    Overrides {
      Name: "cs:DurationIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText"
      ObjectReference {
        SelfId: 1641597470541949753
      }
    }
    Overrides {
      Name: "cs:LevelText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 9229910473666718341
      }
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
    }
  }
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
    Width: 100
    Height: 100
    UIX: -275
    UIY: -175
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16365374357473291335
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13978019491319261191
  Name: "UI Image"
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
  ParentId: 3021070523756027165
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
        Id: 6951220689761147886
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
    SelfId: 1534175004303474040
    SubobjectId: 14892923694449335148
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13739036068337712331
  Name: "Duration Indicator"
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
  ParentId: 3021070523756027165
  ChildIds: 5988118581967623322
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
    Width: 79
    Height: 15
    UIY: 18.671
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    StatBar {
      Color {
        G: 0.194617867
        B: 0.863157392
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.00556291314
        A: 1
      }
      Percent: 0.552933455
      FillBrush {
      }
      BackgroundBrush {
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
    SelfId: 3754520357781566957
    SubobjectId: 17293412896128553977
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5988118581967623322
  Name: "Shading"
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
  ParentId: 13739036068337712331
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
    Height: 7
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.4
      }
      TeamSettings {
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
    SelfId: 3035116451820838906
    SubobjectId: 17436479173850151406
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2146735142760849152
  Name: "Ability Active"
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
  ParentId: 3021070523756027165
  ChildIds: 385345870881595971
  ChildIds: 11924433100967169051
  ChildIds: 16532047289185791848
  ChildIds: 13178189914725035260
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 2537316666201249306
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13178189914725035260
  Name: "Text Panel"
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
  ParentId: 2146735142760849152
  ChildIds: 13988705345654659491
  ChildIds: 10039868129704960282
  ChildIds: 6296123498897534488
  ChildIds: 13337814377409459494
  ChildIds: 15721739550026779306
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
    UIY: -2.00698328
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
    SelfId: 18152406017977335383
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15721739550026779306
  Name: "MAKRO_TEXT"
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
  ParentId: 13178189914725035260
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 4975848864703696199
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13337814377409459494
  Name: "MAKRO_TEXT"
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
  ParentId: 13178189914725035260
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9981151208965762493
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6296123498897534488
  Name: "MAKRO_TEXT"
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
  ParentId: 13178189914725035260
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 3936542898275756560
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10039868129704960282
  Name: "MAKRO_TEXT"
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
  ParentId: 13178189914725035260
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 8206938559035066395
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13988705345654659491
  Name: "MAKRO_TEXT"
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
  ParentId: 13178189914725035260
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 16598373610179386828
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16532047289185791848
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 2146735142760849152
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 2682862122183138892
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11924433100967169051
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 2146735142760849152
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12261472008549907088
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 385345870881595971
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 2146735142760849152
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9693161102291229364
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15609503244535460291
  Name: "Ability Level"
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
  ParentId: 3021070523756027165
  ChildIds: 15854539166630899213
  ChildIds: 1641597470541949753
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 12323748123473604984
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1641597470541949753
  Name: "LevelText"
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
  ParentId: 15609503244535460291
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 15960567215523319522
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15854539166630899213
  Name: "UI Panel"
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
  ParentId: 15609503244535460291
  ChildIds: 6219408927185767943
  ChildIds: 1594853210479167546
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 1532359825534518158
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1594853210479167546
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 15854539166630899213
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15839885012564291596
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6219408927185767943
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 15854539166630899213
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11946073294558922688
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17923384872010052536
  Name: "Frame"
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
  ParentId: 3021070523756027165
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
    Width: 4
    Height: 4
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 12664000347317209667
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15234158230708818531
  Name: "AbilityName"
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
  ParentId: 3021070523756027165
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 17218470469113943902
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4874666105685333730
  Name: "Cutout"
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
  ParentId: 3021070523756027165
  ChildIds: 15445807471323618274
  ChildIds: 16432582157022156274
  ChildIds: 14481318902549564359
  ChildIds: 11111853855702983720
  ChildIds: 3493722217973130403
  ChildIds: 5167436728844911929
  ChildIds: 9229910473666718341
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
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 10067297865473811114
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
    SelfId: 18039503734856718500
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9229910473666718341
  Name: "Text Panel"
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
  ParentId: 4874666105685333730
  ChildIds: 16899813829610915361
  ChildIds: 782123432309993998
  ChildIds: 18043734051051148797
  ChildIds: 7780590268713798704
  ChildIds: 9250654154890508096
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
    UIY: 29.7472591
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4493367327909063279
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9250654154890508096
  Name: "MAKRO_TEXT"
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
  ParentId: 9229910473666718341
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 9766619260940685623
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7780590268713798704
  Name: "MAKRO_TEXT"
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
  ParentId: 9229910473666718341
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 5261397446627440213
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18043734051051148797
  Name: "MAKRO_TEXT"
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
  ParentId: 9229910473666718341
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 10798851156501058714
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 782123432309993998
  Name: "MAKRO_TEXT"
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
  ParentId: 9229910473666718341
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 3497444949135729797
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16899813829610915361
  Name: "MAKRO_TEXT"
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
  ParentId: 9229910473666718341
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 5547743117397010496
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5167436728844911929
  Name: "MAKRO_BG"
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
  ParentId: 4874666105685333730
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
    Width: 74
    Height: 108
    UIY: 12.894
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16127639590417113522
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3493722217973130403
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 4874666105685333730
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
    Width: 113
    Height: 27
    UIY: 4.40061617
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 17475562283149249242
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11111853855702983720
  Name: "Cooldown Indicator"
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
  ParentId: 4874666105685333730
  ChildIds: 12635482293353911939
  ChildIds: 6178919733925343053
  ChildIds: 5708240695623043482
  UnregisteredParameters {
  }
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
      IsClipping: true
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
  InstanceHistory {
    SelfId: 16897400997116644940
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5708240695623043482
  Name: "CountdownTime"
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
  ParentId: 11111853855702983720
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "999"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
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
    SelfId: 17153766398415202109
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6178919733925343053
  Name: "LeftClip"
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
  ParentId: 11111853855702983720
  ChildIds: 18249321249973348762
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
    Width: 50
    Height: 100
    UIX: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 7489174110295760758
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18249321249973348762
  Name: "LeftShadow"
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
  ParentId: 6178919733925343053
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 7784474605991016639
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12635482293353911939
  Name: "RightClip"
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
  ParentId: 11111853855702983720
  ChildIds: 5288445858636907867
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
    Width: 50
    Height: 100
    UIX: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 18039629594146779220
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5288445858636907867
  Name: "RightShadow"
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
  ParentId: 12635482293353911939
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 11454802867428201301
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14481318902549564359
  Name: "Icon"
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
  ParentId: 4874666105685333730
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
        Id: 17752702521577453302
      }
      Color {
        R: 1
        G: 1
        B: 1
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
    SelfId: 8068247987685481664
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16432582157022156274
  Name: "BG"
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
  ParentId: 4874666105685333730
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
    UIX: -2.5
    UIY: -1.5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 14060330023043759337
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
    SelfId: 2790406202332371959
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15445807471323618274
  Name: "BG_SHADOW"
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
  ParentId: 4874666105685333730
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5970270056712670931
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15719326388433199639
  Name: "Active Flash"
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
  ParentId: 3021070523756027165
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12822247287379162579
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9900240902617302668
  Name: "Shift"
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
  ParentId: 10836698933296158585
  ChildIds: 2899876393338057758
  ChildIds: 12351035183536212141
  ChildIds: 1685693755424317355
  ChildIds: 17304512202605514998
  ChildIds: 121873696506047394
  ChildIds: 7960846033342951944
  ChildIds: 15690707803425878130
  ChildIds: 6466137632574067838
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 9900240902617302668
      }
    }
    Overrides {
      Name: "cs:Panel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Panel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 1464246426514230585
      }
    }
    Overrides {
      Name: "cs:Icon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Icon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 1685693755424317355
      }
    }
    Overrides {
      Name: "cs:NameText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NameText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 690478400010498866
      }
    }
    Overrides {
      Name: "cs:CountdownText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CountdownText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 10071555976679902360
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ProgressIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 1607077826720440725
      }
    }
    Overrides {
      Name: "cs:RightShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RightShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 13481601999214253142
      }
    }
    Overrides {
      Name: "cs:LeftShadow:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LeftShadow:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 7960846033342951944
      }
    }
    Overrides {
      Name: "cs:ActiveFrame:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFrame:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 2899876393338057758
      }
    }
    Overrides {
      Name: "cs:ActiveFlash:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActiveFlash:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator"
      ObjectReference {
        SelfId: 15690707803425878130
      }
    }
    Overrides {
      Name: "cs:DurationIndicator:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:DurationIndicator:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText"
      ObjectReference {
        SelfId: 1981869970658687390
      }
    }
    Overrides {
      Name: "cs:LevelText:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LevelText:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 2695248579623541147
      }
    }
    Overrides {
      Name: "cs:ActionName:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ActionName:ml"
      Bool: false
    }
  }
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
    Width: 100
    Height: 100
    UIX: -250
    UIY: -50
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
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15434264637795423992
    SubobjectId: 4105394437550983763
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6466137632574067838
  Name: "UI Image"
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
  ParentId: 9900240902617302668
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
        Id: 6951220689761147886
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
    SelfId: 2334699301086332871
    SubobjectId: 14892923694449335148
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15690707803425878130
  Name: "Duration Indicator"
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
  ParentId: 9900240902617302668
  ChildIds: 4424957514204851780
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
    Width: 79
    Height: 15
    UIY: 18.671
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    StatBar {
      Color {
        G: 0.194617867
        B: 0.863157392
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.00556291314
        A: 1
      }
      Percent: 0.552933455
      FillBrush {
      }
      BackgroundBrush {
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
    SelfId: 87333054252240722
    SubobjectId: 17293412896128553977
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4424957514204851780
  Name: "Shading"
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
  ParentId: 15690707803425878130
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
    Height: 7
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.4
      }
      TeamSettings {
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
    SelfId: 2247893221808645445
    SubobjectId: 17436479173850151406
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7960846033342951944
  Name: "Ability Active"
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
  ParentId: 9900240902617302668
  ChildIds: 2049680029289486961
  ChildIds: 7796205544172794726
  ChildIds: 367172132338152730
  ChildIds: 8963629461748255037
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 1592766546458619045
    SubobjectId: 17929510888674865166
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8963629461748255037
  Name: "Text Panel"
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
  ParentId: 7960846033342951944
  ChildIds: 10105394124605664857
  ChildIds: 6989392757941367229
  ChildIds: 4784694702210649654
  ChildIds: 2523058351667010204
  ChildIds: 14883923275527235346
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
    UIY: -2.00698328
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
    SelfId: 14899796209154884840
    SubobjectId: 2309917941449070659
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14883923275527235346
  Name: "MAKRO_TEXT"
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
  ParentId: 8963629461748255037
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.848958313
        G: 0.458142489
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 8079805732786141176
    SubobjectId: 11450950803194243923
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2523058351667010204
  Name: "MAKRO_TEXT"
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
  ParentId: 8963629461748255037
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 13810521941595739906
    SubobjectId: 5863716523850419113
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4784694702210649654
  Name: "MAKRO_TEXT"
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
  ParentId: 8963629461748255037
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 256019377684484271
    SubobjectId: 17097176910942440452
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6989392757941367229
  Name: "MAKRO_TEXT"
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
  ParentId: 8963629461748255037
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 4956246091527746212
    SubobjectId: 12250019801649507855
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10105394124605664857
  Name: "MAKRO_TEXT"
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
  ParentId: 8963629461748255037
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "LMB"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 15237292137787025267
    SubobjectId: 4448839427109288920
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 367172132338152730
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 7960846033342951944
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
        Id: 14060330023043759337
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1159545297765115123
    SubobjectId: 18365476809996220504
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7796205544172794726
  Name: "OVERLAY_ON_SKILL_USE_3"
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
  ParentId: 7960846033342951944
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
        Id: 2014258926635376275
      }
      Color {
        R: 1
        G: 0.874768257
        B: 0.69
        A: 0.284
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11458713808010412079
    SubobjectId: 8200290674783755396
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2049680029289486961
  Name: "OVERLAY_ON_SKILL_USE_2"
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
  ParentId: 7960846033342951944
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
    Width: -5
    Height: -5
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
        Id: 2014258926635376275
      }
      Color {
        R: 0.651405811
        G: 0.351532787
        A: 0.561000049
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 12946157908879728651
    SubobjectId: 6728713823229836448
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 121873696506047394
  Name: "Ability Level"
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
  ParentId: 9900240902617302668
  ChildIds: 15646479591185495824
  ChildIds: 1981869970658687390
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
    Width: -8
    Height: 21
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
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
    SelfId: 11397000093150727111
    SubobjectId: 8134214131070523244
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1981869970658687390
  Name: "LevelText"
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
  ParentId: 121873696506047394
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
    Width: 85
    Height: 12
    UIX: 21
    UIY: -3
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "10"
      Color {
        R: 1
        G: 0.837086201
        B: 0.7
        A: 1
      }
      Size: 11
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 16740913344714863709
    SubobjectId: 476084591232248054
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15646479591185495824
  Name: "UI Panel"
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
  ParentId: 121873696506047394
  ChildIds: 11423409086628289502
  ChildIds: 4359187825636854594
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
    Width: 100
    Height: 100
    UIX: 25
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
    SelfId: 2335381976518801713
    SubobjectId: 14888968659903751578
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4359187825636854594
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 15646479591185495824
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 16272829598190271809
      }
      Color {
        R: 0.0800000429
        G: 0.0270198733
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17221320576287476403
    SubobjectId: 15380273332065816
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11423409086628289502
  Name: "BUTTON_GOLD_BG"
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
  ParentId: 15646479591185495824
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
    Width: 78
    Height: 150
    UIY: 63.0491219
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    Image {
      Brush {
        Id: 5992778860505362279
      }
      Color {
        R: 0.03125
        G: 0.0105546322
        A: 0.770000041
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10440473078695148927
    SubobjectId: 9091867587311772116
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17304512202605514998
  Name: "Frame"
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
  ParentId: 9900240902617302668
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
    Width: 4
    Height: 4
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
        Id: 1170023131880546749
      }
      Color {
        R: 0.651405811
        G: 0.351532698
        A: 1
      }
      TeamSettings {
      }
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
    SelfId: 11138362390495899900
    SubobjectId: 8384477650364148823
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1685693755424317355
  Name: "AbilityName"
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
  ParentId: 9900240902617302668
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
    Width: 100
    Height: 35
    UIY: 65.7174072
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Ability Name"
      Color {
        R: 1
        G: 0.652450323
        B: 0.36
        A: 1
      }
      Size: 12
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
        Id: 11336346532215892341
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
    SelfId: 15841608530701790689
    SubobjectId: 3823693050672787786
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12351035183536212141
  Name: "Cutout"
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
  ParentId: 9900240902617302668
  ChildIds: 12669269571047282864
  ChildIds: 8443585188838556777
  ChildIds: 1464246426514230585
  ChildIds: 10071555976679902360
  ChildIds: 7127008005801262993
  ChildIds: 9563095942623678509
  ChildIds: 2695248579623541147
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
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 10067297865473811114
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
    SelfId: 14949076353593877019
    SubobjectId: 2431106150639058608
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2695248579623541147
  Name: "Text Panel"
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
  ParentId: 12351035183536212141
  ChildIds: 12149704529970834192
  ChildIds: 10161758964772959393
  ChildIds: 7348272302545697251
  ChildIds: 11193701379643494250
  ChildIds: 13265164115357252583
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
    UIY: 29.7472591
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 826231773356462288
    SubobjectId: 16555112379976879227
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13265164115357252583
  Name: "MAKRO_TEXT"
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
  ParentId: 2695248579623541147
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
    Height: 25
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 1
        G: 0.737417221
        B: 0.350000024
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 12873250175921662856
    SubobjectId: 6660321650312460067
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11193701379643494250
  Name: "MAKRO_TEXT"
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
  ParentId: 2695248579623541147
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
    Height: 25
    UIX: 1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 8946618048403475690
    SubobjectId: 10583470265802166337
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7348272302545697251
  Name: "MAKRO_TEXT"
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
  ParentId: 2695248579623541147
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
    Height: 25
    UIX: 1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 11597263020872429093
    SubobjectId: 5636552701285495438
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10161758964772959393
  Name: "MAKRO_TEXT"
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
  ParentId: 2695248579623541147
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
    Height: 25
    UIX: -1
    UIY: 1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 406893013024382522
    SubobjectId: 16964317208116462225
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12149704529970834192
  Name: "MAKRO_TEXT"
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
  ParentId: 2695248579623541147
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
    Height: 25
    UIX: -1
    UIY: -1
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHIFT"
      Color {
        R: 0.270833343
        G: 0.0912729055
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 11336346532215892341
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
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
    SelfId: 8777922855464669951
    SubobjectId: 10887942209865059924
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9563095942623678509
  Name: "MAKRO_BG"
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
  ParentId: 12351035183536212141
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
    Width: 74
    Height: 108
    UIY: 12.894
    RotationAngle: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 48307754774318265
      }
      Color {
        R: 0.110000014
        G: 0.0262251683
        A: 0.452000022
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
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16932437762177932045
    SubobjectId: 303102346340763558
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7127008005801262993
  Name: "MAKRO_BG_SHADOW"
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
  ParentId: 12351035183536212141
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
    Width: 113
    Height: 27
    UIY: 4.40061617
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        A: 0.623529434
      }
      TeamSettings {
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
    SelfId: 14387122715293347941
    SubobjectId: 2981836461218688206
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10071555976679902360
  Name: "Cooldown Indicator"
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
  ParentId: 12351035183536212141
  ChildIds: 10452225239872507766
  ChildIds: 16885855223622804323
  ChildIds: 690478400010498866
  UnregisteredParameters {
  }
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
      IsClipping: true
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
  InstanceHistory {
    SelfId: 16092302661355320563
    SubobjectId: 3574617400489027672
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 690478400010498866
  Name: "CountdownTime"
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
  ParentId: 10071555976679902360
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
    Width: 60
    Height: 60
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "999"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
      Font {
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
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
    SelfId: 15790344919400439170
    SubobjectId: 3885019469516226857
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16885855223622804323
  Name: "LeftClip"
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
  ParentId: 10071555976679902360
  ChildIds: 13481601999214253142
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
    Width: 50
    Height: 100
    UIX: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
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
    SelfId: 5963360193502455241
    SubobjectId: 13549874514322995554
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13481601999214253142
  Name: "LeftShadow"
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
  ParentId: 16885855223622804323
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
      }
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
    SelfId: 6423534695731200512
    SubobjectId: 13253026425810230955
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10452225239872507766
  Name: "RightClip"
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
  ParentId: 10071555976679902360
  ChildIds: 1607077826720440725
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
    Width: 50
    Height: 100
    UIX: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
      Opacity: 1
      OpacityMaskBrush {
        Id: 12746116963631936972
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14948954752982846187
    SubobjectId: 2431262864981497408
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1607077826720440725
  Name: "RightShadow"
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
  ParentId: 10452225239872507766
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
    Width: 75
    Height: 150
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 841534158063459245
      }
      Color {
        A: 0.8
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 12383590729128028650
    SubobjectId: 4977486650499347777
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1464246426514230585
  Name: "Icon"
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
  ParentId: 12351035183536212141
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
        Id: 17752702521577453302
      }
      Color {
        R: 1
        G: 1
        B: 1
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
    SelfId: 6545089669834532479
    SubobjectId: 12978278961794317012
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8443585188838556777
  Name: "BG"
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
  ParentId: 12351035183536212141
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
    UIX: -2.5
    UIY: -1.5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 14060330023043759337
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
    SelfId: 1411169317998911816
    SubobjectId: 18256946995895565795
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12669269571047282864
  Name: "BG_SHADOW"
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
  ParentId: 12351035183536212141
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
    Width: 4
    UIX: 0.75
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
        Id: 14060330023043759337
      }
      Color {
        A: 0.426000029
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7491263337654826092
    SubobjectId: 9889517496047675591
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2899876393338057758
  Name: "Active Flash"
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
  ParentId: 9900240902617302668
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
    Width: 200
    Height: 74
    UIY: -28.4874878
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    Image {
      Brush {
        Id: 2604353830693238371
      }
      Color {
        R: 1
        G: 0.76543051
        B: 0.230000019
        A: 1
      }
      TeamSettings {
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
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9573875821263933292
    SubobjectId: 7644282853577937863
    InstanceId: 7752804201856156501
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10377558090673414033
  Name: "AbilityDisplayClient"
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
  ParentId: 12733248680099954947
  UnregisteredParameters {
    Overrides {
      Name: "cs:AbilityDisplay"
      ObjectReference {
        SelfId: 10836698933296158585
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
      Id: 12821839503957755810
    }
  }
  InstanceHistory {
    SelfId: 11131893214323881989
    SubobjectId: 1054479240003066075
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16947799671931854678
  Name: "appstateHook"
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
  ParentId: 12733248680099954947
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 10836698933296158585
      }
    }
    Overrides {
      Name: "cs:Adventure"
      Bool: true
    }
    Overrides {
      Name: "cs:SocialHub"
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
    SelfId: 5487626140267401323
    SubobjectId: 15634765386635440309
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10294763225817009364
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
  ParentId: 11659756986527455673
  ChildIds: 6464809176465318676
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
  InstanceHistory {
    SelfId: 11375898689101129330
    SubobjectId: 648906731283760812
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6464809176465318676
  Name: "Equipper_Server"
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
  ParentId: 10294763225817009364
  UnregisteredParameters {
    Overrides {
      Name: "cs:EquipmentContainer"
      AssetReference {
        Id: 136401786372049287
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
      Id: 17586864369691218257
    }
  }
  InstanceHistory {
    SelfId: 8825856218783519819
    SubobjectId: 17196313300345861269
    InstanceId: 7752804201856156501
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
