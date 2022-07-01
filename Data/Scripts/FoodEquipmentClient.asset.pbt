Assets {
  Id: 16469856483855903269
  Name: "FoodEquipmentClient"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:ServerScript"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:ModelRoot"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:IKRoot"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:IKAnchor"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:IKBone"
        String: "head"
      }
      Overrides {
        Name: "cs:PrimarySFX"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:PrimaryChance"
        Float: 0.5
      }
      Overrides {
        Name: "cs:SecondarySFX"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:SecondaryPeriod"
        Float: 1
      }
      Overrides {
        Name: "cs:ModelRoot:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:ModelRoot:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:IKRoot:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:IKRoot:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:IKAnchor:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:IKAnchor:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:PrimarySFX:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:PrimarySFX:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:PrimaryChance:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:PrimaryChance:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:SecondarySFX:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:SecondarySFX:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:SecondaryPeriod:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:SecondaryPeriod:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:ServerScript:tooltip"
        String: "Reference to the server script."
      }
      Overrides {
        Name: "cs:ModelRoot:tooltip"
        String: "Reference to the root where the 3D model will be placed."
      }
      Overrides {
        Name: "cs:IKRoot:tooltip"
        String: "Parent of the IK Anchor. This is what\'s attached to the player."
      }
      Overrides {
        Name: "cs:IKBone:tooltip"
        String: "Name of the bone on the player, onto which the IK Root is attached."
      }
      Overrides {
        Name: "cs:IKAnchor:tooltip"
        String: "Reference to the IK Anchor object that will be activated when the player presses the primary action binding."
      }
      Overrides {
        Name: "cs:PrimarySFX:tooltip"
        String: "Sound to play when the item is activated."
      }
      Overrides {
        Name: "cs:PrimaryChance:tooltip"
        String: "% chance to play the primary sound, from 0 to 1."
      }
      Overrides {
        Name: "cs:SecondarySFX:tooltip"
        String: "Secondary sound to play periodically while the primary action binding is being held down."
      }
      Overrides {
        Name: "cs:SecondaryPeriod:tooltip"
        String: "The interval/period in which to play the secondary sound."
      }
    }
  }
  SerializationVersion: 116
}
