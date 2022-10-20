Assets {
  Id: 15058145420934614033
  Name: "Ability_DivineBlast"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Divine Blast"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 11309381679699856108
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
        String: "Bolt"
      }
      Overrides {
        Name: "cs:Description"
        String: "Attacks single target, sending a wave out from the target healing all nearby party members."
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
          Id: 17770349910019426385
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 10381945042861298201
        }
      }
      Overrides {
        Name: "cs:ProjectileTemplate"
        AssetReference {
          Id: 2664740156902257602
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
      Id: 11309381679699856108
      Name: "Fantasy Ability Yellow 029"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Yellow_029"
      }
    }
  }
  SerializationVersion: 118
}
