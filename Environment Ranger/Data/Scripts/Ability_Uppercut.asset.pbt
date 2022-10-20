Assets {
  Id: 3574085611856533
  Name: "Ability_Uppercut"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Uppercut"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 7228257297775909773
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 400
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 13
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 0
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Melee"
      }
      Overrides {
        Name: "cs:Description"
        String: "Knock your target off-balance, damaging them and stunning them briefly."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 14299629989547662197
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 14299629989547662197
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
          Id: 8759336877422601844
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 8759336877422601844
        }
      }
      Overrides {
        Name: "cs:APIStatusEffects"
        AssetReference {
          Id: 1831660344620141067
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
      Id: 7228257297775909773
      Name: "Fantasy Ability Red 017"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Red_017"
      }
    }
  }
  SerializationVersion: 118
}
