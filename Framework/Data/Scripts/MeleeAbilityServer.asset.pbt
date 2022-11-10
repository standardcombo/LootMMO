Assets {
  Id: 2059119958766888270
  Name: "MeleeAbilityServer"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:ModuleManager"
        AssetReference {
          Id: 6849549736519012849
        }
      }
      Overrides {
        Name: "cs:Ability"
        ObjectReference {
          SelfId: 16278334571300005126
        }
      }
      Overrides {
        Name: "cs:HitBox"
        ObjectReference {
          SelfId: 2250177774332055078
        }
      }
      Overrides {
        Name: "cs:DamageRange"
        Vector2 {
          X: 49
          Y: 51
        }
      }
      Overrides {
        Name: "cs:DamageRangePlayers"
        Vector2 {
          X: 49
          Y: 51
        }
      }
      Overrides {
        Name: "cs:HeadshotNPCs"
        Vector2 {
          X: 49
          Y: 51
        }
      }
      Overrides {
        Name: "cs:HeadshotPlayers"
        Vector2 {
          X: 49
          Y: 51
        }
      }
      Overrides {
        Name: "cs:AttackImpulse"
        Float: 0
      }
      Overrides {
        Name: "cs:VerticalImpulse"
        Float: 0
      }
      Overrides {
        Name: "cs:Ability:tooltip"
        String: "Reference to the Ability tracked by this script. The Ability is what detects player input and drives the player avatar\'s animation."
      }
      Overrides {
        Name: "cs:HitBox:tooltip"
        String: "Reference to the weapon\'s Trigger object that will act as a hitbox during execution of the attack."
      }
      Overrides {
        Name: "cs:DamageRange:tooltip"
        String: "Range of damage, minimum(X) and maximum(Y)."
      }
      Overrides {
        Name: "cs:AttackImpulse:tooltip"
        String: "Forward impulse to be applied to the owner of the weapon, when they attack."
      }
      Overrides {
        Name: "cs:VerticalImpulse:tooltip"
        String: "Upwards impulse to be applied to the owner of the weapon, when they attack."
      }
    }
  }
  SerializationVersion: 120
}
