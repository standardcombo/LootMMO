Assets {
  Id: 12057028364259361751
  Name: "ToggleEffectsWithActiveBuff"
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
        Name: "cs:ObjectToPlayStop"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:IncludeDescendants"
        Bool: false
      }
      Overrides {
        Name: "cs:BuffId:tooltip"
        String: "The Id of the buff to detect. Leave blank if you want any buff to play and stop effects."
      }
      Overrides {
        Name: "cs:BuffId:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:ObjectToPlayStop:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:ObjectToPlayStop:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:IncludeDescendants:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:IncludeDescendants:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:ObjectToPlayStop:tooltip"
        String: "The target object or group of objects to play and stop effects in. Only Audio and Vfx objects found will be used."
      }
      Overrides {
        Name: "cs:IncludeDescendants:tooltip"
        String: "If true, all Audio and Vfx objects underneath the \"ObjectToPlayStop\" will also play and stop."
      }
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Buffs"
}
