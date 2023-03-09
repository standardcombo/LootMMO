Assets {
  Id: 4523092629825599592
  Name: "HarvestingSystem"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1814903886876349253
      Objects {
        Id: 1814903886876349253
        Name: "HarvestingSystem"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12785624939370825655
        ChildIds: 5965223518924979781
        ChildIds: 2495577722444127252
        ChildIds: 6894186068622973356
        UnregisteredParameters {
          Overrides {
            Name: "cs:NODES"
            ObjectReference {
              SubObjectId: 6894186068622973356
            }
          }
          Overrides {
            Name: "cs:API_HarvestingSystem"
            AssetReference {
              Id: 10330204589680347581
            }
          }
          Overrides {
            Name: "cs:HarvestingNodes"
            AssetReference {
              Id: 5382877410966996753
            }
          }
          Overrides {
            Name: "cs:HarvestingTools"
            AssetReference {
              Id: 5490973462993262132
            }
          }
          Overrides {
            Name: "cs:InitNodesSpawnedPerCent"
            Int: 50
          }
          Overrides {
            Name: "cs:InitSpawnEvenByType"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnNodesInterval"
            Vector2 {
              X: 5
              Y: 15
            }
          }
          Overrides {
            Name: "cs:RespawnByTypeOnly"
            Bool: true
          }
          Overrides {
            Name: "cs:RemovePartiallyMinedNodesAfter"
            Int: 30
          }
          Overrides {
            Name: "cs:SpawnOnlyFullNodes"
            Bool: true
          }
          Overrides {
            Name: "cs:RespawnByTypeOnly:tooltip"
            String: "If true, the mined node will be replaced by the same type. This has precedense prior the RespawnNodes"
          }
          Overrides {
            Name: "cs:InitNodesSpawnedPerCent:tooltip"
            String: "How many nodes in the world will spawn populated, per cent value of all nodes."
          }
          Overrides {
            Name: "cs:InitSpawnEvenByType:tooltip"
            String: "If true, the initial node spawning will be per type. If false, the nodes will be populated at random."
          }
          Overrides {
            Name: "cs:RemovePartiallyMinedNodesAfter:tooltip"
            String: "timeout in seconds after the at least once mined node will be destroyed and sent to respawn handler. Set to 0 to keep partially mined nodes without reset."
          }
          Overrides {
            Name: "cs:SpawnOnlyFullNodes:tooltip"
            String: "If false, the newly spawned nodes do have random richness <1,maxAllowedForNode>. If false, nodes do always spawn with max richness."
          }
          Overrides {
            Name: "cs:NODES:category"
            String: "InnerVars"
          }
          Overrides {
            Name: "cs:API_HarvestingSystem:category"
            String: "InnerVars"
          }
          Overrides {
            Name: "cs:HarvestingNodes:category"
            String: "InnerVars"
          }
          Overrides {
            Name: "cs:HarvestingTools:category"
            String: "InnerVars"
          }
          Overrides {
            Name: "cs:RespawnNodesInterval:tooltip"
            String: "min max time in seconds when a node will respawn after being mined. set to <0,0> to disable respawning."
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
        Id: 5965223518924979781
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
        ParentId: 1814903886876349253
        ChildIds: 4604582766902577941
        ChildIds: 15685272121078356307
        ChildIds: 2828076676423721782
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
        Id: 4604582766902577941
        Name: "HarvestingSystem_Client"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5965223518924979781
        UnregisteredParameters {
          Overrides {
            Name: "cs:ROOT"
            ObjectReference {
              SubObjectId: 1814903886876349253
            }
          }
          Overrides {
            Name: "cs:HarvestingInteractionPanel"
            ObjectReference {
              SubObjectId: 7113635583665963045
            }
          }
          Overrides {
            Name: "cs:HarvestingProgressionPanel"
            ObjectReference {
              SubObjectId: 5327017794578906568
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
            Id: 11638447669813120456
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15685272121078356307
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
        ParentId: 5965223518924979781
        ChildIds: 7113635583665963045
        ChildIds: 5327017794578906568
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 7113635583665963045
        Name: "HarvestingInteractionPanel"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15685272121078356307
        ChildIds: 18240215690195151808
        ChildIds: 4582309590625884192
        ChildIds: 8321697126744091040
        UnregisteredParameters {
          Overrides {
            Name: "cs:HarvestNodeLabel"
            ObjectReference {
              SubObjectId: 8321697126744091040
            }
          }
          Overrides {
            Name: "cs:HarvestNodeHotkey"
            ObjectReference {
              SubObjectId: 4582309590625884192
            }
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
          Width: 210
          Height: 60
          UIX: 100
          UIY: 50
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
        Id: 18240215690195151808
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
        ParentId: 7113635583665963045
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              A: 0.4
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
        Id: 4582309590625884192
        Name: "HarvestNodeHotkey"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7113635583665963045
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 60
          UIX: 10
          UIY: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "[F]"
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
        Id: 8321697126744091040
        Name: "HarvestNodeLabel"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7113635583665963045
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -65
          UIX: -15
          UIY: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Text {
            Label: "Harvest node here"
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
        Id: 5327017794578906568
        Name: "HarvestingProgressionPanel"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15685272121078356307
        ChildIds: 10150622539658467520
        ChildIds: 9982003503916752338
        ChildIds: 5803727238428626605
        UnregisteredParameters {
          Overrides {
            Name: "cs:HarvestingNow"
            ObjectReference {
              SubObjectId: 9982003503916752338
            }
          }
          Overrides {
            Name: "cs:UI Progress Bar"
            ObjectReference {
              SubObjectId: 5803727238428626605
            }
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
          Width: 210
          Height: 60
          UIX: 100
          UIY: 50
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
        Id: 10150622539658467520
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
        ParentId: 5327017794578906568
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
              A: 0.4
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
        Id: 9982003503916752338
        Name: "HarvestingNow"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5327017794578906568
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 40
          UIY: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHORT"
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
            Font {
              Id: 841534158063459245
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5803727238428626605
        Name: "UI Progress Bar"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5327017794578906568
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -8
          Height: 5
          UIY: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          StatBar {
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.02
              B: 0.02
              A: 0.8
            }
            Percent: 0.375002861
            FillBrush {
              Id: 841534158063459245
            }
            BackgroundBrush {
              Id: 841534158063459245
            }
            FillType {
              Value: "mc:eprogressbarfilltype:lefttoright"
            }
            FillTileType {
              Value: "mc:eslatebrushtiletype:notile"
            }
            BackgroundTileType {
              Value: "mc:eslatebrushtiletype:notile"
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
        Id: 2828076676423721782
        Name: "HarvestingSystem_ReadMe"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5965223518924979781
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
            Id: 2827277044402293060
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2495577722444127252
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
        ParentId: 1814903886876349253
        ChildIds: 10187750026984429688
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 10187750026984429688
        Name: "HarvestingSystem_Server"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2495577722444127252
        UnregisteredParameters {
          Overrides {
            Name: "cs:ROOT"
            ObjectReference {
              SubObjectId: 1814903886876349253
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
            Id: 10506754159465741130
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6894186068622973356
        Name: "NODES"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1814903886876349253
        ChildIds: 2928065486208846998
        ChildIds: 3674209128133474814
        ChildIds: 8185842330870335154
        ChildIds: 14655204621093710935
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 2928065486208846998
        Name: "Node_IronVein"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6894186068622973356
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 17706867916820843333
            value {
              Overrides {
                Name: "Name"
                String: "Node_IronVein"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -1489.99951
                  Y: 976.169067
                  Z: 3260.10352
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 54.3729324
                }
              }
            }
          }
          TemplateAsset {
            Id: 9888337940943011348
          }
        }
      }
      Objects {
        Id: 3674209128133474814
        Name: "Node_Coal"
        Transform {
          Location {
            X: -2071.51245
            Y: 1755.10132
            Z: 3210.98584
          }
          Rotation {
            Yaw: -160.927505
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6894186068622973356
        WantsNetworking: true
        TemplateInstance {
          ParameterOverrideMap {
            key: 17706867916820843333
            value {
              Overrides {
                Name: "Name"
                String: "Node_Gold"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -2729.93213
                  Y: 1523.98499
                  Z: 3210.98584
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 109.95047
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1.2
                  Y: 1.2
                  Z: 1.2
                }
              }
            }
          }
          TemplateAsset {
            Id: 5634713177964474569
          }
        }
      }
      Objects {
        Id: 8185842330870335154
        Name: "Node_BirchTree"
        Transform {
          Location {
            X: -2289.89844
            Y: 672.193359
            Z: 3264.09131
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6894186068622973356
        WantsNetworking: true
        TemplateInstance {
          ParameterOverrideMap {
            key: 10735264763254810291
            value {
              Overrides {
                Name: "Name"
                String: "Node_BirchTree"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -2048.04419
                  Y: -150.774658
                  Z: 3302.96045
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
          TemplateAsset {
            Id: 2231785504448967504
          }
        }
      }
      Objects {
        Id: 14655204621093710935
        Name: "Node_Grave"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6894186068622973356
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 17706867916820843333
            value {
              Overrides {
                Name: "Name"
                String: "Node_Grave"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -2098.45776
                  Y: -3519.89062
                  Z: 3339.31274
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 139.070526
                }
              }
            }
          }
          TemplateAsset {
            Id: 5151630942758078215
          }
        }
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
}
