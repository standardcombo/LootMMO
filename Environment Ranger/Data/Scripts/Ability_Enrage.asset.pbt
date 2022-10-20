Assets {
  Id: 12653130121520336365
  Name: "Ability_Enrage"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Enrage"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 6534868485720375971
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 3000
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 6
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 0
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Shout"
      }
      Overrides {
        Name: "cs:Description"
        String: "Taunts a target and all enemies near them to attack you."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 15574173977428464658
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 16519726539380549336
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
          Id: 8492247271230945518
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 8492247271230945518
        }
      }
      Overrides {
        Name: "cs:API_NPC"
        AssetReference {
          Id: 1793953622129874134
        }
      }
    }
    Assets {
      Id: 6534868485720375971
      Name: "Fantasy Ability Red 043"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Red_043"
      }
    }
  }
  SerializationVersion: 118
}
