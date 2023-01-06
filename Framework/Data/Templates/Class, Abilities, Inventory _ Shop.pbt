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
        ChildIds: 3674534837836636837
        ChildIds: 1469020281923212012
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
          TemplateAsset {
            Id: 13661131819183159129
          }
        }
      }
      Objects {
        Id: 3674534837836636837
        Name: "Inventory UI"
        Transform {
          Location {
            X: 19185.9023
            Y: -9185.08789
            Z: -27601.6484
          }
          Rotation {
            Yaw: -102.870392
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16648679857669058489
        ChildIds: 17057735617161947490
        ChildIds: 13212580841458752809
        ChildIds: 5133303726412516185
        ChildIds: 11097948467287958697
        ChildIds: 17915133623654082545
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
        InstanceHistory {
          SelfId: 1315952445397151914
          SubobjectId: 13278664966407104232
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
          WasRoot: true
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17057735617161947490
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
        ParentId: 3674534837836636837
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 3674534837836636837
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
        InstanceHistory {
          SelfId: 2122575823761438572
          SubobjectId: 13218240688053510446
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13212580841458752809
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
        ParentId: 3674534837836636837
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
        InstanceHistory {
          SelfId: 3073251522855420189
          SubobjectId: 9268998823900043103
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5133303726412516185
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
        ParentId: 3674534837836636837
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
        InstanceHistory {
          SelfId: 2401697914929558436
          SubobjectId: 10038790954645104102
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11097948467287958697
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
        ParentId: 3674534837836636837
        UnregisteredParameters {
          Overrides {
            Name: "cs:Slots"
            ObjectReference {
              SubObjectId: 11947636538091090350
            }
          }
          Overrides {
            Name: "cs:EquipmentSlots"
            ObjectReference {
              SubObjectId: 11867976768007029244
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
              SubObjectId: 3674534837836636837
            }
          }
          Overrides {
            Name: "cs:StatDisplay"
            ObjectReference {
              SubObjectId: 8101472466147178634
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
        InstanceHistory {
          SelfId: 10633024697977154914
          SubobjectId: 4149063238841580320
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17915133623654082545
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
        ParentId: 3674534837836636837
        ChildIds: 10064970913433225117
        ChildIds: 9931380062998184468
        ChildIds: 10316497669048521006
        ChildIds: 897882964325167530
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 6322763216251721804
          SubobjectId: 18283082924615896590
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10064970913433225117
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
        ParentId: 17915133623654082545
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 14227357536552309638
          SubobjectId: 8031539797770618308
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9931380062998184468
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
        ParentId: 17915133623654082545
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 8890478213771766215
          SubobjectId: 15088512842801725317
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10316497669048521006
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
        ParentId: 17915133623654082545
        ChildIds: 2434962124455821831
        ChildIds: 16423893718359778775
        ChildIds: 5557803661041811964
        ChildIds: 15673117409747816402
        ChildIds: 15367790700122892273
        ChildIds: 4838864855555777772
        ChildIds: 9617732483148281380
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 11814867915539818402
          SubobjectId: 716828175182836192
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2434962124455821831
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
        ParentId: 10316497669048521006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 8994941299808960882
          SubobjectId: 15478884960566253360
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16423893718359778775
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
        ParentId: 10316497669048521006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 14365045297233827367
          SubobjectId: 7880908191052988517
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5557803661041811964
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
        ParentId: 10316497669048521006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 7783044301780198268
          SubobjectId: 14269256460911654206
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15673117409747816402
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
        ParentId: 10316497669048521006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 11134650290172840689
          SubobjectId: 3495428665164520627
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15367790700122892273
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
        ParentId: 10316497669048521006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 8695617070050103184
          SubobjectId: 15179788330347944402
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4838864855555777772
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
        ParentId: 10316497669048521006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 6013002375948047984
          SubobjectId: 17975556497691377714
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9617732483148281380
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
        ParentId: 10316497669048521006
        ChildIds: 15523692606277402269
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 7736381571257092532
          SubobjectId: 13932270984313888758
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15523692606277402269
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
        ParentId: 9617732483148281380
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
        InstanceHistory {
          SelfId: 6624527892716296647
          SubobjectId: 17432156169449705349
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 897882964325167530
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
        ParentId: 17915133623654082545
        ChildIds: 11564570516803626055
        ChildIds: 13377985285386501575
        ChildIds: 18218864350765759706
        ChildIds: 8101472466147178634
        ChildIds: 12329733797743994377
        ChildIds: 5499191889790771247
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 4829788241464702667
          SubobjectId: 16790161000962072713
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11564570516803626055
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
        ParentId: 897882964325167530
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 9368585084423513044
          SubobjectId: 2884448733854741910
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13377985285386501575
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
        ParentId: 897882964325167530
        ChildIds: 12766589794870943266
        ChildIds: 11947636538091090350
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 8036880131318699218
          SubobjectId: 14234967261693592208
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12766589794870943266
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
        ParentId: 13377985285386501575
        ChildIds: 5252098299302858423
        ChildIds: 7184142920372157495
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 5832719360259345907
          SubobjectId: 18083504958374140849
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5252098299302858423
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
        ParentId: 12766589794870943266
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 2081156044124305926
          SubobjectId: 13179143076570278980
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7184142920372157495
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
        ParentId: 12766589794870943266
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 840581989423271530
          SubobjectId: 11650284976074709032
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11947636538091090350
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
        ParentId: 13377985285386501575
        ChildIds: 7156853391718727241
        ChildIds: 17974205475295397183
        ChildIds: 14166002991572937921
        ChildIds: 573850786361545545
        ChildIds: 15412802002663900463
        ChildIds: 356589338145490482
        ChildIds: 18144590763709537346
        ChildIds: 7201099618145627372
        ChildIds: 1833045074672905370
        ChildIds: 3509585213996462318
        ChildIds: 15850259966290740761
        ChildIds: 8971136012768815219
        ChildIds: 8078061720884763910
        ChildIds: 13667000534874637435
        ChildIds: 5025388092539066767
        ChildIds: 14768799052810475915
        ChildIds: 16740659552369457986
        ChildIds: 10780873352176804729
        ChildIds: 11845891494398738447
        ChildIds: 10205463635963348714
        ChildIds: 16944010290493313953
        ChildIds: 6169574753526716364
        ChildIds: 12101305102823082530
        ChildIds: 10577236100267829252
        ChildIds: 20923417791064897
        ChildIds: 7300446003510659781
        ChildIds: 4403427601659463436
        ChildIds: 14130124714657054342
        ChildIds: 6072334824723475758
        ChildIds: 8411780481200477641
        ChildIds: 6591194841702997650
        ChildIds: 1667051344080362762
        ChildIds: 5520519186454298385
        ChildIds: 15063900540477839521
        ChildIds: 1954460432058856175
        ChildIds: 1670214464263908930
        ChildIds: 5768785310693450703
        ChildIds: 6122182751335858941
        ChildIds: 8824269907058675841
        ChildIds: 10888858723729597527
        ChildIds: 16090532695729019096
        ChildIds: 2847423222961098628
        ChildIds: 16115454518559291625
        ChildIds: 5257873314547680045
        ChildIds: 18351414006985500756
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 1467193577280732052
          SubobjectId: 13715990158324002262
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7156853391718727241
        Name: "Slot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 5956440913525463336
          SubobjectId: 17919259812053602154
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 17974205475295397183
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 14634085584380617592
          SubobjectId: 6994881757917050170
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 14166002991572937921
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 4209452254755298325
          SubobjectId: 10407398922854238807
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 573850786361545545
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 15619562230631929477
          SubobjectId: 8270770279236894919
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 15412802002663900463
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 2871042765609311866
          SubobjectId: 10219659894017198136
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 356589338145490482
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 8112963832076350335
          SubobjectId: 15750056802507171133
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 18144590763709537346
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 8577369464520091025
          SubobjectId: 15928256328895181779
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 7201099618145627372
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 14952625953695255271
          SubobjectId: 7315568441847471269
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 1833045074672905370
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 2499540542060417002
          SubobjectId: 9850601953130207656
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 3509585213996462318
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 3811920934836049897
          SubobjectId: 11448943330565390763
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 15850259966290740761
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 14039616507686050272
          SubobjectId: 7553315562923544482
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 8971136012768815219
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 7092037060509543112
          SubobjectId: 14442906057115778186
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 8078061720884763910
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 9884104905206532291
          SubobjectId: 2535277701596618369
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 13667000534874637435
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 3466689790509564675
          SubobjectId: 11103729710073468225
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 5025388092539066767
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 14619257461881890917
          SubobjectId: 6982393189400870439
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 14768799052810475915
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 15254384477546029229
          SubobjectId: 8770212118037772015
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 16740659552369457986
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 3054039195207625962
          SubobjectId: 9252180201684794024
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 10780873352176804729
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 13290584091090799279
          SubobjectId: 1330210575175015661
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 11845891494398738447
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 11008516938917871605
          SubobjectId: 3657595234008394167
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 10205463635963348714
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 17727452522664588218
          SubobjectId: 6629554344535320056
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 16944010290493313953
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 1345619600749581427
          SubobjectId: 13306132823624761905
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 6169574753526716364
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 16992141852045192194
          SubobjectId: 4743502431941900864
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 12101305102823082530
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 322526558963656511
          SubobjectId: 12573382319290904957
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 10577236100267829252
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 810510895979445443
          SubobjectId: 11618156695671974529
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 20923417791064897
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 5846873468013780672
          SubobjectId: 18095530205290727554
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 7300446003510659781
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 4282103704659855260
          SubobjectId: 10478026995681202654
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 4403427601659463436
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 7098038205552583026
          SubobjectId: 14449012755576289072
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 14130124714657054342
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 2034271405454901684
          SubobjectId: 13132311489139791862
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 6072334824723475758
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 488614762466613771
          SubobjectId: 12448952269544557641
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 8411780481200477641
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 2536905394754900541
          SubobjectId: 9885575643314898047
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 6591194841702997650
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 10561029431686351880
          SubobjectId: 4076928608918493770
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 1667051344080362762
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 16967582978387490093
          SubobjectId: 4718803164297077615
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 5520519186454298385
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 3500023056425287792
          SubobjectId: 11139351059615618610
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 15063900540477839521
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 3652234945106130125
          SubobjectId: 11000922786124997263
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 1954460432058856175
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 17820575933392568614
          SubobjectId: 6722501833129449316
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 1670214464263908930
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 6477717933018255685
          SubobjectId: 17573330020750952199
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 5768785310693450703
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 770931538421653507
          SubobjectId: 11580617825943696961
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 6122182751335858941
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 12372511451026563018
          SubobjectId: 123713976898849160
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 8824269907058675841
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 14414720523293761445
          SubobjectId: 7065909606129568231
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 10888858723729597527
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 11295063214748264013
          SubobjectId: 3946376542431244303
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 16090532695729019096
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 8839625575618207411
          SubobjectId: 15035496090650855665
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 2847423222961098628
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 14356657965615211283
          SubobjectId: 7870428419617224017
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 16115454518559291625
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 3149509684421500030
          SubobjectId: 9345311136719964732
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 5257873314547680045
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 13978224640928574044
          SubobjectId: 7780207948181175326
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 18351414006985500756
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
        ParentId: 11947636538091090350
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
        InstanceHistory {
          SelfId: 6330852000681394036
          SubobjectId: 18293565551911758134
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 18218864350765759706
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
        ParentId: 897882964325167530
        ChildIds: 2032922652559022775
        ChildIds: 16623079790092651069
        ChildIds: 11867976768007029244
        ChildIds: 7042475218543648164
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 17772126750052850024
          SubobjectId: 6676375024845492010
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2032922652559022775
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
        ParentId: 18218864350765759706
        ChildIds: 8906163956633844681
        ChildIds: 5455537806635958468
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 14070795973430350454
          SubobjectId: 7584618997933048884
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8906163956633844681
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
        ParentId: 2032922652559022775
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 6768734574541925748
          SubobjectId: 17864399369375284022
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5455537806635958468
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
        ParentId: 2032922652559022775
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 2095713680135525114
          SubobjectId: 13191325698646410424
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16623079790092651069
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
        ParentId: 18218864350765759706
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 14159744454021662684
          SubobjectId: 7964048761237164446
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11867976768007029244
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
        ParentId: 18218864350765759706
        ChildIds: 5594556250758948680
        ChildIds: 16559876181103825955
        ChildIds: 1751126812439481758
        ChildIds: 5346033930901409443
        ChildIds: 15453556260675179261
        ChildIds: 11059607298138949177
        ChildIds: 5960416589022182028
        ChildIds: 567598066514298877
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 3800405073032676871
          SubobjectId: 11437376066723647557
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5594556250758948680
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
        ParentId: 11867976768007029244
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
        InstanceHistory {
          SelfId: 10960149959803976755
          SubobjectId: 3611393193318951537
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 16559876181103825955
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
        ParentId: 11867976768007029244
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
        InstanceHistory {
          SelfId: 2690514323636789678
          SubobjectId: 10327554586055948268
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 1751126812439481758
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
        ParentId: 11867976768007029244
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
        InstanceHistory {
          SelfId: 15949326296764601906
          SubobjectId: 8598246262545432688
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 5346033930901409443
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
        ParentId: 11867976768007029244
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
        InstanceHistory {
          SelfId: 4654080165859465891
          SubobjectId: 16902825139242274017
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 15453556260675179261
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
        ParentId: 11867976768007029244
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
        InstanceHistory {
          SelfId: 5136785944691313922
          SubobjectId: 17099603949597563712
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 11059607298138949177
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
        ParentId: 11867976768007029244
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
        InstanceHistory {
          SelfId: 11118823054986520709
          SubobjectId: 3479459524091297479
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 5960416589022182028
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
        ParentId: 11867976768007029244
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
        InstanceHistory {
          SelfId: 18150539978887300159
          SubobjectId: 5901918219860447869
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 567598066514298877
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
        ParentId: 11867976768007029244
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
        InstanceHistory {
          SelfId: 7127891027453130666
          SubobjectId: 14478830599363830248
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
      }
      Objects {
        Id: 7042475218543648164
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
        ParentId: 18218864350765759706
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 646244718516982317
          SubobjectId: 11741891990454256751
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8101472466147178634
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
        ParentId: 897882964325167530
        ChildIds: 11387560284201126833
        ChildIds: 5960087066807918060
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 12613304686560085392
          SubobjectId: 364524804449342418
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11387560284201126833
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
        ParentId: 8101472466147178634
        ChildIds: 12835445767826259918
        ChildIds: 12707896837491073025
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 7725064281430764844
          SubobjectId: 13920777772627114862
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12835445767826259918
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
        ParentId: 11387560284201126833
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 13878642802023946363
          SubobjectId: 7682754695269568057
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12707896837491073025
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
        ParentId: 11387560284201126833
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 1928116766470438969
          SubobjectId: 12737995400038356603
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5960087066807918060
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
        ParentId: 8101472466147178634
        ChildIds: 1124688849847681283
        ChildIds: 16216463030598344637
        ChildIds: 16439030232181333513
        ChildIds: 17721522158316264836
        ChildIds: 4953575770924046681
        ChildIds: 1531785735821996207
        ChildIds: 4365656877158601679
        ChildIds: 17541390063409312922
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 181570311795140247
          SubobjectId: 12142102157149401301
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1124688849847681283
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
        ParentId: 5960087066807918060
        ChildIds: 2134727578514583370
        ChildIds: 6322364507242451726
        ChildIds: 5434536433459530237
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 3916778994056527150
          SubobjectId: 11267805152135474028
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2134727578514583370
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
        ParentId: 1124688849847681283
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 1834484853606696106
          SubobjectId: 12930149991806489320
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6322364507242451726
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
        ParentId: 1124688849847681283
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 8940378832362647351
          SubobjectId: 15426767738593294709
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5434536433459530237
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
        ParentId: 1124688849847681283
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 11492106014801946578
          SubobjectId: 3852918680208601488
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16216463030598344637
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
        ParentId: 5960087066807918060
        ChildIds: 6112148575686723431
        ChildIds: 984469101268949817
        ChildIds: 16240396452481427128
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 12520447814355279703
          SubobjectId: 560109208035182869
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6112148575686723431
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
        ParentId: 16216463030598344637
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 12479301665011033215
          SubobjectId: 516535268833423933
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 984469101268949817
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
        ParentId: 16216463030598344637
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 11002426886902907918
          SubobjectId: 3653545600527667788
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16240396452481427128
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
        ParentId: 16216463030598344637
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 4703292602313341058
          SubobjectId: 16951842687230766784
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16439030232181333513
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
        ParentId: 5960087066807918060
        ChildIds: 7808067609721389915
        ChildIds: 16920240345258918650
        ChildIds: 4740344522132551649
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 17909814433583698986
          SubobjectId: 5947014295907795560
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7808067609721389915
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
        ParentId: 16439030232181333513
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 11638452046977437179
          SubobjectId: 828784175978421177
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16920240345258918650
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
        ParentId: 16439030232181333513
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 4593894117320068742
          SubobjectId: 10791947368827984068
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4740344522132551649
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
        ParentId: 16439030232181333513
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 16870138596268140658
          SubobjectId: 4619212192582073904
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17721522158316264836
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
        ParentId: 5960087066807918060
        ChildIds: 17872187864278160097
        ChildIds: 3112016479337266492
        ChildIds: 10360728489947137331
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 10415782005110088184
          SubobjectId: 4217676183234721722
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17872187864278160097
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
        ParentId: 17721522158316264836
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 18388819040793481453
          SubobjectId: 6140180720569927343
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3112016479337266492
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
        ParentId: 17721522158316264836
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 5783645936828485855
          SubobjectId: 18034625117809641117
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10360728489947137331
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
        ParentId: 17721522158316264836
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 14756372839468456522
          SubobjectId: 7407667406230244360
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4953575770924046681
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
        ParentId: 5960087066807918060
        ChildIds: 11143597420568924550
        ChildIds: 17968504534123602720
        ChildIds: 3768416500512175192
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 4322956816312081357
          SubobjectId: 10518793521598041487
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11143597420568924550
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
        ParentId: 4953575770924046681
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 18199597546324760660
          SubobjectId: 6239048039934758422
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17968504534123602720
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
        ParentId: 4953575770924046681
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 9127902969372360346
          SubobjectId: 15323686622886013144
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3768416500512175192
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
        ParentId: 4953575770924046681
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 9379962604391193363
          SubobjectId: 2893609913924570449
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1531785735821996207
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
        ParentId: 5960087066807918060
        ChildIds: 2844500573735824487
        ChildIds: 13903247963429310679
        ChildIds: 10583597731843509327
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 2760770057633548245
          SubobjectId: 10111778623429202327
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2844500573735824487
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
        ParentId: 1531785735821996207
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 6883146268943266031
          SubobjectId: 17690598623844345517
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13903247963429310679
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
        ParentId: 1531785735821996207
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 671595864834042652
          SubobjectId: 11769458651933670750
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10583597731843509327
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
        ParentId: 1531785735821996207
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 11058526898749588469
          SubobjectId: 3707517164089562551
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4365656877158601679
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
        ParentId: 5960087066807918060
        ChildIds: 8283810377924976597
        ChildIds: 10519895288526614521
        ChildIds: 14714842705830476408
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 8418785504157091323
          SubobjectId: 16055878474549121977
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8283810377924976597
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
        ParentId: 4365656877158601679
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 6293162035178025259
          SubobjectId: 18253569979719362409
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10519895288526614521
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
        ParentId: 4365656877158601679
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 14808269571352014946
          SubobjectId: 7459634575678055968
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14714842705830476408
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
        ParentId: 4365656877158601679
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 3659770844311834650
          SubobjectId: 11010850947653125720
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17541390063409312922
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
        ParentId: 5960087066807918060
        ChildIds: 3948129152938559262
        ChildIds: 14673791767836323451
        ChildIds: 17202634974033296412
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 9436137272314002898
          SubobjectId: 2952000097010051984
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3948129152938559262
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
        ParentId: 17541390063409312922
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 10197935350554307560
          SubobjectId: 2846873663663947178
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14673791767836323451
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
        ParentId: 17541390063409312922
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 3018108893708173431
          SubobjectId: 9504286968247670325
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17202634974033296412
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
        ParentId: 17541390063409312922
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 2840139829773105137
          SubobjectId: 10191167156960027059
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12329733797743994377
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
        ParentId: 897882964325167530
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 3183172759630355099
          SubobjectId: 9667150779921534169
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5499191889790771247
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
        ParentId: 897882964325167530
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        InstanceHistory {
          SelfId: 10686466721952143188
          SubobjectId: 4488272939381621014
          InstanceId: 2245772577262041256
          TemplateId: 16383229967904859891
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1469020281923212012
        Name: "Shop UI"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16648679857669058489
        TemplateInstance {
          ParameterOverrideMap {
            key: 16224725013193256052
            value {
              Overrides {
                Name: "Name"
                String: "Shop UI"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: 19185.8887
                  Y: -9185.08203
                  Z: -27601.6484
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -102.870392
                }
              }
            }
          }
          TemplateAsset {
            Id: 9398869833167484305
          }
        }
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Hierarchy"
}
