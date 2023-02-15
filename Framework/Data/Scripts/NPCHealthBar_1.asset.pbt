Assets {
  Id: 10245166676729381551
  Name: "NPCHealthBar"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:HideWhenFull"
        Bool: true
      }
      Overrides {
        Name: "cs:HideWhenEmpty"
        Bool: true
      }
      Overrides {
        Name: "cs:TickWait"
        Float: 0.1
      }
      Overrides {
        Name: "cs:Fill"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Label"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Armor"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Name"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Level"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Fill:tooltip"
        String: "Reference to the UI Image that represents the filled bar. The script will scale the bar to show percentage of health."
      }
      Overrides {
        Name: "cs:Label:tooltip"
        String: "Reference to the UI Text object that will draw the number of hitpoints inside the bar."
      }
    }
  }
  SerializationVersion: 124
  VirtualFolderPath: "NPC Kit"
}
