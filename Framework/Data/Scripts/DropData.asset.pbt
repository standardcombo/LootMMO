Assets {
  Id: 6635439301500212790
  Name: "DropData"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:ItemId"
        String: ""
      }
      Overrides {
        Name: "cs:CurrencyId"
        String: ""
      }
      Overrides {
        Name: "cs:MinAmount"
        Int: 1
      }
      Overrides {
        Name: "cs:MaxAmount"
        Int: 1
      }
      Overrides {
        Name: "cs:WeightedChance"
        Int: 0
      }
      Overrides {
        Name: "cs:PercentChance"
        Float: 100
      }
      Overrides {
        Name: "cs:ItemId:tooltip"
        String: "The id of the item that should be added to a Players Inventory. The item data needs to exist in a Database in the scene. If left blank, no item will drop."
      }
      Overrides {
        Name: "cs:CurrencyId:tooltip"
        String: "The id of the Currency that should be added to a Player. A Currency Settings with the same id needs to exist in the scene. If left blank, no Currency will drop."
      }
      Overrides {
        Name: "cs:WeightedChance:tooltip"
        String: "If greater than 0, this value will be combined with other Drop Data WeightedValues and a single drop will be picked from the collection based on the weight of each drop. Useful for rare items."
      }
      Overrides {
        Name: "cs:PercentChance:tooltip"
        String: "If greater than 0, the percent chance (0 - 100) that this drop will be rewarded to the Player."
      }
      Overrides {
        Name: "cs:MinAmount:tooltip"
        String: "The minimum amount of the item or Currency to drop."
      }
      Overrides {
        Name: "cs:MaxAmount:tooltip"
        String: "The maximum amount of the item or Currency to drop."
      }
      Overrides {
        Name: "cs:WeightedChance:subcategory"
        String: "Weight Based Drop"
      }
      Overrides {
        Name: "cs:PercentChance:subcategory"
        String: "Percent Based Drop"
      }
    }
  }
  SerializationVersion: 120
  VirtualFolderPath: "Data"
}
