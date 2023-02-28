Assets {
  Id: 15258779556375021788
  Name: "DDPathfindingManager"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17182930257740680113
      Objects {
        Id: 17182930257740680113
        Name: "DDPathfindingManager"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5907375270724671462
        ChildIds: 5751837132543989306
        UnregisteredParameters {
          Overrides {
            Name: "cs:SaveDataFile"
            AssetReference {
              Id: 6390895591108818326
            }
          }
          Overrides {
            Name: "cs:DefaultPathfinder"
            AssetReference {
              Id: 11923270314557132522
            }
          }
          Overrides {
            Name: "cs:DefaultPathSearchArea"
            String: "x=3 y=3 zMin=10 zMax=2"
          }
          Overrides {
            Name: "cs:RegisterInGlobals"
            Bool: true
          }
          Overrides {
            Name: "cs:MaxProcessingTimeEachFrame"
            Float: 0.05
          }
          Overrides {
            Name: "cs:FoliageNavMeshGenerationFix"
            Bool: false
          }
          Overrides {
            Name: "cs:Debug"
            Bool: false
          }
          Overrides {
            Name: "cs:VerboseDebug"
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
        Id: 5907375270724671462
        Name: "DDPathfinding_Readme"
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
        ParentId: 17182930257740680113
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
            Id: 4550070977237074874
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5751837132543989306
        Name: "DDPathfindingManager"
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
        ParentId: 17182930257740680113
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
        Script {
          ScriptAsset {
            Id: 8336160856522449697
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
  SerializationVersion: 125
}
