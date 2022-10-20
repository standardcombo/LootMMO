Assets {
  Id: 5705387378154348391
  Name: "Ability_EmpowerEnergies"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Empower Energies"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 3078059190705841288
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 3000
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 45
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 0
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Magic"
      }
      Overrides {
        Name: "cs:Description"
        String: "Empower the caster, increasing your damage and speed for a short duration."
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
          Id: 10176661748558963156
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
        Name: "cs:APIStatusEffects"
        AssetReference {
          Id: 1831660344620141067
        }
      }
    }
    Assets {
      Id: 3078059190705841288
      Name: "Fantasy Ability Purple 005"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Purple_005"
      }
    }
  }
  SerializationVersion: 118
}
