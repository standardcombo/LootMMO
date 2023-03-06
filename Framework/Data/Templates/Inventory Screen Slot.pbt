Assets {
  Id: 5599373721529575842
  Name: "Inventory Screen Slot"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2938061745688667746
      Objects {
        Id: 2938061745688667746
        Name: "Inventory Screen Slot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1422750566321652177
        ChildIds: 13037046466798306928
        ChildIds: 12840355727163005343
        ChildIds: 11802855593299794670
        ChildIds: 4977130300095106118
        ChildIds: 6747733564737209086
        ChildIds: 8554510439370915919
        ChildIds: 6213445963075605283
        ChildIds: 10858191082077720300
        ChildIds: 13138545161715812737
        ChildIds: 13969398965216039705
        ChildIds: 15700734946025578819
        ChildIds: 14802420836845637455
        ChildIds: 7236170066237534394
        UnregisteredParameters {
          Overrides {
            Name: "cs:Controller"
            ObjectReference {
              SubObjectId: 13037046466798306928
            }
          }
          Overrides {
            Name: "cs:Background"
            ObjectReference {
              SubObjectId: 10858191082077720300
            }
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 13138545161715812737
            }
          }
          Overrides {
            Name: "cs:Amount"
            ObjectReference {
              SubObjectId: 15700734946025578819
            }
          }
          Overrides {
            Name: "cs:Binding"
            ObjectReference {
              SubObjectId: 14802420836845637455
            }
          }
          Overrides {
            Name: "cs:DragProxyTemplate"
            AssetReference {
              Id: 12069546341867153495
            }
          }
          Overrides {
            Name: "cs:Controller:tooltip"
            String: "The Inventory Screen Slot script to use."
          }
          Overrides {
            Name: "cs:Background:tooltip"
            String: "The background UIControl for the Slot. This will be hidden if the slot is empty."
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The UIImage to use for rendering icons."
          }
          Overrides {
            Name: "cs:Amount:tooltip"
            String: "The UIText to use to show the amount of the item in the Slot."
          }
          Overrides {
            Name: "cs:Binding:tooltip"
            String: "The UIText to use to display a numeric shortcut if they are being used."
          }
          Overrides {
            Name: "cs:DragProxyTemplate:tooltip"
            String: "The template to spawn when dragging this Slot. This template should contain specific logic. See the Inventory Screen Slot Drag Proxy tremplate for an example."
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
        Id: 13037046466798306928
        Name: "InventoryScreenSlot"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2938061745688667746
            }
          }
          Overrides {
            Name: "cs:ClickEventComponent"
            ObjectReference {
              SubObjectId: 4977130300095106118
            }
          }
          Overrides {
            Name: "cs:DropEventComponent"
            ObjectReference {
              SubObjectId: 6747733564737209086
            }
          }
          Overrides {
            Name: "cs:ToggleTooltipComponent"
            ObjectReference {
              SubObjectId: 6213445963075605283
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
            Id: 17209945593307889703
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12840355727163005343
        Name: "DraggableObjectComponentClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2938061745688667746
            }
          }
          Overrides {
            Name: "cs:ResetOnDrop"
            Bool: true
          }
          Overrides {
            Name: "cs:SubTarget"
            ObjectReference {
              SubObjectId: 7236170066237534394
            }
          }
          Overrides {
            Name: "cs:SnapToInput"
            Bool: true
          }
          Overrides {
            Name: "cs:SnapOffset"
            Vector {
              X: -50
              Y: -50
            }
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 1863664298087658871
            }
          }
          Overrides {
            Name: "cs:DropTargetIds"
            String: "INV_slot, INV_trash"
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
            Id: 5098061186514063462
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11802855593299794670
        Name: "DropTargetComponentClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2938061745688667746
            }
          }
          Overrides {
            Name: "cs:SubTarget"
            ObjectReference {
              SubObjectId: 7236170066237534394
            }
          }
          Overrides {
            Name: "cs:DropTargetId"
            String: "INV_slot"
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 1863664298087658871
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
            Id: 1871653905203352280
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4977130300095106118
        Name: "BroadcastEventComponentClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2938061745688667746
            }
          }
          Overrides {
            Name: "cs:EventName"
            String: "INV_slotClicked"
          }
          Overrides {
            Name: "cs:BroadcastToServer"
            Bool: false
          }
          Overrides {
            Name: "cs:BroadcastOnEndPress"
            Bool: true
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 1863664298087658871
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
            Id: 1811470417276014342
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6747733564737209086
        Name: "BroadcastEventComponentClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2938061745688667746
            }
          }
          Overrides {
            Name: "cs:EventName"
            String: "INV_slotDropped"
          }
          Overrides {
            Name: "cs:BroadcastToServer"
            Bool: false
          }
          Overrides {
            Name: "cs:BroadcastOnEndPress"
            Bool: false
          }
          Overrides {
            Name: "cs:BroadcastOnDropped"
            Bool: true
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 1863664298087658871
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
            Id: 1811470417276014342
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8554510439370915919
        Name: "ChangeColorComponentClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        UnregisteredParameters {
          Overrides {
            Name: "cs:ObjectsToColor"
            ObjectReference {
              SubObjectId: 13969398965216039705
            }
          }
          Overrides {
            Name: "cs:DefaultColor"
            Color {
              R: 0.205078766
              G: 0.205078766
              B: 0.205078766
              A: 1
            }
          }
          Overrides {
            Name: "cs:HoveredColor"
            Color {
              R: 0.955973685
              G: 0.356400251
              B: 0.0103298184
              A: 1
            }
          }
          Overrides {
            Name: "cs:PressedColor"
            Color {
              R: 0.363
              G: 0.135331437
              B: 0.00392241357
              A: 1
            }
          }
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2938061745688667746
            }
          }
          Overrides {
            Name: "cs:DraggedOverColor"
            Color {
              R: 0.179006621
              G: 0.51
              A: 1
            }
          }
          Overrides {
            Name: "cs:DraggedColor"
            Color {
              R: 0.86
              G: 0.73470211
              A: 1
            }
          }
          Overrides {
            Name: "cs:SelectedColor"
            Color {
              R: 0.0423114374
              G: 0.258182645
              B: 0.644479871
              A: 1
            }
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 1863664298087658871
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
            Id: 13796540155003565193
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6213445963075605283
        Name: "ToggleTooltipComponentClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 2938061745688667746
            }
          }
          Overrides {
            Name: "cs:ShowOnBeginHover"
            Bool: true
          }
          Overrides {
            Name: "cs:HideOnEndHover"
            Bool: true
          }
          Overrides {
            Name: "cs:UseInputPosition"
            Bool: true
          }
          Overrides {
            Name: "cs:TooltipOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:HideOnBeginDrag"
            Bool: true
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 1863664298087658871
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
            Id: 13457623958721338351
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10858191082077720300
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
        ParentId: 2938061745688667746
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              R: 0.0310000014
              G: 0.0310000014
              B: 0.0310000014
              A: 1
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
        Id: 13138545161715812737
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
        ParentId: 2938061745688667746
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 90
          Height: 90
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
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
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
        Id: 13969398965216039705
        Name: "Border"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              Id: 2014258926635376275
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
        Id: 15700734946025578819
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
        ParentId: 2938061745688667746
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 189
          Height: 49
          UIX: -11.6272583
          UIY: -11.6278992
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "x1"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 15
            Justification {
              Value: "mc:etextjustify:right"
            }
            Font {
              Id: 1283632993086609895
            }
            VerticalJustification {
              Value: "mc:everticaljustification:baseline"
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
        Id: 14802420836845637455
        Name: "Binding"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 37
          Height: 49
          UIX: 8
          UIY: 5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "1"
            Color {
              R: 0.909999967
              G: 0.524304628
              A: 1
            }
            Size: 15
            Justification {
              Value: "mc:etextjustify:left"
            }
            Font {
              Id: 1283632993086609895
            }
            VerticalJustification {
              Value: "mc:everticaljustification:top"
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
        Id: 7236170066237534394
        Name: "Bounds"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2938061745688667746
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
      Id: 1283632993086609895
      Name: "Anton"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "AntonRegular_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Inventory"
}
