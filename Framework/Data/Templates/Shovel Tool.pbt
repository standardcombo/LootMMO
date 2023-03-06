Assets {
  Id: 9954823253189684863
  Name: "Shovel Tool"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17788508593830940244
      Objects {
        Id: 17788508593830940244
        Name: "Shovel Tool"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13921730856130087441
        ChildIds: 15023066159776003073
        ChildIds: 13361153589258019102
        UnregisteredParameters {
          Overrides {
            Name: "cs:ToolType"
            String: "shovel"
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
            Float: 0
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
            String: "Soil Mound"
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
            Duration: 0.4
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
            Duration: 0.25
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
              Value: "mc:eabilitysetfacing:aim"
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
          Animation: "2hand_melee_dig_shovel"
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
        Id: 15023066159776003073
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
        ChildIds: 5263933432818252816
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
        Id: 5263933432818252816
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
        ParentId: 15023066159776003073
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
        ChildIds: 13521363681561014939
        ChildIds: 12465711935685234985
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
        Name: "AdvancedEquipmentClient"
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
              SubObjectId: 13521363681561014939
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
      Objects {
        Id: 13521363681561014939
        Name: "Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.1
          }
        }
        ParentId: 13361153589258019102
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 12465711935685234985
        Name: "Geo"
        Transform {
          Location {
            Z: -4.10354614
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: -179.999969
            Roll: -179.999969
          }
          Scale {
            X: 0.941882789
            Y: 0.941882789
            Z: 0.941882789
          }
        }
        ParentId: 13361153589258019102
        ChildIds: 11726134179816449274
        ChildIds: 18170006917793542735
        ChildIds: 9294812799619691487
        ChildIds: 10025247010039004523
        ChildIds: 18137443979123341154
        ChildIds: 16565645345212235384
        ChildIds: 1562023874227283522
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
        Id: 11726134179816449274
        Name: "Fantasy Pommel 04"
        Transform {
          Location {
            Z: 77.1393585
          }
          Rotation {
            Yaw: -1.02452814e-05
          }
          Scale {
            X: 2.96818352
            Y: 2.96818352
            Z: 2.96818352
          }
        }
        ParentId: 12465711935685234985
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10313519700874090434
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
        CoreMesh {
          MeshAsset {
            Id: 12510064410993333055
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18170006917793542735
        Name: "Cylinder - Polished"
        Transform {
          Location {
            Z: 51.5799561
          }
          Rotation {
            Yaw: -1.02452814e-05
          }
          Scale {
            X: 0.0705601
            Y: 0.0705601
            Z: 0.180169106
          }
        }
        ParentId: 12465711935685234985
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10313519700874090434
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.33880496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.687279463
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9294812799619691487
        Name: "Cylinder - Polished"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -1.02452814e-05
          }
          Scale {
            X: 0.0676332414
            Y: 0.0676332414
            Z: 0.962457418
          }
        }
        ParentId: 12465711935685234985
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.145237625
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.56984282
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10025247010039004523
        Name: "Thorn"
        Transform {
          Location {
            Z: -58.8075638
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: 179.999985
            Roll: -180
          }
          Scale {
            X: 0.109422497
            Y: 0.588034272
            Z: 0.471672803
          }
        }
        ParentId: 12465711935685234985
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10313519700874090434
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.755171537
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.687279463
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
        CoreMesh {
          MeshAsset {
            Id: 7436120957885304537
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18137443979123341154
        Name: "Thorn"
        Transform {
          Location {
            Z: -50.2142792
          }
          Rotation {
            Yaw: 179.999954
            Roll: -179.999985
          }
          Scale {
            X: 0.109422497
            Y: 0.588034272
            Z: 0.471672803
          }
        }
        ParentId: 12465711935685234985
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10313519700874090434
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.755171537
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.687279463
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
        CoreMesh {
          MeshAsset {
            Id: 7436120957885304537
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16565645345212235384
        Name: "Cone - Bullet"
        Transform {
          Location {
            Z: -46.8204155
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: 179.999985
            Roll: -180
          }
          Scale {
            X: 0.0705600753
            Y: 0.0705601051
            Z: 0.137462869
          }
        }
        ParentId: 12465711935685234985
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10313519700874090434
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.33880496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.687279463
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
        CoreMesh {
          MeshAsset {
            Id: 2264041107168619230
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1562023874227283522
        Name: "Cylinder"
        Transform {
          Location {
            Z: -40.9918327
          }
          Rotation {
            Yaw: 179.999954
            Roll: -179.999985
          }
          Scale {
            X: 0.0705600679
            Y: 0.0705601126
            Z: 0.11687734
          }
        }
        ParentId: 12465711935685234985
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10313519700874090434
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.33880496
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.687279463
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
        CoreMesh {
          MeshAsset {
            Id: 1137112816547272582
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
          Value: "mc:edistancerelevance:critical"
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
    Assets {
      Id: 12510064410993333055
      Name: "Fantasy Pommel 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_004"
      }
    }
    Assets {
      Id: 10313519700874090434
      Name: "Metal Basic 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_basic_001"
      }
    }
    Assets {
      Id: 12905923173550510229
      Name: "Cylinder - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_test_001"
      }
    }
    Assets {
      Id: 7754470856388882901
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
    Assets {
      Id: 7436120957885304537
      Name: "Thorn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_002"
      }
    }
    Assets {
      Id: 2264041107168619230
      Name: "Cone - Bullet"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bullet_001"
      }
    }
    Assets {
      Id: 1137112816547272582
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Tools"
}
