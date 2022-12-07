Assets {
  Id: 10657128516025771125
  Name: "SitMeBenchCrossLeg"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6450889269126624900
      Objects {
        Id: 6450889269126624900
        Name: "SitMeBenchCrossLeg"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12441707455990071287
        ChildIds: 2006424151563598320
        ChildIds: 11324360654059020385
        ChildIds: 13598721384501245613
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2006424151563598320
        Name: "ClientContext"
        Transform {
          Location {
            X: -4.529953e-05
            Y: -2.10415506
            Z: -60.9628906
          }
          Rotation {
            Yaw: 2.134434e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6450889269126624900
        ChildIds: 8109957630164379615
        ChildIds: 14205354127403462107
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
        Id: 8109957630164379615
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
        ParentId: 2006424151563598320
        ChildIds: 6128151567532334072
        ChildIds: 7832082509227201032
        ChildIds: 10323017417353858465
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
        Id: 6128151567532334072
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
        ParentId: 8109957630164379615
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7832082509227201032
        Name: "IK Anchor"
        Transform {
          Location {
            X: 9.19214821
            Y: 21.51231
            Z: 11.2138672
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
        ParentId: 8109957630164379615
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
            Y: -3
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10323017417353858465
        Name: "IK Anchor"
        Transform {
          Location {
            X: 29.8385048
            Y: 24.3479767
            Z: 76.9296875
          }
          Rotation {
            Pitch: -7.2437439
            Yaw: 74.1113739
            Roll: 93.5462265
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8109957630164379615
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14205354127403462107
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
        ParentId: 2006424151563598320
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 13598721384501245613
            }
          }
          Overrides {
            Name: "cs:IKAnchors"
            ObjectReference {
              SubObjectId: 8109957630164379615
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 6450889269126624900
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
        Id: 11324360654059020385
        Name: "ServerContext"
        Transform {
          Location {
            X: -4.529953e-05
            Y: -2.10415506
            Z: -60.9628906
          }
          Rotation {
            Yaw: 2.134434e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6450889269126624900
        ChildIds: 3909900605790554670
        ChildIds: 10543164393712752937
        ChildIds: 10905706848169206107
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
        Id: 3909900605790554670
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
        ParentId: 11324360654059020385
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerSitMePosition"
            ObjectReference {
              SubObjectId: 10543164393712752937
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 13598721384501245613
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 6450889269126624900
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
        Id: 10543164393712752937
        Name: "PlayerSitMePosition"
        Transform {
          Location {
            Y: 14.905901
            Z: 88.4912109
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
        ParentId: 11324360654059020385
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
        Id: 10905706848169206107
        Name: "Seat Edge"
        Transform {
          Location {
            X: 0.000462293625
            Y: 2.21453619
            Z: 57.84375
          }
          Rotation {
            Yaw: 90.0000229
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11324360654059020385
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
        Id: 13598721384501245613
        Name: "Trigger"
        Transform {
          Location {
            X: -4.529953e-05
            Y: -2.10415506
            Z: -10.862793
          }
          Rotation {
            Yaw: 2.134434e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6450889269126624900
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
  SerializationVersion: 121
}
