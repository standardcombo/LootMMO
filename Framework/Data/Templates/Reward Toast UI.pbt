Assets {
  Id: 816526729401422220
  Name: "Reward Toast UI"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10097200626876299952
      Objects {
        Id: 10097200626876299952
        Name: "Reward Toast UI"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3833344059936018977
        ChildIds: 6755294703703749401
        ChildIds: 9378081510939833699
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
        Id: 6755294703703749401
        Name: "RewardToastClient"
        Transform {
          Location {
            X: -6291.92725
            Y: -3673.86475
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
        ParentId: 10097200626876299952
        UnregisteredParameters {
          Overrides {
            Name: "cs:UIPanel"
            ObjectReference {
              SubObjectId: 1919578735665089931
            }
          }
          Overrides {
            Name: "cs:PrototypeRowLegendary"
            ObjectReference {
              SubObjectId: 2329898612707892412
            }
          }
          Overrides {
            Name: "cs:PrototypeRowEpic"
            ObjectReference {
              SubObjectId: 6605453598163250177
            }
          }
          Overrides {
            Name: "cs:PrototypeRowRare"
            ObjectReference {
              SubObjectId: 14843818605635968965
            }
          }
          Overrides {
            Name: "cs:PrototypeRowCommon"
            ObjectReference {
              SubObjectId: 957978719832837080
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
            Id: 7974286336862852748
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9378081510939833699
        Name: "UI Container"
        Transform {
          Location {
            X: -6291.92725
            Y: -3673.86475
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
        ParentId: 10097200626876299952
        ChildIds: 1919578735665089931
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
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
        Id: 1919578735665089931
        Name: "UI Panel"
        Transform {
          Location {
            X: -4555.94238
            Y: -5685.86133
            Z: 50441.0938
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9378081510939833699
        ChildIds: 5220343275424600114
        ChildIds: 12637820231911263867
        ChildIds: 7257603940331643572
        ChildIds: 7877416048880214583
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
          Width: 400
          Height: 526
          UIY: 120
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
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5220343275424600114
        Name: "Reward Row - Legendary"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1919578735665089931
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 14491781249134460464
            value {
              Overrides {
                Name: "Name"
                String: "Reward Row - Legendary"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -0.00108671165
                  Y: 0.000105597661
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 10643462321462572004
          }
        }
      }
      Objects {
        Id: 12637820231911263867
        Name: "Reward Row - Epic"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1919578735665089931
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 11672071805735674507
            value {
              Overrides {
                Name: "Name"
                String: "Reward Row - Epic"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -0.000455804169
                  Y: -0.00017510324
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 6843158157429088478
          }
        }
      }
      Objects {
        Id: 7257603940331643572
        Name: "Reward Row - Rare"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1919578735665089931
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 148254661986234257
            value {
              Overrides {
                Name: "Name"
                String: "Reward Row - Rare"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -0.000455804169
                  Y: -0.00017510324
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 10850381801161306477
          }
        }
      }
      Objects {
        Id: 7877416048880214583
        Name: "Reward Row - Common"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1919578735665089931
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 17310727176505999344
            value {
              Overrides {
                Name: "Name"
                String: "Reward Row - Common"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -0.000455804169
                  Y: -0.00017510324
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 818774817963094393
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
}
