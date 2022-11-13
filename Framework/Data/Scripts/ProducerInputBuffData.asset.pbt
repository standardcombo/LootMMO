Assets {
  Id: 11744892765866346506
  Name: "ProducerInputBuffData"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:CanReceive"
        Bool: false
      }
      Overrides {
        Name: "cs:OverrideBuffDuration"
        Bool: false
      }
      Overrides {
        Name: "cs:BuffDuration"
        Float: 0
      }
      Overrides {
        Name: "cs:DrainWhileEmpty"
        Bool: true
      }
      Overrides {
        Name: "cs:DrainWhilePlaced"
        Bool: true
      }
      Overrides {
        Name: "cs:DrainWhileBuilding"
        Bool: true
      }
      Overrides {
        Name: "cs:DrainWhileReady"
        Bool: true
      }
      Overrides {
        Name: "cs:DrainWhileRebuilding"
        Bool: true
      }
      Overrides {
        Name: "cs:DrainWhileExpired"
        Bool: true
      }
      Overrides {
        Name: "cs:RemoveOnCollect"
        Bool: false
      }
      Overrides {
        Name: "cs:RemoveOnProducerRemoved"
        Bool: false
      }
      Overrides {
        Name: "cs:RequireToStartBuilding"
        Bool: false
      }
      Overrides {
        Name: "cs:RequireWhileBuilding"
        Bool: false
      }
      Overrides {
        Name: "cs:RequireWhileRebuilding"
        Bool: false
      }
      Overrides {
        Name: "cs:AffectsBuildRate"
        Bool: false
      }
      Overrides {
        Name: "cs:BuildRateMultiplierPercent"
        Float: 0
      }
      Overrides {
        Name: "cs:RequireToAllowExpiring"
        Bool: false
      }
      Overrides {
        Name: "cs:AffectsExpireRate"
        Bool: false
      }
      Overrides {
        Name: "cs:ExpireRateMultiplierPercent"
        Float: 0
      }
      Overrides {
        Name: "cs:ResetsExpiry"
        Bool: false
      }
      Overrides {
        Name: "cs:ValidAddBuffToolTypes"
        String: ""
      }
      Overrides {
        Name: "cs:ToolsConsumedWhenAdded"
        Int: 0
      }
      Overrides {
        Name: "cs:InteractionText"
        String: ""
      }
      Overrides {
        Name: "cs:MinAllowedBuffConsumption"
        Float: 0.8
      }
      Overrides {
        Name: "cs:AddBuffEffect"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:AddBuffEffectOffset"
        Vector {
        }
      }
      Overrides {
        Name: "cs:CanReceive:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:ResetsExpiry:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:ResetsExpiry:subcategory"
        String: "Producer_Expiry"
      }
      Overrides {
        Name: "cs:RequireToAllowExpiring:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:RequireToStartBuilding:subcategory"
        String: "Producer_Building"
      }
      Overrides {
        Name: "cs:RequireWhileBuilding:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:RequireWhileBuilding:subcategory"
        String: "Producer_Building"
      }
      Overrides {
        Name: "cs:BuildRateMultiplierPercent:subcategory"
        String: "Producer_Building"
      }
      Overrides {
        Name: "cs:ExpireRateMultiplierPercent:subcategory"
        String: "Producer_Expiry"
      }
      Overrides {
        Name: "cs:AffectsBuildRate:subcategory"
        String: "Producer_Building"
      }
      Overrides {
        Name: "cs:AffectsExpireRate:subcategory"
        String: "Producer_Expiry"
      }
      Overrides {
        Name: "cs:ValidAddBuffToolTypes:subcategory"
        String: "Interaction"
      }
      Overrides {
        Name: "cs:ValidAddBuffToolTypes:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:OverrideBuffDuration:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:BuffDuration:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:AffectsBuildRate:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:BuildRateMultiplierPercent:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:AffectsExpireRate:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:RequireToAllowExpiring:subcategory"
        String: "Producer_Expiry"
      }
      Overrides {
        Name: "cs:ValidAddBuffToolTypes:tooltip"
        String: "A comma separated list of any tool types that are able to add this buff. Tool types are defined on Equipment or in the database"
      }
      Overrides {
        Name: "cs:ResetsExpiry:tooltip"
        String: "If true, while this buff is active, the expiry time of the producer is reset back to 0."
      }
      Overrides {
        Name: "cs:AffectsExpireRate:tooltip"
        String: "If true, this Buff will affect the rate a Producer expires, if it expires."
      }
      Overrides {
        Name: "cs:AffectsBuildRate:tooltip"
        String: "If true, this Buff will affect the build rate while the Buff is active."
      }
      Overrides {
        Name: "cs:RequireToStartBuilding:tooltip"
        String: "If true, the Producer won\'t be able to start building until it has this Buff, and will remain in the placed state."
      }
      Overrides {
        Name: "cs:RequireWhileBuilding:tooltip"
        String: "If true, the Producer won\'t be able to continue building until it has this Buff, and will remain in the building state without progressing."
      }
      Overrides {
        Name: "cs:RequireToAllowExpiring:tooltip"
        String: "If the Producer is able to expire and this is true, the Producer won\'t expire if it doesn\'t have this Buff. Useful for debuffs."
      }
      Overrides {
        Name: "cs:CanReceive:tooltip"
        String: "Tick to be able to actually recieve this buff"
      }
      Overrides {
        Name: "cs:OverrideBuffDuration:tooltip"
        String: "Tick to override the buff duration thats in the buff database"
      }
      Overrides {
        Name: "cs:BuffDuration:tooltip"
        String: "If OverrideBuffDuration is ticked, this is the new buff duration"
      }
      Overrides {
        Name: "cs:ToolsConsumedWhenAdded:tooltip"
        String: "If greater than 0, this number of the currently equipped Tool will be removed from the Players Inventory when this Buff is added."
      }
      Overrides {
        Name: "cs:ToolsConsumedWhenAdded:subcategory"
        String: "Interaction"
      }
      Overrides {
        Name: "cs:InteractionText:subcategory"
        String: "Interaction"
      }
      Overrides {
        Name: "cs:DrainWhilePlaced:subcategory"
        String: "Consumption"
      }
      Overrides {
        Name: "cs:DrainWhileBuilding:subcategory"
        String: "Consumption"
      }
      Overrides {
        Name: "cs:DrainWhileReady:subcategory"
        String: "Consumption"
      }
      Overrides {
        Name: "cs:RemoveOnCollect:subcategory"
        String: "Consumption"
      }
      Overrides {
        Name: "cs:DrainWhileRebuilding:subcategory"
        String: "Consumption"
      }
      Overrides {
        Name: "cs:RemoveOnProducerRemoved:subcategory"
        String: "Consumption"
      }
      Overrides {
        Name: "cs:DrainWhileExpired:subcategory"
        String: "Consumption"
      }
      Overrides {
        Name: "cs:AddBuffEffect:subcategory"
        String: "VFX"
      }
      Overrides {
        Name: "cs:AddBuffEffectOffset:subcategory"
        String: "VFX"
      }
      Overrides {
        Name: "cs:AddBuffEffect:tooltip"
        String: "VFX that is spawned when this buff is added via a tool."
      }
      Overrides {
        Name: "cs:AddBuffEffectOffset:tooltip"
        String: "This will move where the \"AddBuffEffect\" template spawns. It can be used to position the effect exactly where you need it."
      }
      Overrides {
        Name: "cs:RequireWhileRebuilding:subcategory"
        String: "Producer_Building"
      }
      Overrides {
        Name: "cs:MinAllowedBuffConsumption:tooltip"
        String: "Each time you use the tool, it will add \'1\' Buff. Set this to 0 if you want to allow the Player to add a Buff even if there is 99% remaining, use 0.5 if the Player can add the Buff when it is 50%, use 0 if you want the Buff to only apply when it\'s gone. Useful to ensure the Player doesn\'t waste items for little or no gain."
      }
      Overrides {
        Name: "cs:MinAllowedBuffConsumption:subcategory"
        String: "Interaction"
      }
      Overrides {
        Name: "cs:DrainWhilePlaced:tooltip"
        String: "If true, the Buff duration will decrement while the Producer is in the \"placed\" state. Otherwise it will pause."
      }
      Overrides {
        Name: "cs:DrainWhileBuilding:tooltip"
        String: "If true, the Buff duration will decrement while the Producer is in the \"building\" state. Otherwise it will pause."
      }
      Overrides {
        Name: "cs:DrainWhileReady:tooltip"
        String: "If true, the Buff duration will decrement while the Producer is in the \"ready\" state. Otherwise it will pause."
      }
      Overrides {
        Name: "cs:DrainWhileRebuilding:tooltip"
        String: "If true, the Buff duration will decrement while the Producer is in the \"rebuilding\" state. Otherwise it will pause."
      }
      Overrides {
        Name: "cs:DrainWhileExpired:tooltip"
        String: "If true, the Buff duration will decrement while the Producer is in the \"expired\" state. Otherwise it will pause."
      }
      Overrides {
        Name: "cs:RemoveOnCollect:tooltip"
        String: "If true, the Buff will be removed when the Player collects the product from the Producer."
      }
      Overrides {
        Name: "cs:RemoveOnProducerRemoved:tooltip"
        String: "If true, The Buff will be removed if the Producer is removed from the Producer Base."
      }
      Overrides {
        Name: "cs:RequireWhileRebuilding:tooltip"
        String: "If true, the Producer won\'t be able to continue rebuilding until it has this Buff, and will remain in the building state without progressing."
      }
      Overrides {
        Name: "cs:BuildRateMultiplierPercent:tooltip"
        String: "If \"AffectsBuildRate\" is true, this multiplier percentage will be applied to the build rate while this Buff is active. For example \"100\" would multiply the rate by 100% doubling the build rate."
      }
      Overrides {
        Name: "cs:ExpireRateMultiplierPercent:tooltip"
        String: "If \"AffectsExpireRate\" is true, this multiplier percentage will be applied to the expiry rate while this Buff is active."
      }
      Overrides {
        Name: "cs:DrainWhileEmpty:subcategory"
        String: "Consumption"
      }
      Overrides {
        Name: "cs:DrainWhileEmpty:tooltip"
        String: "If true, the Buff duration will decrement while there is no Producer in the Producer Base. Otherwise it will pause."
      }
    }
  }
  SerializationVersion: 120
  VirtualFolderPath: "Data"
}
