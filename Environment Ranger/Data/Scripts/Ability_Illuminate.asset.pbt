Assets {
  Id: 16913468257274036374
  Name: "Ability_Illuminate"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Illuminate"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 2037116453720966790
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 3000
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 13
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
        String: "Lights up an area, healing friends for a short duration."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 12852211841311442988
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 12852211841311442988
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
          Id: 5144995313265887069
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 12972220158729906763
        }
      }
      Overrides {
        Name: "cs:ReticleTemplate"
        AssetReference {
          Id: 7930055332507536354
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
      Id: 2037116453720966790
      Name: "Fantasy Ability Yellow 014"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Yellow_014"
      }
    }
  }
  SerializationVersion: 118
}
