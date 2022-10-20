Assets {
  Id: 14890582789633143101
  Name: "Ability_HolyWard"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Holy Ward"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 11236998878850118290
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 3000
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 14
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 0
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Bolt"
      }
      Overrides {
        Name: "cs:Description"
        String: "Protect your target, reducing damage they take for a short duration."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 14503970582048843829
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 14503970582048843829
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
          Id: 15121666892172951497
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 15121666892172951497
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
      Id: 11236998878850118290
      Name: "Fantasy Ability Blue 048"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Blue_048"
      }
    }
  }
  SerializationVersion: 118
}
