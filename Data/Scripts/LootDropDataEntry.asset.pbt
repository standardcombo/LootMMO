Assets {
  Id: 12664807901734619296
  Name: "LootDropDataEntry"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Incidence"
        Int: 1
      }
      Overrides {
        Name: "cs:Template"
        AssetReference {
        }
      }
      Overrides {
        Name: "cs:Incidence:tooltip"
        String: "How frequently this loot will be dropped, in relationship to other entries in the same group. E.g. If one entry has incidence 1 and the other has incidence 2, then the second entry is twice as likely to drop."
      }
      Overrides {
        Name: "cs:Template:tooltip"
        String: "Reference to the asset that will be spawned."
      }
    }
  }
  SerializationVersion: 119
}
