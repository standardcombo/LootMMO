Assets {
  Id: 7036591007901812546
  Name: "DDPathfindingBase"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:MergePathsWithSameDirection"
        Bool: false
      }
      Overrides {
        Name: "cs:FitPathAgainstNavMeshZ"
        Bool: true
      }
      Overrides {
        Name: "cs:MaxPathSearchTime"
        Float: 0.5
      }
      Overrides {
        Name: "cs:DDPerfTimer"
        AssetReference {
          Id: 1497262145404271015
        }
      }
      Overrides {
        Name: "cs:DDPromise"
        AssetReference {
          Id: 1319562995017168474
        }
      }
    }
  }
  SerializationVersion: 121
}
