Assets {
  Id: 15017071524491817913
  Name: "Class, Abilities, Inventory & Shop"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8067326117451680903
      Objects {
        Id: 8067326117451680903
        Name: "Class, Abilities, Inventory & Shop"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16937607096047638534
        ChildIds: 16648679857669058489
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 16648679857669058489
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
        ParentId: 8067326117451680903
        ChildIds: 10766933810125385355
        ChildIds: 16553177687411290700
        ChildIds: 6924779867800344406
        ChildIds: 7829949786842505632
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 10766933810125385355
        Name: "Abilities and Class UI"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16648679857669058489
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
                  X: 18547.4023
                  Y: -7613.13916
                  Z: -8617.66406
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 71.6867752
                }
              }
            }
          }
          TemplateAsset {
            Id: 13661131819183159129
          }
        }
      }
      Objects {
        Id: 16553177687411290700
        Name: "Inventory"
        Transform {
          Location {
            X: 19185.9316
            Y: -9185.1
            Z: -27601.6484
          }
          Rotation {
            Yaw: -102.870399
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16648679857669058489
        ChildIds: 16901842099040138634
        ChildIds: 15951153239229957115
        ChildIds: 15469595507139703106
        ChildIds: 7236043260907777924
        ChildIds: 11548767682093472426
        ChildIds: 5740340181078589841
        ChildIds: 1570772874813467014
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16901842099040138634
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
        ParentId: 16553177687411290700
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 16553177687411290700
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15951153239229957115
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
        ParentId: 16553177687411290700
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15469595507139703106
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
        ParentId: 16553177687411290700
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7236043260907777924
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
        ParentId: 16553177687411290700
        UnregisteredParameters {
          Overrides {
            Name: "cs:Slots"
            ObjectReference {
              SubObjectId: 16404085018578336114
            }
          }
          Overrides {
            Name: "cs:EquipmentSlots"
            ObjectReference {
              SubObjectId: 14071005445969069281
            }
          }
          Overrides {
            Name: "cs:ResourceSlots"
            ObjectReference {
              SubObjectId: 10783155988147330805
            }
          }
          Overrides {
            Name: "cs:HoverPanel"
            ObjectReference {
              SubObjectId: 5740340181078589841
            }
          }
          Overrides {
            Name: "cs:dragPanel"
            ObjectReference {
              SubObjectId: 1570772874813467014
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 16553177687411290700
            }
          }
          Overrides {
            Name: "cs:StatDisplay"
            ObjectReference {
              SubObjectId: 6408892102629476214
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11548767682093472426
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
        ParentId: 16553177687411290700
        ChildIds: 3641788038826889568
        ChildIds: 10131641713757874977
        ChildIds: 10770068487422254785
        ChildIds: 6056593164898100548
        ChildIds: 13041679538990019629
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3641788038826889568
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
        ParentId: 11548767682093472426
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10131641713757874977
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
        ParentId: 11548767682093472426
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10770068487422254785
        Name: "Resource Inventory Bar"
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
        ParentId: 11548767682093472426
        ChildIds: 7630376162866603344
        ChildIds: 11824744392980682764
        ChildIds: 10288434363823272130
        ChildIds: 10783155988147330805
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          UIY: -20
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
        Id: 7630376162866603344
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
        ParentId: 10770068487422254785
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 11824744392980682764
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
        ParentId: 10770068487422254785
        ChildIds: 1035617410603383105
        ChildIds: 15671064729961707807
        ChildIds: 12209872518215937914
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 1035617410603383105
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
        ParentId: 11824744392980682764
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 15671064729961707807
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
        ParentId: 11824744392980682764
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 12209872518215937914
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
        ParentId: 11824744392980682764
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 10288434363823272130
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
        ParentId: 10770068487422254785
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 10783155988147330805
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
        ParentId: 10770068487422254785
        ChildIds: 4251116156530535501
        ChildIds: 17844400856609522939
        ChildIds: 5393094668461198504
        ChildIds: 11282967997827922081
        ChildIds: 16796687983782589025
        ChildIds: 3989708399733640681
        ChildIds: 17915214631227432618
        ChildIds: 11798013844404714436
        ChildIds: 9432471237161141903
        ChildIds: 13278943381900504242
        ChildIds: 6735693969382670485
        ChildIds: 4998836080649366734
        ChildIds: 93719826191792549
        ChildIds: 15033678217452918370
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 4251116156530535501
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
        ParentId: 10783155988147330805
        ChildIds: 16523267475527409063
        ChildIds: 9431864656724170049
        ChildIds: 1254988449417275572
        ChildIds: 9502960918924659724
        ChildIds: 4283226403707522579
        ChildIds: 17410237382936444295
        ChildIds: 4048113136389547414
        ChildIds: 15107446040624684504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3619711097370107436
          SubobjectId: 15486898897841666860
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16523267475527409063
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
        ParentId: 4251116156530535501
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9284339707327872774
          SubobjectId: 7210212064153934342
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9431864656724170049
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
        ParentId: 4251116156530535501
        ChildIds: 11203622216595025857
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
          SelfId: 1342539841375605299
          SubobjectId: 17759629232812980019
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11203622216595025857
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
        ParentId: 9431864656724170049
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 640842956387678043
          SubobjectId: 17020214770797187675
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1254988449417275572
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
        ParentId: 4251116156530535501
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9974480836934399469
          SubobjectId: 7979025141048742125
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9502960918924659724
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
        ParentId: 4251116156530535501
        ChildIds: 4500214518713915482
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
          SelfId: 18442742363015037110
          SubobjectId: 1956391933772965302
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4500214518713915482
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
        ParentId: 9502960918924659724
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14610296182509462168
          SubobjectId: 3320695085318637464
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4283226403707522579
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
        ParentId: 4251116156530535501
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9348692287407508114
          SubobjectId: 7307779190775787410
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17410237382936444295
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
        ParentId: 4251116156530535501
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13200124021664510860
          SubobjectId: 6045812786336667276
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4048113136389547414
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
        ParentId: 4251116156530535501
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8993594780981538192
          SubobjectId: 10959758885803739280
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15107446040624684504
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
        ParentId: 4251116156530535501
        ChildIds: 12345381535749630681
        ChildIds: 4056012174502877388
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 618261158330378747
          SubobjectId: 17024672367240105211
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12345381535749630681
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
        ParentId: 15107446040624684504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8983233973288394996
          SubobjectId: 10988101231077361140
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4056012174502877388
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
        ParentId: 15107446040624684504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14740792022698740248
          SubobjectId: 2902174482182156056
          InstanceId: 3635923328685262958
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17844400856609522939
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
        ParentId: 10783155988147330805
        ChildIds: 17727252470612304974
        ChildIds: 5763026713956444260
        ChildIds: 10837280903933943043
        ChildIds: 3009310285814889593
        ChildIds: 11170244345002933739
        ChildIds: 17497994318580094439
        ChildIds: 4121714184438296461
        ChildIds: 859357618315427002
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9518012523350188573
          SubobjectId: 15486898897841666860
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17727252470612304974
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
        ParentId: 17844400856609522939
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3960229928667824951
          SubobjectId: 7210212064153934342
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5763026713956444260
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
        ParentId: 17844400856609522939
        ChildIds: 6457236401315531338
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
          SelfId: 11857029188840697346
          SubobjectId: 17759629232812980019
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6457236401315531338
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
        ParentId: 5763026713956444260
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13747715740977679210
          SubobjectId: 17020214770797187675
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10837280903933943043
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
        ParentId: 17844400856609522939
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4341875347623725532
          SubobjectId: 7979025141048742125
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3009310285814889593
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
        ParentId: 17844400856609522939
        ChildIds: 13407125044584951951
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
          SelfId: 5322341690940750983
          SubobjectId: 1956391933772965302
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13407125044584951951
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
        ParentId: 3009310285814889593
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9002479182855397033
          SubobjectId: 3320695085318637464
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11170244345002933739
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
        ParentId: 17844400856609522939
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4003757226745591459
          SubobjectId: 7307779190775787410
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17497994318580094439
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
        ParentId: 17844400856609522939
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 80303085072732093
          SubobjectId: 6045812786336667276
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4121714184438296461
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
        ParentId: 17844400856609522939
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14619426746089279905
          SubobjectId: 10959758885803739280
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 859357618315427002
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
        ParentId: 17844400856609522939
        ChildIds: 2480317493811827628
        ChildIds: 11969626202781117293
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13743166206892643786
          SubobjectId: 17024672367240105211
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2480317493811827628
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
        ParentId: 859357618315427002
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14593864369870363845
          SubobjectId: 10988101231077361140
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11969626202781117293
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
        ParentId: 859357618315427002
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8844183290632468009
          SubobjectId: 2902174482182156056
          InstanceId: 9816819356141240712
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5393094668461198504
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
        ParentId: 10783155988147330805
        ChildIds: 7805748036592255503
        ChildIds: 5652673549414905342
        ChildIds: 12820159600437608339
        ChildIds: 13538930331327731126
        ChildIds: 12601960858738857642
        ChildIds: 10677013094705665033
        ChildIds: 11524819183607561885
        ChildIds: 5201958378972499740
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2839674647126235957
          SubobjectId: 15486898897841666860
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7805748036592255503
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
        ParentId: 5393094668461198504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 10775944983735728671
          SubobjectId: 7210212064153934342
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5652673549414905342
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
        ParentId: 5393094668461198504
        ChildIds: 10302575227767010563
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
          SelfId: 572777131087238954
          SubobjectId: 17759629232812980019
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10302575227767010563
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
        ParentId: 5652673549414905342
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2141455427251008066
          SubobjectId: 17020214770797187675
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12820159600437608339
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
        ParentId: 5393094668461198504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11474952369650200820
          SubobjectId: 7979025141048742125
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13538930331327731126
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
        ParentId: 5393094668461198504
        ChildIds: 15944127523854105020
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
          SelfId: 16907227049668887983
          SubobjectId: 1956391933772965302
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15944127523854105020
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
        ParentId: 13538930331327731126
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 16109784762391226241
          SubobjectId: 3320695085318637464
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12601960858738857642
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
        ParentId: 5393094668461198504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 10731650210166427531
          SubobjectId: 7307779190775787410
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10677013094705665033
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
        ParentId: 5393094668461198504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11701200411037103765
          SubobjectId: 6045812786336667276
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11524819183607561885
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
        ParentId: 5393094668461198504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7610216778494027913
          SubobjectId: 10959758885803739280
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5201958378972499740
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
        ParentId: 5393094668461198504
        ChildIds: 6385410762153103869
        ChildIds: 17546144554333025582
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2145895008574156002
          SubobjectId: 17024672367240105211
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6385410762153103869
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
        ParentId: 5201958378972499740
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7636304721338164717
          SubobjectId: 10988101231077361140
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17546144554333025582
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
        ParentId: 5201958378972499740
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15691263643623771905
          SubobjectId: 2902174482182156056
          InstanceId: 5591746814387947893
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11282967997827922081
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
        ParentId: 10783155988147330805
        ChildIds: 13767970142579555071
        ChildIds: 2786695581227016508
        ChildIds: 2409956294079801679
        ChildIds: 2041270756254684830
        ChildIds: 15834896135239168543
        ChildIds: 10719176296799783920
        ChildIds: 3780695814004686823
        ChildIds: 13355499150935976066
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7463800662294417695
          SubobjectId: 15486898897841666860
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13767970142579555071
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
        ParentId: 11282967997827922081
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15382021425183223861
          SubobjectId: 7210212064153934342
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2786695581227016508
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
        ParentId: 11282967997827922081
        ChildIds: 5475305775418932937
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
          SelfId: 5120271613902331136
          SubobjectId: 17759629232812980019
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5475305775418932937
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
        ParentId: 2786695581227016508
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 6722687316271757416
          SubobjectId: 17020214770797187675
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2409956294079801679
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
        ParentId: 11282967997827922081
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 16123742367525173982
          SubobjectId: 7979025141048742125
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2041270756254684830
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
        ParentId: 11282967997827922081
        ChildIds: 13306226250818298636
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
          SelfId: 12276455586356645765
          SubobjectId: 1956391933772965302
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13306226250818298636
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
        ParentId: 2041270756254684830
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11487910520864009643
          SubobjectId: 3320695085318637464
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15834896135239168543
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
        ParentId: 11282967997827922081
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15281356897936033185
          SubobjectId: 7307779190775787410
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10719176296799783920
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
        ParentId: 11282967997827922081
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 16329825632081116351
          SubobjectId: 6045812786336667276
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3780695814004686823
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
        ParentId: 11282967997827922081
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2981622601557516963
          SubobjectId: 10959758885803739280
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13355499150935976066
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
        ParentId: 11282967997827922081
        ChildIds: 15101316789664248724
        ChildIds: 9306200989397085406
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 6718229383626008264
          SubobjectId: 17024672367240105211
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15101316789664248724
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
        ParentId: 13355499150935976066
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2955954053751369671
          SubobjectId: 10988101231077361140
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9306200989397085406
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
        ParentId: 13355499150935976066
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11042442584519886123
          SubobjectId: 2902174482182156056
          InstanceId: 15591437942721624918
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16796687983782589025
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
        ParentId: 10783155988147330805
        ChildIds: 8141217867765200329
        ChildIds: 12627872232205374714
        ChildIds: 17135230866589784361
        ChildIds: 13928859027193091863
        ChildIds: 16634571353978553830
        ChildIds: 2024043983097636149
        ChildIds: 2294183825241035568
        ChildIds: 18080916133962462053
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9559651267428118411
          SubobjectId: 15486898897841666860
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8141217867765200329
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
        ParentId: 16796687983782589025
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3911906210419723937
          SubobjectId: 7210212064153934342
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12627872232205374714
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
        ParentId: 16796687983782589025
        ChildIds: 8423777056256225740
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
          SelfId: 11831185892094124948
          SubobjectId: 17759629232812980019
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8423777056256225740
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
        ParentId: 12627872232205374714
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13724090372860069628
          SubobjectId: 17020214770797187675
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17135230866589784361
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
        ParentId: 16796687983782589025
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4394670204958327882
          SubobjectId: 7979025141048742125
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13928859027193091863
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
        ParentId: 16796687983782589025
        ChildIds: 13633529701792676558
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
          SelfId: 5287419794548453649
          SubobjectId: 1956391933772965302
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13633529701792676558
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
        ParentId: 13928859027193091863
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8958586294583841599
          SubobjectId: 3320695085318637464
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16634571353978553830
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
        ParentId: 16796687983782589025
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3975625308726983477
          SubobjectId: 7307779190775787410
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2024043983097636149
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
        ParentId: 16796687983782589025
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 117439804698477099
          SubobjectId: 6045812786336667276
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2294183825241035568
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
        ParentId: 16796687983782589025
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14582324574018640951
          SubobjectId: 10959758885803739280
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18080916133962462053
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
        ParentId: 16796687983782589025
        ChildIds: 15552665619046103127
        ChildIds: 824343069533222131
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13692624030808840284
          SubobjectId: 17024672367240105211
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15552665619046103127
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
        ParentId: 18080916133962462053
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14572420828360724819
          SubobjectId: 10988101231077361140
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 824343069533222131
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
        ParentId: 18080916133962462053
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8791211205801573311
          SubobjectId: 2902174482182156056
          InstanceId: 2708867515991601235
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3989708399733640681
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
        ParentId: 10783155988147330805
        ChildIds: 8932749704836409485
        ChildIds: 12862389516547208054
        ChildIds: 11761580245760299300
        ChildIds: 14501046830300437939
        ChildIds: 1463674499792951210
        ChildIds: 12750061693599945817
        ChildIds: 16639012760160533249
        ChildIds: 13466700050925329929
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8976598019768085167
          SubobjectId: 15486898897841666860
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8932749704836409485
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
        ParentId: 3989708399733640681
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14875422020146580357
          SubobjectId: 7210212064153934342
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12862389516547208054
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
        ParentId: 3989708399733640681
        ChildIds: 13233949180283744356
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
          SelfId: 6631880961947084464
          SubobjectId: 17759629232812980019
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13233949180283744356
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
        ParentId: 12862389516547208054
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 5065492951791354840
          SubobjectId: 17020214770797187675
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11761580245760299300
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
        ParentId: 3989708399733640681
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14178735974026232174
          SubobjectId: 7979025141048742125
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14501046830300437939
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
        ParentId: 3989708399733640681
        ChildIds: 18312076105071570132
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
          SelfId: 12779329192991388725
          SubobjectId: 1956391933772965302
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18312076105071570132
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
        ParentId: 14501046830300437939
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9541639688808322587
          SubobjectId: 3320695085318637464
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1463674499792951210
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
        ParentId: 3989708399733640681
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14922042246983548433
          SubobjectId: 7307779190775787410
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12750061693599945817
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
        ParentId: 3989708399733640681
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 17985343477199750927
          SubobjectId: 6045812786336667276
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16639012760160533249
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
        ParentId: 3989708399733640681
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3631922803222944019
          SubobjectId: 10959758885803739280
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13466700050925329929
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
        ParentId: 3989708399733640681
        ChildIds: 17519120752586699280
        ChildIds: 13274264437275821210
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 5060926098896625016
          SubobjectId: 17024672367240105211
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17519120752586699280
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
        ParentId: 13466700050925329929
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3603548146977461367
          SubobjectId: 10988101231077361140
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13274264437275821210
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
        ParentId: 13466700050925329929
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9383624177192697499
          SubobjectId: 2902174482182156056
          InstanceId: 6196339025763093544
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17915214631227432618
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
        ParentId: 10783155988147330805
        ChildIds: 17186581106955299324
        ChildIds: 17981984857645609002
        ChildIds: 10138996942752713160
        ChildIds: 18115628338596475065
        ChildIds: 14962898670229738772
        ChildIds: 749125607078745447
        ChildIds: 4817103012562754264
        ChildIds: 2189832521792710803
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9759000129100316558
          SubobjectId: 15486898897841666860
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17186581106955299324
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
        ParentId: 17915214631227432618
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3858946322822323876
          SubobjectId: 7210212064153934342
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17981984857645609002
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
        ParentId: 17915214631227432618
        ChildIds: 13356591629854920265
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
          SelfId: 12102449997556724625
          SubobjectId: 17759629232812980019
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13356591629854920265
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
        ParentId: 17981984857645609002
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13668875393321883385
          SubobjectId: 17020214770797187675
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10138996942752713160
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
        ParentId: 17915214631227432618
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4555773106565764175
          SubobjectId: 7979025141048742125
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18115628338596475065
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
        ParentId: 17915214631227432618
        ChildIds: 574669557253297907
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
          SelfId: 5378681753844343060
          SubobjectId: 1956391933772965302
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 574669557253297907
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
        ParentId: 18115628338596475065
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9193834765008225082
          SubobjectId: 3320695085318637464
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14962898670229738772
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
        ParentId: 17915214631227432618
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3812324448998058800
          SubobjectId: 7307779190775787410
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 749125607078745447
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
        ParentId: 17915214631227432618
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 172649875306107438
          SubobjectId: 6045812786336667276
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4817103012562754264
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
        ParentId: 17915214631227432618
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14527073306038570034
          SubobjectId: 10959758885803739280
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2189832521792710803
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
        ParentId: 17915214631227432618
        ChildIds: 13962466583220342212
        ChildIds: 5678139729364885965
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13673390017408338009
          SubobjectId: 17024672367240105211
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13962466583220342212
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
        ParentId: 2189832521792710803
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14555626633120203094
          SubobjectId: 10988101231077361140
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5678139729364885965
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
        ParentId: 2189832521792710803
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8774404911654103994
          SubobjectId: 2902174482182156056
          InstanceId: 17023119105449945751
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11798013844404714436
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
        ParentId: 10783155988147330805
        ChildIds: 16519352512058291039
        ChildIds: 13547326352987802932
        ChildIds: 8482545236614591037
        ChildIds: 4069649589342225905
        ChildIds: 2084409765400708128
        ChildIds: 4456659139951822386
        ChildIds: 17599357938683057361
        ChildIds: 15573555449672017552
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15558921913719533990
          SubobjectId: 15486898897841666860
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16519352512058291039
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
        ParentId: 11798013844404714436
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7282092856453828748
          SubobjectId: 7210212064153934342
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13547326352987802932
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
        ParentId: 11798013844404714436
        ChildIds: 2695801907363556128
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
          SelfId: 17831441717975547321
          SubobjectId: 17759629232812980019
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2695801907363556128
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
        ParentId: 13547326352987802932
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 17092025201900624081
          SubobjectId: 17020214770797187675
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8482545236614591037
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
        ParentId: 11798013844404714436
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8051257880317893223
          SubobjectId: 7979025141048742125
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4069649589342225905
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
        ParentId: 11798013844404714436
        ChildIds: 14099528791005479915
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
          SelfId: 1884300610594713404
          SubobjectId: 1956391933772965302
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14099528791005479915
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
        ParentId: 4069649589342225905
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3392789294538755346
          SubobjectId: 3320695085318637464
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2084409765400708128
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
        ParentId: 11798013844404714436
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7235757386082297112
          SubobjectId: 7307779190775787410
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4456659139951822386
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
        ParentId: 11798013844404714436
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 5974002672161397766
          SubobjectId: 6045812786336667276
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17599357938683057361
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
        ParentId: 11798013844404714436
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11031571507069698586
          SubobjectId: 10959758885803739280
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15573555449672017552
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
        ParentId: 11798013844404714436
        ChildIds: 8572983844913196934
        ChildIds: 14575060790201166820
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 17096552747386783345
          SubobjectId: 17024672367240105211
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8572983844913196934
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
        ParentId: 15573555449672017552
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11060122355955175294
          SubobjectId: 10988101231077361140
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14575060790201166820
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
        ParentId: 15573555449672017552
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2974197805957850514
          SubobjectId: 2902174482182156056
          InstanceId: 3275958104285569397
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9432471237161141903
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
        ParentId: 10783155988147330805
        ChildIds: 8912511008908607911
        ChildIds: 6141432854251885732
        ChildIds: 669127758594512060
        ChildIds: 108897188173213345
        ChildIds: 14443685532740680631
        ChildIds: 2471123271249618038
        ChildIds: 16091492161476295560
        ChildIds: 2801119503732877416
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13317844067891420518
          SubobjectId: 15486898897841666860
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8912511008908607911
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
        ParentId: 9432471237161141903
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 734413617304845388
          SubobjectId: 7210212064153934342
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6141432854251885732
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
        ParentId: 9432471237161141903
        ChildIds: 12800433483272082210
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
          SelfId: 10973047231128424825
          SubobjectId: 17759629232812980019
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12800433483272082210
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
        ParentId: 6141432854251885732
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9371159356616389649
          SubobjectId: 17020214770797187675
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 669127758594512060
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
        ParentId: 9432471237161141903
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 37658237492049575
          SubobjectId: 7979025141048742125
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 108897188173213345
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
        ParentId: 9432471237161141903
        ChildIds: 18222446817723514869
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
          SelfId: 8437626916268246012
          SubobjectId: 1956391933772965302
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18222446817723514869
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
        ParentId: 108897188173213345
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4623932889657385426
          SubobjectId: 3320695085318637464
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14443685532740680631
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
        ParentId: 9432471237161141903
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 816429802157574616
          SubobjectId: 7307779190775787410
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2471123271249618038
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
        ParentId: 9432471237161141903
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4456859742586220742
          SubobjectId: 6045812786336667276
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16091492161476295560
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
        ParentId: 9432471237161141903
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 17736893058899308250
          SubobjectId: 10959758885803739280
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2801119503732877416
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
        ParentId: 9432471237161141903
        ChildIds: 16396087233905730805
        ChildIds: 17137161981811238722
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9402726236457462449
          SubobjectId: 17024672367240105211
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16396087233905730805
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
        ParentId: 2801119503732877416
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 17745144857194505150
          SubobjectId: 10988101231077361140
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17137161981811238722
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
        ParentId: 2801119503732877416
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 5077914890235021650
          SubobjectId: 2902174482182156056
          InstanceId: 18341936746003888352
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13278943381900504242
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
        ParentId: 10783155988147330805
        ChildIds: 1601320961840587097
        ChildIds: 12430664165360911007
        ChildIds: 8422540716811848656
        ChildIds: 2078121386934900739
        ChildIds: 9979838972335741891
        ChildIds: 5559324074270134426
        ChildIds: 4244184191828053968
        ChildIds: 14467394925780414785
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8746168712496284530
          SubobjectId: 15486898897841666860
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1601320961840587097
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
        ParentId: 13278943381900504242
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14664837282308432472
          SubobjectId: 7210212064153934342
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12430664165360911007
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
        ParentId: 13278943381900504242
        ChildIds: 4235720260978851931
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
          SelfId: 6483713232081145709
          SubobjectId: 17759629232812980019
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4235720260978851931
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
        ParentId: 12430664165360911007
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4881855045466761733
          SubobjectId: 17020214770797187675
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8422540716811848656
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
        ParentId: 13278943381900504242
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 13922622556027267251
          SubobjectId: 7979025141048742125
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2078121386934900739
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
        ParentId: 13278943381900504242
        ChildIds: 6926548049365005078
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
          SelfId: 13018400730518494696
          SubobjectId: 1956391933772965302
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6926548049365005078
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
        ParentId: 2078121386934900739
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9338597498191232966
          SubobjectId: 3320695085318637464
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9979838972335741891
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
        ParentId: 13278943381900504242
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14620465671908693964
          SubobjectId: 7307779190775787410
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5559324074270134426
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
        ParentId: 13278943381900504242
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 18188680818637614802
          SubobjectId: 6045812786336667276
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4244184191828053968
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
        ParentId: 13278943381900504242
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4005042331635216590
          SubobjectId: 10959758885803739280
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14467394925780414785
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
        ParentId: 13278943381900504242
        ChildIds: 7303747562264891806
        ChildIds: 5259939000960735739
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4886387131649815717
          SubobjectId: 17024672367240105211
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7303747562264891806
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
        ParentId: 14467394925780414785
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4031202970893925802
          SubobjectId: 10988101231077361140
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5259939000960735739
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
        ParentId: 14467394925780414785
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 9784842274946684742
          SubobjectId: 2902174482182156056
          InstanceId: 4884075037718226532
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6735693969382670485
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
        ParentId: 10783155988147330805
        ChildIds: 13895460110402890136
        ChildIds: 5946900612898774268
        ChildIds: 327468841976821513
        ChildIds: 5400337985329271032
        ChildIds: 16263817744847040619
        ChildIds: 12990634417729856317
        ChildIds: 16411613358585523071
        ChildIds: 4004398679847605254
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 8437568373666087891
          SubobjectId: 15486898897841666860
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13895460110402890136
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
        ParentId: 6735693969382670485
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14410136094428111609
          SubobjectId: 7210212064153934342
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5946900612898774268
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
        ParentId: 6735693969382670485
        ChildIds: 10039391024252502557
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
          SelfId: 6161530621819113420
          SubobjectId: 17759629232812980019
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10039391024252502557
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
        ParentId: 5946900612898774268
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 5748621645907798692
          SubobjectId: 17020214770797187675
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 327468841976821513
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
        ParentId: 6735693969382670485
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14794314685227378706
          SubobjectId: 7979025141048742125
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5400337985329271032
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
        ParentId: 6735693969382670485
        ChildIds: 6861460273172677493
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
          SelfId: 13317786062261034313
          SubobjectId: 1956391933772965302
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6861460273172677493
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
        ParentId: 5400337985329271032
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 10223660796802514791
          SubobjectId: 3320695085318637464
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16263817744847040619
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
        ParentId: 6735693969382670485
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 14312076439479064429
          SubobjectId: 7307779190775787410
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12990634417729856317
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
        ParentId: 6735693969382670485
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 17299396507636674163
          SubobjectId: 6045812786336667276
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16411613358585523071
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
        ParentId: 6735693969382670485
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4317867264537718895
          SubobjectId: 10959758885803739280
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4004398679847605254
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
        ParentId: 6735693969382670485
        ChildIds: 17553390171027372802
        ChildIds: 16018720240396454037
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 5744075880776135684
          SubobjectId: 17024672367240105211
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17553390171027372802
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
        ParentId: 4004398679847605254
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 4290052616130116875
          SubobjectId: 10988101231077361140
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16018720240396454037
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
        ParentId: 4004398679847605254
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 10066213212441155559
          SubobjectId: 2902174482182156056
          InstanceId: 14289280600823351237
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4998836080649366734
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
        ParentId: 10783155988147330805
        ChildIds: 1326831159591589203
        ChildIds: 14731259249269048864
        ChildIds: 12437168229270878354
        ChildIds: 8780860428858282626
        ChildIds: 9663080397896773189
        ChildIds: 8530728435659855458
        ChildIds: 8223654848133668463
        ChildIds: 17597593497801477139
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 5786441499707918974
          SubobjectId: 15486898897841666860
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1326831159591589203
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
        ParentId: 4998836080649366734
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 16334208641281780564
          SubobjectId: 7210212064153934342
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14731259249269048864
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
        ParentId: 4998836080649366734
        ChildIds: 16192022581299993269
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
          SelfId: 8131237226230253153
          SubobjectId: 17759629232812980019
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16192022581299993269
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
        ParentId: 14731259249269048864
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7679453977396634377
          SubobjectId: 17020214770797187675
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12437168229270878354
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
        ParentId: 4998836080649366734
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 16724720345940615615
          SubobjectId: 7979025141048742125
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8780860428858282626
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
        ParentId: 4998836080649366734
        ChildIds: 18122697085102616527
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
          SelfId: 11351205786092885220
          SubobjectId: 1956391933772965302
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18122697085102616527
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
        ParentId: 8780860428858282626
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 12156463384369002186
          SubobjectId: 3320695085318637464
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9663080397896773189
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
        ParentId: 4998836080649366734
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 16414327516949929664
          SubobjectId: 7307779190775787410
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8530728435659855458
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
        ParentId: 4998836080649366734
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15368005061775615966
          SubobjectId: 6045812786336667276
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8223654848133668463
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
        ParentId: 4998836080649366734
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2214072545774516674
          SubobjectId: 10959758885803739280
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17597593497801477139
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
        ParentId: 4998836080649366734
        ChildIds: 13659379526920895479
        ChildIds: 6265330805798227432
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7701961085839457705
          SubobjectId: 17024672367240105211
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13659379526920895479
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
        ParentId: 17597593497801477139
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2223799953030968486
          SubobjectId: 10988101231077361140
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6265330805798227432
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
        ParentId: 17597593497801477139
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 12603197993546243658
          SubobjectId: 2902174482182156056
          InstanceId: 4726230195720230300
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 93719826191792549
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
        ParentId: 10783155988147330805
        ChildIds: 17044994819321766325
        ChildIds: 2369737914092770120
        ChildIds: 3566019540015912606
        ChildIds: 10765864454526963409
        ChildIds: 1238048948742471722
        ChildIds: 10938162687853068531
        ChildIds: 15658929111816530242
        ChildIds: 3657239400423949705
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7312942601576820792
          SubobjectId: 15486898897841666860
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17044994819321766325
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
        ParentId: 93719826191792549
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15537312447220322578
          SubobjectId: 7210212064153934342
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2369737914092770120
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
        ParentId: 93719826191792549
        ChildIds: 9388800730839592512
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
          SelfId: 5036904836843895847
          SubobjectId: 17759629232812980019
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9388800730839592512
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
        ParentId: 2369737914092770120
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 6891560600112601423
          SubobjectId: 17020214770797187675
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3566019540015912606
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
        ParentId: 93719826191792549
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15936972328608209913
          SubobjectId: 7979025141048742125
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10765864454526963409
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
        ParentId: 93719826191792549
        ChildIds: 13534070119366487619
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
          SelfId: 12157131754289311394
          SubobjectId: 1956391933772965302
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13534070119366487619
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
        ParentId: 10765864454526963409
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11350536041774615692
          SubobjectId: 3320695085318637464
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1238048948742471722
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
        ParentId: 93719826191792549
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15490760418021713030
          SubobjectId: 7307779190775787410
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10938162687853068531
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
        ParentId: 93719826191792549
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 16174471628660383128
          SubobjectId: 6045812786336667276
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15658929111816530242
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
        ParentId: 93719826191792549
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3136946607974531972
          SubobjectId: 10959758885803739280
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3657239400423949705
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
        ParentId: 93719826191792549
        ChildIds: 8515434838676679125
        ChildIds: 6020155600691746180
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 6905011788798117871
          SubobjectId: 17024672367240105211
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8515434838676679125
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
        ParentId: 3657239400423949705
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 3165429278348480224
          SubobjectId: 10988101231077361140
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6020155600691746180
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
        ParentId: 3657239400423949705
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11229398715747312652
          SubobjectId: 2902174482182156056
          InstanceId: 8931494669545656050
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15033678217452918370
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
        ParentId: 10783155988147330805
        ChildIds: 12749633209366962925
        ChildIds: 6573708332814480011
        ChildIds: 12102766849518526624
        ChildIds: 14470358000508048278
        ChildIds: 16760008887220646968
        ChildIds: 15938481270723753422
        ChildIds: 7433676784513110722
        ChildIds: 13961912464292450866
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2800674866339214616
          SubobjectId: 15486898897841666860
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12749633209366962925
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
        ParentId: 15033678217452918370
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 10682163548460635186
          SubobjectId: 7210212064153934342
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6573708332814480011
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
        ParentId: 15033678217452918370
        ChildIds: 5040196388754890637
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
          SelfId: 452499870227052807
          SubobjectId: 17759629232812980019
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5040196388754890637
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
        ParentId: 6573708332814480011
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2018326926582078575
          SubobjectId: 17020214770797187675
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12102766849518526624
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
        ParentId: 15033678217452918370
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11424026529837997785
          SubobjectId: 7979025141048742125
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14470358000508048278
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
        ParentId: 15033678217452918370
        ChildIds: 1855161340329659125
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
          SelfId: 16940284038823078786
          SubobjectId: 1956391933772965302
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1855161340329659125
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
        ParentId: 14470358000508048278
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 16006919092794771884
          SubobjectId: 3320695085318637464
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16760008887220646968
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
        ParentId: 15033678217452918370
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 10762205604208468390
          SubobjectId: 7307779190775787410
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15938481270723753422
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
        ParentId: 15033678217452918370
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 11805746889782089912
          SubobjectId: 6045812786336667276
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7433676784513110722
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
        ParentId: 15033678217452918370
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7505697581385483940
          SubobjectId: 10959758885803739280
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13961912464292450866
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
        ParentId: 15033678217452918370
        ChildIds: 4279231841110380125
        ChildIds: 14328413410650060361
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 2049898538409624271
          SubobjectId: 17024672367240105211
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4279231841110380125
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
        ParentId: 13961912464292450866
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 7515638440056638400
          SubobjectId: 10988101231077361140
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14328413410650060361
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
        ParentId: 13961912464292450866
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          SelfId: 15598185277314916652
          SubobjectId: 2902174482182156056
          InstanceId: 6755063217865718413
          TemplateId: 5133444388016553382
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6056593164898100548
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
        ParentId: 11548767682093472426
        ChildIds: 10029502995319538580
        ChildIds: 3504192173381964993
        ChildIds: 11239134397025935770
        ChildIds: 7889666427120355351
        ChildIds: 10328593458445323638
        ChildIds: 11856281740053107862
        ChildIds: 11287892779395320658
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10029502995319538580
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
        ParentId: 6056593164898100548
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3504192173381964993
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
        ParentId: 6056593164898100548
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11239134397025935770
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
        ParentId: 6056593164898100548
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7889666427120355351
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
        ParentId: 6056593164898100548
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10328593458445323638
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
        ParentId: 6056593164898100548
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11856281740053107862
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
        ParentId: 6056593164898100548
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11287892779395320658
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
        ParentId: 6056593164898100548
        ChildIds: 12399691412543888161
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12399691412543888161
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
        ParentId: 11287892779395320658
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13041679538990019629
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
        ParentId: 11548767682093472426
        ChildIds: 8500657403789861170
        ChildIds: 10985189081117562420
        ChildIds: 97047018550614926
        ChildIds: 6408892102629476214
        ChildIds: 15841242793567705213
        ChildIds: 7185058335112811954
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8500657403789861170
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
        ParentId: 13041679538990019629
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10985189081117562420
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
        ParentId: 13041679538990019629
        ChildIds: 12036569274180636437
        ChildIds: 16404085018578336114
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12036569274180636437
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
        ParentId: 10985189081117562420
        ChildIds: 16940924162473064672
        ChildIds: 18181551198816701580
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 16940924162473064672
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
        ParentId: 12036569274180636437
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 18181551198816701580
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
        ParentId: 12036569274180636437
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16404085018578336114
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
        ParentId: 10985189081117562420
        ChildIds: 8980506958739847011
        ChildIds: 16509663252783729971
        ChildIds: 1468831577663173214
        ChildIds: 17783440714722048206
        ChildIds: 711377577797513265
        ChildIds: 6818350410371554612
        ChildIds: 6413227132001307610
        ChildIds: 16252024415647147180
        ChildIds: 916635276794110369
        ChildIds: 1940494985884498338
        ChildIds: 17068098159315728299
        ChildIds: 5504337924596352131
        ChildIds: 12043690861618095752
        ChildIds: 2167511196584815944
        ChildIds: 16495178248719140398
        ChildIds: 18283165125471391462
        ChildIds: 318221187126461089
        ChildIds: 10842715016314594532
        ChildIds: 13172668101982196158
        ChildIds: 15567884160597171697
        ChildIds: 4369676815509109304
        ChildIds: 14256314977012335177
        ChildIds: 3058353431925033332
        ChildIds: 2681664131746321032
        ChildIds: 9163954963905998987
        ChildIds: 1541843703888865751
        ChildIds: 5515185682551246649
        ChildIds: 3617379086018195455
        ChildIds: 2940644423576384576
        ChildIds: 953718652366371958
        ChildIds: 13589889349684109891
        ChildIds: 14226971133887208294
        ChildIds: 2205136957975916091
        ChildIds: 2064887618495371910
        ChildIds: 15656706279670820717
        ChildIds: 8641798759533936398
        ChildIds: 2646509275535494728
        ChildIds: 9636385508807504257
        ChildIds: 16574359324921459182
        ChildIds: 12882700846721370118
        ChildIds: 6099004932902039800
        ChildIds: 16804535868622867800
        ChildIds: 413735588077630005
        ChildIds: 17290459489652016151
        ChildIds: 8778386858216919359
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8980506958739847011
        Name: "Slot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 16509663252783729971
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 1468831577663173214
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 17783440714722048206
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 711377577797513265
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 6818350410371554612
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 6413227132001307610
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 16252024415647147180
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 916635276794110369
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 1940494985884498338
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 17068098159315728299
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 5504337924596352131
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 12043690861618095752
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 2167511196584815944
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 16495178248719140398
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 18283165125471391462
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 318221187126461089
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 10842715016314594532
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 13172668101982196158
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 15567884160597171697
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 4369676815509109304
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 14256314977012335177
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 3058353431925033332
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 2681664131746321032
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 9163954963905998987
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 1541843703888865751
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 5515185682551246649
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 3617379086018195455
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 2940644423576384576
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 953718652366371958
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 13589889349684109891
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 14226971133887208294
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 2205136957975916091
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 2064887618495371910
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 15656706279670820717
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 8641798759533936398
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 2646509275535494728
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 9636385508807504257
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 16574359324921459182
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 12882700846721370118
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 6099004932902039800
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 16804535868622867800
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 413735588077630005
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 17290459489652016151
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 8778386858216919359
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
        ParentId: 16404085018578336114
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
      }
      Objects {
        Id: 97047018550614926
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
        ParentId: 13041679538990019629
        ChildIds: 3800478170687623312
        ChildIds: 3709281841650500922
        ChildIds: 14071005445969069281
        ChildIds: 18378183495161417931
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3800478170687623312
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
        ParentId: 97047018550614926
        ChildIds: 12255667438772793234
        ChildIds: 16928741675596107804
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 12255667438772793234
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
        ParentId: 3800478170687623312
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 16928741675596107804
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
        ParentId: 3800478170687623312
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3709281841650500922
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
        ParentId: 97047018550614926
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14071005445969069281
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
        ParentId: 97047018550614926
        ChildIds: 13119806353628844664
        ChildIds: 819105968966979557
        ChildIds: 17536963965318740089
        ChildIds: 7970862596753192168
        ChildIds: 7584391168874439497
        ChildIds: 12989879568074557134
        ChildIds: 15414422935796968052
        ChildIds: 5540543630053005793
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13119806353628844664
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
        ParentId: 14071005445969069281
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
      }
      Objects {
        Id: 819105968966979557
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
        ParentId: 14071005445969069281
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
      }
      Objects {
        Id: 17536963965318740089
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
        ParentId: 14071005445969069281
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
      }
      Objects {
        Id: 7970862596753192168
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
        ParentId: 14071005445969069281
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
      }
      Objects {
        Id: 7584391168874439497
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
        ParentId: 14071005445969069281
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
      }
      Objects {
        Id: 12989879568074557134
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
        ParentId: 14071005445969069281
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
      }
      Objects {
        Id: 15414422935796968052
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
        ParentId: 14071005445969069281
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
      }
      Objects {
        Id: 5540543630053005793
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
        ParentId: 14071005445969069281
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
      }
      Objects {
        Id: 18378183495161417931
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
        ParentId: 97047018550614926
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6408892102629476214
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
        ParentId: 13041679538990019629
        ChildIds: 11299374962682064842
        ChildIds: 17689736490045154417
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11299374962682064842
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
        ParentId: 6408892102629476214
        ChildIds: 3990568297359547037
        ChildIds: 17093847080898937567
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 3990568297359547037
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
        ParentId: 11299374962682064842
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 17093847080898937567
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
        ParentId: 11299374962682064842
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17689736490045154417
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
        ParentId: 6408892102629476214
        ChildIds: 13952346395103281096
        ChildIds: 6501526960333659569
        ChildIds: 1114625479476631244
        ChildIds: 7455650006840140574
        ChildIds: 14701362114086623531
        ChildIds: 15108372908695487795
        ChildIds: 9452501937180870429
        ChildIds: 8433100782286356276
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13952346395103281096
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
        ParentId: 17689736490045154417
        ChildIds: 17189930680254563916
        ChildIds: 10081619544377650641
        ChildIds: 7532174898685289780
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17189930680254563916
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
        ParentId: 13952346395103281096
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10081619544377650641
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
        ParentId: 13952346395103281096
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7532174898685289780
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
        ParentId: 13952346395103281096
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6501526960333659569
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
        ParentId: 17689736490045154417
        ChildIds: 6545104779516454553
        ChildIds: 8019776602435503848
        ChildIds: 13168229621138569828
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6545104779516454553
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
        ParentId: 6501526960333659569
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8019776602435503848
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
        ParentId: 6501526960333659569
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13168229621138569828
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
        ParentId: 6501526960333659569
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1114625479476631244
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
        ParentId: 17689736490045154417
        ChildIds: 6232866266456280861
        ChildIds: 14428208284613266528
        ChildIds: 2154203908116654740
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6232866266456280861
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
        ParentId: 1114625479476631244
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14428208284613266528
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
        ParentId: 1114625479476631244
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2154203908116654740
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
        ParentId: 1114625479476631244
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7455650006840140574
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
        ParentId: 17689736490045154417
        ChildIds: 633237182714810891
        ChildIds: 12085449146906792505
        ChildIds: 4265659039101950124
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 633237182714810891
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
        ParentId: 7455650006840140574
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12085449146906792505
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
        ParentId: 7455650006840140574
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4265659039101950124
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
        ParentId: 7455650006840140574
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14701362114086623531
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
        ParentId: 17689736490045154417
        ChildIds: 822598711252376242
        ChildIds: 9896470799035563132
        ChildIds: 8491487530163182069
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 822598711252376242
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
        ParentId: 14701362114086623531
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9896470799035563132
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
        ParentId: 14701362114086623531
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8491487530163182069
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
        ParentId: 14701362114086623531
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15108372908695487795
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
        ParentId: 17689736490045154417
        ChildIds: 12141240265172939273
        ChildIds: 18350616249872656890
        ChildIds: 7965820173199606035
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12141240265172939273
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
        ParentId: 15108372908695487795
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18350616249872656890
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
        ParentId: 15108372908695487795
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7965820173199606035
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
        ParentId: 15108372908695487795
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9452501937180870429
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
        ParentId: 17689736490045154417
        ChildIds: 11578276521376543693
        ChildIds: 4213691491661378180
        ChildIds: 14209312644228158204
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11578276521376543693
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
        ParentId: 9452501937180870429
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4213691491661378180
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
        ParentId: 9452501937180870429
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14209312644228158204
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
        ParentId: 9452501937180870429
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8433100782286356276
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
        ParentId: 17689736490045154417
        ChildIds: 8826448932052035854
        ChildIds: 16004098375226622609
        ChildIds: 15028991898615690519
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8826448932052035854
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
        ParentId: 8433100782286356276
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16004098375226622609
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
        ParentId: 8433100782286356276
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15028991898615690519
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
        ParentId: 8433100782286356276
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15841242793567705213
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
        ParentId: 13041679538990019629
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7185058335112811954
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
        ParentId: 13041679538990019629
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 5740340181078589841
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
        ParentId: 16553177687411290700
        ChildIds: 5315217792386469612
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
          UIX: 130
          UIY: 36.0465698
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
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5315217792386469612
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
        ParentId: 5740340181078589841
        ChildIds: 4841214308131933793
        ChildIds: 14872521562098444848
        ChildIds: 16979679461195039182
        ChildIds: 13056289770798921546
        ChildIds: 9112641865309220505
        ChildIds: 17703671049912818147
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 4841214308131933793
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
        ParentId: 5315217792386469612
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 14872521562098444848
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
        ParentId: 5315217792386469612
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 16979679461195039182
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
        ParentId: 5315217792386469612
        ChildIds: 1369299055821408974
        ChildIds: 13782570257047414493
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 1369299055821408974
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
        ParentId: 16979679461195039182
        ChildIds: 9202249533147868779
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
        Id: 9202249533147868779
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
        ParentId: 1369299055821408974
        Collidable_v2 {
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
        Id: 13782570257047414493
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
        ParentId: 16979679461195039182
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 13056289770798921546
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
        ParentId: 5315217792386469612
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 9112641865309220505
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
        ParentId: 5315217792386469612
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 17703671049912818147
        Name: "Arrow"
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
        ParentId: 5315217792386469612
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 43
          Height: 30
          UIX: -26
          UIY: 276
          RotationAngle: -90
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
                Value: "mc:euianchor:topcenter"
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
        Id: 1570772874813467014
        Name: "dragPanel"
        Transform {
          Location {
            X: -3363.95557
            Y: 910.064697
            Z: -36373.3516
          }
          Rotation {
            Yaw: 80.3704
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16553177687411290700
        ChildIds: 1229049453747449574
        ChildIds: 12057341239923506204
        ChildIds: 3355809163368209533
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
          Width: 96
          Height: 96
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
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1229049453747449574
        Name: "bg"
        Transform {
          Location {
            X: 17189.5781
            Y: 12346.9355
            Z: 42497.3438
          }
          Rotation {
            Yaw: 128.329117
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1570772874813467014
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
              Id: 841534158063459245
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.23300001
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
        Id: 12057341239923506204
        Name: "Icon"
        Transform {
          Location {
            X: 17189.6094
            Y: 12346.9668
            Z: 42497.3438
          }
          Rotation {
            Yaw: 128.329163
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1570772874813467014
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              Id: 841534158063459245
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.666
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
        Id: 3355809163368209533
        Name: "frame"
        Transform {
          Location {
            X: 17189.6055
            Y: 12346.9824
            Z: 42497.3477
          }
          Rotation {
            Yaw: 128.329178
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1570772874813467014
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
          Width: 64
          Height: 64
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6488609383494304708
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6924779867800344406
        Name: "Shop"
        Transform {
          Location {
            X: 19185.918
            Y: -9185.09375
            Z: -27601.6484
          }
          Rotation {
            Yaw: -102.870399
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16648679857669058489
        ChildIds: 16180157214936769545
        ChildIds: 1688219987260249851
        ChildIds: 17130573298735992234
        ChildIds: 477415188033838241
        ChildIds: 3936868276182987370
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16180157214936769545
        Name: "appstateHook"
        Transform {
          Location {
            X: -5503.92
            Y: -16933.3574
            Z: 27326.6484
          }
          Rotation {
            Yaw: 102.870392
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6924779867800344406
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 6924779867800344406
            }
          }
          Overrides {
            Name: "cs:Ability"
            Bool: false
          }
          Overrides {
            Name: "cs:Shop"
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1688219987260249851
        Name: "EventAppstateConnect"
        Transform {
          Location {
            X: -0.00724702841
            Y: -0.00768507924
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6924779867800344406
        UnregisteredParameters {
          Overrides {
            Name: "cs:Event"
            String: "OpenShop"
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
            String: "Shop"
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17130573298735992234
        Name: "AppStateCloseHook"
        Transform {
          Location {
            X: 0.00411861
            Y: 0.0359504037
          }
          Rotation {
            Yaw: -3.4150944e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6924779867800344406
        UnregisteredParameters {
          Overrides {
            Name: "cs:state"
            String: "Shop"
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 477415188033838241
        Name: "UI Image"
        Transform {
          Location {
            X: 21067.8965
            Y: -6618.82324
            Z: -27413.2969
          }
          Rotation {
            Yaw: 109.266869
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6924779867800344406
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 3936868276182987370
        Name: "UI Button"
        Transform {
          Location {
            X: -1472.72852
            Y: 281.207642
            Z: -35717.2695
          }
          Rotation {
            Yaw: 107.297974
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6924779867800344406
        ChildIds: 4663123941050583573
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          UIX: -50
          UIY: 50
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
              R: 0.64
              G: 3.05175774e-07
              A: 1
            }
            HoveredColor {
              R: 1
              G: 0.255099356
              B: 0.24000001
              A: 1
            }
            PressedColor {
              R: 0.26
              B: 0.0206622407
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4663123941050583573
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
        ParentId: 3936868276182987370
        UnregisteredParameters {
          Overrides {
            Name: "cs:BroadcastString"
            String: "OpenShop"
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7829949786842505632
        Name: "Input_UI_Connection"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16648679857669058489
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 1328793714507056410
      Name: "Tiled Asphalt 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_TiledBG_017"
      }
    }
    Assets {
      Id: 48307754774318265
      Name: "UI Gradient Rectangular 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Shape_002"
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
    Assets {
      Id: 14060330023043759337
      Name: "BG Flat 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundNoOutline_020"
      }
    }
    Assets {
      Id: 7542904062235710665
      Name: "Frame Outline Thin 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameOutline_020"
      }
    }
    Assets {
      Id: 13835327457650939377
      Name: "UI Gradient Rectangular 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Shape_003"
      }
    }
    Assets {
      Id: 2209571276009564471
      Name: "Icon Crate"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Crate"
      }
    }
    Assets {
      Id: 510429477254030635
      Name: "Survival Bag 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Survival_Equip_Bag_001"
      }
    }
    Assets {
      Id: 1941777917013843020
      Name: "Avalanche"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Urban_Icon_078"
      }
    }
    Assets {
      Id: 2539011265476877653
      Name: "Fantasy Sack 011"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Sack_011"
      }
    }
    Assets {
      Id: 8613898665967287780
      Name: "UI Basic Frame 003"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Frame_003"
      }
    }
    Assets {
      Id: 299308943708112015
      Name: "BG Gradient 007"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundFlat_024"
      }
    }
    Assets {
      Id: 653554309488938617
      Name: "Frame Beveled 007"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameSolid8px_024"
      }
    }
    Assets {
      Id: 2653837865451130928
      Name: "Abstract Background 03"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Core_UI_AbstractPack_Background_004"
      }
    }
    Assets {
      Id: 8031754533012253259
      Name: "Crosshair 021"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Crosshair_021"
      }
    }
    Assets {
      Id: 1537292179389629833
      Name: "Fantasy Sword 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Sword_002"
      }
    }
    Assets {
      Id: 1281351767004184340
      Name: "Helm"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Icon_Helm"
      }
    }
    Assets {
      Id: 4106662450040501179
      Name: "Fantasy Jewelry 029"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Jewelry_029"
      }
    }
    Assets {
      Id: 12385328426085025461
      Name: "Chest Piece"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Icon_ChestPiece"
      }
    }
    Assets {
      Id: 14945771806919897413
      Name: "Fantasy Glove 003"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Glove_003"
      }
    }
    Assets {
      Id: 8634195622628323616
      Name: "Fantasy Belt 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Belt_002"
      }
    }
    Assets {
      Id: 17923540808516649059
      Name: "Fantasy Boot 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Boot_002"
      }
    }
    Assets {
      Id: 3716322990654389808
      Name: "Fantasy Jewelry 015"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Jewelry_015"
      }
    }
    Assets {
      Id: 5263345044092346839
      Name: "Icon Health"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Health"
      }
    }
    Assets {
      Id: 1101004555062815624
      Name: "Shield"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Icon_Shield"
      }
    }
    Assets {
      Id: 1396009735179489274
      Name: "Sword"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Icon_Sword"
      }
    }
    Assets {
      Id: 1578447854616165479
      Name: "Lightning Bolt"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Icon_LightningBolt"
      }
    }
    Assets {
      Id: 9982015852491840084
      Name: "Alert Triangle"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Scifi_Icon_029"
      }
    }
    Assets {
      Id: 707747492659711457
      Name: "Book"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Icon_Book"
      }
    }
    Assets {
      Id: 7515999011531429367
      Name: "Icon Arrow"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_ArrowSpin"
      }
    }
    Assets {
      Id: 8581549570846151612
      Name: "Atomic"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Scifi_Icon_025"
      }
    }
    Assets {
      Id: 9736987041818260224
      Name: "Fantasy Sack 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Sack_002"
      }
    }
    Assets {
      Id: 1100030183663206451
      Name: "Center Arrow 003 Wedge"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "CenterArrow_003Wedge"
      }
    }
    Assets {
      Id: 6488609383494304708
      Name: "Fantasy Frame 003"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Frame_003"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "Hierarchy"
}
