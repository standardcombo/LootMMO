Assets {
  Id: 9656556991163291496
  Name: "DDNavMeshGenerator"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10223134418665528892
      Objects {
        Id: 10223134418665528892
        Name: "DDNavMeshGenerator"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15558715673223044782
        ChildIds: 4920491915511984392
        ChildIds: 12410953914868327895
        ChildIds: 15461767369106101966
        UnregisteredParameters {
          Overrides {
            Name: "cs:TileSize"
            Vector {
              X: 300
              Y: 300
              Z: 300
            }
          }
          Overrides {
            Name: "cs:MaxAllowedSlope"
            Float: 0.7
          }
          Overrides {
            Name: "cs:MaxUnitHeight"
            Float: 200
          }
          Overrides {
            Name: "cs:MaxUnitSizeRadius"
            Float: 50
          }
          Overrides {
            Name: "cs:EnableNavMesh"
            Bool: true
          }
          Overrides {
            Name: "cs:RemoveIslands"
            Bool: false
          }
          Overrides {
            Name: "cs:AutoStartNavMeshVisualization"
            Bool: false
          }
          Overrides {
            Name: "cs:FoliageNavMeshGenerationFix"
            Bool: false
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15558715673223044782
        Name: "DDNavMeshGenerator"
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
        ParentId: 10223134418665528892
        UnregisteredParameters {
          Overrides {
            Name: "cs:NavMeshArea"
            ObjectReference {
              SubObjectId: 15461767369106101966
            }
          }
          Overrides {
            Name: "cs:IslandRemoverStartPos"
            ObjectReference {
              SubObjectId: 4920491915511984392
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
            Id: 11453816274921182864
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4920491915511984392
        Name: "IslandRemoverStartPos"
        Transform {
          Location {
            X: -990
            Y: -770
            Z: -930
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10223134418665528892
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7363477334452929865
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 12410953914868327895
        Name: "Visualizer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 70
            Y: 70
            Z: 35
          }
        }
        ParentId: 10223134418665528892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12225777922476739267
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        Id: 15461767369106101966
        Name: "NavMeshArea"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 70
            Y: 70
            Z: 35
          }
        }
        ParentId: 10223134418665528892
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Trigger {
          TeamSettings {
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
      Id: 7363477334452929865
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 12225777922476739267
      Name: "Grid Lines Emissive Double-Sided"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_grid_unlit_emissive_uv_doublesided"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
}
