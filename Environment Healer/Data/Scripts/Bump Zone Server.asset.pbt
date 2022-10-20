Assets {
  Id: 8137025574885759575
  Name: "Bump Zone Server"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Utils"
        AssetReference {
          Id: 8431391566871556229
        }
      }
      Overrides {
        Name: "cs:Force"
        Float: 1000
      }
      Overrides {
        Name: "cs:PhysicsBumper"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:KillPlayer"
        Bool: false
      }
      Overrides {
        Name: "cs:CauseOfDeath"
        String: "crushed by a falling object"
      }
      Overrides {
        Name: "cs:KillFeedIcon"
        AssetReference {
          Id: 16737201788430173059
        }
      }
    }
    Assets {
      Id: 16737201788430173059
      Name: "Destroy"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Urban_Icon_045"
      }
    }
  }
  SerializationVersion: 118
  VirtualFolderPath: "Utilities"
}
