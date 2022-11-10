Name: "Equpper"
RootId: 11749149520871255776
Objects {
  Id: 15745599508401181314
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
  ParentId: 11749149520871255776
  ChildIds: 6299221803995200577
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
  InstanceHistory {
    SelfId: 15745599508401181314
    SubobjectId: 15015498174232369775
    InstanceId: 11299696855387386535
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
  Id: 6299221803995200577
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
  ParentId: 15745599508401181314
  ChildIds: 15139843095149852760
  ChildIds: 4136050901127714853
  ChildIds: 4822472811952923718
  UnregisteredParameters {
    Overrides {
      Name: "cs:RenderRoot"
      ObjectReference {
        SelfId: 4822472811952923718
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
    SelfId: 6299221803995200577
    SubobjectId: 6739930995374666924
    InstanceId: 11299696855387386535
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
  Id: 4822472811952923718
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
  ParentId: 6299221803995200577
  ChildIds: 5192074342337134283
  ChildIds: 9016501912282629236
  ChildIds: 12983403434045560237
  ChildIds: 17200809350298111018
  ChildIds: 161264065571676763
  ChildIds: 16256299879791503172
  ChildIds: 1764875261251538579
  ChildIds: 10781341238214754332
  ChildIds: 8137768489757124812
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 4822472811952923718
    SubobjectId: 5192230512577096875
    InstanceId: 11299696855387386535
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8137768489757124812
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
  ParentId: 4822472811952923718
  ChildIds: 8246154574691183761
  ChildIds: 2450963078630551896
  ChildIds: 7614290679520025647
  ChildIds: 9008922997556990933
  ChildIds: 4345346017653706440
  ChildIds: 4104164138248025587
  ChildIds: 12737314470703321745
  ChildIds: 3632343341204294171
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 8137768489757124812
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
        SelfId: 18161461325172873291
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
        SelfId: 9008922997556990933
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
        SelfId: 9078200980607968182
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
        SelfId: 8758925921774488263
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
        SelfId: 938427207053957086
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
        SelfId: 18445150328048909364
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
        SelfId: 3359313333413836407
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
        SelfId: 12737314470703321745
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
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 12513798919717777124
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
    SelfId: 1898119219857757376
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 3632343341204294171
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
  ParentId: 8137768489757124812
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 3632343341204294171
    SubobjectId: 4074335285226767094
    InstanceId: 11299696855387386535
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12737314470703321745
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
  ParentId: 8137768489757124812
  ChildIds: 1546795965868908095
  ChildIds: 4168974008595742235
  ChildIds: 13171099218149890759
  ChildIds: 7500772732156508892
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
    SelfId: 15743555199267466909
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 7500772732156508892
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
  ParentId: 12737314470703321745
  ChildIds: 8478889197902076231
  ChildIds: 16291405742434520208
  ChildIds: 11912932504970751643
  ChildIds: 1834786055601072438
  ChildIds: 15492259829704919500
  Collidable_v2 {
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
    SelfId: 189231465639069392
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 15492259829704919500
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
  ParentId: 7500772732156508892
  Collidable_v2 {
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
    SelfId: 13567023745423128000
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 1834786055601072438
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
  ParentId: 7500772732156508892
  Collidable_v2 {
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
    SelfId: 8344651408906163514
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 11912932504970751643
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
  ParentId: 7500772732156508892
  Collidable_v2 {
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
    SelfId: 14982188373079085719
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 16291405742434520208
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
  ParentId: 7500772732156508892
  Collidable_v2 {
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
    SelfId: 9849059272702308508
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 8478889197902076231
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
  ParentId: 7500772732156508892
  Collidable_v2 {
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
    SelfId: 2239204640534570315
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 13171099218149890759
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
  ParentId: 12737314470703321745
  Collidable_v2 {
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
    SelfId: 15884605970414724811
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 4168974008595742235
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
  ParentId: 12737314470703321745
  Collidable_v2 {
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
    SelfId: 6008782431540134423
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 1546795965868908095
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
  ParentId: 12737314470703321745
  Collidable_v2 {
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
    SelfId: 9209582720168895027
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 4104164138248025587
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
  ParentId: 8137768489757124812
  ChildIds: 9707048517586700037
  ChildIds: 5660188312328931945
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
    SelfId: 5930320989925280255
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 5660188312328931945
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
  ParentId: 4104164138248025587
  Collidable_v2 {
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
    SelfId: 2609087539412121189
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 9707048517586700037
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
  ParentId: 4104164138248025587
  ChildIds: 3907627252700627787
  ChildIds: 5197373222861010055
  Collidable_v2 {
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
    SelfId: 17009547404788988681
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 5197373222861010055
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
  ParentId: 9707048517586700037
  Collidable_v2 {
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
    SelfId: 2492908849927833739
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 3907627252700627787
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
  ParentId: 9707048517586700037
  Collidable_v2 {
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
    SelfId: 6666169969551277895
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 4345346017653706440
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
  ParentId: 8137768489757124812
  Collidable_v2 {
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
    SelfId: 6266078433588671172
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 9008922997556990933
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
  ParentId: 8137768489757124812
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
    SelfId: 1710892529917554649
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 7614290679520025647
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
  ParentId: 8137768489757124812
  ChildIds: 13918652731392707160
  ChildIds: 13063772355367346044
  ChildIds: 18161461325172873291
  ChildIds: 8758925921774488263
  ChildIds: 7023362900290899537
  ChildIds: 5486148319308342585
  ChildIds: 12513798919717777124
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 221579128870690851
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1771346759537945726
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12513798919717777124
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
  ParentId: 7614290679520025647
  ChildIds: 16073310712931118283
  ChildIds: 11780079277873324046
  ChildIds: 445695831537061905
  ChildIds: 15777913845559620318
  ChildIds: 1475021713446524348
  Collidable_v2 {
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
    SelfId: 14344424262349116136
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 1475021713446524348
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
  ParentId: 12513798919717777124
  Collidable_v2 {
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
    SelfId: 9133304863819983280
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 15777913845559620318
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
  ParentId: 12513798919717777124
  Collidable_v2 {
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
    SelfId: 12704154275281751762
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 445695831537061905
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
  ParentId: 12513798919717777124
  Collidable_v2 {
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
    SelfId: 7824790993680608285
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 11780079277873324046
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
  ParentId: 12513798919717777124
  Collidable_v2 {
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
    SelfId: 14538586876923993090
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 16073310712931118283
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
  ParentId: 12513798919717777124
  Collidable_v2 {
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
    SelfId: 13094091543455518919
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 5486148319308342585
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
  ParentId: 7614290679520025647
  Collidable_v2 {
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
    SelfId: 2781789537621989685
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 7023362900290899537
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
  ParentId: 7614290679520025647
  Collidable_v2 {
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
    SelfId: 851091631533634141
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 8758925921774488263
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
  ParentId: 7614290679520025647
  ChildIds: 7614451859546338527
  ChildIds: 17590128010442791933
  ChildIds: 9078200980607968182
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
    SelfId: 1384193556808595147
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 9078200980607968182
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
  ParentId: 8758925921774488263
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
    SelfId: 1676587820306407354
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 17590128010442791933
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
  ParentId: 8758925921774488263
  ChildIds: 18445150328048909364
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
    SelfId: 11431508278597052401
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 18445150328048909364
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
  ParentId: 17590128010442791933
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
    SelfId: 10755165955344121912
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 7614451859546338527
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
  ParentId: 8758925921774488263
  ChildIds: 938427207053957086
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
    SelfId: 221705057936328915
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 938427207053957086
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
  ParentId: 7614451859546338527
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
    SelfId: 7475314155996769234
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 18161461325172873291
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
  ParentId: 7614290679520025647
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
        Id: 2293664526516803821
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
    SelfId: 10858786554760733767
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 13063772355367346044
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
  ParentId: 7614290679520025647
  Collidable_v2 {
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
    SelfId: 16137391092073800560
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 13918652731392707160
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
  ParentId: 7614290679520025647
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
    SelfId: 12362571084968457812
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 2450963078630551896
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
  ParentId: 8137768489757124812
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
    SelfId: 5240995776305204564
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 8246154574691183761
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
  ParentId: 8137768489757124812
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 8137768489757124812
      }
    }
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 18161461325172873291
      }
    }
    Overrides {
      Name: "cs:NameText"
      ObjectReference {
        SelfId: 9008922997556990933
      }
    }
    Overrides {
      Name: "cs:CountdownText"
      ObjectReference {
        SelfId: 9078200980607968182
      }
    }
    Overrides {
      Name: "cs:ProgressIndicator"
      ObjectReference {
        SelfId: 8758925921774488263
      }
    }
    Overrides {
      Name: "cs:RightShadow"
      ObjectReference {
        SelfId: 938427207053957086
      }
    }
    Overrides {
      Name: "cs:LeftShadow"
      ObjectReference {
        SelfId: 18445150328048909364
      }
    }
    Overrides {
      Name: "cs:ActiveFrame"
      ObjectReference {
        SelfId: 3359313333413836407
      }
    }
    Overrides {
      Name: "cs:ActiveFlash"
      ObjectReference {
        SelfId: 12737314470703321745
      }
    }
    Overrides {
      Name: "cs:ActionName"
      ObjectReference {
        SelfId: 12513798919717777124
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
    SelfId: 8246154574691183761
    SubobjectId: 8688119579028415612
    InstanceId: 11299696855387386535
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
  Id: 10781341238214754332
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
  ParentId: 4822472811952923718
  ChildIds: 14372037577224460680
  ChildIds: 10149786378473534719
  ChildIds: 10986023680401996549
  ChildIds: 15653923819631994392
  ChildIds: 15962101101007936803
  ChildIds: 6175602693985172033
  ChildIds: 4798802699199846838
  ChildIds: 2384147977909442396
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 10781341238214754332
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
        SelfId: 1835873473939124379
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
        SelfId: 10986023680401996549
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
        SelfId: 10992180964417145702
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
        SelfId: 11312436778910933527
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
        SelfId: 16750535707018919694
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
        SelfId: 1912476883435410660
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
        SelfId: 6175602693985172033
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
        SelfId: 14372037577224460680
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
        SelfId: 4798802699199846838
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
        SelfId: 12393108682386678457
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
        SelfId: 5249468980634666548
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
    SelfId: 18385757149300931600
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 2384147977909442396
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
  ParentId: 10781341238214754332
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 2384147977909442396
    SubobjectId: 3167278108771803057
    InstanceId: 11299696855387386535
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4798802699199846838
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
  ParentId: 10781341238214754332
  ChildIds: 6673384307627488161
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
    SelfId: 2891475534932321722
    SubobjectId: 17293412896128553977
    InstanceId: 11299696855387386535
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
  Id: 6673384307627488161
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
  ParentId: 4798802699199846838
  Collidable_v2 {
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
    SelfId: 3901471495010701229
    SubobjectId: 17436479173850151406
    InstanceId: 11299696855387386535
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
  Id: 6175602693985172033
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
  ParentId: 10781341238214754332
  ChildIds: 17295932896045381359
  ChildIds: 15900809701289875147
  ChildIds: 6032863191793889815
  ChildIds: 10189452326675632652
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
    SelfId: 4543135741396371021
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 10189452326675632652
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
  ParentId: 6175602693985172033
  ChildIds: 10438003794653557143
  ChildIds: 533288280528593984
  ChildIds: 4621556430907164235
  ChildIds: 18160296945844322790
  ChildIds: 3715396933146452252
  Collidable_v2 {
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
    SelfId: 16703961980073340416
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 3715396933146452252
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
  ParentId: 10189452326675632652
  Collidable_v2 {
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
    SelfId: 6428868537533898000
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 18160296945844322790
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
  ParentId: 10189452326675632652
  Collidable_v2 {
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
    SelfId: 10862125768080113130
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 4621556430907164235
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
  ParentId: 10189452326675632652
  Collidable_v2 {
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
    SelfId: 3070119153810897479
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 533288280528593984
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
  ParentId: 10189452326675632652
  Collidable_v2 {
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
    SelfId: 7916992593272543308
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 10438003794653557143
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
  ParentId: 10189452326675632652
  Collidable_v2 {
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
    SelfId: 18042384555710647707
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 6032863191793889815
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
  ParentId: 6175602693985172033
  Collidable_v2 {
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
    SelfId: 4107662263979527707
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 15900809701289875147
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
  ParentId: 6175602693985172033
  Collidable_v2 {
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
    SelfId: 13119924841590713031
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 17295932896045381359
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
  ParentId: 6175602693985172033
  Collidable_v2 {
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
    SelfId: 11150683257788861155
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 15962101101007936803
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
  ParentId: 10781341238214754332
  ChildIds: 7189557940077227989
  ChildIds: 12393108682386678457
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
    SelfId: 13203593605573419311
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 12393108682386678457
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
  ParentId: 15962101101007936803
  Collidable_v2 {
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
    SelfId: 13926672266245316277
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 7189557940077227989
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
  ParentId: 15962101101007936803
  ChildIds: 15225126217616452507
  ChildIds: 12488739603711876183
  Collidable_v2 {
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
    SelfId: 684020297284047833
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 12488739603711876183
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
  ParentId: 7189557940077227989
  Collidable_v2 {
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
    SelfId: 14404968520938479707
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 15225126217616452507
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
  ParentId: 7189557940077227989
  Collidable_v2 {
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
    SelfId: 13399004577691490199
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 15653923819631994392
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
  ParentId: 10781341238214754332
  Collidable_v2 {
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
    SelfId: 12935948684336650772
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 10986023680401996549
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
  ParentId: 10781341238214754332
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
    SelfId: 17496029734168053513
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 10149786378473534719
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
  ParentId: 10781341238214754332
  ChildIds: 2619072992737911432
  ChildIds: 5781489796591761324
  ChildIds: 1835873473939124379
  ChildIds: 11312436778910933527
  ChildIds: 9513804391772563073
  ChildIds: 12200985025975569897
  ChildIds: 5249468980634666548
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 16601140017399777523
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 10001860005436604822
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5249468980634666548
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
  ParentId: 10149786378473534719
  ChildIds: 4215354984996652059
  ChildIds: 5047147977065154782
  ChildIds: 16383884440263932097
  ChildIds: 4577421820517734926
  ChildIds: 17368265581059341676
  Collidable_v2 {
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
    SelfId: 2477415430542129720
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 17368265581059341676
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
  ParentId: 5249468980634666548
  Collidable_v2 {
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
    SelfId: 11218512347466219872
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 4577421820517734926
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
  ParentId: 5249468980634666548
  Collidable_v2 {
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
    SelfId: 6142369930319062530
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 16383884440263932097
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
  ParentId: 5249468980634666548
  Collidable_v2 {
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
    SelfId: 9936928811341481165
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 5047147977065154782
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
  ParentId: 5249468980634666548
  Collidable_v2 {
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
    SelfId: 3220991090491225298
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 4215354984996652059
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
  ParentId: 5249468980634666548
  Collidable_v2 {
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
    SelfId: 5820800309735487511
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 12200985025975569897
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
  ParentId: 10149786378473534719
  Collidable_v2 {
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
    SelfId: 14117319389493850597
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 9513804391772563073
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
  ParentId: 10149786378473534719
  Collidable_v2 {
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
    SelfId: 17203612849612921485
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 11312436778910933527
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
  ParentId: 10149786378473534719
  ChildIds: 10149946390211124239
  ChildIds: 1255551922242319149
  ChildIds: 10992180964417145702
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
    SelfId: 17745740936424283675
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 10992180964417145702
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
  ParentId: 11312436778910933527
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
    SelfId: 17452647392200669034
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 1255551922242319149
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
  ParentId: 11312436778910933527
  ChildIds: 1912476883435410660
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
    SelfId: 8922983118901497633
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 1912476883435410660
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
  ParentId: 1255551922242319149
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
    SelfId: 8084572227664734440
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 10149946390211124239
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
  ParentId: 11312436778910933527
  ChildIds: 16750535707018919694
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
    SelfId: 16601264915615539203
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 16750535707018919694
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
  ParentId: 10149946390211124239
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
    SelfId: 9425342937953878786
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 1835873473939124379
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
  ParentId: 10149786378473534719
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
    SelfId: 8341235224932617367
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 5781489796591761324
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
  ParentId: 10149786378473534719
  Collidable_v2 {
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
    SelfId: 4216400980994165664
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 2619072992737911432
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
  ParentId: 10149786378473534719
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
    SelfId: 5683684628957224580
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 14372037577224460680
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
  ParentId: 10781341238214754332
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
    SelfId: 12523362722595087748
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 1764875261251538579
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
  ParentId: 4822472811952923718
  ChildIds: 5373533292778608391
  ChildIds: 88476496129768048
  ChildIds: 1555763170254632330
  ChildIds: 6115031561205885079
  ChildIds: 5793276642666828716
  ChildIds: 15588429348592694478
  ChildIds: 14950219761147205433
  ChildIds: 8413082308960608436
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 1764875261251538579
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
        SelfId: 10708233054129651220
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
        SelfId: 1555763170254632330
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
        SelfId: 1543905992124614121
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
        SelfId: 1233077381867416728
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
        SelfId: 7319694590306529665
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
        SelfId: 10910928456033901163
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
        SelfId: 15588429348592694478
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
        SelfId: 5373533292778608391
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
        SelfId: 14950219761147205433
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
        SelfId: 2746129966323067958
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
        SelfId: 14211319942529353915
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
    SelfId: 8270377754569241247
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 8413082308960608436
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
  ParentId: 1764875261251538579
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 8413082308960608436
    SubobjectId: 9089137704155523161
    InstanceId: 11299696855387386535
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14950219761147205433
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
  ParentId: 1764875261251538579
  ChildIds: 15095366263327112494
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
    SelfId: 11943979028820912949
    SubobjectId: 17293412896128553977
    InstanceId: 11299696855387386535
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
  Id: 15095366263327112494
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
  ParentId: 14950219761147205433
  Collidable_v2 {
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
    SelfId: 13530453406638309666
    SubobjectId: 17436479173850151406
    InstanceId: 11299696855387386535
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
  Id: 15588429348592694478
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
  ParentId: 1764875261251538579
  ChildIds: 9072047747213654112
  ChildIds: 5857523014379083844
  ChildIds: 16021578854253280408
  ChildIds: 38607080022416515
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
    SelfId: 12893077762403043522
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 38607080022416515
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
  ParentId: 15588429348592694478
  ChildIds: 2106032252928098072
  ChildIds: 9982090952074029775
  ChildIds: 14826427347979110596
  ChildIds: 8207610012758167401
  ChildIds: 13722083079400419219
  Collidable_v2 {
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
    SelfId: 7652030160818708623
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 13722083079400419219
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
  ParentId: 38607080022416515
  Collidable_v2 {
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
    SelfId: 15336711488768234399
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 8207610012758167401
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
  ParentId: 38607080022416515
  Collidable_v2 {
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
    SelfId: 1972323607141053285
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 14826427347979110596
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
  ParentId: 38607080022416515
  Collidable_v2 {
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
    SelfId: 12068060484806325448
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 9982090952074029775
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
  ParentId: 38607080022416515
  Collidable_v2 {
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
    SelfId: 16158865820475381443
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 2106032252928098072
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
  ParentId: 38607080022416515
  Collidable_v2 {
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
    SelfId: 8611569827555492628
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 16021578854253280408
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
  ParentId: 15588429348592694478
  Collidable_v2 {
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
    SelfId: 13033493291730763924
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 5857523014379083844
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
  ParentId: 15588429348592694478
  Collidable_v2 {
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
    SelfId: 4319596534554174536
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 9072047747213654112
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
  ParentId: 15588429348592694478
  Collidable_v2 {
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
    SelfId: 1683839733377844332
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 5793276642666828716
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
  ParentId: 1764875261251538579
  ChildIds: 17160804555385872730
  ChildIds: 2746129966323067958
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
    SelfId: 4241698591574912928
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 2746129966323067958
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
  ParentId: 5793276642666828716
  Collidable_v2 {
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
    SelfId: 5522651928982212666
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 17160804555385872730
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
  ParentId: 5793276642666828716
  ChildIds: 6821721604692223252
  ChildIds: 2355935146790818520
  Collidable_v2 {
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
    SelfId: 9556423862494666070
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 2355935146790818520
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
  ParentId: 17160804555385872730
  Collidable_v2 {
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
    SelfId: 5334978321391464148
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 6821721604692223252
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
  ParentId: 17160804555385872730
  Collidable_v2 {
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
    SelfId: 3752571221517539608
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 6115031561205885079
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
  ParentId: 1764875261251538579
  Collidable_v2 {
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
    SelfId: 4495899483491210395
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 1555763170254632330
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
  ParentId: 1764875261251538579
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
    SelfId: 9164682651419281798
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 88476496129768048
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
  ParentId: 1764875261251538579
  ChildIds: 12230031707364666375
  ChildIds: 15986343120445896995
  ChildIds: 10708233054129651220
  ChildIds: 1233077381867416728
  ChildIds: 713484884343908366
  ChildIds: 2644606064525837158
  ChildIds: 14211319942529353915
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 7746759717911299708
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 8288857664811523486
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14211319942529353915
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
  ParentId: 88476496129768048
  ChildIds: 13231275601273260692
  ChildIds: 14693572474835469905
  ChildIds: 7979916879021045326
  ChildIds: 12855341433176888449
  ChildIds: 9000836993426732003
  Collidable_v2 {
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
    SelfId: 12646266348331250871
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 9000836993426732003
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
  ParentId: 14211319942529353915
  Collidable_v2 {
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
    SelfId: 1608125375664394223
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 12855341433176888449
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
  ParentId: 14211319942529353915
  Collidable_v2 {
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
    SelfId: 15627218992689522829
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 7979916879021045326
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
  ParentId: 14211319942529353915
  Collidable_v2 {
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
    SelfId: 289932505775131202
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 14693572474835469905
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
  ParentId: 14211319942529353915
  Collidable_v2 {
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
    SelfId: 11624457338310048349
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 13231275601273260692
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
  ParentId: 14211319942529353915
  Collidable_v2 {
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
    SelfId: 15935634348075529880
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 2644606064525837158
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
  ParentId: 88476496129768048
  Collidable_v2 {
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
    SelfId: 5623825199083929450
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 713484884343908366
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
  ParentId: 88476496129768048
  Collidable_v2 {
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
    SelfId: 7160334953686520834
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 1233077381867416728
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
  ParentId: 88476496129768048
  ChildIds: 88601395409752704
  ChildIds: 11280815418350353826
  ChildIds: 1543905992124614121
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
    SelfId: 8909410153781465236
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 1543905992124614121
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
  ParentId: 1233077381867416728
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
    SelfId: 9211372367246195173
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 11280815418350353826
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
  ParentId: 1233077381867416728
  ChildIds: 10910928456033901163
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
    SelfId: 17741317024604488110
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 10910928456033901163
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
  ParentId: 11280815418350353826
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
    SelfId: 18290023618718705255
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 88601395409752704
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
  ParentId: 1233077381867416728
  ChildIds: 7319694590306529665
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
    SelfId: 7746919730713276044
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 7319694590306529665
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
  ParentId: 88601395409752704
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
    SelfId: 1093415377489104269
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 10708233054129651220
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
  ParentId: 88476496129768048
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
    SelfId: 18312508232555282968
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 15986343120445896995
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
  ParentId: 88476496129768048
  Collidable_v2 {
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
    SelfId: 13214324723033195823
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 12230031707364666375
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
  ParentId: 88476496129768048
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
    SelfId: 14051684963709718539
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 5373533292778608391
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
  ParentId: 1764875261251538579
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
    SelfId: 2317928856334134027
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 16256299879791503172
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
  ParentId: 4822472811952923718
  ChildIds: 12931314611247562448
  ChildIds: 17932690265399514023
  ChildIds: 17037342185564855389
  ChildIds: 12482595948365463872
  ChildIds: 12214387016595290747
  ChildIds: 2428244808458001689
  ChildIds: 2942869377243580332
  ChildIds: 3935648574230183662
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 16256299879791503172
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
        SelfId: 7889368754357344195
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
        SelfId: 17037342185564855389
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
        SelfId: 17044695768228179006
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
        SelfId: 16788055428078617935
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
        SelfId: 11273395376644085846
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
        SelfId: 7965888832902886332
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
        SelfId: 2428244808458001689
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
        SelfId: 12931314611247562448
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
        SelfId: 3935648574230183662
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
        SelfId: 16139727374073365985
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
        SelfId: 4386262074747281772
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
    SelfId: 10025481783666219848
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 3935648574230183662
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
  ParentId: 16256299879791503172
  ChildIds: 2925758162708485369
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
    SelfId: 6640112942855652066
    SubobjectId: 17293412896128553977
    InstanceId: 11299696855387386535
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
  Id: 2925758162708485369
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
  ParentId: 3935648574230183662
  Collidable_v2 {
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
    SelfId: 4765425785333999861
    SubobjectId: 17436479173850151406
    InstanceId: 11299696855387386535
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
  Id: 2942869377243580332
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
  ParentId: 16256299879791503172
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 2942869377243580332
    SubobjectId: 2465003122981752641
    InstanceId: 11299696855387386535
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2428244808458001689
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
  ParentId: 16256299879791503172
  ChildIds: 9512026220061659575
  ChildIds: 12154643694888874387
  ChildIds: 2864279723060122959
  ChildIds: 17973526089678091604
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
    SelfId: 5407287982504993045
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 17973526089678091604
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
  ParentId: 2428244808458001689
  ChildIds: 16491551825933899471
  ChildIds: 8313751539402670872
  ChildIds: 3757672462114480403
  ChildIds: 9800021893809743550
  ChildIds: 5154725967460566596
  Collidable_v2 {
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
    SelfId: 10652872173327993176
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 5154725967460566596
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
  ParentId: 17973526089678091604
  Collidable_v2 {
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
    SelfId: 3256405961645603400
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 9800021893809743550
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
  ParentId: 17973526089678091604
  Collidable_v2 {
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
    SelfId: 16337084663127677618
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 3757672462114480403
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
  ParentId: 17973526089678091604
  Collidable_v2 {
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
    SelfId: 6817815680398155039
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 8313751539402670872
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
  ParentId: 17973526089678091604
  Collidable_v2 {
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
    SelfId: 1862292282398850836
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 16491551825933899471
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
  ParentId: 17973526089678091604
  Collidable_v2 {
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
    SelfId: 10260769017243216579
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 2864279723060122959
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
  ParentId: 2428244808458001689
  Collidable_v2 {
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
    SelfId: 5550588921881815363
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 12154643694888874387
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
  ParentId: 2428244808458001689
  Collidable_v2 {
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
    SelfId: 13985268961825738143
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 9512026220061659575
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
  ParentId: 2428244808458001689
  Collidable_v2 {
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
    SelfId: 17202010597598408123
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 12214387016595290747
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
  ParentId: 16256299879791503172
  ChildIds: 1711525076842137741
  ChildIds: 16139727374073365985
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
    SelfId: 14067671054054033015
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 16139727374073365985
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
  ParentId: 12214387016595290747
  Collidable_v2 {
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
    SelfId: 13061429047713282541
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 1711525076842137741
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
  ParentId: 12214387016595290747
  ChildIds: 12055148323330247875
  ChildIds: 15660727465354230543
  Collidable_v2 {
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
    SelfId: 9041221381130876033
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 15660727465354230543
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
  ParentId: 1711525076842137741
  Collidable_v2 {
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
    SelfId: 12965375878610929411
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 12055148323330247875
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
  ParentId: 1711525076842137741
  Collidable_v2 {
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
    SelfId: 14840536749903409359
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 12482595948365463872
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
  ParentId: 16256299879791503172
  Collidable_v2 {
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
    SelfId: 14376412423272561996
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 17037342185564855389
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
  ParentId: 16256299879791503172
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
    SelfId: 9712184669591527505
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 17932690265399514023
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
  ParentId: 16256299879791503172
  ChildIds: 5791118007607182800
  ChildIds: 2611248242814914804
  ChildIds: 7889368754357344195
  ChildIds: 16788055428078617935
  ChildIds: 17294153073833968089
  ChildIds: 15948483348341418673
  ChildIds: 4386262074747281772
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 10549091432220585899
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 716241625700548529
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4386262074747281772
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
  ParentId: 17932690265399514023
  ChildIds: 5654565246314537795
  ChildIds: 3606798909465292678
  ChildIds: 10905957087192686489
  ChildIds: 5440553697554333014
  ChildIds: 9587749786045536820
  Collidable_v2 {
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
    SelfId: 6226070434882116960
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 9587749786045536820
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
  ParentId: 4386262074747281772
  Collidable_v2 {
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
    SelfId: 17273230559664137784
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 5440553697554333014
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
  ParentId: 4386262074747281772
  Collidable_v2 {
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
    SelfId: 2393921380694901082
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 10905957087192686489
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
  ParentId: 4386262074747281772
  Collidable_v2 {
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
    SelfId: 18294165105327711125
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 3606798909465292678
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
  ParentId: 4386262074747281772
  Collidable_v2 {
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
    SelfId: 6392222449543435146
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 5654565246314537795
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
  ParentId: 4386262074747281772
  Collidable_v2 {
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
    SelfId: 2648500504555511631
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 15948483348341418673
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
  ParentId: 17932690265399514023
  Collidable_v2 {
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
    SelfId: 13253026178974799549
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 17294153073833968089
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
  ParentId: 17932690265399514023
  Collidable_v2 {
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
    SelfId: 11149079359602245077
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 16788055428078617935
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
  ParentId: 17932690265399514023
  ChildIds: 17932529219808000855
  ChildIds: 7307763252257281141
  ChildIds: 17044695768228179006
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
    SelfId: 9386477422101166403
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 17044695768228179006
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
  ParentId: 16788055428078617935
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
    SelfId: 9669998548962873394
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 7307763252257281141
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
  ParentId: 16788055428078617935
  ChildIds: 7965888832902886332
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
    SelfId: 1140030801859274873
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 7965888832902886332
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
  ParentId: 7307763252257281141
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
    SelfId: 303102082360856496
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 17932529219808000855
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
  ParentId: 16788055428078617935
  ChildIds: 11273395376644085846
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
    SelfId: 10548965641851127643
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 11273395376644085846
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
  ParentId: 17932529219808000855
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
    SelfId: 17783436546062902362
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 7889368754357344195
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
  ParentId: 17932690265399514023
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
    SelfId: 559848341868424143
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 2611248242814914804
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
  ParentId: 17932690265399514023
  Collidable_v2 {
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
    SelfId: 5658021406164200696
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 5791118007607182800
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
  ParentId: 17932690265399514023
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
    SelfId: 4244219517198858716
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 12931314611247562448
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
  ParentId: 16256299879791503172
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
    SelfId: 15694220260579934940
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 161264065571676763
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
  ParentId: 4822472811952923718
  ChildIds: 5823247142707755983
  ChildIds: 1979508527951222456
  ChildIds: 1141058046487894338
  ChildIds: 5664966126443955295
  ChildIds: 5343290106454474596
  ChildIds: 5917087788180754732
  ChildIds: 2466042043320160253
  ChildIds: 16549391657552215516
  ChildIds: 13985873142922254342
  ChildIds: 15364924903163624433
  ChildIds: 17612432025738720100
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 161264065571676763
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
        SelfId: 10293466614486848220
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
        SelfId: 1141058046487894338
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
        SelfId: 1094368330477070625
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
        SelfId: 819146313217867856
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
        SelfId: 9211606239886908745
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
        SelfId: 10171823945598154403
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
        SelfId: 13985873142922254342
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
        SelfId: 5823247142707755983
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
        SelfId: 15364924903163624433
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
        SelfId: 4350128440261165310
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
        SelfId: 16103240945604600947
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
    SelfId: 161264065571676763
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 17612432025738720100
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
  ParentId: 161264065571676763
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 17612432025738720100
    SubobjectId: 14892923694449335148
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15364924903163624433
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
  ParentId: 161264065571676763
  ChildIds: 14645556181572882918
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
    SelfId: 15364924903163624433
    SubobjectId: 17293412896128553977
    InstanceId: 11299696855387386535
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
  Id: 14645556181572882918
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
  ParentId: 15364924903163624433
  Collidable_v2 {
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
    SelfId: 14645556181572882918
    SubobjectId: 17436479173850151406
    InstanceId: 11299696855387386535
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
  Id: 13985873142922254342
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
  ParentId: 161264065571676763
  ChildIds: 7468260379373065384
  ChildIds: 5406833339272737932
  ChildIds: 14130854685670084688
  ChildIds: 1930879360960016459
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
    SelfId: 13985873142922254342
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 1930879360960016459
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
  ParentId: 13985873142922254342
  ChildIds: 538414687090496464
  ChildIds: 10431874637115278855
  ChildIds: 15528685833136907276
  ChildIds: 7756814501219492769
  ChildIds: 11829924572149695323
  Collidable_v2 {
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
    SelfId: 1930879360960016459
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 11829924572149695323
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
  ParentId: 1930879360960016459
  Collidable_v2 {
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
    SelfId: 11829924572149695323
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 7756814501219492769
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
  ParentId: 1930879360960016459
  Collidable_v2 {
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
    SelfId: 7756814501219492769
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 15528685833136907276
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
  ParentId: 1930879360960016459
  Collidable_v2 {
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
    SelfId: 15528685833136907276
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 10431874637115278855
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
  ParentId: 1930879360960016459
  Collidable_v2 {
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
    SelfId: 10431874637115278855
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 538414687090496464
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
  ParentId: 1930879360960016459
  Collidable_v2 {
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
    SelfId: 538414687090496464
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 14130854685670084688
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
  ParentId: 13985873142922254342
  Collidable_v2 {
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
    SelfId: 14130854685670084688
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 5406833339272737932
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
  ParentId: 13985873142922254342
  Collidable_v2 {
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
    SelfId: 5406833339272737932
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 7468260379373065384
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
  ParentId: 13985873142922254342
  Collidable_v2 {
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
    SelfId: 7468260379373065384
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 16549391657552215516
  Name: "StarRatingDisplay"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 161264065571676763
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 28
        }
        Overrides {
          Name: "UIY"
          Float: 20
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
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 161264065571676763
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 9731400169800858097
            OuterTemplateIds: 13074073657660917058
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 3
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 16549391657552215516
    SubobjectId: 10651971959710276465
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 2466042043320160253
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 161264065571676763
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 31.7388306
        }
        Overrides {
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 161264065571676763
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 9731400169800858097
            OuterTemplateIds: 13074073657660917058
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 2
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 2466042043320160253
    SubobjectId: 6071147121489439056
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 5917087788180754732
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 161264065571676763
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIY"
          Float: 20
        }
        Overrides {
          Name: "UIX"
          Float: -28
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 161264065571676763
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 9731400169800858097
            OuterTemplateIds: 13074073657660917058
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 5917087788180754732
    SubobjectId: 2622678239030900609
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 5343290106454474596
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
  ParentId: 161264065571676763
  ChildIds: 17610649804332109202
  ChildIds: 4350128440261165310
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
    SelfId: 5343290106454474596
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 4350128440261165310
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
  ParentId: 5343290106454474596
  Collidable_v2 {
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
    SelfId: 4350128440261165310
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 17610649804332109202
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
  ParentId: 5343290106454474596
  ChildIds: 4965618584461183452
  ChildIds: 4247742084145593872
  Collidable_v2 {
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
    SelfId: 17610649804332109202
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 4247742084145593872
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
  ParentId: 17610649804332109202
  Collidable_v2 {
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
    SelfId: 4247742084145593872
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 4965618584461183452
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
  ParentId: 17610649804332109202
  Collidable_v2 {
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
    SelfId: 4965618584461183452
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 5664966126443955295
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
  ParentId: 161264065571676763
  Collidable_v2 {
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
    SelfId: 5664966126443955295
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 1141058046487894338
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
  ParentId: 161264065571676763
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
    SelfId: 1141058046487894338
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 1979508527951222456
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
  ParentId: 161264065571676763
  ChildIds: 12969022676983513295
  ChildIds: 14382265464334407147
  ChildIds: 10293466614486848220
  ChildIds: 819146313217867856
  ChildIds: 1415320899456287942
  ChildIds: 4535533117544509358
  ChildIds: 16103240945604600947
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 1979508527951222456
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 9731400169800858097
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16103240945604600947
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
  ParentId: 1979508527951222456
  ChildIds: 12527918421616436828
  ChildIds: 15107600050197113497
  ChildIds: 8429797853523335814
  ChildIds: 12116280104342272073
  ChildIds: 7398167263180726059
  Collidable_v2 {
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
    SelfId: 16103240945604600947
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 7398167263180726059
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
  ParentId: 16103240945604600947
  Collidable_v2 {
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
    SelfId: 7398167263180726059
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 12116280104342272073
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
  ParentId: 16103240945604600947
  Collidable_v2 {
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
    SelfId: 12116280104342272073
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 8429797853523335814
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
  ParentId: 16103240945604600947
  Collidable_v2 {
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
    SelfId: 8429797853523335814
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 15107600050197113497
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
  ParentId: 16103240945604600947
  Collidable_v2 {
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
    SelfId: 15107600050197113497
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 12527918421616436828
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
  ParentId: 16103240945604600947
  Collidable_v2 {
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
    SelfId: 12527918421616436828
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 4535533117544509358
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
  ParentId: 1979508527951222456
  Collidable_v2 {
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
    SelfId: 4535533117544509358
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 1415320899456287942
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
  ParentId: 1979508527951222456
  Collidable_v2 {
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
    SelfId: 1415320899456287942
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 819146313217867856
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
  ParentId: 1979508527951222456
  ChildIds: 1979387135436406344
  ChildIds: 9714112362703688042
  ChildIds: 1094368330477070625
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
    SelfId: 819146313217867856
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 1094368330477070625
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
  ParentId: 819146313217867856
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
    SelfId: 1094368330477070625
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 9714112362703688042
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
  ParentId: 819146313217867856
  ChildIds: 10171823945598154403
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
    SelfId: 9714112362703688042
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 10171823945598154403
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
  ParentId: 9714112362703688042
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
    SelfId: 10171823945598154403
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 1979387135436406344
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
  ParentId: 819146313217867856
  ChildIds: 9211606239886908745
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
    SelfId: 1979387135436406344
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 9211606239886908745
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
  ParentId: 1979387135436406344
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
    SelfId: 9211606239886908745
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 10293466614486848220
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
  ParentId: 1979508527951222456
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
    SelfId: 10293466614486848220
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 14382265464334407147
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
  ParentId: 1979508527951222456
  Collidable_v2 {
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
    SelfId: 14382265464334407147
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 12969022676983513295
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
  ParentId: 1979508527951222456
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
    SelfId: 12969022676983513295
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 5823247142707755983
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
  ParentId: 161264065571676763
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
    SelfId: 5823247142707755983
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 17200809350298111018
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
  ParentId: 4822472811952923718
  ChildIds: 13571936419503707582
  ChildIds: 17866273045559146697
  ChildIds: 16383174153014933299
  ChildIds: 11679910283853425198
  ChildIds: 12010623168436769045
  ChildIds: 1787464575711031556
  ChildIds: 7560077428862726101
  ChildIds: 12644047777177738740
  ChildIds: 3359313333413836407
  ChildIds: 4157471042015401344
  ChildIds: 1793151408397966613
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 17200809350298111018
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
        SelfId: 7084405691473411245
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
        SelfId: 16383174153014933299
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
        SelfId: 16403968131574662992
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
        SelfId: 16705910485081386529
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
        SelfId: 10619297953357558584
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
        SelfId: 7034890710514096338
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
        SelfId: 3359313333413836407
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
        SelfId: 13571936419503707582
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
        SelfId: 4157471042015401344
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
        SelfId: 15048675818467536527
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
        SelfId: 3743428598465972738
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
    SelfId: 17200809350298111018
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 1793151408397966613
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
  ParentId: 17200809350298111018
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 1793151408397966613
    SubobjectId: 14892923694449335148
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4157471042015401344
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
  ParentId: 17200809350298111018
  ChildIds: 2861500899086204823
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
    SelfId: 4157471042015401344
    SubobjectId: 17293412896128553977
    InstanceId: 11299696855387386535
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
  Id: 2861500899086204823
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
  ParentId: 4157471042015401344
  Collidable_v2 {
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
    SelfId: 2861500899086204823
    SubobjectId: 17436479173850151406
    InstanceId: 11299696855387386535
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
  Id: 3359313333413836407
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
  ParentId: 17200809350298111018
  ChildIds: 10028943624730065625
  ChildIds: 12070085082812308221
  ChildIds: 2923822830578859553
  ChildIds: 17744952894973828666
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
    SelfId: 3359313333413836407
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 17744952894973828666
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
  ParentId: 3359313333413836407
  ChildIds: 17001569519857188257
  ChildIds: 8956558627003050102
  ChildIds: 4254099917306841725
  ChildIds: 9740403744622415312
  ChildIds: 5234649037842820394
  Collidable_v2 {
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
    SelfId: 17744952894973828666
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 5234649037842820394
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
  ParentId: 17744952894973828666
  Collidable_v2 {
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
    SelfId: 5234649037842820394
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 9740403744622415312
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
  ParentId: 17744952894973828666
  Collidable_v2 {
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
    SelfId: 9740403744622415312
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 4254099917306841725
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
  ParentId: 17744952894973828666
  Collidable_v2 {
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
    SelfId: 4254099917306841725
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 8956558627003050102
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
  ParentId: 17744952894973828666
  Collidable_v2 {
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
    SelfId: 8956558627003050102
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 17001569519857188257
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
  ParentId: 17744952894973828666
  Collidable_v2 {
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
    SelfId: 17001569519857188257
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 2923822830578859553
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
  ParentId: 3359313333413836407
  Collidable_v2 {
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
    SelfId: 2923822830578859553
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 12070085082812308221
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
  ParentId: 3359313333413836407
  Collidable_v2 {
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
    SelfId: 12070085082812308221
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 10028943624730065625
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
  ParentId: 3359313333413836407
  Collidable_v2 {
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
    SelfId: 10028943624730065625
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 12644047777177738740
  Name: "StarRatingDisplay"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17200809350298111018
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 28
        }
        Overrides {
          Name: "UIY"
          Float: 20
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
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 17200809350298111018
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 14834591730102082009
            OuterTemplateIds: 13074073657660917058
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 3
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 12644047777177738740
    SubobjectId: 10651971959710276465
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 7560077428862726101
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17200809350298111018
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 31.7388306
        }
        Overrides {
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 17200809350298111018
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 14834591730102082009
            OuterTemplateIds: 13074073657660917058
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 2
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 7560077428862726101
    SubobjectId: 6071147121489439056
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 1787464575711031556
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17200809350298111018
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIY"
          Float: 20
        }
        Overrides {
          Name: "UIX"
          Float: -28
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 17200809350298111018
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 14834591730102082009
            OuterTemplateIds: 13074073657660917058
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 1787464575711031556
    SubobjectId: 2622678239030900609
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 12010623168436769045
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
  ParentId: 17200809350298111018
  ChildIds: 1796083688800740323
  ChildIds: 15048675818467536527
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
    SelfId: 12010623168436769045
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 15048675818467536527
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
  ParentId: 12010623168436769045
  Collidable_v2 {
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
    SelfId: 15048675818467536527
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 1796083688800740323
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
  ParentId: 12010623168436769045
  ChildIds: 12132710467368970157
  ChildIds: 15454773664358748257
  Collidable_v2 {
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
    SelfId: 1796083688800740323
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 15454773664358748257
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
  ParentId: 1796083688800740323
  Collidable_v2 {
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
    SelfId: 15454773664358748257
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 12132710467368970157
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
  ParentId: 1796083688800740323
  Collidable_v2 {
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
    SelfId: 12132710467368970157
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 11679910283853425198
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
  ParentId: 17200809350298111018
  Collidable_v2 {
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
    SelfId: 11679910283853425198
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 16383174153014933299
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
  ParentId: 17200809350298111018
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
    SelfId: 16383174153014933299
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 17866273045559146697
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
  ParentId: 17200809350298111018
  ChildIds: 6877657717650321086
  ChildIds: 3103387052919929754
  ChildIds: 7084405691473411245
  ChildIds: 16705910485081386529
  ChildIds: 18387452856393575095
  ChildIds: 15165893182837834207
  ChildIds: 3743428598465972738
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 17866273045559146697
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 14834591730102082009
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3743428598465972738
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
  ParentId: 17866273045559146697
  ChildIds: 4707804525884786733
  ChildIds: 4404971353623479528
  ChildIds: 10985907130506687735
  ChildIds: 4948555108887025208
  ChildIds: 9953783958948573530
  Collidable_v2 {
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
    SelfId: 3743428598465972738
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 9953783958948573530
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
  ParentId: 3743428598465972738
  Collidable_v2 {
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
    SelfId: 9953783958948573530
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 4948555108887025208
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
  ParentId: 3743428598465972738
  Collidable_v2 {
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
    SelfId: 4948555108887025208
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 10985907130506687735
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
  ParentId: 3743428598465972738
  Collidable_v2 {
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
    SelfId: 10985907130506687735
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 4404971353623479528
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
  ParentId: 3743428598465972738
  Collidable_v2 {
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
    SelfId: 4404971353623479528
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 4707804525884786733
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
  ParentId: 3743428598465972738
  Collidable_v2 {
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
    SelfId: 4707804525884786733
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 15165893182837834207
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
  ParentId: 17866273045559146697
  Collidable_v2 {
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
    SelfId: 15165893182837834207
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 18387452856393575095
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
  ParentId: 17866273045559146697
  Collidable_v2 {
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
    SelfId: 18387452856393575095
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 16705910485081386529
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
  ParentId: 17866273045559146697
  ChildIds: 17866151582236266553
  ChildIds: 7657831931689369371
  ChildIds: 16403968131574662992
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
    SelfId: 16705910485081386529
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 16403968131574662992
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
  ParentId: 16705910485081386529
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
    SelfId: 16403968131574662992
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 7657831931689369371
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
  ParentId: 16705910485081386529
  ChildIds: 7034890710514096338
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
    SelfId: 7657831931689369371
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 7034890710514096338
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
  ParentId: 7657831931689369371
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
    SelfId: 7034890710514096338
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 17866151582236266553
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
  ParentId: 16705910485081386529
  ChildIds: 10619297953357558584
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
    SelfId: 17866151582236266553
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 10619297953357558584
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
  ParentId: 17866151582236266553
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
    SelfId: 10619297953357558584
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 7084405691473411245
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
  ParentId: 17866273045559146697
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
    SelfId: 7084405691473411245
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 3103387052919929754
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
  ParentId: 17866273045559146697
  Collidable_v2 {
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
    SelfId: 3103387052919929754
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 6877657717650321086
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
  ParentId: 17866273045559146697
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
    SelfId: 6877657717650321086
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 13571936419503707582
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
  ParentId: 17200809350298111018
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
    SelfId: 13571936419503707582
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 12983403434045560237
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
  ParentId: 4822472811952923718
  ChildIds: 16628107990135163961
  ChildIds: 12495831962685251918
  ChildIds: 13386780898745331380
  ChildIds: 17909897484342145961
  ChildIds: 18173592918733080722
  ChildIds: 2354678956080393566
  ChildIds: 5803191424272069519
  ChildIds: 10888428401121870254
  ChildIds: 8360213591625740272
  ChildIds: 7145402505796439047
  ChildIds: 4789949764255777938
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 12983403434045560237
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
        SelfId: 4092365971487253802
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
        SelfId: 13386780898745331380
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
        SelfId: 13347902114328075991
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
        SelfId: 13640432716756039590
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
        SelfId: 14538903154999372479
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
        SelfId: 4268057359089172821
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
        SelfId: 8360213591625740272
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
        SelfId: 16628107990135163961
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
        SelfId: 7145402505796439047
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
        SelfId: 9965479399029962504
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
        SelfId: 7595470443486221189
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
    SelfId: 12983403434045560237
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 4789949764255777938
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
  ParentId: 12983403434045560237
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 4789949764255777938
    SubobjectId: 14892923694449335148
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7145402505796439047
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
  ParentId: 12983403434045560237
  ChildIds: 9020089594562848272
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
    SelfId: 7145402505796439047
    SubobjectId: 17293412896128553977
    InstanceId: 11299696855387386535
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
  Id: 9020089594562848272
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
  ParentId: 7145402505796439047
  Collidable_v2 {
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
    SelfId: 9020089594562848272
    SubobjectId: 17436479173850151406
    InstanceId: 11299696855387386535
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
  Id: 8360213591625740272
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
  ParentId: 12983403434045560237
  ChildIds: 15111313211147150174
  ChildIds: 18237980028336276346
  ChildIds: 8216919799057852326
  ChildIds: 12455092888987469757
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
    SelfId: 8360213591625740272
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 12455092888987469757
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
  ParentId: 8360213591625740272
  ChildIds: 12784146200128513062
  ChildIds: 2798928637470568945
  ChildIds: 7030757902536414202
  ChildIds: 15976240142154814551
  ChildIds: 1314745199059399853
  Collidable_v2 {
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
    SelfId: 12455092888987469757
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 1314745199059399853
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
  ParentId: 12455092888987469757
  Collidable_v2 {
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
    SelfId: 1314745199059399853
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 15976240142154814551
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
  ParentId: 12455092888987469757
  Collidable_v2 {
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
    SelfId: 15976240142154814551
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 7030757902536414202
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
  ParentId: 12455092888987469757
  Collidable_v2 {
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
    SelfId: 7030757902536414202
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 2798928637470568945
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
  ParentId: 12455092888987469757
  Collidable_v2 {
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
    SelfId: 2798928637470568945
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 12784146200128513062
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
  ParentId: 12455092888987469757
  Collidable_v2 {
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
    SelfId: 12784146200128513062
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 8216919799057852326
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
  ParentId: 8360213591625740272
  Collidable_v2 {
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
    SelfId: 8216919799057852326
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 18237980028336276346
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
  ParentId: 8360213591625740272
  Collidable_v2 {
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
    SelfId: 18237980028336276346
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 15111313211147150174
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
  ParentId: 8360213591625740272
  Collidable_v2 {
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
    SelfId: 15111313211147150174
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 10888428401121870254
  Name: "StarRatingDisplay"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12983403434045560237
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 28
        }
        Overrides {
          Name: "UIY"
          Float: 20
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
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 12983403434045560237
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 17707264313769936259
            OuterTemplateIds: 13074073657660917058
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 3
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 10888428401121870254
    SubobjectId: 10651971959710276465
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 5803191424272069519
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12983403434045560237
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 31.7388306
        }
        Overrides {
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 12983403434045560237
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 17707264313769936259
            OuterTemplateIds: 13074073657660917058
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 2
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 5803191424272069519
    SubobjectId: 6071147121489439056
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 2354678956080393566
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12983403434045560237
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIY"
          Float: 20
        }
        Overrides {
          Name: "UIX"
          Float: -28
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 12983403434045560237
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 17707264313769936259
            OuterTemplateIds: 13074073657660917058
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 2354678956080393566
    SubobjectId: 2622678239030900609
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 18173592918733080722
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
  ParentId: 12983403434045560237
  ChildIds: 4789337150442486372
  ChildIds: 9965479399029962504
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
    SelfId: 18173592918733080722
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 9965479399029962504
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
  ParentId: 18173592918733080722
  Collidable_v2 {
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
    SelfId: 9965479399029962504
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 4789337150442486372
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
  ParentId: 18173592918733080722
  ChildIds: 17508825167417261610
  ChildIds: 10151604603507542502
  Collidable_v2 {
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
    SelfId: 4789337150442486372
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 10151604603507542502
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
  ParentId: 4789337150442486372
  Collidable_v2 {
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
    SelfId: 10151604603507542502
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 17508825167417261610
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
  ParentId: 4789337150442486372
  Collidable_v2 {
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
    SelfId: 17508825167417261610
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 17909897484342145961
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
  ParentId: 12983403434045560237
  Collidable_v2 {
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
    SelfId: 17909897484342145961
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 13386780898745331380
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
  ParentId: 12983403434045560237
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
    SelfId: 13386780898745331380
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 12495831962685251918
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
  ParentId: 12983403434045560237
  ChildIds: 426017990826702649
  ChildIds: 8181543328231547421
  ChildIds: 4092365971487253802
  ChildIds: 13640432716756039590
  ChildIds: 11940879524808848176
  ChildIds: 9863955368318769240
  ChildIds: 7595470443486221189
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 12495831962685251918
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 17707264313769936259
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7595470443486221189
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
  ParentId: 12495831962685251918
  ChildIds: 2003722639255081386
  ChildIds: 7474363779549764975
  ChildIds: 14046186339941739888
  ChildIds: 2177227623950979007
  ChildIds: 15040102594934450397
  Collidable_v2 {
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
    SelfId: 7595470443486221189
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 15040102594934450397
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
  ParentId: 7595470443486221189
  Collidable_v2 {
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
    SelfId: 15040102594934450397
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 2177227623950979007
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
  ParentId: 7595470443486221189
  Collidable_v2 {
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
    SelfId: 2177227623950979007
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 14046186339941739888
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
  ParentId: 7595470443486221189
  Collidable_v2 {
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
    SelfId: 14046186339941739888
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 7474363779549764975
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
  ParentId: 7595470443486221189
  Collidable_v2 {
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
    SelfId: 7474363779549764975
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 2003722639255081386
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
  ParentId: 7595470443486221189
  Collidable_v2 {
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
    SelfId: 2003722639255081386
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 9863955368318769240
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
  ParentId: 12495831962685251918
  Collidable_v2 {
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
    SelfId: 9863955368318769240
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 11940879524808848176
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
  ParentId: 12495831962685251918
  Collidable_v2 {
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
    SelfId: 11940879524808848176
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 13640432716756039590
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
  ParentId: 12495831962685251918
  ChildIds: 12495956722312677822
  ChildIds: 3521192360033592988
  ChildIds: 13347902114328075991
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
    SelfId: 13640432716756039590
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 13347902114328075991
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
  ParentId: 13640432716756039590
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
    SelfId: 13347902114328075991
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 3521192360033592988
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
  ParentId: 13640432716756039590
  ChildIds: 4268057359089172821
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
    SelfId: 3521192360033592988
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 4268057359089172821
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
  ParentId: 3521192360033592988
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
    SelfId: 4268057359089172821
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 12495956722312677822
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
  ParentId: 13640432716756039590
  ChildIds: 14538903154999372479
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
    SelfId: 12495956722312677822
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 14538903154999372479
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
  ParentId: 12495956722312677822
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
    SelfId: 14538903154999372479
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 4092365971487253802
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
  ParentId: 12495831962685251918
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
    SelfId: 4092365971487253802
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 8181543328231547421
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
  ParentId: 12495831962685251918
  Collidable_v2 {
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
    SelfId: 8181543328231547421
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 426017990826702649
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
  ParentId: 12495831962685251918
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
    SelfId: 426017990826702649
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 16628107990135163961
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
  ParentId: 12983403434045560237
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
    SelfId: 16628107990135163961
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 9016501912282629236
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
  ParentId: 4822472811952923718
  ChildIds: 3444607253459803616
  ChildIds: 7234259721202462871
  ChildIds: 8126809681387650925
  ChildIds: 3567942491988812400
  ChildIds: 3835605000847890763
  ChildIds: 14073275844613976395
  ChildIds: 12928358999641501594
  ChildIds: 8428669396744641979
  ChildIds: 13621750473716235817
  ChildIds: 12260713180435389918
  ChildIds: 10049234991512900939
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 9016501912282629236
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
        SelfId: 17421151783044461811
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
        SelfId: 8126809681387650925
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
        SelfId: 8084553234914873102
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
        SelfId: 8377769928316413567
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
        SelfId: 57371926085565286
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
        SelfId: 17452701569591234700
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
        SelfId: 13621750473716235817
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
        SelfId: 3444607253459803616
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
        SelfId: 12260713180435389918
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
        SelfId: 4846755708131387089
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
        SelfId: 11558440296360067676
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
    SelfId: 9016501912282629236
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 10049234991512900939
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
  ParentId: 9016501912282629236
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 10049234991512900939
    SubobjectId: 14892923694449335148
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12260713180435389918
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
  ParentId: 9016501912282629236
  ChildIds: 12980103823811835849
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
    SelfId: 12260713180435389918
    SubobjectId: 17293412896128553977
    InstanceId: 11299696855387386535
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
  Id: 12980103823811835849
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
  ParentId: 12260713180435389918
  Collidable_v2 {
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
    SelfId: 12980103823811835849
    SubobjectId: 17436479173850151406
    InstanceId: 11299696855387386535
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
  Id: 13621750473716235817
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
  ParentId: 9016501912282629236
  ChildIds: 1781586349790605959
  ChildIds: 3752921399686386339
  ChildIds: 13476741579390875263
  ChildIds: 7338119627147597412
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
    SelfId: 13621750473716235817
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 7338119627147597412
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
  ParentId: 13621750473716235817
  ChildIds: 8675398710440637951
  ChildIds: 17282729398050103336
  ChildIds: 12149894970007339555
  ChildIds: 1493046452670858638
  ChildIds: 15794605337882273140
  Collidable_v2 {
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
    SelfId: 7338119627147597412
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 15794605337882273140
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
  ParentId: 7338119627147597412
  Collidable_v2 {
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
    SelfId: 15794605337882273140
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 1493046452670858638
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
  ParentId: 7338119627147597412
  Collidable_v2 {
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
    SelfId: 1493046452670858638
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 12149894970007339555
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
  ParentId: 7338119627147597412
  Collidable_v2 {
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
    SelfId: 12149894970007339555
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 17282729398050103336
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
  ParentId: 7338119627147597412
  Collidable_v2 {
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
    SelfId: 17282729398050103336
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 8675398710440637951
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
  ParentId: 7338119627147597412
  Collidable_v2 {
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
    SelfId: 8675398710440637951
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 13476741579390875263
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
  ParentId: 13621750473716235817
  Collidable_v2 {
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
    SelfId: 13476741579390875263
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 3752921399686386339
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
  ParentId: 13621750473716235817
  Collidable_v2 {
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
    SelfId: 3752921399686386339
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 1781586349790605959
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
  ParentId: 13621750473716235817
  Collidable_v2 {
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
    SelfId: 1781586349790605959
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 8428669396744641979
  Name: "StarRatingDisplay"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9016501912282629236
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 28
        }
        Overrides {
          Name: "UIY"
          Float: 20
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
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 9016501912282629236
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 1612014657604295062
            OuterTemplateIds: 13074073657660917058
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 3
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 8428669396744641979
    SubobjectId: 10651971959710276465
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 12928358999641501594
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9016501912282629236
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 31.7388306
        }
        Overrides {
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 9016501912282629236
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 1612014657604295062
            OuterTemplateIds: 13074073657660917058
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 2
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 12928358999641501594
    SubobjectId: 6071147121489439056
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 14073275844613976395
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9016501912282629236
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIY"
          Float: 20
        }
        Overrides {
          Name: "UIX"
          Float: -28
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 9016501912282629236
            SubObjectId: 4105394437550983763
            InstanceId: 17398752180854480732
            TemplateId: 4005089717090586234
            NestedInstanceIds: 1612014657604295062
            OuterTemplateIds: 13074073657660917058
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 14073275844613976395
    SubobjectId: 2622678239030900609
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 3835605000847890763
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
  ParentId: 9016501912282629236
  ChildIds: 10049915431316581309
  ChildIds: 4846755708131387089
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
    SelfId: 3835605000847890763
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 4846755708131387089
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
  ParentId: 3835605000847890763
  Collidable_v2 {
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
    SelfId: 4846755708131387089
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 10049915431316581309
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
  ParentId: 3835605000847890763
  ChildIds: 4320231516521164787
  ChildIds: 5039214124394502207
  Collidable_v2 {
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
    SelfId: 10049915431316581309
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 5039214124394502207
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
  ParentId: 10049915431316581309
  Collidable_v2 {
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
    SelfId: 5039214124394502207
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 4320231516521164787
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
  ParentId: 10049915431316581309
  Collidable_v2 {
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
    SelfId: 4320231516521164787
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 3567942491988812400
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
  ParentId: 9016501912282629236
  Collidable_v2 {
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
    SelfId: 3567942491988812400
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 8126809681387650925
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
  ParentId: 9016501912282629236
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
    SelfId: 8126809681387650925
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 7234259721202462871
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
  ParentId: 9016501912282629236
  ChildIds: 14764727086304552672
  ChildIds: 13296299946771133380
  ChildIds: 17421151783044461811
  ChildIds: 8377769928316413567
  ChildIds: 7834533529623241449
  ChildIds: 4750333543535692161
  ChildIds: 11558440296360067676
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 7234259721202462871
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 1612014657604295062
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11558440296360067676
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
  ParentId: 7234259721202462871
  ChildIds: 15186695439624093811
  ChildIds: 12588997282839383222
  ChildIds: 856044687306800297
  ChildIds: 15508229880245902950
  ChildIds: 1852793135027747076
  Collidable_v2 {
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
    SelfId: 11558440296360067676
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 1852793135027747076
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
  ParentId: 11558440296360067676
  Collidable_v2 {
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
    SelfId: 1852793135027747076
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 15508229880245902950
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
  ParentId: 11558440296360067676
  Collidable_v2 {
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
    SelfId: 15508229880245902950
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 856044687306800297
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
  ParentId: 11558440296360067676
  Collidable_v2 {
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
    SelfId: 856044687306800297
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 12588997282839383222
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
  ParentId: 11558440296360067676
  Collidable_v2 {
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
    SelfId: 12588997282839383222
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 15186695439624093811
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
  ParentId: 11558440296360067676
  Collidable_v2 {
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
    SelfId: 15186695439624093811
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 4750333543535692161
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
  ParentId: 7234259721202462871
  Collidable_v2 {
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
    SelfId: 4750333543535692161
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 7834533529623241449
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
  ParentId: 7234259721202462871
  Collidable_v2 {
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
    SelfId: 7834533529623241449
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 8377769928316413567
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
  ParentId: 7234259721202462871
  ChildIds: 7234419803672926311
  ChildIds: 18001615443390691141
  ChildIds: 8084553234914873102
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
    SelfId: 8377769928316413567
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 8084553234914873102
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
  ParentId: 8377769928316413567
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
    SelfId: 8084553234914873102
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 18001615443390691141
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
  ParentId: 8377769928316413567
  ChildIds: 17452701569591234700
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
    SelfId: 18001615443390691141
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 17452701569591234700
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
  ParentId: 18001615443390691141
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
    SelfId: 17452701569591234700
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 7234419803672926311
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
  ParentId: 8377769928316413567
  ChildIds: 57371926085565286
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
    SelfId: 7234419803672926311
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 57371926085565286
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
  ParentId: 7234419803672926311
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
    SelfId: 57371926085565286
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 17421151783044461811
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
  ParentId: 7234259721202462871
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
    SelfId: 17421151783044461811
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 13296299946771133380
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
  ParentId: 7234259721202462871
  Collidable_v2 {
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
    SelfId: 13296299946771133380
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 14764727086304552672
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
  ParentId: 7234259721202462871
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
    SelfId: 14764727086304552672
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 3444607253459803616
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
  ParentId: 9016501912282629236
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
    SelfId: 3444607253459803616
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 5192074342337134283
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
  ParentId: 4822472811952923718
  ChildIds: 1936913596187715423
  ChildIds: 5857415442085202472
  ChildIds: 5036364637608658386
  ChildIds: 337515324890142927
  ChildIds: 6252654696080372
  ChildIds: 8871646436381542887
  ChildIds: 809232571341199158
  ChildIds: 14747209156457358615
  ChildIds: 9810763372554962070
  ChildIds: 11460030483641739105
  ChildIds: 13716545373246156788
  UnregisteredParameters {
    Overrides {
      Name: "cs:Panel"
      ObjectReference {
        SelfId: 5192074342337134283
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
        SelfId: 14188772674374143564
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
        SelfId: 5036364637608658386
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
        SelfId: 4980667800994854321
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
        SelfId: 4715033447585799360
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
        SelfId: 3884121422191706585
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
        SelfId: 14346369682573060659
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
        SelfId: 9810763372554962070
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
        SelfId: 1936913596187715423
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
        SelfId: 11460030483641739105
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
        SelfId: 8534279579267013742
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
        SelfId: 10757741172396554467
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
    SelfId: 5192074342337134283
    SubobjectId: 4105394437550983763
    InstanceId: 11299696855387386535
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
  Id: 13716545373246156788
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
  ParentId: 5192074342337134283
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 13716545373246156788
    SubobjectId: 14892923694449335148
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11460030483641739105
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
  ParentId: 5192074342337134283
  ChildIds: 9299492374771027318
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
    SelfId: 11460030483641739105
    SubobjectId: 17293412896128553977
    InstanceId: 11299696855387386535
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
  Id: 9299492374771027318
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
  ParentId: 11460030483641739105
  Collidable_v2 {
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
    SelfId: 9299492374771027318
    SubobjectId: 17436479173850151406
    InstanceId: 11299696855387386535
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
  Id: 9810763372554962070
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
  ParentId: 5192074342337134283
  ChildIds: 3284689782237825080
  ChildIds: 88372756014753820
  ChildIds: 10244556367277083840
  ChildIds: 5835192077627190491
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
    SelfId: 9810763372554962070
    SubobjectId: 17929510888674865166
    InstanceId: 11299696855387386535
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
  Id: 5835192077627190491
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
  ParentId: 9810763372554962070
  ChildIds: 5569208385550815040
  ChildIds: 15777356879609076375
  ChildIds: 11363111508944353436
  ChildIds: 2419740843960876849
  ChildIds: 17157955314547826635
  Collidable_v2 {
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
    SelfId: 5835192077627190491
    SubobjectId: 2309917941449070659
    InstanceId: 11299696855387386535
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
  Id: 17157955314547826635
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
  ParentId: 5835192077627190491
  Collidable_v2 {
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
    SelfId: 17157955314547826635
    SubobjectId: 11450950803194243923
    InstanceId: 11299696855387386535
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
  Id: 2419740843960876849
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
  ParentId: 5835192077627190491
  Collidable_v2 {
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
    SelfId: 2419740843960876849
    SubobjectId: 5863716523850419113
    InstanceId: 11299696855387386535
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
  Id: 11363111508944353436
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
  ParentId: 5835192077627190491
  Collidable_v2 {
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
    SelfId: 11363111508944353436
    SubobjectId: 17097176910942440452
    InstanceId: 11299696855387386535
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
  Id: 15777356879609076375
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
  ParentId: 5835192077627190491
  Collidable_v2 {
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
    SelfId: 15777356879609076375
    SubobjectId: 12250019801649507855
    InstanceId: 11299696855387386535
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
  Id: 5569208385550815040
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
  ParentId: 5835192077627190491
  Collidable_v2 {
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
    SelfId: 5569208385550815040
    SubobjectId: 4448839427109288920
    InstanceId: 11299696855387386535
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
  Id: 10244556367277083840
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
  ParentId: 9810763372554962070
  Collidable_v2 {
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
    SelfId: 10244556367277083840
    SubobjectId: 18365476809996220504
    InstanceId: 11299696855387386535
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
  Id: 88372756014753820
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
  ParentId: 9810763372554962070
  Collidable_v2 {
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
    SelfId: 88372756014753820
    SubobjectId: 8200290674783755396
    InstanceId: 11299696855387386535
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
  Id: 3284689782237825080
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
  ParentId: 9810763372554962070
  Collidable_v2 {
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
    SelfId: 3284689782237825080
    SubobjectId: 6728713823229836448
    InstanceId: 11299696855387386535
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
  Id: 14747209156457358615
  Name: "StarRatingDisplay"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5192074342337134283
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 28
        }
        Overrides {
          Name: "UIY"
          Float: 20
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
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 5192074342337134283
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 3
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 14747209156457358615
    SubobjectId: 10651971959710276465
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 809232571341199158
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5192074342337134283
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIX"
          Float: 0
        }
        Overrides {
          Name: "UIY"
          Float: 31.7388306
        }
        Overrides {
          Name: "Width"
          Int: 16
        }
        Overrides {
          Name: "Height"
          Int: 16
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 5192074342337134283
          }
        }
        Overrides {
          Name: "cs:Offset"
          Int: 2
        }
      }
    }
    ParameterOverrideMap {
      key: 9183470350948336639
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 809232571341199158
    SubobjectId: 6071147121489439056
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 8871646436381542887
  Name: "StarRatingDisplay"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5192074342337134283
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1582364714300165545
      value {
        Overrides {
          Name: "Name"
          String: "StarRatingDisplay"
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
          Name: "UIY"
          Float: 20
        }
        Overrides {
          Name: "UIX"
          Float: -28
        }
      }
    }
    ParameterOverrideMap {
      key: 2784576212819582176
      value {
        Overrides {
          Name: "cs:Root"
          ObjectReference {
            SelfId: 5192074342337134283
          }
        }
      }
    }
    TemplateAsset {
      Id: 7516794967106253148
    }
  }
  InstanceHistory {
    SelfId: 8871646436381542887
    SubobjectId: 2622678239030900609
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
}
Objects {
  Id: 6252654696080372
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
  ParentId: 5192074342337134283
  ChildIds: 13714728027563708674
  ChildIds: 8534279579267013742
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
    SelfId: 6252654696080372
    SubobjectId: 8134214131070523244
    InstanceId: 11299696855387386535
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
  Id: 8534279579267013742
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
  ParentId: 6252654696080372
  Collidable_v2 {
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
    SelfId: 8534279579267013742
    SubobjectId: 476084591232248054
    InstanceId: 11299696855387386535
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
  Id: 13714728027563708674
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
  ParentId: 6252654696080372
  ChildIds: 1069731355369198924
  ChildIds: 8125085405423493760
  Collidable_v2 {
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
    SelfId: 13714728027563708674
    SubobjectId: 14888968659903751578
    InstanceId: 11299696855387386535
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
  Id: 8125085405423493760
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
  ParentId: 13714728027563708674
  Collidable_v2 {
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
    SelfId: 8125085405423493760
    SubobjectId: 15380273332065816
    InstanceId: 11299696855387386535
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
  Id: 1069731355369198924
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
  ParentId: 13714728027563708674
  Collidable_v2 {
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
    SelfId: 1069731355369198924
    SubobjectId: 9091867587311772116
    InstanceId: 11299696855387386535
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
  Id: 337515324890142927
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
  ParentId: 5192074342337134283
  Collidable_v2 {
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
    SelfId: 337515324890142927
    SubobjectId: 8384477650364148823
    InstanceId: 11299696855387386535
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
  Id: 5036364637608658386
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
  ParentId: 5192074342337134283
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
    SelfId: 5036364637608658386
    SubobjectId: 3823693050672787786
    InstanceId: 11299696855387386535
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
  Id: 5857415442085202472
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
  ParentId: 5192074342337134283
  ChildIds: 17999235841894210655
  ChildIds: 10207702083868985723
  ChildIds: 14188772674374143564
  ChildIds: 4715033447585799360
  ChildIds: 6455103096615114838
  ChildIds: 8412842422681301822
  ChildIds: 10757741172396554467
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    SelfId: 5857415442085202472
    SubobjectId: 2431106150639058608
    InstanceId: 11299696855387386535
    TemplateId: 4005089717090586234
    NestedInstanceIds: 7900543579759898107
    NestedInstanceIds: 12542309962507280698
    OuterTemplateIds: 5338087018861399484
    OuterTemplateIds: 13074073657660917058
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10757741172396554467
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
  ParentId: 5857415442085202472
  ChildIds: 16712017806266661580
  ChildIds: 11212242306015950345
  ChildIds: 4525467501451544086
  ChildIds: 16290843957522851033
  ChildIds: 3214032082930779067
  Collidable_v2 {
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
    SelfId: 10757741172396554467
    SubobjectId: 16555112379976879227
    InstanceId: 11299696855387386535
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
  Id: 3214032082930779067
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
  ParentId: 10757741172396554467
  Collidable_v2 {
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
    SelfId: 3214032082930779067
    SubobjectId: 6660321650312460067
    InstanceId: 11299696855387386535
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
  Id: 16290843957522851033
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
  ParentId: 10757741172396554467
  Collidable_v2 {
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
    SelfId: 16290843957522851033
    SubobjectId: 10583470265802166337
    InstanceId: 11299696855387386535
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
  Id: 4525467501451544086
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
  ParentId: 10757741172396554467
  Collidable_v2 {
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
    SelfId: 4525467501451544086
    SubobjectId: 5636552701285495438
    InstanceId: 11299696855387386535
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
  Id: 11212242306015950345
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
  ParentId: 10757741172396554467
  Collidable_v2 {
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
    SelfId: 11212242306015950345
    SubobjectId: 16964317208116462225
    InstanceId: 11299696855387386535
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
  Id: 16712017806266661580
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
  ParentId: 10757741172396554467
  Collidable_v2 {
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
    SelfId: 16712017806266661580
    SubobjectId: 10887942209865059924
    InstanceId: 11299696855387386535
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
  Id: 8412842422681301822
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
  ParentId: 5857415442085202472
  Collidable_v2 {
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
    SelfId: 8412842422681301822
    SubobjectId: 303102346340763558
    InstanceId: 11299696855387386535
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
  Id: 6455103096615114838
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
  ParentId: 5857415442085202472
  Collidable_v2 {
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
    SelfId: 6455103096615114838
    SubobjectId: 2981836461218688206
    InstanceId: 11299696855387386535
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
  Id: 4715033447585799360
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
  ParentId: 5857415442085202472
  ChildIds: 5857259897064383192
  ChildIds: 14771364167540329978
  ChildIds: 4980667800994854321
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
    SelfId: 4715033447585799360
    SubobjectId: 3574617400489027672
    InstanceId: 11299696855387386535
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
  Id: 4980667800994854321
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
  ParentId: 4715033447585799360
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
    SelfId: 4980667800994854321
    SubobjectId: 3885019469516226857
    InstanceId: 11299696855387386535
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
  Id: 14771364167540329978
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
  ParentId: 4715033447585799360
  ChildIds: 14346369682573060659
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
    SelfId: 14771364167540329978
    SubobjectId: 13549874514322995554
    InstanceId: 11299696855387386535
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
  Id: 14346369682573060659
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
  ParentId: 14771364167540329978
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
    SelfId: 14346369682573060659
    SubobjectId: 13253026425810230955
    InstanceId: 11299696855387386535
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
  Id: 5857259897064383192
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
  ParentId: 4715033447585799360
  ChildIds: 3884121422191706585
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
    SelfId: 5857259897064383192
    SubobjectId: 2431262864981497408
    InstanceId: 11299696855387386535
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
  Id: 3884121422191706585
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
  ParentId: 5857259897064383192
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
    SelfId: 3884121422191706585
    SubobjectId: 4977486650499347777
    InstanceId: 11299696855387386535
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
  Id: 14188772674374143564
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
  ParentId: 5857415442085202472
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
    SelfId: 14188772674374143564
    SubobjectId: 12978278961794317012
    InstanceId: 11299696855387386535
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
  Id: 10207702083868985723
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
  ParentId: 5857415442085202472
  Collidable_v2 {
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
    SelfId: 10207702083868985723
    SubobjectId: 18256946995895565795
    InstanceId: 11299696855387386535
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
  Id: 17999235841894210655
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
  ParentId: 5857415442085202472
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
    SelfId: 17999235841894210655
    SubobjectId: 9889517496047675591
    InstanceId: 11299696855387386535
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
  Id: 1936913596187715423
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
  ParentId: 5192074342337134283
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
    SelfId: 1936913596187715423
    SubobjectId: 7644282853577937863
    InstanceId: 11299696855387386535
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
  Id: 4136050901127714853
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
  ParentId: 6299221803995200577
  UnregisteredParameters {
    Overrides {
      Name: "cs:AbilityDisplay"
      ObjectReference {
        SelfId: 4822472811952923718
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15139843095149852760
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
  ParentId: 6299221803995200577
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 4822472811952923718
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
    SelfId: 15139843095149852760
    SubobjectId: 15634765386635440309
    InstanceId: 11299696855387386535
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
  Id: 280136214398602817
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
  ParentId: 11749149520871255776
  ChildIds: 16449341060293098616
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
    SelfId: 280136214398602817
    SubobjectId: 648906731283760812
    InstanceId: 11299696855387386535
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
  Id: 16449341060293098616
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
  ParentId: 280136214398602817
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
    SelfId: 16449341060293098616
    SubobjectId: 17196313300345861269
    InstanceId: 11299696855387386535
    TemplateId: 13074073657660917058
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
