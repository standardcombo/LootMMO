Assets {
  Id: 234727043416621351
  Name: "Ability_CreepingCurse"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Creeping Curse"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 15612050688073808511
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
        String: "Curse your target. When the curse expires, it deals moderate damage to the target and may leap to another nearby target."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 14767071428671230794
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 14767071428671230794
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
          Id: 13125413163112879241
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 13125413163112879241
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
      Id: 15612050688073808511
      Name: "Fantasy Ability Teal 009"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Teal_009"
      }
    }
  }
  SerializationVersion: 118
}
