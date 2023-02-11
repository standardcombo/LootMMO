Assets {
  Id: 15375784612613316623
  Name: "Item Pickup - Key Press"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1428446734845294670
      Objects {
        Id: 1428446734845294670
        Name: "Item Pickup - Key Press"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6484434882791213322
        ChildIds: 7169393914143711672
        ChildIds: 15561870097549891419
        ChildIds: 1007013313644526493
        ChildIds: 1119626706914374946
        ChildIds: 5221535983001593892
        ChildIds: 15193265686482758895
        ChildIds: 7245617894869176450
        ChildIds: 14804865207846458615
        ChildIds: 7515603688084541959
        UnregisteredParameters {
          Overrides {
            Name: "cs:InventoryPickupComponent"
            ObjectReference {
              SubObjectId: 1007013313644526493
            }
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 5787245947590458132
            }
          }
          Overrides {
            Name: "cs:SubTarget"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:PressBinding"
            String: "ability_extra_33"
          }
          Overrides {
            Name: "cs:ItemId"
            String: ""
          }
          Overrides {
            Name: "cs:CurrencyId"
            String: ""
          }
          Overrides {
            Name: "cs:Amount"
            Int: 0
          }
          Overrides {
            Name: "cs:SpawnVisual"
            Bool: true
          }
          Overrides {
            Name: "cs:PickupOnHoverBegin"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnHoverEnd"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnPressBegin"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnPressEnd"
            Bool: true
          }
          Overrides {
            Name: "cs:FollowDelay"
            Float: 0
          }
          Overrides {
            Name: "cs:FollowDuration"
            Float: 1
          }
          Overrides {
            Name: "cs:InventoryPickupComponent:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:InventoryPickupComponent:ml"
            Bool: false
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
            Name: "cs:SubTarget:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SubTarget:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:PressBinding:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:PressBinding:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ItemId:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ItemId:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CurrencyId:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CurrencyId:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Amount:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Amount:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SpawnVisual:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SpawnVisual:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnHoverBegin:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnHoverBegin:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnHoverEnd:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnHoverEnd:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnPressBegin:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnPressBegin:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnPressEnd:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupOnPressEnd:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:FollowDelay:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:FollowDelay:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:FollowDuration:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:FollowDuration:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:InventoryPickupComponent:tooltip"
            String: "A reference to the controller script. Used when spawning Item Pickups at runtime."
          }
          Overrides {
            Name: "cs:APIInteractionModule:tooltip"
            String: "The Interaction Module to use with this Item Pickup."
          }
          Overrides {
            Name: "cs:SubTarget:tooltip"
            String: "The Sub Target can be used to set a specific Trigger or UIButton to use for interaction events. If left blank the Input Module will find the first appropriate object."
          }
          Overrides {
            Name: "cs:PressBinding:tooltip"
            String: "The binding to use for press interactions."
          }
          Overrides {
            Name: "cs:ItemId:tooltip"
            String: "If set, the Item Pickup will add this item to an Inventory when picked up. Item Pickups spawned at runtime will ignore this value."
          }
          Overrides {
            Name: "cs:CurrencyId:tooltip"
            String: "If set, the Item Pickup will add this currency when picked up. Item Pickups spawned at runtime will ignore this value."
          }
          Overrides {
            Name: "cs:Amount:tooltip"
            String: "The amount of the item or currency this Item Pickup contains. If set at runtime this value will be ignored."
          }
          Overrides {
            Name: "cs:SpawnVisual:tooltip"
            String: "If true, the Item Pickup will spawn the \"DropTemplate\" on the associated item or currency data."
          }
          Overrides {
            Name: "cs:PickupOnHoverBegin:tooltip"
            String: "If true, the Item Pickup will be collected when a hover begin event happens."
          }
          Overrides {
            Name: "cs:PickupOnHoverEnd:tooltip"
            String: "If true, the Item Pickup will be collected when a hover end event happens."
          }
          Overrides {
            Name: "cs:PickupOnPressBegin:tooltip"
            String: "If true, the Item Pickup will be collected when a press begin event happens."
          }
          Overrides {
            Name: "cs:PickupOnPressEnd:tooltip"
            String: "If true, the Item Pickup will be collected when a press end event happens."
          }
          Overrides {
            Name: "cs:FollowDelay:tooltip"
            String: "The amount of seconds the Item Pickup will wait before flying towards the Player."
          }
          Overrides {
            Name: "cs:FollowDuration:tooltip"
            String: "The amount of seconds the Item Pickup will spend moving towards the Player."
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
        Id: 7169393914143711672
        Name: "ToggleVisibilityComponentClient"
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
        ParentId: 1428446734845294670
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 1428446734845294670
            }
          }
          Overrides {
            Name: "cs:ObjectToToggle"
            ObjectReference {
              SubObjectId: 5221535983001593892
            }
          }
          Overrides {
            Name: "cs:ShowOnBeginHover"
            Bool: true
          }
          Overrides {
            Name: "cs:HideOnEndHover"
            Bool: true
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 5787245947590458132
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
            Id: 16915898860301085516
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15561870097549891419
        Name: "ToggleVisibilityComponentClient"
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
        ParentId: 1428446734845294670
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 1428446734845294670
            }
          }
          Overrides {
            Name: "cs:ObjectToToggle"
            ObjectReference {
              SubObjectId: 7515603688084541959
            }
          }
          Overrides {
            Name: "cs:ShowOnBeginHover"
            Bool: true
          }
          Overrides {
            Name: "cs:HideOnEndHover"
            Bool: true
          }
          Overrides {
            Name: "cs:APIInteractionModule"
            AssetReference {
              Id: 5787245947590458132
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
            Id: 16915898860301085516
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1007013313644526493
        Name: "InventoryPickupClient"
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
        ParentId: 1428446734845294670
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 1428446734845294670
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
            Id: 16119492629509416982
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1119626706914374946
        Name: "Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 1428446734845294670
        UnregisteredParameters {
        }
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
        Id: 5221535983001593892
        Name: "Outline Object"
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
        ParentId: 1428446734845294670
        UnregisteredParameters {
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 1428446734845294670
            }
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 0.799999952
              G: 0.572185397
              A: 0.8
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
        Id: 15193265686482758895
        Name: "Level Up VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.376794159
            Y: 0.376794159
            Z: 0.376794159
          }
        }
        ParentId: 1428446734845294670
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2
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
            Id: 1525101897459124588
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7245617894869176450
        Name: "Callout Sparkle"
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
        ParentId: 1428446734845294670
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
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
            Id: 14231394991004806063
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14804865207846458615
        Name: "UI Pop Double 03 SFX"
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
        ParentId: 1428446734845294670
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
        AudioInstance {
          AudioAsset {
            Id: 11720841845573877733
          }
          AutoPlay: true
          Volume: 0.5
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7515603688084541959
        Name: "Binding"
        Transform {
          Location {
            Z: 113.428398
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1428446734845294670
        ChildIds: 13901872719517549550
        ChildIds: 10297619296852436270
        ChildIds: 11562680331218109157
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
        Id: 13901872719517549550
        Name: "Background"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.0166823268
            Y: 0.322600305
            Z: 0.262374818
          }
        }
        ParentId: 7515603688084541959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 0.5
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17091160006555877630
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
        Id: 10297619296852436270
        Name: "Label"
        Transform {
          Location {
            Z: -0.987640381
          }
          Rotation {
          }
          Scale {
            X: 0.935744464
            Y: 0.935744464
            Z: 0.935744464
          }
        }
        ParentId: 7515603688084541959
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
        Text {
          Text: "F"
          FontAsset {
            Id: 841534158063459245
          }
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11562680331218109157
        Name: "BillboardClient"
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
        ParentId: 7515603688084541959
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
            Id: 16010559800796464966
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
      Id: 1525101897459124588
      Name: "Level Up VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Level_Up"
      }
    }
    Assets {
      Id: 14231394991004806063
      Name: "Callout Sparkle"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_sparkles_volume_vfx"
      }
    }
    Assets {
      Id: 11720841845573877733
      Name: "UI Pop Double 03 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_ui_pop_double_03_Cue_ref"
      }
    }
    Assets {
      Id: 17091160006555877630
      Name: "Cube - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_rounded_002"
      }
    }
    Assets {
      Id: 12889861000896994476
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Inventory"
}
