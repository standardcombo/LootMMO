Assets {
  Id: 12881933580992931431
  Name: "BuffData"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: ""
      }
      Overrides {
        Name: "cs:UniqueStorageId"
        Int: 0
      }
      Overrides {
        Name: "cs:Duration"
        Float: 0
      }
      Overrides {
        Name: "cs:Permanent"
        Bool: false
      }
      Overrides {
        Name: "cs:MaxStacks"
        Int: 1
      }
      Overrides {
        Name: "cs:Duration:tooltip"
        String: "How long this buff will \'last\'. Targets may adjust this value so this is the \'base value\' of how long a buff would last on a target. A duration of 0 means the buff will be removed instantly"
      }
      Overrides {
        Name: "cs:UniqueStorageId:tooltip"
        String: "Used for networking and storage. Must be a unique number for each buff. Not required for Linked buffs as these are not saved"
      }
      Overrides {
        Name: "cs:MaxStacks:tooltip"
        String: "If a buff lasts for 2 seconds, but has a stack of 2, then it could be added twice and last for 4 seconds."
      }
      Overrides {
        Name: "cs:Name:tooltip"
        String: "The name of the Buff. Will appear in some tooltips."
      }
      Overrides {
        Name: "cs:Permanent:tooltip"
        String: "Tick if you want the buff to last forever (until something removes it)"
      }
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "Data"
}
