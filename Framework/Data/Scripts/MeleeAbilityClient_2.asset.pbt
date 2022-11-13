Assets {
  Id: 5623274323220197328
  Name: "MeleeAbilityClient"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Ability"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:CalibrateSwipe"
        Bool: false
      }
      Overrides {
        Name: "cs:SwipeEffect"
        AssetReference {
          Id: 12507543481433676300
        }
      }
      Overrides {
        Name: "cs:SwipeDelay"
        Float: 0
      }
      Overrides {
        Name: "cs:SwipePosition"
        Vector {
        }
      }
      Overrides {
        Name: "cs:SwipeRotation"
        Rotator {
        }
      }
      Overrides {
        Name: "cs:PlayerImpactVFX"
        AssetReference {
          Id: 7473039137614056492
        }
      }
      Overrides {
        Name: "cs:Ability:tooltip"
        String: "Reference to the Ability tracked by this script. The Ability is what detects player input and drives the player avatar\'s animation."
      }
      Overrides {
        Name: "cs:CalibrateSwipe:tooltip"
        String: "A debug flag used for adjusting the SwipePosition and SwipeRotation properties during edit time."
      }
      Overrides {
        Name: "cs:SwipeEffect:tooltip"
        String: "The VFX template to be spawned when the ability executes."
      }
      Overrides {
        Name: "cs:SwipeDelay:tooltip"
        String: "A delay, in seconds, before the SwipeEffect is spawned."
      }
      Overrides {
        Name: "cs:SwipePosition:tooltip"
        String: "A positional offset, relative to the player\'s position, to apply to the SwipeEffect when it\'s spawned."
      }
      Overrides {
        Name: "cs:SwipeRotation:tooltip"
        String: "A rotational offset, relative to the player\'s rotation, to apply to the SwipeEffect when it\'s spawned."
      }
      Overrides {
        Name: "cs:PlayerImpactVFX:tooltip"
        String: "VFX template to spawn when the weapon impacts characters."
      }
    }
  }
  SerializationVersion: 120
}
