Assets {
  Id: 9863662204509797960
  Name: "SocialKitNameplate"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11892278358033161151
      Objects {
        Id: 11892278358033161151
        Name: "SocialKitNameplate"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 131023984302372597
        ChildIds: 13207552084160198172
        ChildIds: 652177749933555852
        UnregisteredParameters {
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 17717850092820209359
            }
          }
          Overrides {
            Name: "cs:SubtitleText"
            ObjectReference {
              SubObjectId: 11865778173226847616
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        Folder {
          IsFilePartition: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 131023984302372597
        Name: "NameplateAutoScale"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11892278358033161151
        UnregisteredParameters {
          Overrides {
            Name: "cs:UIContainer"
            ObjectReference {
              SubObjectId: 652177749933555852
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
            Id: 17086128294970399596
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13207552084160198172
        Name: "LootOwnershipBadges"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11892278358033161151
        UnregisteredParameters {
          Overrides {
            Name: "cs:OwnershipPanel"
            ObjectReference {
              SubObjectId: 13688396299552139553
            }
          }
          Overrides {
            Name: "cs:EntryPrototypeSingle"
            ObjectReference {
              SubObjectId: 8077740597357974777
            }
          }
          Overrides {
            Name: "cs:EntryPrototype1Digit"
            ObjectReference {
              SubObjectId: 2131439911460737267
            }
          }
          Overrides {
            Name: "cs:EntryPrototype2Digits"
            ObjectReference {
              SubObjectId: 4869923663972188643
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
            Id: 660575675698214276
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 652177749933555852
        Name: "UI Container"
        Transform {
          Location {
            Z: -20
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.25
          }
        }
        ParentId: 11892278358033161151
        ChildIds: 17375640927392651006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
            CanvasWorldSize {
              X: 1124
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
        Id: 17375640927392651006
        Name: "UI Panel"
        Transform {
          Location {
            X: -230490.312
            Y: -57685.5469
            Z: -25345.4961
          }
          Rotation {
            Yaw: -166.047714
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 652177749933555852
        ChildIds: 17717850092820209359
        ChildIds: 11865778173226847616
        ChildIds: 13688396299552139553
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          UIX: 5
          UIY: 5
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
                Value: "mc:euianchor:middlecenter"
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
        Id: 17717850092820209359
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
        ParentId: 17375640927392651006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 2200
          Height: 60
          UIY: -150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "StandardCombo"
            Color {
              R: 0.0338399522
              G: 0.193943799
              B: 0.72
              A: 1
            }
            Size: 45
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 14100456703306476565
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
              G: 0.0185430124
              B: 0.279999971
              A: 1
            }
            OutlineSize: 6
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
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
        Id: 11865778173226847616
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
        ParentId: 17375640927392651006
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 2200
          Height: 60
          UIX: -5
          UIY: -30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Color {
              R: 0.297000021
              G: 0.297000021
              B: 0.297000021
              A: 1
            }
            Size: 40
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 14100456703306476565
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
              R: 0.066
              G: 0.066
              B: 0.066
              A: 1
            }
            OutlineSize: 6
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
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
        Id: 13688396299552139553
        Name: "Ownership Panel"
        Transform {
          Location {
            Z: -80
          }
          Rotation {
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 17375640927392651006
        ChildIds: 8593549430495508373
        ChildIds: 9398768574592971081
        ChildIds: 775742064495504045
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
          Height: 80
          UIY: -40
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
                Value: "mc:euianchor:middlecenter"
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
        Id: 8593549430495508373
        Name: "Ownership Entry Single"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13688396299552139553
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 6658591651197648724
            value {
              Overrides {
                Name: "Name"
                String: "Ownership Entry Single"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -14849.8652
                  Y: -25.5795898
                  Z: 1609.09351
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 166.047607
                }
              }
            }
          }
          TemplateAsset {
            Id: 17805724559486721079
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9398768574592971081
        Name: "Ownership Entry 1-Digit"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13688396299552139553
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 15790627480518931147
            value {
              Overrides {
                Name: "Name"
                String: "Ownership Entry 1-Digit"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -14849.9121
                  Y: -25.5776367
                  Z: 1609.09351
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 166.047684
                }
              }
            }
          }
          TemplateAsset {
            Id: 614208118390181457
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 775742064495504045
        Name: "Ownership Entry 2-Digits"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13688396299552139553
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 7782320659146161327
            value {
              Overrides {
                Name: "Name"
                String: "Ownership Entry 2-Digits"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -14849.8652
                  Y: -25.5795898
                  Z: 1609.09351
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: 166.047607
                }
              }
            }
          }
          TemplateAsset {
            Id: 4179537314325096722
          }
        }
        IsReplicationEnabledByDefault: true
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
  VirtualFolderPath: "Social Elements"
}
