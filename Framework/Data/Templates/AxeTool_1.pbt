Assets {
  Id: 1779551680881298357
  Name: "AxeTool"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7323614680277702535
      Objects {
        Id: 7323614680277702535
        Name: "AxeTool"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5930152855917138882
        ChildIds: 3049052967615372416
        ChildIds: 3031930287323347149
        ChildIds: 2196646026937749024
        UnregisteredParameters {
          Overrides {
            Name: "cs:ToolType"
            String: "axe"
          }
          Overrides {
            Name: "cs:ActionSeconds"
            Float: 0
          }
          Overrides {
            Name: "cs:AutoRepeat"
            Bool: true
          }
          Overrides {
            Name: "cs:DoesToggle"
            Bool: true
          }
          Overrides {
            Name: "cs:EquipmentStance"
            String: "2hand_staff_stance"
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
            SubObjectId: 2196646026937749024
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5930152855917138882
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
        ParentId: 7323614680277702535
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
          Animation: "2hand_melee_slash_vertical"
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
        Id: 3049052967615372416
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
        ParentId: 7323614680277702535
        ChildIds: 3958160003838737888
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
        Id: 3958160003838737888
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
        ParentId: 3049052967615372416
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
        Id: 3031930287323347149
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
        ParentId: 7323614680277702535
        ChildIds: 6138210182335800113
        ChildIds: 13521084146314303806
        ChildIds: 13232587870826537930
        ChildIds: 9439479006739464070
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
        Id: 6138210182335800113
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
        ParentId: 3031930287323347149
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 7323614680277702535
            }
          }
          Overrides {
            Name: "cs:APIEquipment"
            AssetReference {
              Id: 6172133723401297125
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
              SubObjectId: 5930152855917138882
            }
          }
          Overrides {
            Name: "cs:OutlineObject"
            ObjectReference {
              SubObjectId: 13232587870826537930
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
        Id: 13521084146314303806
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
        ParentId: 3031930287323347149
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
        Id: 13232587870826537930
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
        ParentId: 3031930287323347149
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
        Id: 9439479006739464070
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
        ParentId: 3031930287323347149
        ChildIds: 1219840756767624116
        ChildIds: 5168495753098618640
        ChildIds: 15886428439233072224
        ChildIds: 11078452026481330923
        ChildIds: 4661122918684779102
        ChildIds: 15785554033116707752
        ChildIds: 3472648606084125564
        ChildIds: 15239413263519071186
        ChildIds: 3342605929261855860
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
        Id: 1219840756767624116
        Name: "Fantasy Axe Grip 01"
        Transform {
          Location {
            X: -0.379394531
            Y: 0.537109375
            Z: -48.4507065
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 1.25430071
            Y: 1.25430071
            Z: 0.920366883
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10313519700874090434
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 14.682003
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 21.4010353
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
            Id: 820217430221713418
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
        Id: 5168495753098618640
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: -0.379394531
            Y: 0.537109375
            Z: 26.7163696
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 0.0611094944
            Y: 0.0611094944
            Z: 0.0868175104
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
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
            Float: 0.294389248
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.494242311
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
            Id: 9223391083233434823
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
        Id: 15886428439233072224
        Name: "Cylinder - Chamfered Small Polished"
        Transform {
          Location {
            X: -0.379394531
            Y: 0.537109375
            Z: 24.1375046
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 0.0735056251
            Y: 0.0735056251
            Z: 0.117046639
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
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
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.211703792
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.221914053
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.828000069
              G: 0.828000069
              B: 0.828000069
              A: 1
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
            Id: 9223391083233434823
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
        Id: 11078452026481330923
        Name: "Prism - 6-Sided Half"
        Transform {
          Location {
            X: 19.0102539
            Y: 0.537109375
            Z: 24.1375046
          }
          Rotation {
            Yaw: -179.999985
            Roll: -90
          }
          Scale {
            X: 0.465523332
            Y: 0.141702577
            Z: 0.0275946148
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
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
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.183806166
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
            Id: 9765503721933112512
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
        Id: 4661122918684779102
        Name: "Prism - 3-Sided"
        Transform {
          Location {
            X: 20.9326172
            Y: 0.537109375
            Z: 31.2611771
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.0276070144
            Y: 0.0672818571
            Z: 0.142200023
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
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
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.15958479
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.211703792
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1.4
              G: 1.4
              B: 1.4
              A: 1
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
            Id: 10230959292029196430
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
        Id: 15785554033116707752
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -2.26220703
            Y: 0.537109375
            Z: 24.1375046
          }
          Rotation {
            Pitch: -90
            Yaw: 9.1069187e-06
            Roll: 4.55345908e-05
          }
          Scale {
            X: 0.0881048217
            Y: 0.0243904237
            Z: 0.0679470301
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
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
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.596711755
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
            Id: 13642204757580273705
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
        Id: 3472648606084125564
        Name: "Prism - 6-Sided Polished"
        Transform {
          Location {
            X: -0.379394531
            Y: 0.537109375
            Z: 27.0726013
          }
          Rotation {
            Pitch: -90
            Yaw: 4.76364374
            Roll: 85.2363892
          }
          Scale {
            X: 0.0163577814
            Y: 0.0163577776
            Z: 0.0760742128
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
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
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.211703792
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.221914053
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
            Id: 10777523509111713302
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
        Id: 15239413263519071186
        Name: "Prism - 6-Sided Polished"
        Transform {
          Location {
            X: -0.379394531
            Y: 0.537109375
            Z: 24.5015869
          }
          Rotation {
            Pitch: -44.9999695
            Yaw: -179.999985
            Roll: -89.9999695
          }
          Scale {
            X: 0.0163577814
            Y: 0.0163577776
            Z: 0.0760742128
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
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
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.211703792
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.221914053
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
            Id: 10777523509111713302
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
        Id: 3342605929261855860
        Name: "Prism - 6-Sided Polished"
        Transform {
          Location {
            X: -0.379394531
            Y: 0.537109375
            Z: 21.754097
          }
          Rotation {
            Pitch: -44.999939
            Yaw: 3.38076825e-05
            Roll: 89.9999466
          }
          Scale {
            X: 0.0163577814
            Y: 0.0163577776
            Z: 0.0760742128
          }
        }
        ParentId: 9439479006739464070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7754470856388882901
            }
          }
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
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.211703792
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.221914053
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
            Id: 10777523509111713302
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
        Id: 2196646026937749024
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
        ParentId: 7323614680277702535
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
          InteractionLabel: "Equip Axe"
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
      Id: 16577896491837673141
      Name: "Outline Object"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_local_outline"
      }
    }
    Assets {
      Id: 820217430221713418
      Name: "Fantasy Axe Grip 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_grip_axe_001"
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
      Id: 10313519700874090434
      Name: "Metal Basic 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_basic_001"
      }
    }
    Assets {
      Id: 9223391083233434823
      Name: "Cylinder - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_003"
      }
    }
    Assets {
      Id: 9765503721933112512
      Name: "Prism - 6-Sided Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half_hexagon_001"
      }
    }
    Assets {
      Id: 10230959292029196430
      Name: "Prism - 3-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_001"
      }
    }
    Assets {
      Id: 13642204757580273705
      Name: "Cube - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_003"
      }
    }
    Assets {
      Id: 10777523509111713302
      Name: "Prism - 6-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_hexagon_hq_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
}