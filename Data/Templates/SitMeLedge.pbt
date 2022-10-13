Assets {
  Id: 12231987790980426632
  Name: "SitMeLedge"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17007492871300271771
      Objects {
        Id: 17007492871300271771
        Name: "SitMeLedge"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12441707455990071287
        ChildIds: 5230977483545689753
        ChildIds: 12200475604884514224
        ChildIds: 8010203410738000749
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerStance"
            String: "unarmed_sit_ground_ledge"
          }
          Overrides {
            Name: "cs:TriggerText"
            String: "Sit down"
          }
          Overrides {
            Name: "cs:RagdollLegs"
            Bool: true
          }
          Overrides {
            Name: "cs:PrimaryAction"
            String: "Interact"
          }
          Overrides {
            Name: "cs:SecondaryAction"
            String: "Shoot"
          }
          Overrides {
            Name: "cs:PlayerStance:tooltip"
            String: "Player stance string, that should be taken when using this SitMe object"
          }
          Overrides {
            Name: "cs:RagdollLegs:tooltip"
            String: "If the player legs should have ragdoll enabled, i.e. sitting on a ledge."
          }
          Overrides {
            Name: "cs:TriggerText:tooltip"
            String: "String that will show up when player is in the trigger area, ready to interact with the empty SitMe"
          }
          Overrides {
            Name: "cs:PrimaryAction:tooltip"
            String: "Primary action string to be used for trigger interaction"
          }
          Overrides {
            Name: "cs:SecondaryAction:tooltip"
            String: "Secondary action string to be used for trigger interaction"
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
        Id: 5230977483545689753
        Name: "ClientContext"
        Transform {
          Location {
            X: -0.000131607056
            Y: -55.8997345
            Z: -48.6105957
          }
          Rotation {
            Yaw: 2.13443382e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17007492871300271771
        ChildIds: 14129916034346281643
        ChildIds: 13429429940502467100
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
        Id: 14129916034346281643
        Name: "IKAnchors"
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
        ParentId: 5230977483545689753
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 13429429940502467100
        Name: "SitMe_Client"
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
        ParentId: 5230977483545689753
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 8010203410738000749
            }
          }
          Overrides {
            Name: "cs:IKAnchors"
            ObjectReference {
              SubObjectId: 14129916034346281643
            }
          }
          Overrides {
            Name: "cs:UITemplate"
            AssetReference {
              Id: 3906546641075082172
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 17007492871300271771
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
            Id: 1030759652274867256
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12200475604884514224
        Name: "ServerContext"
        Transform {
          Location {
            X: -0.000131607056
            Y: -55.8997345
            Z: -48.6105957
          }
          Rotation {
            Yaw: 2.13443382e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17007492871300271771
        ChildIds: 6090327986526304277
        ChildIds: 5882074927657806040
        ChildIds: 14319188337903047617
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 6090327986526304277
        Name: "SitMe_Server"
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
        ParentId: 12200475604884514224
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerSitMePosition"
            ObjectReference {
              SubObjectId: 5882074927657806040
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 8010203410738000749
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 17007492871300271771
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
            Id: 1640043986697956219
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5882074927657806040
        Name: "PlayerSitMePosition"
        Transform {
          Location {
            X: 0.106123924
            Y: 14.9059906
            Z: 149.589844
          }
          Rotation {
            Yaw: 89.5918503
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12200475604884514224
        UnregisteredParameters {
          Overrides {
            Name: "bp:Y Scale"
            Float: 0.3
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 0.3
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.3
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
        Blueprint {
          BlueprintAsset {
            Id: 15895911216899816748
          }
          TeamSettings {
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14319188337903047617
        Name: "Seat Edge"
        Transform {
          Location {
            X: 0.395807266
            Y: 55.7851334
            Z: 45.652832
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12200475604884514224
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.07
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 0.07
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 0.8
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
        Blueprint {
          BlueprintAsset {
            Id: 15895911216899816748
          }
          TeamSettings {
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8010203410738000749
        Name: "Trigger"
        Transform {
          Location {
            X: 7.95621204
            Y: -9.48391533
            Z: 62.5876465
          }
          Rotation {
            Yaw: 13.2810602
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17007492871300271771
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
          InteractionTemplate {
          }
          BreadcrumbTemplate {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 15895911216899816748
      Name: "Dummy Object"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_dummy_pivot"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
}
