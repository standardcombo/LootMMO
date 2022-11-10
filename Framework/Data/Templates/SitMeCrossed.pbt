Assets {
  Id: 18344209229796718210
  Name: "SitMeCrossed"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7261835029774097120
      Objects {
        Id: 7261835029774097120
        Name: "SitMeCrossed"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12441707455990071287
        ChildIds: 17981127652938423851
        ChildIds: 14077778854518302681
        ChildIds: 15344158205764295117
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerStance"
            String: "unarmed_sit_ground_crossed"
          }
          Overrides {
            Name: "cs:TriggerText"
            String: "Sit down"
          }
          Overrides {
            Name: "cs:RagdollLegs"
            Bool: false
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
        Id: 17981127652938423851
        Name: "Trigger"
        Transform {
          Location {
            X: -11.6464643
            Y: 1.8551476
            Z: -11.0678711
          }
          Rotation {
            Yaw: -9.39150868e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7261835029774097120
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
      Objects {
        Id: 14077778854518302681
        Name: "ClientContext"
        Transform {
          Location {
            X: -11.6464643
            Y: 1.8551476
            Z: -61.1679688
          }
          Rotation {
            Yaw: -9.39150868e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7261835029774097120
        ChildIds: 18310093211881905623
        ChildIds: 3769965023380888861
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
        Id: 18310093211881905623
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
        ParentId: 14077778854518302681
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
        Id: 3769965023380888861
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
        ParentId: 14077778854518302681
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 17981127652938423851
            }
          }
          Overrides {
            Name: "cs:IKAnchors"
            ObjectReference {
              SubObjectId: 18310093211881905623
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 7261835029774097120
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
        Id: 15344158205764295117
        Name: "ServerContext"
        Transform {
          Location {
            X: -11.6464643
            Y: 1.8551476
            Z: -61.1679688
          }
          Rotation {
            Yaw: -9.39150868e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7261835029774097120
        ChildIds: 5876287797930102936
        ChildIds: 5120414750195497619
        ChildIds: 2221518973798752397
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
        Id: 5876287797930102936
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
        ParentId: 15344158205764295117
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerSitMePosition"
            ObjectReference {
              SubObjectId: 5120414750195497619
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 17981127652938423851
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 7261835029774097120
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
        Id: 5120414750195497619
        Name: "PlayerSitMePosition"
        Transform {
          Location {
            X: 11.3818989
            Y: -29.5742779
            Z: 156.244141
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
        ParentId: 15344158205764295117
        UnregisteredParameters {
          Overrides {
            Name: "bp:X Scale"
            Float: 0.3
          }
          Overrides {
            Name: "bp:Y Scale"
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
        Id: 2221518973798752397
        Name: "Seat Edge"
        Transform {
          Location {
            X: 10.365613
            Y: -1.83378732
            Z: 58.0246582
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
        ParentId: 15344158205764295117
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
  SerializationVersion: 120
}
