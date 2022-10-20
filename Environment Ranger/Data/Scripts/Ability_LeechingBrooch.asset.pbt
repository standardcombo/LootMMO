Assets {
  Id: 6385381462797035740
  Name: "Ability_LeechingBrooch"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: "Leeching Brooch"
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 1674472180965003280
        }
      }
      Overrides {
        Name: "cs:Range"
        Float: 400
      }
      Overrides {
        Name: "cs:Cooldown"
        Float: 25
      }
      Overrides {
        Name: "cs:CastDuration"
        Float: 0
      }
      Overrides {
        Name: "cs:AnimationKey"
        String: "Stab"
      }
      Overrides {
        Name: "cs:Description"
        String: "Take some of your targets blood and use it to heal yourself."
      }
      Overrides {
        Name: "cs:SelfCasterEffectTemplate"
        AssetReference {
          Id: 6876531271535461333
        }
      }
      Overrides {
        Name: "cs:OtherCasterEffectTemplate"
        AssetReference {
          Id: 6876531271535461333
        }
      }
      Overrides {
        Name: "cs:SelfTargetEffectTemplate"
        AssetReference {
          Id: 11011220336773375568
        }
      }
      Overrides {
        Name: "cs:OtherTargetEffectTemplate"
        AssetReference {
          Id: 11011220336773375568
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
      Id: 1674472180965003280
      Name: "Fantasy Jewelry 031"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Jewelry_031"
      }
    }
  }
  SerializationVersion: 118
}
