Assets {
  Id: 6605733087661830397
  Name: "Ability_SiphonVitality"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Siphon Vitality"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 12559015832711781866
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 3000
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 15
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 1.4
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Bolt"
      }
      Overrides {
        Name: "cs:Description"
        String: "Drains the life force of your target, dealing damage and healing you."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 5789560668652292008
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 5789560668652292008
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
          Id: 12620255149055723196
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 12620255149055723196
        }
      }
      Overrides {
        Name: "cs:ProjectileTemplate"
        AssetReference {
          Id: 10481348771500045721
        }
      }
      Overrides {
        Name: "cs:APIProjectile"
        AssetReference {
          Id: 17739477946418166285
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
      Id: 12559015832711781866
      Name: "Fantasy Ability Purple 038"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Purple_038"
      }
    }
  }
  SerializationVersion: 118
}
