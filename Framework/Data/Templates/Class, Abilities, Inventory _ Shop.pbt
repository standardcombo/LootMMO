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
        ParentId: 16194698060440896494
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
        ChildIds: 2245772577262041256
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
        Id: 2245772577262041256
        Name: "Inventory UI"
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
          Value: "mc:evisibilitysetting:forceon"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 13278664966407104232
            value {
              Overrides {
                Name: "Name"
                String: "Inventory UI"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: 19185.9023
                  Y: -9185.08789
                  Z: -27601.6484
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -102.870392
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 16383229967904859891
          }
        }
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Hierarchy"
}
