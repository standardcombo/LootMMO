Assets {
  Id: 6741689388286448312
  Name: "Ability_Intervention"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Intervention"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 17332468096773076319
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 0
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
        String: "You call on a divine act and immediately heal all players for a moderate amount."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 15213291372203662834
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 15213291372203662834
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
        Name: "cs:APIDamage"
        AssetReference {
          Id: 16915150100797142409
        }
      }
    }
    Assets {
      Id: 17332468096773076319
      Name: "Fantasy Ability Yellow 027"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Yellow_027"
      }
    }
  }
  SerializationVersion: 118
}
