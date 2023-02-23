Assets {
  Id: 614177134249577325
  Name: "Hand Tool - Look"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17788508593830940244
      Objects {
        Id: 17788508593830940244
        Name: "Hand Tool - Look"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13921730856130087441
        ChildIds: 18216320783567700129
        ChildIds: 13361153589258019102
        UnregisteredParameters {
          Overrides {
            Name: "cs:ToolType"
            String: "hand"
          }
          Overrides {
            Name: "cs:ActionSeconds"
            Float: 0
          }
          Overrides {
            Name: "cs:DoesToggle"
            Bool: true
          }
          Overrides {
            Name: "cs:AutoRepeat"
            Bool: true
          }
          Overrides {
            Name: "cs:EquipmentStance"
            String: "2hand_staff_stance"
          }
          Overrides {
            Name: "cs:RotateCWBinding"
            String: "ability_extra_22"
          }
          Overrides {
            Name: "cs:RotateCCWBinding"
            String: "ability_extra_20"
          }
          Overrides {
            Name: "cs:RotationSpeed"
            Float: 90
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 10732033861455687124
            }
          }
          Overrides {
            Name: "cs:InteractionDistance"
            Float: 300
          }
          Overrides {
            Name: "cs:HologramMaterial"
            AssetReference {
              Id: 12384886729191949143
            }
          }
          Overrides {
            Name: "cs:CanPlaceColor"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:CannotPlaceColor"
            Color {
              R: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PlaceableId"
            String: ""
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
            Name: "cs:InventoryId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:InventoryId:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:InventoryId:category"
            String: "Networked"
          }
          Overrides {
            Name: "cs:ItemType:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ItemType:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ItemType:category"
            String: "Networked"
          }
          Overrides {
            Name: "cs:ItemId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ItemId:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ItemId:category"
            String: "Networked"
          }
          Overrides {
            Name: "cs:SlotIndex:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:SlotIndex:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotIndex:category"
            String: "Networked"
          }
          Overrides {
            Name: "cs:State:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:State:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:State:category"
            String: "Networked"
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
            Name: "cs:ToolType:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionSeconds:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionSeconds:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionSeconds:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:DoesToggle:tooltip"
            String: "If true, clicking this equipment in an Inventory will change it between an equipped and unequipped state. Otherwise clicking the equipment will equip it and subsequent clicks will do nothing."
          }
          Overrides {
            Name: "cs:DoesToggle:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DoesToggle:ml"
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
            Name: "cs:EquipmentStance:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:EquipmentStance:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RotateCWBinding:tooltip"
            String: "If set, placed items will rotate clockwise when this binding is held or pressed if they are allowed to be rotated."
          }
          Overrides {
            Name: "cs:RotateCWBinding:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RotateCWBinding:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RotationSpeed:tooltip"
            String: "This affects the speed that rotation is applied while the RotationBinding is being held if the placed object allows rotation."
          }
          Overrides {
            Name: "cs:RotationSpeed:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RotationSpeed:ml"
            Bool: false
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
            Name: "cs:HologramMaterial:tooltip"
            String: "This material will be applied to a preview when placing a Placeable item with this equipment."
          }
          Overrides {
            Name: "cs:HologramMaterial:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:HologramMaterial:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "This optional ID can be set to enforce the placment of a specific Placeable with this Equipment."
          }
          Overrides {
            Name: "cs:PlaceableId:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:PlaceableId:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:PlaceableId:category"
            String: "Custom"
          }
          Overrides {
            Name: "cs:RotateCCWBinding:tooltip"
            String: "If set, placed items will rotate clockwise when this binding is held or pressed if they are allowed to be rotated."
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
            SelfId: 841534158063459245
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
            Duration: 0.15
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
            Duration: 0.2
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          Animation: "unarmed_pickup"
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
        Id: 18216320783567700129
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
        ChildIds: 16994952947085052593
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16994952947085052593
        Name: "EquipmentStanceServer"
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
        ParentId: 18216320783567700129
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
        ChildIds: 2656092855949146649
        ChildIds: 3419017614150672101
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
          IsAllowedForPC: true
          IsAllowedForMobile: true
          IsAllowedForLowMemoryMobile: true
          PCMinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          PCMaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
          MobileMinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MobileMaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3419017614150672101
        Name: "ToolClient"
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
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 13921730856130087441
            }
          }
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 17788508593830940244
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:OutlineObject"
            ObjectReference {
              SubObjectId: 2656092855949146649
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
            Id: 11637798907691060054
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 12384886729191949143
      Name: "Basic Hologram"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_basic_hologram"
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
  SerializationVersion: 124
  VirtualFolderPath: "Tools"
}
