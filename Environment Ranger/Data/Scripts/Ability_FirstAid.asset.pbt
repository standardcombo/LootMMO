Assets {
  Id: 14855283366359618783
  Name: "Ability_FirstAid"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "First Aid"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 15785925261575531730
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 0
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 14
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 2
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Bandage"
      }
      Overrides {
        Name: "cs:Description"
        String: "You tend to your wounds, healing a moderate amount."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 17914557400049981153
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 17914557400049981153
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
      Id: 15785925261575531730
      Name: "Fantasy Ability Green 019"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Green_019"
      }
    }
  }
  SerializationVersion: 118
}
