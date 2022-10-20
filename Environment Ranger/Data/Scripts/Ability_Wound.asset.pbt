Assets {
  Id: 14690783643482390684
  Name: "Ability_Wound"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Wound"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 12558162289108193643
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 400
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 8
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 0
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Slam"
      }
      Overrides {
        Name: "cs:Description"
        String: "Wound your target, causing them to take damage over time."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 11751321570122047444
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 11751321570122047444
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
          Id: 12591759346338042351
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 12591759346338042351
        }
      }
      Overrides {
        Name: "cs:APIStatusEffects"
        AssetReference {
          Id: 1831660344620141067
        }
      }
    }
    Assets {
      Id: 12558162289108193643
      Name: "Fantasy Ability Red 041"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Red_041"
      }
    }
  }
  SerializationVersion: 118
}
