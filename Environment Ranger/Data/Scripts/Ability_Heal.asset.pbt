Assets {
  Id: 7297571783720429533
  Name: "Ability_Heal"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Heal"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 3111334347525175861
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 3000
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 0
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 2
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Magic"
      }
      Overrides {
        Name: "cs:Description"
        String: "Heals your target."
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
      Id: 3111334347525175861
      Name: "Fantasy Ability Yellow 005"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Yellow_005"
      }
    }
  }
  SerializationVersion: 118
}
