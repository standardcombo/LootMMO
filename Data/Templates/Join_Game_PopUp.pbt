Assets {
  Id: 1928307320722936823
  Name: "Join_Game_PopUp"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1517208931339296284
      Objects {
        Id: 1517208931339296284
        Name: "Join_Game_PopUp"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16313381126612413610
        ChildIds: 15324296125975269935
        UnregisteredParameters {
          Overrides {
            Name: "cs:Close"
            ObjectReference {
              SubObjectId: 12330045840832674729
            }
          }
          Overrides {
            Name: "cs:Buyin"
            ObjectReference {
              SubObjectId: 11428489274724612865
            }
          }
          Overrides {
            Name: "cs:Slider"
            ObjectReference {
              SubObjectId: 2900709992737424117
            }
          }
          Overrides {
            Name: "cs:Stake"
            ObjectReference {
              SubObjectId: 11345131377865864551
            }
          }
          Overrides {
            Name: "cs:JoinGame"
            ObjectReference {
              SubObjectId: 4483910870800108378
            }
          }
          Overrides {
            Name: "cs:SliderText"
            ObjectReference {
              SubObjectId: 1803594025847468515
            }
          }
          Overrides {
            Name: "cs:SpectateGame"
            ObjectReference {
              SubObjectId: 16102902284882642227
            }
          }
          Overrides {
            Name: "cs:NotEnoughMoney"
            ObjectReference {
              SubObjectId: 4117046245223623477
            }
          }
        }
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
      }
      Objects {
        Id: 16313381126612413610
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
        ParentId: 1517208931339296284
        ChildIds: 2481878151558710871
        ChildIds: 17139870076669432507
        ChildIds: 17045713114344220944
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 420
          Height: 300
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
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 2481878151558710871
        Name: "BG"
        Transform {
          Location {
            X: 288.918549
            Y: 296.117493
            Z: 95.7931061
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16313381126612413610
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 14
          Height: 14
          UIY: -201.674286
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
              R: 0.00719100237
              G: 0.00681999885
              B: 0.01
              A: 0.8
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
      }
      Objects {
        Id: 17139870076669432507
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
        ParentId: 16313381126612413610
        ChildIds: 6222918175489575237
        ChildIds: 7805614998168401262
        ChildIds: 8983424021406335263
        ChildIds: 13951484533303638369
        ChildIds: 12888849722875024609
        ChildIds: 12981017068880661480
        ChildIds: 9750153762276427013
        ChildIds: 13298730474698396543
        ChildIds: 3107898745375614075
        ChildIds: 10387365438166556092
        ChildIds: 12535574774255682203
        ChildIds: 3104113271682449224
        ChildIds: 13996835730712449726
        ChildIds: 5029929772206341963
        ChildIds: 4367715774841586441
        ChildIds: 8220390007729022796
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 420
          Height: 100
          UIY: -199.553986
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 6222918175489575237
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
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          UIX: 99.7451782
          UIY: -14.6225281
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 11341982398848592103
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.178
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
      }
      Objects {
        Id: 7805614998168401262
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
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          UIY: -26.6645508
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 753623561241918334
            }
            Color {
              R: 1
              G: 0.745672941
              B: 0.0829999447
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 0.361306876
              G: 0.0781874284
              A: 1
            }
            ShadowOffset {
              Y: 3
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
      }
      Objects {
        Id: 8983424021406335263
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
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 75
          Height: 68
          UIX: -11.1782227
          UIY: 30.965332
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 1138692308759997437
            }
            Color {
              R: 1
              G: 0.783538043
              B: 0.219526231
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 0.361306876
              G: 0.0781874284
              A: 1
            }
            ShadowOffset {
              Y: 2
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
      }
      Objects {
        Id: 13951484533303638369
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
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 75
          Height: 68
          UIX: 11.178
          UIY: 30.965332
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 1138692308759997437
            }
            Color {
              R: 1
              G: 0.783538043
              B: 0.219526231
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 0.361306876
              G: 0.0781874284
              A: 1
            }
            ShadowOffset {
              Y: 2
            }
            FlipHorizontal: true
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
      }
      Objects {
        Id: 12888849722875024609
        Name: "UI Text Box"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          UIY: 30.9999695
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Text {
            Label: "Texas Hold\'em"
            Color {
              R: 0.361306876
              G: 0.0781874284
              A: 1
            }
            Size: 30
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 18283604462096221912
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              R: 0.361306876
              G: 0.0781874284
              A: 1
            }
            ShadowOffset {
            }
            OutlineColor {
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
      }
      Objects {
        Id: 12981017068880661480
        Name: "UI Text Box"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          UIY: 26.9999695
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Text {
            Label: "Texas Hold\'em"
            Color {
              R: 1
              G: 0.777880788
              B: 0.220000029
              A: 1
            }
            Size: 30
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 18283604462096221912
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              R: 0.36
              G: 0.0786755
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
      }
      Objects {
        Id: 9750153762276427013
        Name: "UI Text Box"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 22
          UIY: 81.9999695
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "Texas Hold\'em"
            Color {
              R: 1
              G: 0.533333361
              A: 0.530000031
            }
            Size: 30
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            ClipTextToSize: true
            Font {
              Id: 18283604462096221912
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
            ShadowColor {
              R: 0.36
              G: 0.0786755
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
      }
      Objects {
        Id: 13298730474698396543
        Name: "UI Text Box"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 25
          UIY: 51.0347
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "Texas Hold\'em"
            Color {
              R: 1
              G: 0.849139094
              B: 0.659999967
              A: 0.530000031
            }
            Size: 30
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            ClipTextToSize: true
            Font {
              Id: 18283604462096221912
            }
            VerticalJustification {
              Value: "mc:everticaljustification:top"
            }
            ShadowColor {
              R: 0.36
              G: 0.0786755
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
      }
      Objects {
        Id: 3107898745375614075
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
        ParentId: 17139870076669432507
        ChildIds: 5911213354460529035
        ChildIds: 16450052110624151862
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 30
          Height: 30
          UIX: -70
          UIY: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 3650462122160632384
            }
            Color {
              R: 1
              G: 0.643046379
              B: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 5911213354460529035
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
        ParentId: 3107898745375614075
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -2
          Height: -2
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
              Id: 3650462122160632384
            }
            Color {
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 16450052110624151862
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
        ParentId: 3107898745375614075
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              Id: 8578995028087510781
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.09
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
      }
      Objects {
        Id: 10387365438166556092
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
        ParentId: 17139870076669432507
        ChildIds: 15719243952195437704
        ChildIds: 6311312263859075016
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 30
          Height: 30
          UIX: 70
          UIY: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 14005289317451984879
            }
            Color {
              R: 1
              G: 0.643046379
              B: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 15719243952195437704
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
        ParentId: 10387365438166556092
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -2
          Height: -2
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
              Id: 14005289317451984879
            }
            Color {
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 6311312263859075016
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
        ParentId: 10387365438166556092
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              Id: 8578995028087510781
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.09
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
      }
      Objects {
        Id: 12535574774255682203
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
        ParentId: 17139870076669432507
        ChildIds: 12569896669409514165
        ChildIds: 11195541724425680764
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 28
          UIX: 120
          UIY: 32
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 5263345044092346839
            }
            Color {
              R: 1
              G: 0.643046379
              B: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 12569896669409514165
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
        ParentId: 12535574774255682203
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -2
          Height: -2
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
              Id: 5263345044092346839
            }
            Color {
              R: 0.480000019
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 11195541724425680764
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
        ParentId: 12535574774255682203
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              Id: 8578995028087510781
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.2
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
      }
      Objects {
        Id: 3104113271682449224
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
        ParentId: 17139870076669432507
        ChildIds: 8625516013163439402
        ChildIds: 14711459280982977846
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 30
          Height: 30
          UIX: -120
          UIY: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 26986594793006901
            }
            Color {
              R: 1
              G: 0.643046379
              B: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 8625516013163439402
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
        ParentId: 3104113271682449224
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -2
          Height: -2
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
              Id: 26986594793006901
            }
            Color {
              R: 0.52
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 14711459280982977846
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
        ParentId: 3104113271682449224
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              Id: 8578995028087510781
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.2
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
      }
      Objects {
        Id: 13996835730712449726
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
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 10
          Height: 10
          UIX: -95
          UIY: 41.2500305
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 7608871351729600570
            }
            Color {
              R: 1
              G: 0.643046379
              B: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              Y: 1
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
      }
      Objects {
        Id: 5029929772206341963
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
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 10
          Height: 10
          UIX: 95
          UIY: 41.2500305
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 7608871351729600570
            }
            Color {
              R: 1
              G: 0.643046379
              B: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              Y: 1
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
      }
      Objects {
        Id: 4367715774841586441
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
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 10
          Height: 10
          UIX: 146
          UIY: 41.2500305
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 7608871351729600570
            }
            Color {
              R: 1
              G: 0.643046379
              B: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              Y: 1
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
      }
      Objects {
        Id: 8220390007729022796
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
        ParentId: 17139870076669432507
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 10
          Height: 10
          UIX: -146
          UIY: 41.2500305
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 7608871351729600570
            }
            Color {
              R: 1
              G: 0.643046379
              B: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              Y: 1
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
      }
      Objects {
        Id: 17045713114344220944
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
        ParentId: 16313381126612413610
        ChildIds: 13559649534914682636
        ChildIds: 4208538880837514393
        ChildIds: 2900709992737424117
        ChildIds: 13918231814298968155
        ChildIds: 633281114180863802
        ChildIds: 13587949139708278159
        ChildIds: 10124788396508586206
        ChildIds: 4117046245223623477
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 420
          Height: 281
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 13559649534914682636
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
        ParentId: 17045713114344220944
        ChildIds: 6553456512354018404
        ChildIds: 11395263057875439654
        ChildIds: 18052045940942067323
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 553
          Height: 286
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
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 6553456512354018404
        Name: "BG"
        Transform {
          Location {
            X: 288.918549
            Y: 296.117493
            Z: 95.7931061
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13559649534914682636
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 14
          Height: 14
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
              R: 0.00719100237
              G: 0.00681999885
              B: 0.01
              A: 0.8
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
      }
      Objects {
        Id: 11395263057875439654
        Name: "BG_Light"
        Transform {
          Location {
            X: 288.918549
            Y: 296.117493
            Z: 95.7931061
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13559649534914682636
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 12
          Height: 12
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
              G: 1
              B: 1
              A: 0.157
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 18052045940942067323
        Name: "BG_Shadow"
        Transform {
          Location {
            X: 288.918549
            Y: 296.117493
            Z: 95.7931061
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13559649534914682636
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 14
          Height: 14
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
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 4208538880837514393
        Name: "Button_Join_Container"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17045713114344220944
        ChildIds: 4483910870800108378
        ChildIds: 17339023703996282580
        ChildIds: 1874568747709301334
        ChildIds: 9669398945242904509
        ChildIds: 7691944012002439778
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 186
          Height: 60
          UIX: 20
          UIY: -15.483
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 4483910870800108378
        Name: "JoinGame"
        Transform {
          Location {
            X: -206.534195
            Y: 422.432373
          }
          Rotation {
            Yaw: 133.739517
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4208538880837514393
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          IsHittable: true
          Button {
            FontColor {
              R: 0.991102397
              G: 0.991102397
              B: 0.991102397
              A: 1
            }
            FontSize: 20
            ButtonColor {
              R: 0.000607054
              G: 0.141263306
              B: 0.58407861
              A: 1
            }
            HoveredColor {
              R: 0.000910581031
              G: 0.242281199
              B: 1
              A: 1
            }
            PressedColor {
              R: 0.000910581031
              G: 0.242281199
              B: 1
              A: 1
            }
            DisabledColor {
              R: 0.221000016
              G: 0.221000016
              B: 0.221000016
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
              Id: 14100456703306476565
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
      }
      Objects {
        Id: 17339023703996282580
        Name: "Shine_Overlay"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4208538880837514393
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 747
          Height: 100
          UIY: 47.66
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.000340896629
              G: 0.101256318
              B: 0.176000014
              A: 0.396000028
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
      }
      Objects {
        Id: 1874568747709301334
        Name: "Border_Bright"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4208538880837514393
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 10
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
              Id: 2014258926635376275
            }
            Color {
              R: 0.0799999833
              G: 1
              B: 0.945165694
              A: 0.54
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
      }
      Objects {
        Id: 9669398945242904509
        Name: "Border_Dark"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4208538880837514393
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 14
          Height: 8
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
      }
      Objects {
        Id: 7691944012002439778
        Name: "Buttontext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4208538880837514393
        ChildIds: 3127835872162278262
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
            Label: "JOIN GAME"
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
              Id: 15530901710823689110
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 0.366000026
            }
            ShadowOffset {
              Y: 1
            }
            OutlineColor {
              G: 0.0537747554
              B: 0.139999986
              A: 1
            }
            OutlineSize: 1
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
      }
      Objects {
        Id: 3127835872162278262
        Name: "Buttontext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7691944012002439778
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 12
          UIY: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "JOIN GAME"
            Color {
              R: 0.623
              G: 0.623
              B: 0.623
              A: 1
            }
            Size: 16
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 15530901710823689110
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
            ShadowColor {
              A: 0.366000026
            }
            ShadowOffset {
              Y: 1
            }
            OutlineColor {
              G: 0.0537747554
              B: 0.139999986
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
      }
      Objects {
        Id: 2900709992737424117
        Name: "Slider"
        Transform {
          Location {
            X: -471.285034
            Y: -38.0388794
            Z: 1.52587891e-05
          }
          Rotation {
            Yaw: 1.53679193e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17045713114344220944
        ChildIds: 12720089595131376930
        ChildIds: 107804207208758715
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12720089595131376930
        Name: "SliderUI"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2900709992737424117
        UnregisteredParameters {
          Overrides {
            Name: "cs:Bar"
            ObjectReference {
              SubObjectId: 9535223824404310703
            }
          }
          Overrides {
            Name: "cs:Cursor"
            ObjectReference {
              SubObjectId: 1288056346760593158
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 2900709992737424117
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
            Id: 12942721980463215750
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 107804207208758715
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
        ParentId: 2900709992737424117
        ChildIds: 9535223824404310703
        ChildIds: 7996624176008239003
        ChildIds: 6782291937729239248
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -50
          Height: 100
          UIY: 110
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            Opacity: 1
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
      }
      Objects {
        Id: 9535223824404310703
        Name: "Bar"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 107804207208758715
        ChildIds: 1288056346760593158
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 381
          Height: 10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          StatBar {
            Color {
              G: 0.420595855
              B: 0.87
              A: 1
            }
            BackgroundColor {
              A: 0.289
            }
            Percent: 0.5
            FillBrush {
            }
            BackgroundBrush {
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1288056346760593158
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
        ParentId: 9535223824404310703
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 6
          Height: 20
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
              R: 0.880000055
              G: 0.880000055
              B: 0.880000055
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              X: 1
              Y: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
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
      }
      Objects {
        Id: 7996624176008239003
        Name: "Currency_Icon_Container"
        Transform {
          Location {
            X: 471.285034
            Y: 38.0387535
            Z: -1.52587891e-05
          }
          Rotation {
            Yaw: -1.53679193e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 107804207208758715
        ChildIds: 4088932517178866558
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 41
          Height: 50
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
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
      }
      Objects {
        Id: 4088932517178866558
        Name: "Currency_Icon"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7996624176008239003
        ChildIds: 16660812220012494672
        ChildIds: 12702410008989955822
        ChildIds: 6853200706901509953
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 30
          Height: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 10067297865473811114
            }
            Color {
              R: 1
              G: 0.732980132
              B: 0.37
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              R: 0.100000024
              G: 0.0317880884
              A: 1
            }
            ShadowOffset {
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
      }
      Objects {
        Id: 16660812220012494672
        Name: "Gradient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4088932517178866558
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 30
          Height: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 17809724805743288854
            }
            Color {
              R: 0.929999948
              G: 0.406490058
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
      }
      Objects {
        Id: 12702410008989955822
        Name: "Shine"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4088932517178866558
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 39
          UIY: -1.82131815
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 8578995028087510781
            }
            Color {
              R: 1
              G: 0.826291442
              B: 0.57
              A: 0.441
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
      }
      Objects {
        Id: 6853200706901509953
        Name: "Dollarsign"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4088932517178866558
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Text {
            Label: "$"
            Color {
              R: 1
              G: 0.896688759
              B: 0.61
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 17768095596681760929
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              R: 0.210000038
              G: 0.075099349
              A: 1
            }
            ShadowOffset {
              Y: 1
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
      }
      Objects {
        Id: 6782291937729239248
        Name: "Currency_Container"
        Transform {
          Location {
            X: 471.285034
            Y: 38.0387535
            Z: -1.52587891e-05
          }
          Rotation {
            Yaw: -1.53679193e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 107804207208758715
        ChildIds: 10121835920495761259
        ChildIds: 958472627296743850
        ChildIds: 1803594025847468515
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 321
          Height: 50
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
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
      }
      Objects {
        Id: 10121835920495761259
        Name: "ProgressBar"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6782291937729239248
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
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              R: 0.955973685
              G: 0.356400251
              B: 0.010329823
              A: 1
            }
            BackgroundColor {
              R: 0.5
              G: 0.5
              B: 0.5
              A: 1
            }
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
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
      }
      Objects {
        Id: 958472627296743850
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
        ParentId: 6782291937729239248
        ChildIds: 3853501357217273967
        ChildIds: 2453864715810409873
        ChildIds: 836609139549420167
        ChildIds: 14244052880598372952
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 151
          Height: 40
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Panel {
            Opacity: 1
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
      }
      Objects {
        Id: 3853501357217273967
        Name: "UI Button"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 958472627296743850
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          UIY: -1
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
              A: 1
            }
            HoveredColor {
              A: 1
            }
            PressedColor {
              A: 1
            }
            DisabledColor {
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
      }
      Objects {
        Id: 2453864715810409873
        Name: "UI Button"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 958472627296743850
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          UIY: 1
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
              A: 0.2
            }
            HoveredColor {
              R: 1
              G: 1
              B: 1
              A: 0.200000018
            }
            PressedColor {
              R: 1
              G: 1
              B: 1
              A: 0.200000018
            }
            DisabledColor {
              R: 1
              G: 1
              B: 1
              A: 0.200000018
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
      }
      Objects {
        Id: 836609139549420167
        Name: "UI Button"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 958472627296743850
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              R: 0.00699541
              G: 0.00439144205
              B: 0.00972121768
              A: 1
            }
            HoveredColor {
              R: 0.00699541
              G: 0.00439144205
              B: 0.00972121768
              A: 1
            }
            PressedColor {
              R: 0.00699541
              G: 0.00439144205
              B: 0.00972121768
              A: 1
            }
            DisabledColor {
              R: 0.00699541
              G: 0.00439144205
              B: 0.00972121768
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
              R: 1
              G: 1
              B: 1
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
      }
      Objects {
        Id: 14244052880598372952
        Name: "Text"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 958472627296743850
        ChildIds: 13533072762285798466
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
          Width: -20
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Text {
            Label: "10000000"
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
            Font {
              Id: 17768095596681760929
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13533072762285798466
        Name: "Text"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14244052880598372952
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
          Height: 12
          UIY: -8
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "1000"
            Color {
              R: 0.405000031
              G: 0.405000031
              B: 0.405000031
              A: 1
            }
            Size: 16
            Justification {
              Value: "mc:etextjustify:left"
            }
            ClipTextToSize: true
            Font {
              Id: 17768095596681760929
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
              Y: 1
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
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
      }
      Objects {
        Id: 1803594025847468515
        Name: "SliderText"
        Transform {
          Location {
            X: -629.999146
            Y: -26.0241051
            Z: -62.2811279
          }
          Rotation {
            Yaw: -1.70754665e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6782291937729239248
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -40
          Height: 39
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "10000"
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
            Font {
              Id: 17768095596681760929
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13918231814298968155
        Name: "UI Button"
        Transform {
          Location {
            X: 0.000122070283
            Y: -0.000122070342
          }
          Rotation {
            Yaw: -1.51496497e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17045713114344220944
        ChildIds: 11345131377865864551
        ChildIds: 6014933464927524391
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 180
          Height: 76
          UIX: 20
          UIY: 20
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          IsHittable: true
          Button {
            FontColor {
              A: 1
            }
            FontSize: 20
            ButtonColor {
              A: 0.5
            }
            HoveredColor {
              A: 0.498039246
            }
            PressedColor {
              A: 0.498039246
            }
            DisabledColor {
              A: 0.498039246
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
      }
      Objects {
        Id: 11345131377865864551
        Name: "Stake"
        Transform {
          Location {
            X: -206.534195
            Y: 422.432373
          }
          Rotation {
            Yaw: 133.739517
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13918231814298968155
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 113
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "5/10"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 21
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 15530901710823689110
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
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
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
      }
      Objects {
        Id: 6014933464927524391
        Name: "Stake title"
        Transform {
          Location {
            X: -206.534195
            Y: 422.432373
          }
          Rotation {
            Yaw: 133.739548
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13918231814298968155
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 113
          Height: 40
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "Stakes"
            Color {
              R: 0.000910581
              G: 0.238397568
              B: 0.658374786
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 17768095596681760929
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
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
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
      }
      Objects {
        Id: 633281114180863802
        Name: "UI Button"
        Transform {
          Location {
            X: 0.000122070283
            Y: -0.000122070342
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17045713114344220944
        ChildIds: 11428489274724612865
        ChildIds: 11611239991084588387
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 180
          Height: 76
          UIX: -20
          UIY: 20
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          IsHittable: true
          Button {
            FontColor {
              A: 1
            }
            FontSize: 20
            ButtonColor {
              A: 0.5
            }
            HoveredColor {
              A: 0.498039246
            }
            PressedColor {
              A: 0.498039246
            }
            DisabledColor {
              A: 0.498039246
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
      }
      Objects {
        Id: 11428489274724612865
        Name: "Buy-in"
        Transform {
          Location {
            X: -206.534195
            Y: 422.432373
          }
          Rotation {
            Yaw: 133.739517
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 633281114180863802
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 231
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "500/5000"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 21
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 15530901710823689110
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
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
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
      }
      Objects {
        Id: 11611239991084588387
        Name: "Buy-in Title"
        Transform {
          Location {
            X: -206.534195
            Y: 422.432373
          }
          Rotation {
            Yaw: 133.739517
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 633281114180863802
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 155
          Height: 40
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "Buy-in Range"
            Color {
              R: 0.000910581
              G: 0.238397568
              B: 0.658374786
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 17768095596681760929
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
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
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
      }
      Objects {
        Id: 13587949139708278159
        Name: "Button_Spectate_Container"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17045713114344220944
        ChildIds: 16102902284882642227
        ChildIds: 17154371595101726393
        ChildIds: 14178480709266558277
        ChildIds: 9651763586994593396
        ChildIds: 3139208766810056254
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 186
          Height: 60
          UIX: -20
          UIY: -15.483
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
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
      }
      Objects {
        Id: 16102902284882642227
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
        ParentId: 13587949139708278159
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          IsHittable: true
          Button {
            FontColor {
              A: 1
            }
            FontSize: 20
            ButtonColor {
              R: 0.658374965
              G: 0.287440896
              B: 0.000910581031
              A: 1
            }
            HoveredColor {
              R: 1
              G: 0.439657241
              B: 0.00121410796
              A: 1
            }
            PressedColor {
              R: 1
              G: 0.439657241
              B: 0.00121410796
              A: 1
            }
            DisabledColor {
              R: 0.658374965
              G: 0.287440896
              B: 0.000910581031
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
      }
      Objects {
        Id: 17154371595101726393
        Name: "Shine_Overlay"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13587949139708278159
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 747
          Height: 100
          UIY: -47.659565
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.718000054
              B: 0.0209999681
              A: 0.321
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
      }
      Objects {
        Id: 14178480709266558277
        Name: "Border_Bright"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13587949139708278159
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 10
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
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.896269679
              B: 0.0802198276
              A: 0.541176498
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
      }
      Objects {
        Id: 9651763586994593396
        Name: "Border_Dark"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13587949139708278159
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 14
          Height: 8
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
      }
      Objects {
        Id: 3139208766810056254
        Name: "Buttontext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13587949139708278159
        ChildIds: 6155952300175869827
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
            Label: "SPECTATE"
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
              Id: 15530901710823689110
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 0.366000026
            }
            ShadowOffset {
              Y: 1
            }
            OutlineColor {
              R: 0.138431624
              G: 0.0512694679
              A: 1
            }
            OutlineSize: 1
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
      }
      Objects {
        Id: 6155952300175869827
        Name: "Buttontext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3139208766810056254
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 12
          UIY: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "SPECTATE"
            Color {
              R: 0.623
              G: 0.623
              B: 0.623
              A: 1
            }
            Size: 16
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 15530901710823689110
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
            ShadowColor {
              A: 0.366000026
            }
            ShadowOffset {
              Y: 1
            }
            OutlineColor {
              R: 0.138431624
              G: 0.0512694679
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
      }
      Objects {
        Id: 10124788396508586206
        Name: "Button_Close_Container"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17045713114344220944
        ChildIds: 12330045840832674729
        ChildIds: 13851969279707231365
        ChildIds: 8486666249170592015
        ChildIds: 5529476586672996801
        ChildIds: 4150338507514770375
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 40
          UIX: 10
          UIY: 3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
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
      }
      Objects {
        Id: 12330045840832674729
        Name: "Close"
        Transform {
          Location {
            X: -206.534195
            Y: 422.432373
          }
          Rotation {
            Yaw: 133.739548
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10124788396508586206
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          IsHittable: true
          Button {
            FontColor {
              R: 0.258182853
              G: 0.00518151652
              A: 1
            }
            FontSize: 20
            ButtonColor {
              R: 0.177888438
              A: 1
            }
            HoveredColor {
              R: 0.351532698
              A: 1
            }
            PressedColor {
              R: 0.351532698
              A: 1
            }
            DisabledColor {
              R: 0.177888438
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
              Id: 14100456703306476565
            }
            Justification {
              Value: "mc:etextjustify:center"
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 0.25
            }
            ShadowOffset {
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
      }
      Objects {
        Id: 13851969279707231365
        Name: "Shine_Overlay"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10124788396508586206
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 747
          Height: 100
          UIY: -47.659565
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.0209999681
              B: 0.0209999681
              A: 0.321
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
      }
      Objects {
        Id: 8486666249170592015
        Name: "Border_Bright"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10124788396508586206
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.0802198052
              B: 0.0802198052
              A: 0.541176498
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
      }
      Objects {
        Id: 5529476586672996801
        Name: "Border_Dark"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10124788396508586206
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 6
          Height: 8
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
      }
      Objects {
        Id: 4150338507514770375
        Name: "Buttontext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10124788396508586206
        ChildIds: 14841002226635279509
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
            Label: "X"
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
              Id: 15530901710823689110
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 0.366000026
            }
            ShadowOffset {
              Y: 1
            }
            OutlineColor {
              R: 0.138431624
              A: 1
            }
            OutlineSize: 1
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
      }
      Objects {
        Id: 14841002226635279509
        Name: "Buttontext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4150338507514770375
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 12
          UIY: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "X"
            Color {
              R: 0.623
              G: 0.623
              B: 0.623
              A: 1
            }
            Size: 16
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 15530901710823689110
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
            ShadowColor {
              A: 0.366000026
            }
            ShadowOffset {
              Y: 1
            }
            OutlineColor {
              R: 0.138431624
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
      }
      Objects {
        Id: 4117046245223623477
        Name: "Not Enough Money Panel"
        Transform {
          Location {
            X: 4160
            Y: -7250
            Z: 1065
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17045713114344220944
        ChildIds: 8694884338516470979
        ChildIds: 12281786587598034425
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
          UIX: -20
          UIY: -15
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 8694884338516470979
        Name: "SliderText"
        Transform {
          Location {
            X: -629.999146
            Y: -26.0239391
            Z: -62.2811279
          }
          Rotation {
            Yaw: -4.56672315e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4117046245223623477
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -40
          Height: 39
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "You don\'t have enough money"
            Color {
              R: 0.834000111
              G: 0.0141779687
              B: 0.0141779687
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 17768095596681760929
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12281786587598034425
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
        ParentId: 4117046245223623477
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 40
          UIX: 22.4199314
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 16461453018416328017
            }
            Color {
              R: 1
              G: 0.0329999328
              B: 0.0329999328
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 0.6
            }
            ShadowOffset {
              X: 2
              Y: 2
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
      }
      Objects {
        Id: 15324296125975269935
        Name: "TexasPoker_JoinGane_PopUpHandler"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1517208931339296284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
            Id: 666988473965407064
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
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
      Id: 11341982398848592103
      Name: "Survival Cards 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Survival_Equip_Cards_001"
      }
    }
    Assets {
      Id: 753623561241918334
      Name: "Icon Crown"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Crown"
      }
    }
    Assets {
      Id: 1138692308759997437
      Name: "Emblem Laurel"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Military_Icon_064"
      }
    }
    Assets {
      Id: 18283604462096221912
      Name: "Roboto Slab Black"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "RobotoSlabBlack_ref"
      }
    }
    Assets {
      Id: 3650462122160632384
      Name: "Icon Club"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Club"
      }
    }
    Assets {
      Id: 8578995028087510781
      Name: "UI Gradient Circular 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Shape_001"
      }
    }
    Assets {
      Id: 14005289317451984879
      Name: "Icon Spade"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Spade"
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
      Id: 26986594793006901
      Name: "Icon Diamond"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Diamond"
      }
    }
    Assets {
      Id: 7608871351729600570
      Name: "Icon Star"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Star"
      }
    }
    Assets {
      Id: 2014258926635376275
      Name: "Frame Outlined Thick 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameFlat_020"
      }
    }
    Assets {
      Id: 14100456703306476565
      Name: "Baloo 2 Extra Bold"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "Baloo2ExtraBold_ref"
      }
    }
    Assets {
      Id: 15530901710823689110
      Name: "Play Bold"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "PlayBold_ref"
      }
    }
    Assets {
      Id: 10067297865473811114
      Name: "Center Circle 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "CenterCircle_001"
      }
    }
    Assets {
      Id: 17809724805743288854
      Name: "BG Highlighted 006"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundHighlighted_015"
      }
    }
    Assets {
      Id: 17768095596681760929
      Name: "Play"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "PlayRegular_ref"
      }
    }
    Assets {
      Id: 16461453018416328017
      Name: "Icon Emote Sad"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_EmoteSad"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 116
  VirtualFolderPath: "PokerTemplates"
}
