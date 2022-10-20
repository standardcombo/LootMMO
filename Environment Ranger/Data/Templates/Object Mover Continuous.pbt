Assets {
  Id: 14184134622512877584
  Name: "Object Mover Continuous"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9559907986640974212
      Objects {
        Id: 9559907986640974212
        Name: "Object Mover Continuous"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17435268353914054476
        UnregisteredParameters {
          Overrides {
            Name: "cs:Object"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:MoveVelocity"
            Vector {
              X: 100
            }
          }
          Overrides {
            Name: "cs:LocalSpace"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelayRange"
            Vector2 {
              Y: 1
            }
          }
          Overrides {
            Name: "cs:StartDelayRange:tooltip"
            String: "Random delay range for the object to take action at the start of the game."
          }
          Overrides {
            Name: "cs:LocalSpace:tooltip"
            String: "Whether RotateTo is in local space"
          }
          Overrides {
            Name: "cs:Object:tooltip"
            String: "Object to transform"
          }
          Overrides {
            Name: "cs:MoveVelocity:tooltip"
            String: "Smoothly moves the object over time by the given velocity vector."
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
        Script {
          ScriptAsset {
            Id: 2331688389429807128
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Object_Mover_Continuous"
    }
  }
  SerializationVersion: 118
}
