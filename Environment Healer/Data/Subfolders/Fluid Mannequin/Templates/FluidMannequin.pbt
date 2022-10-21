Assets {
  Id: 8477086540866955609
  Name: "FluidMannequin"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 669766035602094286
      Objects {
        Id: 669766035602094286
        Name: "FluidMannequin"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5785213861284594924
        ChildIds: 16003222317401864118
        ChildIds: 5140455997353791335
        ChildIds: 9413611811830411739
        UnregisteredParameters {
          Overrides {
            Name: "cs:GuyTemplate"
            AssetReference {
              Id: 547287090966116871
            }
          }
          Overrides {
            Name: "cs:GalTemplate"
            AssetReference {
              Id: 17147334415373176873
            }
          }
          Overrides {
            Name: "cs:ShoulderMarker"
            AssetReference {
              Id: 18197459421043761505
            }
          }
          Overrides {
            Name: "cs:AllowLiveSwapping"
            Bool: true
          }
          Overrides {
            Name: "cs:ChangeInterval"
            Float: 0.1
          }
          Overrides {
            Name: "cs:AllowPreview"
            Bool: true
          }
          Overrides {
            Name: "cs:PlayerVisibility"
            Int: 0
          }
          Overrides {
            Name: "cs:GalTemplate:tooltip"
            String: "Costume template designed to fit player gal."
          }
          Overrides {
            Name: "cs:GuyTemplate:tooltip"
            String: "Costume template designed to fit player guy."
          }
          Overrides {
            Name: "cs:ShoulderMarker:tooltip"
            String: "Marker used to determine shoulder width and player type. [DO NOT CHANGE]"
          }
          Overrides {
            Name: "cs:AllowLiveSwapping:tooltip"
            String: "Allow the costume to be swapped as the player changes between guy/gal."
          }
          Overrides {
            Name: "cs:AllowPreview:tooltip"
            String: "Allow the costume to spawn while unequipped to serve as a preview."
          }
          Overrides {
            Name: "cs:PlayerVisibility:tooltip"
            String: "Negative number: do not force any visibility. Zero: force visibility off. Positive number: force visibility on."
          }
          Overrides {
            Name: "cs:ChangeInterval:tooltip"
            String: "Rate at which the gender of the player is checked to swap costumes (if live swapping is enabled)."
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Equipment {
          SocketName: "root"
          PickupTrigger {
            SubObjectId: 5140455997353791335
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5785213861284594924
        Name: "FluidMannequin_README"
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
        ParentId: 669766035602094286
        WantsNetworking: true
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
            Id: 13220671527652913555
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16003222317401864118
        Name: "CostumeServerManager"
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
        ParentId: 669766035602094286
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeEquipmentTemplate"
            ObjectReference {
              SubObjectId: 669766035602094286
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 5140455997353791335
            }
          }
        }
        WantsNetworking: true
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
            Id: 8821973513238778171
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5140455997353791335
        Name: "PickupTrigger"
        Transform {
          Location {
            Z: 105
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 2.10000014
          }
        }
        ParentId: 669766035602094286
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Wear Costume"
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
        Id: 9413611811830411739
        Name: "ClientContext"
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
        ParentId: 669766035602094286
        ChildIds: 7528839379298634845
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 7528839379298634845
        Name: "CostumeClientManager"
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
        ParentId: 9413611811830411739
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeEquipmentTemplate"
            ObjectReference {
              SubObjectId: 669766035602094286
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
        Script {
          ScriptAsset {
            Id: 570274066033941486
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
  Marketplace {
    Description: "This is a mannequin/costume template inspired by the ones made by Sobchak.\tThis version of the mannequin can automatically change which template is used based on the gender of the player\'s character. Additional settings allow the creator to control when the costume is allowed to change and whether a preview is spawned. Next possibile update will allow the creator to \"force fit\" a costume to a player no matter which gender the player\'s character is.\r\n\r\nCredit to Sobchack for the original mannequin_guy and mannequin_gal costumes. The method for attaching the costumes were based on these original templates."
  }
  SerializationVersion: 119
  DirectlyPublished: true
}
