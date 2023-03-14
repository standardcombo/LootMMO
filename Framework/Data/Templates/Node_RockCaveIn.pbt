Assets {
  Id: 1587296676542032873
  Name: "Node_RockCaveIn"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13748851510511670791
      Objects {
        Id: 13748851510511670791
        Name: "Node_RockCaveIn"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10281635137386023723
        ChildIds: 2552612828814674675
        ChildIds: 1921765189606793971
        UnregisteredParameters {
          Overrides {
            Name: "cs:ToolReq"
            String: "Tool Pick"
          }
          Overrides {
            Name: "cs:SwingsToHarvest"
            Int: 8
          }
          Overrides {
            Name: "cs:Type"
            String: "vein"
          }
          Overrides {
            Name: "cs:Richness"
            Int: 0
          }
          Overrides {
            Name: "cs:Owner"
            String: ""
          }
          Overrides {
            Name: "cs:OriginRow"
            Int: 0
          }
          Overrides {
            Name: "cs:ProximityTrigger"
            ObjectReference {
              SubObjectId: 10281635137386023723
            }
          }
          Overrides {
            Name: "cs:CalloutEffects"
            ObjectReference {
              SubObjectId: 1921765189606793971
            }
          }
          Overrides {
            Name: "cs:AlwaysSpawn"
            Bool: true
          }
          Overrides {
            Name: "cs:OverrideRespawnTimer"
            Vector2 {
            }
          }
          Overrides {
            Name: "cs:OverrideRespawnOnPartial"
            Int: 0
          }
          Overrides {
            Name: "cs:Richness:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:Owner:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:OriginRow:isrep"
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
        NetworkContext {
          Type: Local
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10281635137386023723
        Name: "ProximityTrigger"
        Transform {
          Location {
            X: 0.0036277771
            Y: 1.18042465e-10
            Z: -35.0211487
          }
          Rotation {
          }
          Scale {
            X: 3.01342678
            Y: 2.42954111
            Z: 2.40608096
          }
        }
        ParentId: 13748851510511670791
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
            Id: 841534158063459245
          }
          BreadcrumbTemplate {
            Id: 841534158063459245
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2552612828814674675
        Name: "RemovePlaceholder"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 0.99999994
            Z: 1
          }
        }
        ParentId: 13748851510511670791
        ChildIds: 18169693382617561336
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
            Id: 10947307648199128843
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18169693382617561336
        Name: "ServerContext"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 1.36603776e-05
            Roll: -3.41509417e-06
          }
          Scale {
            X: 1
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 2552612828814674675
        ChildIds: 3875268429198188319
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
        Id: 3875268429198188319
        Name: "Rock 03"
        Transform {
          Location {
            X: 0.00150966644
            Y: -8.37974426e-07
            Z: -14.0536499
          }
          Rotation {
            Pitch: -13.6148062
            Yaw: -0.233171791
            Roll: 0.562807739
          }
          Scale {
            X: 1.83480287
            Y: 0.879676044
            Z: 1.52763212
          }
        }
        ParentId: 18169693382617561336
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8580039884885780066
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
            Id: 6981536508008379085
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
        Id: 1921765189606793971
        Name: "CalloutEffects"
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
        ParentId: 13748851510511670791
        ChildIds: 13247709893963253153
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
        Id: 13247709893963253153
        Name: "Callout Sparkle"
        Transform {
          Location {
            X: 15.8677979
            Y: 23.77495
            Z: 38.0231934
          }
          Rotation {
            Yaw: 13.5874176
            Roll: -90
          }
          Scale {
            X: 3
            Y: 3
            Z: 4
          }
        }
        ParentId: 1921765189606793971
        UnregisteredParameters {
          Overrides {
            Name: "bp:Life"
            Float: 3
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 10
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.3
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumetype:2"
            }
          }
          Overrides {
            Name: "bp:Gravity"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 20
          }
          Overrides {
            Name: "bp:Curl Offset"
            Vector {
              Z: 10
            }
          }
          Overrides {
            Name: "bp:Initial Velocity"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: false
          }
          Overrides {
            Name: "bp:Initial Start Delay"
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
            Id: 14231394991004806063
          }
          TeamSettings {
          }
          Vfx {
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
    }
    Assets {
      Id: 6981536508008379085
      Name: "Rock 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_003"
      }
    }
    Assets {
      Id: 8580039884885780066
      Name: "Glitchy Hologram"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_hologram"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
}
