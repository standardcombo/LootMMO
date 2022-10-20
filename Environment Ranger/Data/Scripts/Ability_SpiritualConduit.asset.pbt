Assets {
  Id: 10074041898080811053
  Name: "Ability_SpiritualConduit"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Spirital Conduit"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 13887755575610655442
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 3000
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
        String: "Bolt"
      }
      Overrides {
        Name: "cs:Description"
        String: "Your target is empowered with spirits, lashing out repeatedly at nearby targets."
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
      Id: 13887755575610655442
      Name: "Fantasy Ability Yellow 003"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Yellow_003"
      }
    }
  }
  SerializationVersion: 118
}
