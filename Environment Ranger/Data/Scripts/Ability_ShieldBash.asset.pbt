Assets {
  Id: 16742234104346326110
  Name: "Ability_ShieldBash"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Shield Bash"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 18150175252654389294
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 400
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
        String: "Bash"
      }
      Overrides {
        Name: "cs:Description"
        String: "Smash your target with your shield, dealing high damage and stunning them briefly. Damage scales with defense."
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
      Id: 18150175252654389294
      Name: "Fantasy Ability Blue 051"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Blue_051"
      }
    }
  }
  SerializationVersion: 118
}
