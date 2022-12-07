Assets {
  Id: 17123863079209456085
  Name: "DrinkEquipment"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12792248877237016915
      Objects {
        Id: 12792248877237016915
        Name: "DrinkEquipment"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3807918045201516918
        ChildIds: 9995370169798204568
        UnregisteredParameters {
          Overrides {
            Name: "cs:itemId"
            String: ""
          }
          Overrides {
            Name: "cs:usesRemaining"
            Int: 1
          }
          Overrides {
            Name: "cs:isActive"
            Bool: false
          }
          Overrides {
            Name: "cs:isActive:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:itemId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:usesRemaining:isrep"
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
        Id: 3807918045201516918
        Name: "FoodEquipmentServer"
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
        ParentId: 12792248877237016915
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
        Script {
          ScriptAsset {
            Id: 11183748352593219908
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9995370169798204568
        Name: "ClientContext"
        Transform {
          Location {
            X: 13.3318348
            Z: -11.8722687
          }
          Rotation {
            Yaw: 14.9510546
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12792248877237016915
        ChildIds: 12663900107958840964
        ChildIds: 2811473446810269154
        ChildIds: 13116904624908501567
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
        Id: 12663900107958840964
        Name: "FoodEquipmentClient"
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
        ParentId: 9995370169798204568
        UnregisteredParameters {
          Overrides {
            Name: "cs:ModelRoot"
            ObjectReference {
              SubObjectId: 13116904624908501567
            }
          }
          Overrides {
            Name: "cs:IKRoot"
            ObjectReference {
              SubObjectId: 2811473446810269154
            }
          }
          Overrides {
            Name: "cs:IKAnchor"
            ObjectReference {
              SubObjectId: 16114976672666944774
            }
          }
          Overrides {
            Name: "cs:PrimarySFX"
            ObjectReference {
              SubObjectId: 16488179709201941395
            }
          }
          Overrides {
            Name: "cs:SecondarySFX"
            ObjectReference {
              SubObjectId: 7454797947902561188
            }
          }
          Overrides {
            Name: "cs:PrimaryChance"
            Float: 0.2
          }
          Overrides {
            Name: "cs:ServerScript"
            ObjectReference {
              SubObjectId: 3807918045201516918
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
            Id: 16469856483855903269
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2811473446810269154
        Name: "IK Root"
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
        ParentId: 9995370169798204568
        ChildIds: 16114976672666944774
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
        Id: 16114976672666944774
        Name: "IK Anchor"
        Transform {
          Location {
            X: 17.3905201
            Y: 23.7475357
            Z: -12.0315628
          }
          Rotation {
            Pitch: 47.6064491
            Yaw: -70.3889465
            Roll: -64.1994629
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2811473446810269154
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
            X: -20
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
          BlendInTime: 0.35
          BlendOutTime: 0.3
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13116904624908501567
        Name: "ModelRoot"
        Transform {
          Location {
            X: -11.3
            Y: 3.70000887
            Z: 15.329998
          }
          Rotation {
            Pitch: -6.7
            Yaw: 0.023
            Roll: -0.100006104
          }
          Scale {
            X: 0.733694196
            Y: 0.733694196
            Z: 0.733694196
          }
        }
        ParentId: 9995370169798204568
        ChildIds: 16488179709201941395
        ChildIds: 7454797947902561188
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 16488179709201941395
        Name: "Drink Liquid Slurp 01 SFX"
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
        ParentId: 13116904624908501567
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
            Id: 3001107550534081909
          }
          Volume: 0.25
          Falloff: 2000
          Radius: 100
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7454797947902561188
        Name: "Drink Liquid Gulp Swallow 01 SFX"
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
        ParentId: 13116904624908501567
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
            Id: 12404334582836212876
          }
          Volume: 0.35
          Falloff: 2000
          Radius: 100
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 3001107550534081909
      Name: "Drink Liquid Slurp 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_drink_slurp_01a_Cue_ref"
      }
    }
    Assets {
      Id: 12404334582836212876
      Name: "Drink Liquid Gulp Swallow 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_drink_gulp_swallow_01a_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "Social Elements"
}
