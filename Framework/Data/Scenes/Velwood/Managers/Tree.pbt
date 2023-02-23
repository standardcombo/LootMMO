Name: "Managers"
RootId: 8401913848203132518
Objects {
  Id: 12752017061310122354
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
  ParentId: 8401913848203132518
  ChildIds: 5931119232970892261
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 5931119232970892261
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
  ParentId: 12752017061310122354
  ChildIds: 18321747851515051042
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18321747851515051042
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
  ParentId: 5931119232970892261
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
  Id: 1759508856586722860
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
  ParentId: 8401913848203132518
  ChildIds: 13598045107187654970
  ChildIds: 4204694472874054927
  ChildIds: 6678013075511235684
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
  Id: 6678013075511235684
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
  ParentId: 1759508856586722860
  ChildIds: 14057495794606364517
  ChildIds: 7300527940291097203
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7300527940291097203
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
  ParentId: 6678013075511235684
  ChildIds: 8021924897029524306
  ChildIds: 9135022115274990316
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
  Id: 9135022115274990316
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
  ParentId: 7300527940291097203
  ChildIds: 9631803043694899073
  ChildIds: 5032704183904824117
  ChildIds: 4922750050158467840
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
  Id: 4922750050158467840
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
  ParentId: 9135022115274990316
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
  Id: 5032704183904824117
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
  ParentId: 9135022115274990316
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
  Id: 9631803043694899073
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
  ParentId: 9135022115274990316
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
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
  Id: 8021924897029524306
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
  ParentId: 7300527940291097203
  UnregisteredParameters {
    Overrides {
      Name: "cs:Icon"
      ObjectReference {
        SelfId: 5032704183904824117
      }
    }
    Overrides {
      Name: "cs:Amount"
      ObjectReference {
        SelfId: 4922750050158467840
      }
    }
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 1759508856586722860
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
  Id: 14057495794606364517
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
  ParentId: 6678013075511235684
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 1759508856586722860
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
  Id: 4204694472874054927
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
  ParentId: 1759508856586722860
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 13598045107187654970
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
  ParentId: 1759508856586722860
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 1759508856586722860
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
  Id: 4930198475630388942
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
  ParentId: 8401913848203132518
  ChildIds: 7376995597717453214
  ChildIds: 2963745401024088120
  ChildIds: 13024177425130729207
  ChildIds: 7034134447764517594
  ChildIds: 6968507949024250526
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
  Id: 6968507949024250526
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
  ParentId: 4930198475630388942
  ChildIds: 10030942001330121335
  ChildIds: 15673838287301212133
  ChildIds: 9206097497630286681
  ChildIds: 16097613694066645565
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
        SelfId: 10030942001330121335
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
  Id: 16097613694066645565
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
  ParentId: 6968507949024250526
  ChildIds: 5881394547387000911
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5881394547387000911
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
  ParentId: 16097613694066645565
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 6968507949024250526
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
  Id: 9206097497630286681
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
  ParentId: 6968507949024250526
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 15673838287301212133
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
  ParentId: 6968507949024250526
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 6968507949024250526
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
  Id: 10030942001330121335
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
  ParentId: 6968507949024250526
  ChildIds: 15957353559613842668
  ChildIds: 6613143599968055551
  ChildIds: 4486976846822744342
  ChildIds: 9041955584608897790
  ChildIds: 11540415853864291876
  ChildIds: 7911440016213506790
  ChildIds: 5732662090906055121
  ChildIds: 7299554312674180443
  ChildIds: 6931199942785847824
  ChildIds: 3709627515556474253
  ChildIds: 11759208365469175322
  ChildIds: 9459717296802287823
  ChildIds: 9531352732633370181
  ChildIds: 16282952411833362727
  ChildIds: 7047349476883758306
  ChildIds: 99468637810025365
  ChildIds: 12164702461738831094
  ChildIds: 10729595858902029652
  ChildIds: 2889885874342811735
  ChildIds: 4201512234854521804
  ChildIds: 5026136660092476941
  ChildIds: 14574061348844730004
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 14574061348844730004
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
  ParentId: 10030942001330121335
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
  Id: 5026136660092476941
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
  ParentId: 10030942001330121335
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
  Id: 4201512234854521804
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
  ParentId: 10030942001330121335
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
  Id: 2889885874342811735
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
  ParentId: 10030942001330121335
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
  Id: 10729595858902029652
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
  ParentId: 10030942001330121335
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
  Id: 12164702461738831094
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
  ParentId: 10030942001330121335
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
  Id: 99468637810025365
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
  ParentId: 10030942001330121335
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
  Id: 7047349476883758306
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
  ParentId: 10030942001330121335
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
  Id: 16282952411833362727
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
  ParentId: 10030942001330121335
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
  Id: 9531352732633370181
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
  ParentId: 10030942001330121335
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
  Id: 9459717296802287823
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
  ParentId: 10030942001330121335
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
  Id: 11759208365469175322
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
  ParentId: 10030942001330121335
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
  Id: 3709627515556474253
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
  ParentId: 10030942001330121335
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
  Id: 6931199942785847824
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
  ParentId: 10030942001330121335
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
  Id: 7299554312674180443
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
  ParentId: 10030942001330121335
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
  Id: 5732662090906055121
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
  ParentId: 10030942001330121335
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
  Id: 7911440016213506790
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
  ParentId: 10030942001330121335
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
  Id: 11540415853864291876
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
  ParentId: 10030942001330121335
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
  Id: 9041955584608897790
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
  ParentId: 10030942001330121335
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
  Id: 4486976846822744342
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
  ParentId: 10030942001330121335
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
  Id: 6613143599968055551
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
  ParentId: 10030942001330121335
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
  Id: 15957353559613842668
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
  ParentId: 10030942001330121335
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 7034134447764517594
  Name: "Storage Chest Settings"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4930198475630388942
  ChildIds: 9121662846561410055
  ChildIds: 10305392959561360863
  ChildIds: 15646902122417108221
  ChildIds: 17799024667410395076
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
        SelfId: 9121662846561410055
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
  Id: 17799024667410395076
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
  ParentId: 7034134447764517594
  ChildIds: 15067169643113794331
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15067169643113794331
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
  ParentId: 17799024667410395076
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 7034134447764517594
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
  Id: 15646902122417108221
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
  ParentId: 7034134447764517594
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 10305392959561360863
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
  ParentId: 7034134447764517594
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 7034134447764517594
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
  Id: 9121662846561410055
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
  ParentId: 7034134447764517594
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 13024177425130729207
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
  ParentId: 4930198475630388942
  ChildIds: 16440785578607398439
  ChildIds: 17863302009756536131
  ChildIds: 17450325009480976562
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
        SelfId: 16440785578607398439
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
      Bool: false
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
  Id: 17450325009480976562
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
  ParentId: 13024177425130729207
  ChildIds: 17487769161559575147
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
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17487769161559575147
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
  ParentId: 17450325009480976562
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 13024177425130729207
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
  Id: 17863302009756536131
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
  ParentId: 13024177425130729207
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 13024177425130729207
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
  Id: 16440785578607398439
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
  ParentId: 13024177425130729207
  ChildIds: 8332958353340071921
  ChildIds: 1051120100510876298
  ChildIds: 11016009964776598456
  ChildIds: 8440069859418446666
  ChildIds: 5828930266687660001
  ChildIds: 17778861494528913417
  ChildIds: 14975273702485676373
  ChildIds: 8763393348294686190
  ChildIds: 9381231643324264931
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 9381231643324264931
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
  ParentId: 16440785578607398439
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
  Id: 8763393348294686190
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
  ParentId: 16440785578607398439
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
  Id: 14975273702485676373
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
  ParentId: 16440785578607398439
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
  Id: 17778861494528913417
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
  ParentId: 16440785578607398439
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
  Id: 5828930266687660001
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
  ParentId: 16440785578607398439
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
  Id: 8440069859418446666
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
  ParentId: 16440785578607398439
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
  Id: 11016009964776598456
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
  ParentId: 16440785578607398439
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
  Id: 1051120100510876298
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
  ParentId: 16440785578607398439
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
  Id: 8332958353340071921
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
  ParentId: 16440785578607398439
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 2963745401024088120
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
  ParentId: 4930198475630388942
  ChildIds: 16512547144163662105
  ChildIds: 995197116833816224
  ChildIds: 10659411679543853738
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
        SelfId: 16512547144163662105
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
        SelfId: 841534158063459245
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
  Id: 10659411679543853738
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
  ParentId: 2963745401024088120
  ChildIds: 17635454041368282540
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
  IsAdvanced: true
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17635454041368282540
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
  ParentId: 10659411679543853738
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 2963745401024088120
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
  Id: 995197116833816224
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
  ParentId: 2963745401024088120
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 2963745401024088120
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
  Id: 16512547144163662105
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
  ParentId: 2963745401024088120
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 7376995597717453214
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
  ParentId: 4930198475630388942
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 145460016793713492
  Name: "Framework Dependencies"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8401913848203132518
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
      key: 9550555662997712910
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
