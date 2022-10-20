Assets {
  Id: 6628333839649202416
  Name: "Ability_Refresh"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Refresh"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 8988782777998787278
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 0
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 12
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 0
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Drink"
      }
      Overrides {
        Name: "cs:Description"
        String: "Very quickly replenish yourself, healing a portion of your total health."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 17854121627140927710
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 1184387513907377318
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
        }
      }
      Overrides {
        Name: "cs:APIDamage"
        AssetReference {
          Id: 16915150100797142409
        }
      }
    }
    Assets {
      Id: 8988782777998787278
      Name: "Fantasy Ale 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Food_Ale_002"
      }
    }
  }
  SerializationVersion: 118
}
