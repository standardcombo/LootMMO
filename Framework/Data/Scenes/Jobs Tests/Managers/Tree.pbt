Name: "Managers"
RootId: 6495908099588717870
Objects {
  Id: 13394148982665537562
  Name: "Game Loader"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6495908099588717870
  ChildIds: 3524493644912865273
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsGroup: true
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3524493644912865273
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
  ParentId: 13394148982665537562
  ChildIds: 186417722500139875
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
  Id: 186417722500139875
  Name: "GameInitializationClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3524493644912865273
  UnregisteredParameters {
    Overrides {
      Name: "cs:APIReplicator"
      AssetReference {
        Id: 15278727315449067552
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
      Id: 14429951298688137983
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9292905767341303260
  Name: "Currency (Coins)"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6495908099588717870
  ChildIds: 9411896096021865014
  ChildIds: 10355837752645117446
  ChildIds: 12585063226046881420
  UnregisteredParameters {
    Overrides {
      Name: "cs:CurrencyId"
      String: "coins"
    }
    Overrides {
      Name: "cs:Name"
      String: "Coins"
    }
    Overrides {
      Name: "cs:StorageKey"
      NetReference {
        Type {
          Value: "mc:enetreferencetype:unknown"
        }
      }
    }
    Overrides {
      Name: "cs:StartingAmount"
      Int: 1000
    }
    Overrides {
      Name: "cs:MaxAmount"
      Int: 0
    }
    Overrides {
      Name: "cs:VerboseLogs"
      Bool: false
    }
    Overrides {
      Name: "cs:DropTemplate"
      AssetReference {
        Id: 18119685549656626836
      }
    }
    Overrides {
      Name: "cs:DropItemPickupTemplate"
      AssetReference {
        Id: 8040246261067913342
      }
    }
    Overrides {
      Name: "cs:IconCameraId"
      String: ""
    }
    Overrides {
      Name: "cs:IconAsset"
      AssetReference {
        Id: 17707168052484183952
      }
    }
    Overrides {
      Name: "cs:IsKitbashed2DIcon"
      Bool: false
    }
    Overrides {
      Name: "cs:Is3DIcon"
      Bool: false
    }
    Overrides {
      Name: "cs:IsImageIcon"
      Bool: true
    }
    Overrides {
      Name: "cs:IsImageIcon:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:IsImageIcon:subcategory"
      String: "Icon"
    }
    Overrides {
      Name: "cs:Is3DIcon:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:Is3DIcon:subcategory"
      String: "Icon"
    }
    Overrides {
      Name: "cs:IsKitbashed2DIcon:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:IsKitbashed2DIcon:subcategory"
      String: "Icon"
    }
    Overrides {
      Name: "cs:IconAsset:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:IconAsset:subcategory"
      String: "Icon"
    }
    Overrides {
      Name: "cs:IconCameraId:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:IconCameraId:subcategory"
      String: "Icon"
    }
    Overrides {
      Name: "cs:CurrencyId:tooltip"
      String: "The id of the Currency. Must be unique within a scene."
    }
    Overrides {
      Name: "cs:Name:tooltip"
      String: "The name of the Currency."
    }
    Overrides {
      Name: "cs:StorageKey:tooltip"
      String: "An optional Shared Storage Key to save Currency data into. Default is Local Storage."
    }
    Overrides {
      Name: "cs:StartingAmount:tooltip"
      String: "The amount of this Currency a new Player will start with."
    }
    Overrides {
      Name: "cs:MaxAmount:tooltip"
      String: "The maximum amount of this currency a Player can have. 0 means no maximum."
    }
    Overrides {
      Name: "cs:DropItemPickupTemplate:tooltip"
      String: "The Item Pickup Template to use if this Currency is dropped in world."
    }
    Overrides {
      Name: "cs:VerboseLogs:tooltip"
      String: "If true, more detailed logs will be printed to the Event Log if errors or warnings occur."
    }
    Overrides {
      Name: "cs:IconCameraId:tooltip"
      String: "If \"Is3DIcon\" is true, this should match the \"CameraId\" of an \"Icon Generator\" in the scene."
    }
    Overrides {
      Name: "cs:IconAsset:tooltip"
      String: "The image or template to use for an icon. If \"IsKitbashed2DIcon\" is true, this should be a UI template. If \"Is3DIcon\" is true, this should be a 3D object template. If \"IsImageIcon\" is true, this should be an image/brush asset."
    }
    Overrides {
      Name: "cs:IsKitbashed2DIcon:tooltip"
      String: "If true, the \"IconAsset\" should point to a UI template. This template will be spawned as the icon."
    }
    Overrides {
      Name: "cs:Is3DIcon:tooltip"
      String: "If true, the \"IconAsset\" should point to a 3D object template. An image of this template will be used as the icon."
    }
    Overrides {
      Name: "cs:IsImageIcon:tooltip"
      String: "If true, the \"IconAsset\" should point to an image/brush asset. This will be used as the icon."
    }
    Overrides {
      Name: "cs:DropItemPickupTemplate:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropTemplate:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropTemplate:tooltip"
      String: "The template to use to display the dropped item in world."
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12585063226046881420
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
  ParentId: 9292905767341303260
  ChildIds: 16348732175236866733
  ChildIds: 17523162913835552108
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17523162913835552108
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
  ParentId: 12585063226046881420
  ChildIds: 3027898797985915559
  ChildIds: 613674993978241016
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 613674993978241016
  Name: "Panel"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17523162913835552108
  ChildIds: 4956982806787975809
  ChildIds: 12588135203305896154
  ChildIds: 2845057002802478313
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 200
    Height: 60
    UIX: -20
    UIY: 20
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
Objects {
  Id: 2845057002802478313
  Name: "Amount"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 613674993978241016
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: -80
    Height: 40
    UIX: 70
    UIY: 10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "0"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:left"
      }
      AutoWrapText: true
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScaleToFit: true
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12588135203305896154
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
  ParentId: 613674993978241016
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    UIX: 5
    UIY: 5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4956982806787975809
  Name: "Background"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 613674993978241016
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 313
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
        A: 0.5
      }
      TeamSettings {
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
  Id: 3027898797985915559
  Name: "UICurrencyClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17523162913835552108
  UnregisteredParameters {
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 12588135203305896154
      }
    }
    Overrides {
      Name: "cs:Amount"
      ObjectReference {
        SelfId: 2845057002802478313
      }
    }
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 9292905767341303260
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
      Id: 16883847165460771125
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16348732175236866733
  Name: "CurrencySettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12585063226046881420
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 9292905767341303260
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
      Id: 5795522539682800925
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10355837752645117446
  Name: "Currency README"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9292905767341303260
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
      Id: 17295820024805998238
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9411896096021865014
  Name: "CurrencySettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9292905767341303260
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 9292905767341303260
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
      Id: 5795522539682800925
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3933126910326992729
  Name: "Inventory and Hotbar"
  Transform {
    Location {
      X: 450
      Y: -700
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6495908099588717870
  ChildIds: 11906625372190723582
  ChildIds: 12908108590704447840
  ChildIds: 17506353414506864406
  ChildIds: 16647998388305684437
  ChildIds: 13918908501975959342
  ChildIds: 16543154028131877221
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
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
  Id: 16543154028131877221
  Name: "UI"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3933126910326992729
  ChildIds: 1964315412096585617
  ChildIds: 14220482667391723936
  ChildIds: 7848423498687717776
  UnregisteredParameters {
    Overrides {
      Name: "cs:ScreenContainer"
      ObjectReference {
        SelfId: 14220482667391723936
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7848423498687717776
  Name: "Tooltip Container"
  Transform {
    Location {
      X: 2976.57153
      Y: -1461.37097
      Z: 1202.99365
    }
    Rotation {
      Yaw: -26.3175259
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16543154028131877221
  ChildIds: 4436850812736879784
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
      TwoSided: true
      TickWhenOffScreen: true
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4436850812736879784
  Name: "UI Tooltip"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -3.41509403e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7848423498687717776
  ChildIds: 13934413251210064781
  ChildIds: 14422997457451251905
  ChildIds: 17718486609231195934
  UnregisteredParameters {
    Overrides {
      Name: "cs:CursorOffset"
      Vector2 {
        Y: -30
      }
    }
    Overrides {
      Name: "cs:FitToText"
      Bool: true
    }
    Overrides {
      Name: "cs:KeepOnScreen"
      Bool: true
    }
    Overrides {
      Name: "cs:KeepOnScreenPadding"
      Vector2 {
        X: 20
        Y: 20
      }
    }
    Overrides {
      Name: "cs:CursorOffset:tooltip"
      String: "The distance from the cursor the tool tip should appear."
    }
    Overrides {
      Name: "cs:FitToText:tooltip"
      String: "If true, the tool tip width will be adjusted to fit the text."
    }
    Overrides {
      Name: "cs:KeepOnScreen:tooltip"
      String: "If true, the tool tip will not be able to move off the screen."
    }
    Overrides {
      Name: "cs:KeepOnScreenPadding:tooltip"
      String: "If \"KeepOnScreen\" is true, this padding will be applied to the tool tip when it is near a screen edge."
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 100
    Height: 30
    UIX: 836.093506
    UIY: 547.945923
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
          Value: "mc:euianchor:bottomcenter"
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
  Id: 17718486609231195934
  Name: "Text"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 1.70754709e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436850812736879784
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    Text {
      Label: "Tooltip"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 14
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
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
          Value: "mc:euianchor:middlecenter"
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
  Id: 14422997457451251905
  Name: "Background"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 1.70754709e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436850812736879784
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    Height: 10
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
      }
      Color {
        A: 0.5
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13934413251210064781
  Name: "UITooltipClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436850812736879784
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 4436850812736879784
      }
    }
    Overrides {
      Name: "cs:Text"
      ObjectReference {
        SelfId: 17718486609231195934
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
      Id: 17256057881071656495
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14220482667391723936
  Name: "Main Container"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16543154028131877221
  ChildIds: 4655609254251778338
  ChildIds: 17013862898058747035
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
      TwoSided: true
      TickWhenOffScreen: true
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17013862898058747035
  Name: "Inventory Icon"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14220482667391723936
  ChildIds: 15080731357584269141
  ChildIds: 3510989318524509073
  UnregisteredParameters {
    Overrides {
      Name: "cs:IconCameraId"
      String: "inventory"
    }
    Overrides {
      Name: "cs:IconAsset"
      AssetReference {
        Id: 6369796579891266339
      }
    }
    Overrides {
      Name: "cs:IsKitbashed2DIcon"
      Bool: false
    }
    Overrides {
      Name: "cs:Is3DIcon"
      Bool: true
    }
    Overrides {
      Name: "cs:IsImageIcon"
      Bool: false
    }
    Overrides {
      Name: "cs:Binding"
      String: "I"
    }
    Overrides {
      Name: "cs:IconCameraId:tooltip"
      String: "Set this to match the CameraId on an Icon Generator if you are using a 3D IconAsset for your icon and want to use Render to Texture to display it. Leave this blank if you are spawning a UI icon or using an Image."
    }
    Overrides {
      Name: "cs:IconCameraId:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:IconCameraId:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:IconAsset:tooltip"
      String: "Reference your icon asset here. This can be a 3D object, 2D object created from UIControls or an Image."
    }
    Overrides {
      Name: "cs:IconAsset:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:IconAsset:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:IsKitbashed2DIcon:tooltip"
      String: "If true, the template referenced in IconAsset will be spawned instead of rendered. This is useful for kitbashed 2D icons."
    }
    Overrides {
      Name: "cs:IsKitbashed2DIcon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:IsKitbashed2DIcon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Is3DIcon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Is3DIcon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:IsImageIcon:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:IsImageIcon:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Binding:tooltip"
      String: "This text will be displayed as the shortcut key for this button. This will not create a shortcut for you, so the button needs to be connected to the binding via other means."
    }
    Overrides {
      Name: "cs:Binding:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Binding:ml"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3510989318524509073
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
  ParentId: 17013862898058747035
  ChildIds: 9475449083871949840
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9475449083871949840
  Name: "Panel"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3510989318524509073
  ChildIds: 9033729352158345042
  ChildIds: 4043290952326073247
  ChildIds: 2652502166895554241
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 100
    Height: 100
    UIX: -50
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2652502166895554241
  Name: "Button"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9475449083871949840
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
        A: 1
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 1
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
      OnlyUseMainColor: true
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
  Id: 4043290952326073247
  Name: "Binding Background"
  Transform {
    Location {
      X: 2604.05347
      Y: -2329.04272
      Z: 777.473267
    }
    Rotation {
      Yaw: -45.7996788
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9475449083871949840
  ChildIds: 12432754484583797491
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 35
    Height: 30
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
        A: 0.5
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12432754484583797491
  Name: "Binding"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 4.43962272e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4043290952326073247
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 28
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Color {
        R: 0.73
        G: 0.319072872
        A: 1
      }
      Size: 16
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 841534158063459245
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
      OutlineSize: 2
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
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
  Id: 9033729352158345042
  Name: "Icon"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 2.39056608e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9475449083871949840
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
    Image {
      Brush {
        Id: 3746753204667991703
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15080731357584269141
  Name: "IconClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17013862898058747035
  UnregisteredParameters {
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 9033729352158345042
      }
    }
    Overrides {
      Name: "cs:BindingText"
      ObjectReference {
        SelfId: 12432754484583797491
      }
    }
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 17013862898058747035
      }
    }
    Overrides {
      Name: "cs:BindingBackground"
      ObjectReference {
        SelfId: 4043290952326073247
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
      Id: 1300522112865575183
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4655609254251778338
  Name: "Hotbar"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14220482667391723936
  ChildIds: 3003980428972405333
  ChildIds: 8888767822786062927
  UnregisteredParameters {
    Overrides {
      Name: "cs:Controller"
      ObjectReference {
        SelfId: 3003980428972405333
      }
    }
    Overrides {
      Name: "cs:IconCameraId"
      String: "inventory"
    }
    Overrides {
      Name: "cs:Title"
      ObjectReference {
      }
    }
    Overrides {
      Name: "cs:CloseButton"
      ObjectReference {
      }
    }
    Overrides {
      Name: "cs:SlotContainer"
      ObjectReference {
        SelfId: 8541317835883974762
      }
    }
    Overrides {
      Name: "cs:SlotTemplate"
      AssetReference {
        Id: 5599373721529575842
      }
    }
    Overrides {
      Name: "cs:InventoryId"
      String: "hotbar"
    }
    Overrides {
      Name: "cs:Columns"
      Int: 8
    }
    Overrides {
      Name: "cs:Padding"
      Float: 0
    }
    Overrides {
      Name: "cs:UseNumericShortcuts"
      Bool: true
    }
    Overrides {
      Name: "cs:ShortcutActsAsBinding"
      String: "ability_primary"
    }
    Overrides {
      Name: "cs:Controller:tooltip"
      String: "The Inventory Screen script to use."
    }
    Overrides {
      Name: "cs:IconCameraId:tooltip"
      String: "Set this to match the CameraId of an Icon Generator in the scene. 3D Icons rendered in this Inventory Screen will use the camera set here."
    }
    Overrides {
      Name: "cs:Title:tooltip"
      String: "The optional UIText object to use to display this Inventory name."
    }
    Overrides {
      Name: "cs:CloseButton:tooltip"
      String: "The optional UIButton to use to close this Inventory."
    }
    Overrides {
      Name: "cs:SlotContainer:tooltip"
      String: "The UIControl to spawn Inventory Slot items into."
    }
    Overrides {
      Name: "cs:SlotTemplate:tooltip"
      String: "The template to use for Inventory Slots."
    }
    Overrides {
      Name: "cs:InventoryId:tooltip"
      String: "Optional Inventory id if this screen should open a specific Inventory. Leave this blank if the screen is being used to open an Inventory via an Inventory Settings object"
    }
    Overrides {
      Name: "cs:Columns:tooltip"
      String: "The number of Slots to add before moving down a row"
    }
    Overrides {
      Name: "cs:Padding:tooltip"
      String: "The padding between Inventory Slots."
    }
    Overrides {
      Name: "cs:UseNumericShortcuts:tooltip"
      String: "If true, numbers 1-9 will be used to \"click\" the first 9 slots. This is meant for on screen Hotbar like Inventories."
    }
    Overrides {
      Name: "cs:ShortcutActsAsBinding:tooltip"
      String: "If \"UseNumericShortcuts\" is true, this is the binding that will be mimicked when a number 1-9 is pressed."
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
    Width: 800
    Height: 100
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8888767822786062927
  Name: "Background"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4655609254251778338
  ChildIds: 8541317835883974762
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 313
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
        A: 0.5
      }
      TeamSettings {
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
  Id: 8541317835883974762
  Name: "Content"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8888767822786062927
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
  Id: 3003980428972405333
  Name: "InventoryScreen"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4655609254251778338
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 4655609254251778338
      }
    }
    Overrides {
      Name: "cs:APIInventory"
      AssetReference {
        Id: 16904144847002750700
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
      Id: 8891346482049016143
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1964315412096585617
  Name: "UIControllerClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16543154028131877221
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 16543154028131877221
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
      Id: 14495003582878709767
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13918908501975959342
  Name: "Cheat Chest Settings"
  Transform {
    Location {
      X: 2203.72778
      Y: 1718.24939
      Z: -0.000549316406
    }
    Rotation {
      Yaw: -67.4999847
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3933126910326992729
  ChildIds: 922451591438348763
  ChildIds: 8533121055223680976
  ChildIds: 9710360388628621840
  ChildIds: 15295853190398394603
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryId"
      String: "cheatChest"
    }
    Overrides {
      Name: "cs:InventoryName"
      String: "Chest"
    }
    Overrides {
      Name: "cs:DefaultIcon"
      AssetReference {
        Id: 9736987041818260224
      }
    }
    Overrides {
      Name: "cs:StartingItems"
      ObjectReference {
        SelfId: 922451591438348763
      }
    }
    Overrides {
      Name: "cs:StorageKey"
      NetReference {
        Type {
          Value: "mc:enetreferencetype:unknown"
        }
      }
    }
    Overrides {
      Name: "cs:TotalSlots"
      Int: 24
    }
    Overrides {
      Name: "cs:SlotCapacity"
      Int: 99
    }
    Overrides {
      Name: "cs:AllowNonEmptyContainers"
      Bool: false
    }
    Overrides {
      Name: "cs:UseStacks"
      Bool: true
    }
    Overrides {
      Name: "cs:CanEquip"
      Bool: false
    }
    Overrides {
      Name: "cs:VerboseLogs"
      Bool: false
    }
    Overrides {
      Name: "cs:CanDrop"
      Bool: true
    }
    Overrides {
      Name: "cs:DropForAllPlayers"
      Bool: true
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds"
      Float: 60
    }
    Overrides {
      Name: "cs:ItemPickupTemplate"
      AssetReference {
        Id: 15375784612613316623
      }
    }
    Overrides {
      Name: "cs:ScreenTemplate"
      AssetReference {
        Id: 12495394132823353132
      }
    }
    Overrides {
      Name: "cs:InventoryId:tooltip"
      String: "The id for this Inventory. Must be unique within a scene."
    }
    Overrides {
      Name: "cs:InventoryName:tooltip"
      String: "The name of this Inventory."
    }
    Overrides {
      Name: "cs:StorageKey:tooltip"
      String: "An optional Shared Storage Key to use to save Inventory data to. Local Storage will be used if this is not set."
    }
    Overrides {
      Name: "cs:TotalSlots:tooltip"
      String: "The total number of slots in this Inventory. Must be greater than 0, defaults to 10."
    }
    Overrides {
      Name: "cs:SlotCapacity:tooltip"
      String: "The total number of items that can be stacked into a slot. 0 means no maximum."
    }
    Overrides {
      Name: "cs:UseStacks:tooltip"
      String: "If true, items will be able to exist in multiple slots and other stacking logic will be applied when moving items around."
    }
    Overrides {
      Name: "cs:CanEquip:tooltip"
      String: "If true, items will be able to be equipped from this Inventory."
    }
    Overrides {
      Name: "cs:CanDrop:tooltip"
      String: "If true, items will be able to be dropped into the world from this Inventory."
    }
    Overrides {
      Name: "cs:DropForAllPlayers:tooltip"
      String: "If true, dropped items will appear on all clients."
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:tooltip"
      String: "The number of seconds a dropped item will remain in world."
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:tooltip"
      String: "The Item Pickup Template to use for dropped items."
    }
    Overrides {
      Name: "cs:ScreenTemplate:tooltip"
      String: "The Inventory Screen to use to display the contents of this Inventory."
    }
    Overrides {
      Name: "cs:VerboseLogs:tooltip"
      String: "If true, more detailed logs will be printed to the Event Log for warnings and errors."
    }
    Overrides {
      Name: "cs:AllowNonEmptyContainers:tooltip"
      String: "If true, Inventory Containers that contain items can be stored in this Inventory. Note: This could lead to storage issues if not carefully used."
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropForAllPlayers:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropForAllPlayers:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:CanDrop:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:CanDrop:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:ScreenTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ScreenTemplate:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:DefaultIcon:tooltip"
      String: "This icon is used for any Inventory contents that don\'t have an icon defined."
    }
    Overrides {
      Name: "cs:StartingItems:tooltip"
      String: "This points to the data group containing the StartingItemDatas that this Inventory should be filled with."
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15295853190398394603
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
  ParentId: 13918908501975959342
  ChildIds: 8408259093103439445
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8408259093103439445
  Name: "InventoryContainerSettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15295853190398394603
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 13918908501975959342
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
      Id: 13060681764769371628
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9710360388628621840
  Name: "Inventory README"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13918908501975959342
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
      Id: 10412933075175728930
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8533121055223680976
  Name: "InventoryContainerSettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13918908501975959342
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 13918908501975959342
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
      Id: 13060681764769371628
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 922451591438348763
  Name: "StartingItems"
  Transform {
    Location {
      X: 450
      Y: -700
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13918908501975959342
  ChildIds: 11860855473186639319
  ChildIds: 4952025819528700727
  ChildIds: 17286840392501279537
  ChildIds: 11739704305684972671
  ChildIds: 17514500406357925961
  ChildIds: 1176032846417764003
  ChildIds: 8952637498796399519
  ChildIds: 1935826598488583517
  ChildIds: 16773310906515665849
  ChildIds: 16183755346431593156
  ChildIds: 10207628974611450505
  ChildIds: 17028488642770808328
  ChildIds: 11888443229212774054
  ChildIds: 4454219969891639291
  ChildIds: 14982124683445695068
  ChildIds: 10621174445448716262
  ChildIds: 9815834912989292575
  ChildIds: 2451934774300154750
  ChildIds: 16997685159646773805
  ChildIds: 9106857341222494908
  ChildIds: 4417622495962346136
  ChildIds: 10199781547138481610
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
      Id: 8280669765240006703
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10199781547138481610
  Name: "Storage Chest"
  Transform {
    Location {
      X: 294.125244
      Y: -1993.52454
      Z: 0.000549316406
    }
    Rotation {
      Yaw: 67.5000153
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Storage Chest"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 21
    }
    Overrides {
      Name: "cs:Amount"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4417622495962346136
  Name: "Dragon Treasure"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Dragon Treasure"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 20
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9106857341222494908
  Name: "Dragon Cave"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Dragon Cave"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 19
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16997685159646773805
  Name: "Dragon Whelp Gold"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Dragon Whelp Gold"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 18
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2451934774300154750
  Name: "Dragon Whelp Brown"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Dragon Whelp Brown"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 17
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9815834912989292575
  Name: "Dragon Whelp Green"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Dragon Whelp Green"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 16
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10621174445448716262
  Name: "Dragon Whelp Red"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Dragon Whelp Red"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 15
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14982124683445695068
  Name: "Dragon Egg"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Dragon Egg"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 14
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4454219969891639291
  Name: "Mutation Tank"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Mutation Tank"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 13
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11888443229212774054
  Name: "Mutation Slime"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Mutation Slime"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 12
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17028488642770808328
  Name: "Furnace"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Furnace"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 11
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10207628974611450505
  Name: "Iron Bar"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Iron Bar"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 10
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16183755346431593156
  Name: "Iron Ore"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Iron Ore"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 9
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16773310906515665849
  Name: "Iron Ore Crate"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Iron Ore Crate"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 8
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1935826598488583517
  Name: "Charcoal"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Charcoal"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 7
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8952637498796399519
  Name: "Cooked Fruit"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Cooked Fruit"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 6
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1176032846417764003
  Name: "Yellow Fruit"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Yellow Fruit"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 5
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17514500406357925961
  Name: "Red Fruit"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Red Fruit"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 4
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11739704305684972671
  Name: "Fire Wood"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Fire Wood"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 3
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17286840392501279537
  Name: "Cooking Spit"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Cooking Spit"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 2
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4952025819528700727
  Name: "Campfire Ring"
  Transform {
    Location {
      X: -5699.87646
      Y: 150.002441
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Campfire Ring"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:Amount"
      Int: 99
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11860855473186639319
  Name: "--If you change these, hit F1 to reset your data!"
  Transform {
    Location {
      X: 294.123779
      Y: -1993.52673
      Z: 0.000549316406
    }
    Rotation {
      Yaw: 67.4999847
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 922451591438348763
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
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
  Id: 16647998388305684437
  Name: "Storage Chest Settings"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3933126910326992729
  ChildIds: 9943590551064047489
  ChildIds: 7972035190328265827
  ChildIds: 8958697108873701132
  ChildIds: 10352822867298495926
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryId"
      String: "storageChest"
    }
    Overrides {
      Name: "cs:InventoryName"
      String: "Storage Chest"
    }
    Overrides {
      Name: "cs:DefaultIcon"
      AssetReference {
        Id: 9736987041818260224
      }
    }
    Overrides {
      Name: "cs:StartingItems"
      ObjectReference {
        SelfId: 9943590551064047489
      }
    }
    Overrides {
      Name: "cs:StorageKey"
      NetReference {
        Type {
          Value: "mc:enetreferencetype:unknown"
        }
      }
    }
    Overrides {
      Name: "cs:TotalSlots"
      Int: 6
    }
    Overrides {
      Name: "cs:SlotCapacity"
      Int: 10
    }
    Overrides {
      Name: "cs:AllowNonEmptyContainers"
      Bool: false
    }
    Overrides {
      Name: "cs:UseStacks"
      Bool: true
    }
    Overrides {
      Name: "cs:CanEquip"
      Bool: false
    }
    Overrides {
      Name: "cs:VerboseLogs"
      Bool: false
    }
    Overrides {
      Name: "cs:CanDrop"
      Bool: true
    }
    Overrides {
      Name: "cs:DropForAllPlayers"
      Bool: true
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds"
      Float: 60
    }
    Overrides {
      Name: "cs:ItemPickupTemplate"
      AssetReference {
        Id: 15375784612613316623
      }
    }
    Overrides {
      Name: "cs:ScreenTemplate"
      AssetReference {
        Id: 12495394132823353132
      }
    }
    Overrides {
      Name: "cs:InventoryId:tooltip"
      String: "The id for this Inventory. Must be unique within a scene."
    }
    Overrides {
      Name: "cs:InventoryName:tooltip"
      String: "The name of this Inventory."
    }
    Overrides {
      Name: "cs:StorageKey:tooltip"
      String: "An optional Shared Storage Key to use to save Inventory data to. Local Storage will be used if this is not set."
    }
    Overrides {
      Name: "cs:TotalSlots:tooltip"
      String: "The total number of slots in this Inventory. Must be greater than 0, defaults to 10."
    }
    Overrides {
      Name: "cs:SlotCapacity:tooltip"
      String: "The total number of items that can be stacked into a slot. 0 means no maximum."
    }
    Overrides {
      Name: "cs:UseStacks:tooltip"
      String: "If true, items will be able to exist in multiple slots and other stacking logic will be applied when moving items around."
    }
    Overrides {
      Name: "cs:CanEquip:tooltip"
      String: "If true, items will be able to be equipped from this Inventory."
    }
    Overrides {
      Name: "cs:CanDrop:tooltip"
      String: "If true, items will be able to be dropped into the world from this Inventory."
    }
    Overrides {
      Name: "cs:DropForAllPlayers:tooltip"
      String: "If true, dropped items will appear on all clients."
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:tooltip"
      String: "The number of seconds a dropped item will remain in world."
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:tooltip"
      String: "The Item Pickup Template to use for dropped items."
    }
    Overrides {
      Name: "cs:ScreenTemplate:tooltip"
      String: "The Inventory Screen to use to display the contents of this Inventory."
    }
    Overrides {
      Name: "cs:VerboseLogs:tooltip"
      String: "If true, more detailed logs will be printed to the Event Log for warnings and errors."
    }
    Overrides {
      Name: "cs:AllowNonEmptyContainers:tooltip"
      String: "If true, Inventory Containers that contain items can be stored in this Inventory. Note: This could lead to storage issues if not carefully used."
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropForAllPlayers:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropForAllPlayers:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:CanDrop:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:CanDrop:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:ScreenTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ScreenTemplate:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:DefaultIcon:tooltip"
      String: "This icon is used for any Inventory contents that don\'t have an icon defined."
    }
    Overrides {
      Name: "cs:StartingItems:tooltip"
      String: "This points to the data group containing the StartingItemDatas that this Inventory should be filled with."
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10352822867298495926
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
  ParentId: 16647998388305684437
  ChildIds: 13689786919836014009
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13689786919836014009
  Name: "InventoryContainerSettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10352822867298495926
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 16647998388305684437
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
      Id: 13060681764769371628
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8958697108873701132
  Name: "Inventory README"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16647998388305684437
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
      Id: 10412933075175728930
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7972035190328265827
  Name: "InventoryContainerSettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16647998388305684437
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 16647998388305684437
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
      Id: 13060681764769371628
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9943590551064047489
  Name: "StartingItems"
  Transform {
    Location {
      X: 450
      Y: -700
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16647998388305684437
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
      Id: 8280669765240006703
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17506353414506864406
  Name: "Hotbar Settings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3933126910326992729
  ChildIds: 16190533397586582875
  ChildIds: 5856753272757713648
  ChildIds: 6082127908927663690
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryId"
      String: "hotbar"
    }
    Overrides {
      Name: "cs:InventoryName"
      String: "Hotbar"
    }
    Overrides {
      Name: "cs:DefaultIcon"
      AssetReference {
        Id: 9736987041818260224
      }
    }
    Overrides {
      Name: "cs:StartingItems"
      ObjectReference {
        SelfId: 16190533397586582875
      }
    }
    Overrides {
      Name: "cs:StorageKey"
      NetReference {
        Type {
          Value: "mc:enetreferencetype:unknown"
        }
      }
    }
    Overrides {
      Name: "cs:TotalSlots"
      Int: 8
    }
    Overrides {
      Name: "cs:SlotCapacity"
      Int: 99
    }
    Overrides {
      Name: "cs:AllowNonEmptyContainers"
      Bool: false
    }
    Overrides {
      Name: "cs:UseStacks"
      Bool: true
    }
    Overrides {
      Name: "cs:CanEquip"
      Bool: true
    }
    Overrides {
      Name: "cs:Priority"
      Int: 2
    }
    Overrides {
      Name: "cs:OverflowInventoryIds"
      String: "inventory"
    }
    Overrides {
      Name: "cs:VerboseLogs"
      Bool: true
    }
    Overrides {
      Name: "cs:CanDrop"
      Bool: true
    }
    Overrides {
      Name: "cs:DropForAllPlayers"
      Bool: true
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds"
      Float: 60
    }
    Overrides {
      Name: "cs:ItemPickupTemplate"
      AssetReference {
        Id: 15375784612613316623
      }
    }
    Overrides {
      Name: "cs:ScreenTemplate"
      AssetReference {
        Id: 841534158063459245
      }
    }
    Overrides {
      Name: "cs:ScreenToggleButton"
      ObjectReference {
      }
    }
    Overrides {
      Name: "cs:OpenBinding"
      String: ""
    }
    Overrides {
      Name: "cs:CloseBinding"
      String: ""
    }
    Overrides {
      Name: "cs:ShowCursor"
      Bool: false
    }
    Overrides {
      Name: "cs:InventoryId:tooltip"
      String: "The id for this Inventory. Must be unique within a scene."
    }
    Overrides {
      Name: "cs:InventoryName:tooltip"
      String: "The name of this Inventory."
    }
    Overrides {
      Name: "cs:StorageKey:tooltip"
      String: "An optional Shared Storage Key to use to save Inventory data to. Local Storage will be used if this is not set."
    }
    Overrides {
      Name: "cs:TotalSlots:tooltip"
      String: "The total number of slots in this Inventory. Must be greater than 0, defaults to 10."
    }
    Overrides {
      Name: "cs:SlotCapacity:tooltip"
      String: "The total number of items that can be stacked into a slot. 0 means no maximum."
    }
    Overrides {
      Name: "cs:UseStacks:tooltip"
      String: "If true, items will be able to exist in multiple slots and other stacking logic will be applied when moving items around."
    }
    Overrides {
      Name: "cs:CanEquip:tooltip"
      String: "If true, items will be able to be equipped from this Inventory."
    }
    Overrides {
      Name: "cs:CanDrop:tooltip"
      String: "If true, items will be able to be dropped into the world from this Inventory."
    }
    Overrides {
      Name: "cs:DropForAllPlayers:tooltip"
      String: "If true, dropped items will appear on all clients."
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:tooltip"
      String: "The number of seconds a dropped item will remain in world."
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:tooltip"
      String: "The Item Pickup Template to use for dropped items."
    }
    Overrides {
      Name: "cs:ScreenTemplate:tooltip"
      String: "The Inventory Screen to use to display the contents of this Inventory."
    }
    Overrides {
      Name: "cs:VerboseLogs:tooltip"
      String: "If true, more detailed logs will be printed to the Event Log for warnings and errors."
    }
    Overrides {
      Name: "cs:AllowNonEmptyContainers:tooltip"
      String: "If true, Inventory Containers that contain items can be stored in this Inventory. Note: This could lead to storage issues if not carefully used."
    }
    Overrides {
      Name: "cs:ScreenTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ScreenTemplate:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:ShowCursor:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ShowCursor:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:CloseBinding:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:CloseBinding:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:OpenBinding:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:OpenBinding:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:ScreenToggleButton:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ScreenToggleButton:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropForAllPlayers:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropForAllPlayers:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:CanDrop:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:CanDrop:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:ScreenToggleButton:tooltip"
      String: "An optional UIButton that can be used to toggle the Inventory Screen open and closed."
    }
    Overrides {
      Name: "cs:OpenBinding:tooltip"
      String: "The binding to use to open the Inventory Screen."
    }
    Overrides {
      Name: "cs:CloseBinding:tooltip"
      String: "The binding to use to close the Inventory Screen."
    }
    Overrides {
      Name: "cs:ShowCursor:tooltip"
      String: "If true, the cursor will be visible when the Inventory Screen is open."
    }
    Overrides {
      Name: "cs:Priority:tooltip"
      String: "Used when items are added or removed without a target Inventory. The Inventory with the highest priority that can add or remove the item will be used."
    }
    Overrides {
      Name: "cs:OverflowInventoryIds:tooltip"
      String: "A comma separated list of Inventory Ids that will be used for extra items that won\'t fit into this Inventory."
    }
    Overrides {
      Name: "cs:DefaultIcon:tooltip"
      String: "This icon is used for any Inventory contents that don\'t have an icon defined."
    }
    Overrides {
      Name: "cs:StartingItems:tooltip"
      String: "This points to the data group containing the StartingItemDatas that this Inventory should be filled with."
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6082127908927663690
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
  ParentId: 17506353414506864406
  ChildIds: 17028503180748582642
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
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
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17028503180748582642
  Name: "InventorySettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6082127908927663690
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 17506353414506864406
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
      Id: 9212524569046054492
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5856753272757713648
  Name: "InventorySettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17506353414506864406
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 17506353414506864406
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
      Id: 9212524569046054492
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16190533397586582875
  Name: "Starting Items"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17506353414506864406
  ChildIds: 17484080538788598064
  ChildIds: 5730443337471204293
  ChildIds: 5825569711316468520
  ChildIds: 17392508498748785160
  ChildIds: 242116340151836167
  ChildIds: 17929204556794907545
  ChildIds: 9278123115694224594
  ChildIds: 3817261176367819933
  ChildIds: 2155421790232693995
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
      Id: 8280669765240006703
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2155421790232693995
  Name: "Flint and Steel"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Flint and Steel"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 8
    }
    Overrides {
      Name: "cs:Amount"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3817261176367819933
  Name: "Axe"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Axe"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 7
    }
    Overrides {
      Name: "cs:Amount"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9278123115694224594
  Name: "Pickaxe"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Pickaxe"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 6
    }
    Overrides {
      Name: "cs:Amount"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17929204556794907545
  Name: "Charcoal"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Charcoal"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 5
    }
    Overrides {
      Name: "cs:Amount"
      Int: 25
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
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 242116340151836167
  Name: "Cage"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Cage"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 4
    }
    Overrides {
      Name: "cs:Amount"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17392508498748785160
  Name: "Matches"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Matches"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 3
    }
    Overrides {
      Name: "cs:Amount"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5825569711316468520
  Name: "Hammer"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Hammer"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 2
    }
    Overrides {
      Name: "cs:Amount"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5730443337471204293
  Name: "Shovel"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemId"
      String: "Shovel"
    }
    Overrides {
      Name: "cs:SlotIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:Amount"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5909065857533770977
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17484080538788598064
  Name: "--If you change these, hit F1 to reset your data!"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16190533397586582875
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
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
  Id: 12908108590704447840
  Name: "Inventory Settings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3933126910326992729
  ChildIds: 1375834650985272146
  ChildIds: 12793212740923285753
  ChildIds: 9213902337130394985
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryId"
      String: "inventory"
    }
    Overrides {
      Name: "cs:InventoryName"
      String: "Inventory"
    }
    Overrides {
      Name: "cs:DefaultIcon"
      AssetReference {
        Id: 9736987041818260224
      }
    }
    Overrides {
      Name: "cs:StartingItems"
      ObjectReference {
        SelfId: 1375834650985272146
      }
    }
    Overrides {
      Name: "cs:StorageKey"
      NetReference {
        Type {
          Value: "mc:enetreferencetype:unknown"
        }
      }
    }
    Overrides {
      Name: "cs:TotalSlots"
      Int: 48
    }
    Overrides {
      Name: "cs:SlotCapacity"
      Int: 99
    }
    Overrides {
      Name: "cs:AllowNonEmptyContainers"
      Bool: false
    }
    Overrides {
      Name: "cs:UseStacks"
      Bool: true
    }
    Overrides {
      Name: "cs:CanEquip"
      Bool: true
    }
    Overrides {
      Name: "cs:Priority"
      Int: 1
    }
    Overrides {
      Name: "cs:OverflowInventoryIds"
      String: "hotbar"
    }
    Overrides {
      Name: "cs:VerboseLogs"
      Bool: false
    }
    Overrides {
      Name: "cs:CanDrop"
      Bool: true
    }
    Overrides {
      Name: "cs:DropForAllPlayers"
      Bool: true
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds"
      Float: 60
    }
    Overrides {
      Name: "cs:ItemPickupTemplate"
      AssetReference {
        Id: 15375784612613316623
      }
    }
    Overrides {
      Name: "cs:ScreenTemplate"
      AssetReference {
        Id: 12495394132823353132
      }
    }
    Overrides {
      Name: "cs:ScreenToggleButton"
      ObjectReference {
        SelfId: 2652502166895554241
      }
    }
    Overrides {
      Name: "cs:OpenBinding"
      String: "ability_extra_27"
    }
    Overrides {
      Name: "cs:CloseBinding"
      String: "ability_extra_27"
    }
    Overrides {
      Name: "cs:ShowCursor"
      Bool: true
    }
    Overrides {
      Name: "cs:InventoryId:tooltip"
      String: "The id for this Inventory. Must be unique within a scene."
    }
    Overrides {
      Name: "cs:InventoryName:tooltip"
      String: "The name of this Inventory."
    }
    Overrides {
      Name: "cs:StorageKey:tooltip"
      String: "An optional Shared Storage Key to use to save Inventory data to. Local Storage will be used if this is not set."
    }
    Overrides {
      Name: "cs:TotalSlots:tooltip"
      String: "The total number of slots in this Inventory. Must be greater than 0, defaults to 10."
    }
    Overrides {
      Name: "cs:SlotCapacity:tooltip"
      String: "The total number of items that can be stacked into a slot. 0 means no maximum."
    }
    Overrides {
      Name: "cs:UseStacks:tooltip"
      String: "If true, items will be able to exist in multiple slots and other stacking logic will be applied when moving items around."
    }
    Overrides {
      Name: "cs:CanEquip:tooltip"
      String: "If true, items will be able to be equipped from this Inventory."
    }
    Overrides {
      Name: "cs:CanDrop:tooltip"
      String: "If true, items will be able to be dropped into the world from this Inventory."
    }
    Overrides {
      Name: "cs:DropForAllPlayers:tooltip"
      String: "If true, dropped items will appear on all clients."
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:tooltip"
      String: "The number of seconds a dropped item will remain in world."
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:tooltip"
      String: "The Item Pickup Template to use for dropped items."
    }
    Overrides {
      Name: "cs:ScreenTemplate:tooltip"
      String: "The Inventory Screen to use to display the contents of this Inventory."
    }
    Overrides {
      Name: "cs:VerboseLogs:tooltip"
      String: "If true, more detailed logs will be printed to the Event Log for warnings and errors."
    }
    Overrides {
      Name: "cs:AllowNonEmptyContainers:tooltip"
      String: "If true, Inventory Containers that contain items can be stored in this Inventory. Note: This could lead to storage issues if not carefully used."
    }
    Overrides {
      Name: "cs:ScreenTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ScreenTemplate:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:ShowCursor:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ShowCursor:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:CloseBinding:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:CloseBinding:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:OpenBinding:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:OpenBinding:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:ScreenToggleButton:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ScreenToggleButton:subcategory"
      String: "Screen"
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:ItemPickupTemplate:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropTimeoutSeconds:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:DropForAllPlayers:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:DropForAllPlayers:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:CanDrop:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:CanDrop:subcategory"
      String: "Drops"
    }
    Overrides {
      Name: "cs:ScreenToggleButton:tooltip"
      String: "An optional UIButton that can be used to toggle the Inventory Screen open and closed."
    }
    Overrides {
      Name: "cs:OpenBinding:tooltip"
      String: "The binding to use to open the Inventory Screen."
    }
    Overrides {
      Name: "cs:CloseBinding:tooltip"
      String: "The binding to use to close the Inventory Screen."
    }
    Overrides {
      Name: "cs:ShowCursor:tooltip"
      String: "If true, the cursor will be visible when the Inventory Screen is open."
    }
    Overrides {
      Name: "cs:Priority:tooltip"
      String: "Used when items are added or removed without a target Inventory. The Inventory with the highest priority that can add or remove the item will be used."
    }
    Overrides {
      Name: "cs:OverflowInventoryIds:tooltip"
      String: "A comma separated list of Inventory Ids that will be used for extra items that won\'t fit into this Inventory."
    }
    Overrides {
      Name: "cs:DefaultIcon:tooltip"
      String: "This icon is used for any Inventory contents that don\'t have an icon defined."
    }
    Overrides {
      Name: "cs:StartingItems:tooltip"
      String: "This points to the data group containing the StartingItemDatas that this Inventory should be filled with."
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9213902337130394985
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
  ParentId: 12908108590704447840
  ChildIds: 15845464829018691302
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
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
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15845464829018691302
  Name: "InventorySettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9213902337130394985
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 12908108590704447840
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
      Id: 9212524569046054492
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12793212740923285753
  Name: "InventorySettings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12908108590704447840
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 12908108590704447840
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
      Id: 9212524569046054492
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1375834650985272146
  Name: "StartingItems"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12908108590704447840
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
      Id: 8280669765240006703
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11906625372190723582
  Name: "Inventory README"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3933126910326992729
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
      Id: 10412933075175728930
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16757125461659271889
  Name: "Player Lot Manager"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6495908099588717870
  ChildIds: 5320039445711177521
  ChildIds: 782020871495433894
  UnregisteredParameters {
    Overrides {
      Name: "cs:LotType"
      String: "Player Lot"
    }
    Overrides {
      Name: "cs:MaxOwnedPerPlayer"
      Int: 1
    }
    Overrides {
      Name: "cs:AssignWhenPlayerJoins"
      Bool: true
    }
    Overrides {
      Name: "cs:ResetLotsWhenPlayerLeaves"
      Bool: false
    }
    Overrides {
      Name: "cs:LotType:tooltip"
      String: "This Lot Type should match the Lot Type set on one or more Player Lot Setup templates. Any settings on this object will apply to all Lots of this type."
    }
    Overrides {
      Name: "cs:MaxOwnedPerPlayer:tooltip"
      String: "The maximum amount of Lots of this Lot Type that each Player can own at a time. "
    }
    Overrides {
      Name: "cs:AssignWhenPlayerJoins:tooltip"
      String: "If true, the Player will be assigned to a Lot of this Lot Type when they join the game."
    }
    Overrides {
      Name: "cs:ResetLotsWhenPlayerLeaves:tooltip"
      String: "If true, all Lots of this Lot Type will be reset when the owner of those Lots leaves the game."
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 782020871495433894
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
  ParentId: 16757125461659271889
  ChildIds: 14928320190541507108
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
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14928320190541507108
  Name: "PlayerLotManagerClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 782020871495433894
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 16757125461659271889
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
      Id: 2578056439366678836
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5320039445711177521
  Name: "PlayerLotManagerServer"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16757125461659271889
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 16757125461659271889
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
      Id: 15493535707995306099
    }
  }
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13039543737906129703
  Name: "Framework Dependencies"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6495908099588717870
  TemplateInstance {
    ParameterOverrideMap {
      key: 628231996798714024
      value {
        Overrides {
          Name: "Name"
          String: "Framework Dependencies"
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
      }
    }
    ParameterOverrideMap {
      key: 11261305471407388046
      value {
        Overrides {
          Name: "cs:HandToolDistance"
          Float: 300
        }
      }
    }
    TemplateAsset {
      Id: 10392574212679257345
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
