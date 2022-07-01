Assets {
  Id: 13656883850967934257
  Name: "SitMeBench"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14621435541180645379
      Objects {
        Id: 14621435541180645379
        Name: "SitMeBench"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12441707455990071287
        ChildIds: 3895877734295869994
        ChildIds: 16201758810007966434
        ChildIds: 15801078548715377993
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerStance"
            String: "unarmed_sit_chair_upright"
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
      }
      Objects {
        Id: 3895877734295869994
        Name: "Trigger"
        Transform {
          Location {
            Z: -11.451416
          }
          Rotation {
            Yaw: -1.70754702e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14621435541180645379
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
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16201758810007966434
        Name: "ClientContext"
        Transform {
          Location {
            Z: -61.5515137
          }
          Rotation {
            Yaw: -1.70754702e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14621435541180645379
        ChildIds: 5673457019536858433
        ChildIds: 15449617405668687600
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
      }
      Objects {
        Id: 5673457019536858433
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
        ParentId: 16201758810007966434
        ChildIds: 8303370097353824265
        ChildIds: 12711550162518578615
        ChildIds: 2745098852221179905
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
      }
      Objects {
        Id: 8303370097353824265
        Name: "IK Anchor"
        Transform {
          Location {
            X: -0.242752075
            Y: -34.0687675
            Z: 78.6914062
          }
          Rotation {
            Pitch: 30.9486713
            Yaw: 89.5915833
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5673457019536858433
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
        IKAnchor {
          AimOffset {
          }
          IKAnchorType {
            Value: "mc:eikanchortype:hip"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12711550162518578615
        Name: "IK Anchor"
        Transform {
          Location {
            X: 32.494236
            Y: 14.4104786
            Z: 12.0371094
          }
          Rotation {
            Pitch: -8.37454224
            Yaw: 86.3237534
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5673457019536858433
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
        IKAnchor {
          AimOffset {
            X: 5
            Y: 1
            Z: 40
          }
          IKAnchorType {
            Value: "mc:eikanchortype:leftfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2745098852221179905
        Name: "IK Anchor"
        Transform {
          Location {
            X: -31.9994774
            Y: 16.7410889
            Z: 12.296875
          }
          Rotation {
            Pitch: -8.05587769
            Yaw: 102.288368
            Roll: -2.29571533
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5673457019536858433
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
        IKAnchor {
          AimOffset {
            X: 5
            Y: -1
            Z: 40
          }
          IKAnchorType {
            Value: "mc:eikanchortype:rightfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15449617405668687600
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
        ParentId: 16201758810007966434
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 3895877734295869994
            }
          }
          Overrides {
            Name: "cs:IKAnchors"
            ObjectReference {
              SubObjectId: 5673457019536858433
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14621435541180645379
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
      }
      Objects {
        Id: 15801078548715377993
        Name: "ServerContext"
        Transform {
          Location {
            Z: -61.5515137
          }
          Rotation {
            Yaw: -1.70754702e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14621435541180645379
        ChildIds: 4909840211501450009
        ChildIds: 4491023614929436300
        ChildIds: 3147195693415161350
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
      }
      Objects {
        Id: 4909840211501450009
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
        ParentId: 15801078548715377993
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerSitMePosition"
            ObjectReference {
              SubObjectId: 4491023614929436300
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 3895877734295869994
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14621435541180645379
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
      }
      Objects {
        Id: 4491023614929436300
        Name: "PlayerSitMePosition"
        Transform {
          Location {
            X: 0.106136322
            Y: 14.9059954
            Z: 88.4912109
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
        ParentId: 15801078548715377993
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
      }
      Objects {
        Id: 3147195693415161350
        Name: "Seat Edge"
        Transform {
          Location {
            X: 0.000167522579
            Y: 0.272288471
            Z: 58.6369629
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
        ParentId: 15801078548715377993
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
  SerializationVersion: 116
}
