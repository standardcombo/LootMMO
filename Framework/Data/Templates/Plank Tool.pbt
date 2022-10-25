Assets {
  Id: 3227630782411875862
  Name: "Plank Tool"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17788508593830940244
      Objects {
        Id: 17788508593830940244
        Name: "Plank Tool"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13921730856130087441
        ChildIds: 13344068297157477715
        ChildIds: 13361153589258019102
        ChildIds: 10161179598682511347
        UnregisteredParameters {
          Overrides {
            Name: "cs:ToolType"
            String: "plank"
          }
          Overrides {
            Name: "cs:ActionSeconds"
            Float: 0
          }
          Overrides {
            Name: "cs:AutoRepeat"
            Bool: false
          }
          Overrides {
            Name: "cs:DoesToggle"
            Bool: true
          }
          Overrides {
            Name: "cs:EquipmentStance"
            String: ""
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 10732033861455687124
            }
          }
          Overrides {
            Name: "cs:InteractionDistance"
            Float: 500
          }
          Overrides {
            Name: "cs:InventoryId"
            String: ""
          }
          Overrides {
            Name: "cs:ItemType"
            Int: 0
          }
          Overrides {
            Name: "cs:ItemId"
            String: ""
          }
          Overrides {
            Name: "cs:SlotIndex"
            Int: 0
          }
          Overrides {
            Name: "cs:State"
            String: ""
          }
          Overrides {
            Name: "cs:ToolType:tooltip"
            String: "This is chacked against various lists of valid tool types depending on what the tool interacts with. To get this tool to work with Plants, Placeables or other interactive objects you will need to add this ToolType to those lists."
          }
          Overrides {
            Name: "cs:ToolType:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:AutoRepeat:tooltip"
            String: "If true, the equipment will continue trying to interact as long as the player holds down the ability binding."
          }
          Overrides {
            Name: "cs:AutoRepeat:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:AutoRepeat:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:EquipmentStance:tooltip"
            String: "The player will change into this stance while this equipment is equipped."
          }
          Overrides {
            Name: "cs:EquipmentStance:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:EquipmentStance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:APIInteractionModule:tooltip"
            String: "This needs to be set to a valid Interaction System Module. Valid modules are \"APILookInteractionModule\" and \"APIPointerInteractionModule\". These modules change how the player interacts with the world while using this equipment."
          }
          Overrides {
            Name: "cs:APIInteractionModule:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:APIInteractionModule:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DoesToggle:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DoesToggle:tooltip"
            String: "If true, equipping this from an Inventory while it is already equipped will unequip it."
          }
          Overrides {
            Name: "cs:ActionSeconds:tooltip"
            String: "The number of seconds this tool takes to complete an action."
          }
          Overrides {
            Name: "cs:InventoryId:subcategory"
            String: "Networked"
          }
          Overrides {
            Name: "cs:ItemType:subcategory"
            String: "Networked"
          }
          Overrides {
            Name: "cs:ItemId:subcategory"
            String: "Networked"
          }
          Overrides {
            Name: "cs:SlotIndex:subcategory"
            String: "Networked"
          }
          Overrides {
            Name: "cs:State:subcategory"
            String: "Networked"
          }
          Overrides {
            Name: "cs:State:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:SlotIndex:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ItemId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ItemType:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:InventoryId:isrep"
            Bool: true
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Equipment {
          SocketName: "right_prop"
          PickupTrigger {
            SubObjectId: 10161179598682511347
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13921730856130087441
        Name: "Tool"
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
        ParentId: 17788508593830940244
        UnregisteredParameters {
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Ability {
          IsEnabled: true
          CastPhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          KeyBinding_v2 {
            Value: "mc:egameaction:primaryaction"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13344068297157477715
        Name: "ServerContext"
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
        ParentId: 17788508593830940244
        ChildIds: 11930593290677150771
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          Type: Server
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11930593290677150771
        Name: "BasicEquipmentServer"
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
        ParentId: 13344068297157477715
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
            Id: 1427829216143793458
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13361153589258019102
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
        ParentId: 17788508593830940244
        ChildIds: 1105225052503324324
        ChildIds: 18063472508094681644
        ChildIds: 2656092855949146649
        ChildIds: 14290065987741989602
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 1105225052503324324
        Name: "Tool README"
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
        ParentId: 13361153589258019102
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
            Id: 15498101783289665605
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18063472508094681644
        Name: "Geo"
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
        ParentId: 13361153589258019102
        ChildIds: 13080967100609307866
        UnregisteredParameters {
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
        Id: 13080967100609307866
        Name: "Plank"
        Transform {
          Location {
            X: -8.48886108
            Y: 5.50927734
            Z: 15.1914673
          }
          Rotation {
            Pitch: -62.7953491
            Yaw: -8.81417847
            Roll: -73.0032349
          }
          Scale {
            X: 0.689824343
            Y: 0.689824343
            Z: 0.689824343
          }
        }
        ParentId: 18063472508094681644
        UnregisteredParameters {
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
        CoreMesh {
          MeshAsset {
            Id: 3584007417411989222
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2656092855949146649
        Name: "Selection Outline"
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
        ParentId: 13361153589258019102
        UnregisteredParameters {
          Overrides {
            Name: "bp:Outline Channel"
            Int: 6
          }
          Overrides {
            Name: "bp:Dynamic Thickness"
            Bool: false
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 0.960000038
              G: 0.591258287
              A: 0.8
            }
          }
          Overrides {
            Name: "bp:Multi-Color"
            Bool: false
          }
          Overrides {
            Name: "bp:Show Behind Objects"
            Bool: true
          }
          Overrides {
            Name: "bp:Solid Behind Objects"
            Bool: false
          }
          Overrides {
            Name: "bp:Enabled"
            Bool: true
          }
          Overrides {
            Name: "bp:Hierarchy Discovery Depth"
            Int: 10
          }
          Overrides {
            Name: "bp:Color Offset A"
            Float: 0
          }
          Overrides {
            Name: "bp:Color Offset B"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Color Offset C"
            Float: 1
          }
          Overrides {
            Name: "bp:Max Distance Thickness"
            Float: 1
          }
          Overrides {
            Name: "bp:Thickness"
            Float: 3
          }
          Overrides {
            Name: "bp:Min Distance"
            Float: 1
          }
          Overrides {
            Name: "bp:Max Distance"
            Float: 5
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
        Blueprint {
          BlueprintAsset {
            Id: 16577896491837673141
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14290065987741989602
        Name: "BasicEquipmentClient"
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
        ParentId: 13361153589258019102
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 17788508593830940244
            }
          }
          Overrides {
            Name: "cs:APIEquipment"
            AssetReference {
              Id: 6172133723401297125
            }
          }
          Overrides {
            Name: "cs:APIReplicator"
            AssetReference {
              Id: 15278727315449067552
            }
          }
          Overrides {
            Name: "cs:APIDatabase"
            AssetReference {
              Id: 7001204078896156485
            }
          }
          Overrides {
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 13921730856130087441
            }
          }
          Overrides {
            Name: "cs:OutlineObject"
            ObjectReference {
              SubObjectId: 2656092855949146649
            }
          }
          Overrides {
            Name: "cs:EmptyCoreObjectReference"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:OutlineObject:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:EmptyCoreObjectReference:category"
            String: "Custom"
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
            Id: 8862940424879810014
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10161179598682511347
        Name: "Pickup Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 3.32309794
            Y: 3.32309794
            Z: 3.32309794
          }
        }
        ParentId: 17788508593830940244
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Equip Plank"
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
      Id: 3584007417411989222
      Name: "Urban Plank Debris 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urban_destruction_debris_plank_01_ref"
      }
    }
    Assets {
      Id: 16577896491837673141
      Name: "Outline Object"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_local_outline"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "Tools"
}
