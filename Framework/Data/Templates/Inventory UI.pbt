Assets {
  Id: 16383229967904859891
  Name: "Inventory UI"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13278664966407104232
      Objects {
        Id: 13278664966407104232
        Name: "Inventory UI"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13804872117946282211
        ChildIds: 13218240688053510446
        ChildIds: 9268998823900043103
        ChildIds: 10038790954645104102
        ChildIds: 4149063238841580320
        ChildIds: 18283082924615896590
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
        Id: 13218240688053510446
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
        ParentId: 13278664966407104232
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 13278664966407104232
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
        Id: 9268998823900043103
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
        ParentId: 13278664966407104232
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
        Id: 10038790954645104102
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
        ParentId: 13278664966407104232
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
        Id: 4149063238841580320
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
        ParentId: 13278664966407104232
        UnregisteredParameters {
          Overrides {
            Name: "cs:Slots"
            ObjectReference {
              SubObjectId: 13715990158324002262
            }
          }
          Overrides {
            Name: "cs:EquipmentSlots"
            ObjectReference {
              SubObjectId: 11437376066723647557
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
              SubObjectId: 13278664966407104232
            }
          }
          Overrides {
            Name: "cs:StatDisplay"
            ObjectReference {
              SubObjectId: 364524804449342418
            }
          }
          Overrides {
            Name: "cs:MaterialsBar"
            ObjectReference {
              SelfId: 14837606131599131035
            }
          }
          Overrides {
            Name: "cs:CloseButton"
            ObjectReference {
              SubObjectId: 13932270984313888758
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
        Id: 18283082924615896590
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
        ParentId: 13278664966407104232
        ChildIds: 8031539797770618308
        ChildIds: 15088512842801725317
        ChildIds: 716828175182836192
        ChildIds: 16790161000962072713
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 8031539797770618308
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
        ParentId: 18283082924615896590
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 15088512842801725317
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
        ParentId: 18283082924615896590
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 716828175182836192
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
        ParentId: 18283082924615896590
        ChildIds: 15478884960566253360
        ChildIds: 7880908191052988517
        ChildIds: 14269256460911654206
        ChildIds: 3495428665164520627
        ChildIds: 15179788330347944402
        ChildIds: 17975556497691377714
        ChildIds: 13932270984313888758
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 15478884960566253360
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
        ParentId: 716828175182836192
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 7880908191052988517
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
        ParentId: 716828175182836192
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 14269256460911654206
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
        ParentId: 716828175182836192
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 3495428665164520627
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
        ParentId: 716828175182836192
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 15179788330347944402
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
        ParentId: 716828175182836192
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 17975556497691377714
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
        ParentId: 716828175182836192
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 13932270984313888758
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
        ParentId: 716828175182836192
        ChildIds: 17432156169449705349
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 17432156169449705349
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
        ParentId: 13932270984313888758
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
        Id: 16790161000962072713
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
        ParentId: 18283082924615896590
        ChildIds: 2884448733854741910
        ChildIds: 14234967261693592208
        ChildIds: 6676375024845492010
        ChildIds: 364524804449342418
        ChildIds: 9667150779921534169
        ChildIds: 4488272939381621014
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 2884448733854741910
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
        ParentId: 16790161000962072713
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 14234967261693592208
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
        ParentId: 16790161000962072713
        ChildIds: 18083504958374140849
        ChildIds: 13715990158324002262
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 18083504958374140849
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
        ParentId: 14234967261693592208
        ChildIds: 13179143076570278980
        ChildIds: 11650284976074709032
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 13179143076570278980
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
        ParentId: 18083504958374140849
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 11650284976074709032
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
        ParentId: 18083504958374140849
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 13715990158324002262
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
        ParentId: 14234967261693592208
        ChildIds: 17919259812053602154
        ChildIds: 6994881757917050170
        ChildIds: 10407398922854238807
        ChildIds: 8270770279236894919
        ChildIds: 10219659894017198136
        ChildIds: 15750056802507171133
        ChildIds: 15928256328895181779
        ChildIds: 7315568441847471269
        ChildIds: 9850601953130207656
        ChildIds: 11448943330565390763
        ChildIds: 7553315562923544482
        ChildIds: 14442906057115778186
        ChildIds: 2535277701596618369
        ChildIds: 11103729710073468225
        ChildIds: 6982393189400870439
        ChildIds: 8770212118037772015
        ChildIds: 9252180201684794024
        ChildIds: 1330210575175015661
        ChildIds: 3657595234008394167
        ChildIds: 6629554344535320056
        ChildIds: 13306132823624761905
        ChildIds: 4743502431941900864
        ChildIds: 12573382319290904957
        ChildIds: 11618156695671974529
        ChildIds: 18095530205290727554
        ChildIds: 10478026995681202654
        ChildIds: 14449012755576289072
        ChildIds: 13132311489139791862
        ChildIds: 12448952269544557641
        ChildIds: 9885575643314898047
        ChildIds: 4076928608918493770
        ChildIds: 4718803164297077615
        ChildIds: 11139351059615618610
        ChildIds: 11000922786124997263
        ChildIds: 6722501833129449316
        ChildIds: 17573330020750952199
        ChildIds: 11580617825943696961
        ChildIds: 123713976898849160
        ChildIds: 7065909606129568231
        ChildIds: 3946376542431244303
        ChildIds: 15035496090650855665
        ChildIds: 7870428419617224017
        ChildIds: 9345311136719964732
        ChildIds: 7780207948181175326
        ChildIds: 18293565551911758134
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 17919259812053602154
        Name: "Slot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13715990158324002262
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
        Id: 6994881757917050170
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
        ParentId: 13715990158324002262
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
        Id: 10407398922854238807
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
        ParentId: 13715990158324002262
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
        Id: 8270770279236894919
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
        ParentId: 13715990158324002262
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
        Id: 10219659894017198136
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
        ParentId: 13715990158324002262
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
        Id: 15750056802507171133
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
        ParentId: 13715990158324002262
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
        Id: 15928256328895181779
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
        ParentId: 13715990158324002262
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
        Id: 7315568441847471269
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
        ParentId: 13715990158324002262
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
        Id: 9850601953130207656
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
        ParentId: 13715990158324002262
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
        Id: 11448943330565390763
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
        ParentId: 13715990158324002262
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
        Id: 7553315562923544482
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
        ParentId: 13715990158324002262
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
        Id: 14442906057115778186
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
        ParentId: 13715990158324002262
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
        Id: 2535277701596618369
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
        ParentId: 13715990158324002262
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
        Id: 11103729710073468225
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
        ParentId: 13715990158324002262
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
        Id: 6982393189400870439
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
        ParentId: 13715990158324002262
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
        Id: 8770212118037772015
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
        ParentId: 13715990158324002262
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
        Id: 9252180201684794024
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
        ParentId: 13715990158324002262
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
        Id: 1330210575175015661
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
        ParentId: 13715990158324002262
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
        Id: 3657595234008394167
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
        ParentId: 13715990158324002262
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
        Id: 6629554344535320056
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
        ParentId: 13715990158324002262
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
        Id: 13306132823624761905
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
        ParentId: 13715990158324002262
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
        Id: 4743502431941900864
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
        ParentId: 13715990158324002262
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
        Id: 12573382319290904957
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
        ParentId: 13715990158324002262
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
        Id: 11618156695671974529
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
        ParentId: 13715990158324002262
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
        Id: 18095530205290727554
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
        ParentId: 13715990158324002262
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
        Id: 10478026995681202654
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
        ParentId: 13715990158324002262
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
        Id: 14449012755576289072
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
        ParentId: 13715990158324002262
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
        Id: 13132311489139791862
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
        ParentId: 13715990158324002262
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
        Id: 12448952269544557641
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
        ParentId: 13715990158324002262
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
        Id: 9885575643314898047
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
        ParentId: 13715990158324002262
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
        Id: 4076928608918493770
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
        ParentId: 13715990158324002262
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
        Id: 4718803164297077615
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
        ParentId: 13715990158324002262
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
        Id: 11139351059615618610
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
        ParentId: 13715990158324002262
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
        Id: 11000922786124997263
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
        ParentId: 13715990158324002262
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
        Id: 6722501833129449316
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
        ParentId: 13715990158324002262
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
        Id: 17573330020750952199
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
        ParentId: 13715990158324002262
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
        Id: 11580617825943696961
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
        ParentId: 13715990158324002262
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
        Id: 123713976898849160
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
        ParentId: 13715990158324002262
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
        Id: 7065909606129568231
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
        ParentId: 13715990158324002262
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
        Id: 3946376542431244303
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
        ParentId: 13715990158324002262
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
        Id: 15035496090650855665
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
        ParentId: 13715990158324002262
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
        Id: 7870428419617224017
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
        ParentId: 13715990158324002262
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
        Id: 9345311136719964732
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
        ParentId: 13715990158324002262
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
        Id: 7780207948181175326
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
        ParentId: 13715990158324002262
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
        Id: 18293565551911758134
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
        ParentId: 13715990158324002262
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
        Id: 6676375024845492010
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
        ParentId: 16790161000962072713
        ChildIds: 7584618997933048884
        ChildIds: 7964048761237164446
        ChildIds: 11437376066723647557
        ChildIds: 11741891990454256751
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 7584618997933048884
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
        ParentId: 6676375024845492010
        ChildIds: 17864399369375284022
        ChildIds: 13191325698646410424
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 17864399369375284022
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
        ParentId: 7584618997933048884
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 13191325698646410424
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
        ParentId: 7584618997933048884
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 7964048761237164446
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
        ParentId: 6676375024845492010
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 11437376066723647557
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
        ParentId: 6676375024845492010
        ChildIds: 3611393193318951537
        ChildIds: 10327554586055948268
        ChildIds: 8598246262545432688
        ChildIds: 16902825139242274017
        ChildIds: 17099603949597563712
        ChildIds: 3479459524091297479
        ChildIds: 5901918219860447869
        ChildIds: 14478830599363830248
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 3611393193318951537
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
        ParentId: 11437376066723647557
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
        Id: 10327554586055948268
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
        ParentId: 11437376066723647557
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
        Id: 8598246262545432688
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
        ParentId: 11437376066723647557
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
        Id: 16902825139242274017
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
        ParentId: 11437376066723647557
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
        Id: 17099603949597563712
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
        ParentId: 11437376066723647557
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
        Id: 3479459524091297479
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
        ParentId: 11437376066723647557
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
        Id: 5901918219860447869
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
        ParentId: 11437376066723647557
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
        Id: 14478830599363830248
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
        ParentId: 11437376066723647557
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
        Id: 11741891990454256751
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
        ParentId: 6676375024845492010
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 364524804449342418
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
        ParentId: 16790161000962072713
        ChildIds: 13920777772627114862
        ChildIds: 12142102157149401301
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 13920777772627114862
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
        ParentId: 364524804449342418
        ChildIds: 7682754695269568057
        ChildIds: 12737995400038356603
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 7682754695269568057
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
        ParentId: 13920777772627114862
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 12737995400038356603
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
        ParentId: 13920777772627114862
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 12142102157149401301
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
        ParentId: 364524804449342418
        ChildIds: 11267805152135474028
        ChildIds: 560109208035182869
        ChildIds: 5947014295907795560
        ChildIds: 4217676183234721722
        ChildIds: 10518793521598041487
        ChildIds: 10111778623429202327
        ChildIds: 16055878474549121977
        ChildIds: 2952000097010051984
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 11267805152135474028
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
        ParentId: 12142102157149401301
        ChildIds: 12930149991806489320
        ChildIds: 15426767738593294709
        ChildIds: 3852918680208601488
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 12930149991806489320
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
        ParentId: 11267805152135474028
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 15426767738593294709
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
        ParentId: 11267805152135474028
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 3852918680208601488
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
        ParentId: 11267805152135474028
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 560109208035182869
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
        ParentId: 12142102157149401301
        ChildIds: 516535268833423933
        ChildIds: 3653545600527667788
        ChildIds: 16951842687230766784
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 516535268833423933
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
        ParentId: 560109208035182869
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 3653545600527667788
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
        ParentId: 560109208035182869
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 16951842687230766784
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
        ParentId: 560109208035182869
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 5947014295907795560
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
        ParentId: 12142102157149401301
        ChildIds: 828784175978421177
        ChildIds: 10791947368827984068
        ChildIds: 4619212192582073904
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 828784175978421177
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
        ParentId: 5947014295907795560
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 10791947368827984068
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
        ParentId: 5947014295907795560
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 4619212192582073904
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
        ParentId: 5947014295907795560
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 4217676183234721722
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
        ParentId: 12142102157149401301
        ChildIds: 6140180720569927343
        ChildIds: 18034625117809641117
        ChildIds: 7407667406230244360
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 6140180720569927343
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
        ParentId: 4217676183234721722
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 18034625117809641117
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
        ParentId: 4217676183234721722
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 7407667406230244360
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
        ParentId: 4217676183234721722
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 10518793521598041487
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
        ParentId: 12142102157149401301
        ChildIds: 6239048039934758422
        ChildIds: 15323686622886013144
        ChildIds: 2893609913924570449
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 6239048039934758422
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
        ParentId: 10518793521598041487
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 15323686622886013144
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
        ParentId: 10518793521598041487
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 2893609913924570449
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
        ParentId: 10518793521598041487
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 10111778623429202327
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
        ParentId: 12142102157149401301
        ChildIds: 17690598623844345517
        ChildIds: 11769458651933670750
        ChildIds: 3707517164089562551
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 17690598623844345517
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
        ParentId: 10111778623429202327
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 11769458651933670750
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
        ParentId: 10111778623429202327
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 3707517164089562551
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
        ParentId: 10111778623429202327
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 16055878474549121977
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
        ParentId: 12142102157149401301
        ChildIds: 18253569979719362409
        ChildIds: 7459634575678055968
        ChildIds: 11010850947653125720
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 18253569979719362409
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
        ParentId: 16055878474549121977
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 7459634575678055968
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
        ParentId: 16055878474549121977
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 11010850947653125720
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
        ParentId: 16055878474549121977
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 2952000097010051984
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
        ParentId: 12142102157149401301
        ChildIds: 2846873663663947178
        ChildIds: 9504286968247670325
        ChildIds: 10191167156960027059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 2846873663663947178
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
        ParentId: 2952000097010051984
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 9504286968247670325
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
        ParentId: 2952000097010051984
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 10191167156960027059
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
        ParentId: 2952000097010051984
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 9667150779921534169
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
        ParentId: 16790161000962072713
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 4488272939381621014
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
        ParentId: 16790161000962072713
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
