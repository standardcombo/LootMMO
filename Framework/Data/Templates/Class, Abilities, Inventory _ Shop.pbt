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
        ChildIds: 8870305623117463625
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
        Id: 8870305623117463625
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
          ParameterOverrideMap {
            key: 11485888425182018448
            value {
              Overrides {
                Name: "HoveredColor"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.2
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 13192944649928894444
            value {
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 13607689966869900797
            value {
              Overrides {
                Name: "HoveredColor"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.2
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
            Name: "cs:HoverPanel"
            ObjectReference {
              SelfId: 1672793592632319691
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
      Id: 14060330023043759337
      Name: "BG Flat 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundNoOutline_020"
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
      Id: 7542904062235710665
      Name: "Frame Outline Thin 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameOutline_020"
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
