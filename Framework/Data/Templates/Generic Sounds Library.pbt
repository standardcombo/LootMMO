Assets {
  Id: 13225073513533744256
  Name: "Generic Sounds Library"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17810628279987388495
      Objects {
        Id: 17810628279987388495
        Name: "Generic Sounds Library"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12785624939370825655
        ChildIds: 7602111936373150726
        ChildIds: 16695209962647084186
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
        Id: 7602111936373150726
        Name: "SoundsLibrary"
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
        ParentId: 17810628279987388495
        UnregisteredParameters {
          Overrides {
            Name: "cs:Sounds"
            ObjectReference {
              SubObjectId: 16695209962647084186
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
            Id: 14789455394855263645
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16695209962647084186
        Name: "Sounds"
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
        ParentId: 17810628279987388495
        ChildIds: 15497921425080736844
        ChildIds: 7132331219646425160
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
          IsFilePartition: true
          FilePartitionName: "Sounds"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15497921425080736844
        Name: "Click_Sfx"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16695209962647084186
        TemplateInstance {
          ParameterOverrideMap {
            key: 17117083384172599677
            value {
              Overrides {
                Name: "Name"
                String: "Click"
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
                Name: "Transient"
                Bool: false
              }
              Overrides {
                Name: "AutoPlay"
                Bool: false
              }
              Overrides {
                Name: "Lifespan"
                Float: 0
              }
            }
          }
          TemplateAsset {
            Id: 1988019442596915822
          }
        }
      }
      Objects {
        Id: 7132331219646425160
        Name: "Hover_SFX"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16695209962647084186
        TemplateInstance {
          ParameterOverrideMap {
            key: 7888446067057122242
            value {
              Overrides {
                Name: "Name"
                String: "Hover"
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
                Name: "Transient"
                Bool: false
              }
              Overrides {
                Name: "AutoPlay"
                Bool: false
              }
              Overrides {
                Name: "Lifespan"
                Float: 0
              }
            }
          }
          TemplateAsset {
            Id: 5485819788848077082
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "Hierarchy"
}
