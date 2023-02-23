Assets {
  Id: 6871669441533760683
  Name: "ProducerOutputBuffData"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:ActiveWhileEmpty"
        Bool: false
      }
      Overrides {
        Name: "cs:ActiveWhilePlaced"
        Bool: false
      }
      Overrides {
        Name: "cs:ActiveWhileBuilding"
        Bool: false
      }
      Overrides {
        Name: "cs:ActiveWhileReady"
        Bool: false
      }
      Overrides {
        Name: "cs:ActiveWhileExpired"
        Bool: false
      }
      Overrides {
        Name: "cs:RequiredBuffs"
        String: ""
      }
      Overrides {
        Name: "cs:Radius"
        Float: 0
      }
      Overrides {
        Name: "cs:AddAmount"
        Float: 1
      }
      Overrides {
        Name: "cs:ActiveWhileEmpty:subcategory"
        String: "Active_Producer_States"
      }
      Overrides {
        Name: "cs:Radius:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:Radius:subcategory"
        String: "RadiusProximity"
      }
      Overrides {
        Name: "cs:ActiveWhilePlaced:subcategory"
        String: "Active_Producer_States"
      }
      Overrides {
        Name: "cs:ActiveWhileBuilding:subcategory"
        String: "Active_Producer_States"
      }
      Overrides {
        Name: "cs:ActiveWhileReady:subcategory"
        String: "Active_Producer_States"
      }
      Overrides {
        Name: "cs:ActiveWhileExpired:subcategory"
        String: "Active_Producer_States"
      }
      Overrides {
        Name: "cs:RequiredBuffs:subcategory"
        String: "Conditions"
      }
      Overrides {
        Name: "cs:ActiveWhileEmpty:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:ActiveWhileBuilding:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:ActiveWhileReady:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:ActiveWhileExpired:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:ActiveWhileEmpty:tooltip"
        String: "If true, this Buff will be active when a Producer Base has no Producer in it."
      }
      Overrides {
        Name: "cs:ActiveWhilePlaced:tooltip"
        String: "If true, this Buff will be active when a Producer Base is in the \'placed\' state but hasn\'t started building."
      }
      Overrides {
        Name: "cs:ActiveWhileBuilding:tooltip"
        String: "If true, this Buff will be active while a Producer is building and not yet ready to be collected."
      }
      Overrides {
        Name: "cs:ActiveWhileReady:tooltip"
        String: "If true, this Buff will be active when a Producer has finished building and is ready to be collected."
      }
      Overrides {
        Name: "cs:ActiveWhileExpired:tooltip"
        String: "If true, this Buff will be active when a Producer has expired."
      }
      Overrides {
        Name: "cs:RequiredBuffs:tooltip"
        String: "(Optional) A comma separated list of any Buff Ids you need the Producer to have for this buff to activate."
      }
      Overrides {
        Name: "cs:Radius:tooltip"
        String: "When active, this Buff will be added to any Buff targets that are within this radius."
      }
      Overrides {
        Name: "cs:AddAmount:subcategory"
        String: "RadiusProximity"
      }
    }
  }
  SerializationVersion: 124
  VirtualFolderPath: "Data"
}
