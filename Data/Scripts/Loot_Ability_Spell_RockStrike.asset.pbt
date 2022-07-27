Assets {
  Id: 2390144785110681595
  Name: "Loot_Ability_Spell_RockStrike"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:damageStat"
        SimpleCurve {
          Keys {
            Interpolation {
              Value: "mc:erichcurveinterpmode:rcim_cubic"
            }
            TangentMode {
              Value: "mc:erichcurvetangentmode:rctm_user"
            }
            Time: -2.83122063e-07
            Value: 25
            ArriveTangent: 0.0315498523
            LeaveTangent: 0.0315498523
          }
          Keys {
            Interpolation {
              Value: "mc:erichcurveinterpmode:rcim_cubic"
            }
            TangentMode {
              Value: "mc:erichcurvetangentmode:rctm_auto"
            }
            Time: 5
            Value: 50
          }
          PreExtrapolation {
            Value: "mc:erichcurveextrapolation:rcce_constant"
          }
          PostExtrapolation {
            Value: "mc:erichcurveextrapolation:rcce_constant"
          }
        }
      }
      Overrides {
        Name: "cs:Combat_Connector"
        AssetReference {
          Id: 12483969483192492711
        }
      }
      Overrides {
        Name: "cs:Modifiers"
        AssetReference {
          Id: 10388495764372049008
        }
      }
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 8975273285240916744
        }
      }
      Overrides {
        Name: "cs:Description"
        String: "send out a trail of rocks that damages and launches enemies toward you."
      }
      Overrides {
        Name: "cs:WarriorOrcRockStrikeProjectileBasic"
        AssetReference {
          Id: 17988687176319291930
        }
      }
      Overrides {
        Name: "cs:Icon:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:Icon:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:Description:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:Description:ml"
        Bool: false
      }
    }
    Assets {
      Id: 8975273285240916744
      Name: "Fantasy Ability Yellow 004"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Yellow_004"
      }
    }
  }
  SerializationVersion: 118
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Ability"
  VirtualFolderPath: "AbilityTemplates"
}
