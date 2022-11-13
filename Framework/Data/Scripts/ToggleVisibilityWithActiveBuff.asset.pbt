Assets {
  Id: 9246436151059596399
  Name: "ToggleVisibilityWithActiveBuff"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:APIBuffs"
        AssetReference {
          Id: 13989659271932831225
        }
      }
      Overrides {
        Name: "cs:BuffId"
        String: ""
      }
      Overrides {
        Name: "cs:ObjectToToggle"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:HideWhenActive"
        Bool: false
      }
      Overrides {
        Name: "cs:APIBuffs:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:APIBuffs:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:BuffId:tooltip"
        String: "The Id of the buff to detect. Leave blank if you want any buff to show and hide objects."
      }
      Overrides {
        Name: "cs:BuffId:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:ObjectToToggle:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:ObjectToToggle:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:ObjectToToggle:tooltip"
        String: "The target object or group of objects to show and hide."
      }
      Overrides {
        Name: "cs:HideWhenActive:tooltip"
        String: "If true, the target objects will be hidden while the Buff is active. Otherwise they will be visible while the Buff is active."
      }
    }
  }
  SerializationVersion: 120
  VirtualFolderPath: "Buffs"
}
