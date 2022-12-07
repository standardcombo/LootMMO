Assets {
  Id: 13670653971905386821
  Name: "NPCAttackServer"
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
        Name: "cs:Root"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:ProjectileBody"
        AssetReference {
        }
      }
      Overrides {
        Name: "cs:MuzzleFlash"
        AssetReference {
        }
      }
      Overrides {
        Name: "cs:ImpactSurface"
        AssetReference {
        }
      }
      Overrides {
        Name: "cs:ImpactCharacter"
        AssetReference {
        }
      }
      Overrides {
        Name: "cs:ProjectileLifeSpan"
        Float: 5
      }
      Overrides {
        Name: "cs:ProjectileSpeed"
        Float: 4000
      }
      Overrides {
        Name: "cs:ProjectileGravity"
        Float: 0
      }
      Overrides {
        Name: "cs:ProjectileHoming"
        Bool: true
      }
      Overrides {
        Name: "cs:HomingDrag"
        Float: 7
      }
      Overrides {
        Name: "cs:HomingAcceleration"
        Float: 15000
      }
      Overrides {
        Name: "cs:Root:tooltip"
        String: "A reference to the root of the template, where most of the NPC\'s custom properties are set."
      }
      Overrides {
        Name: "cs:ProjectileBody:tooltip"
        String: "Visual template used for the body of the projectile that is shot when this NPC attacks. The projectile is spawned with rotation and direction matching those of the NPCAttackServer script object, which is why the orientation of this script within the template hierarchy is important."
      }
      Overrides {
        Name: "cs:MuzzleFlash:tooltip"
        String: "Visual effect to spawn at the \"weapon muzzle\", this can also be a sword swipe effect or sometimes just a sound. It is positioned and rotated to where the NPCAttackServer is located, which is why the orientation of this script within the template hierarchy is important."
      }
      Overrides {
        Name: "cs:ImpactSurface:tooltip"
        String: "Visual effect to spawn at the point of impact of the projectile, in case a non-character object is impacted (e.g. a wall)."
      }
      Overrides {
        Name: "cs:ImpactCharacter:tooltip"
        String: "Visual effect to spawn at the point of impact of the projectile, in case a Player or NPC is impacted."
      }
      Overrides {
        Name: "cs:ProjectileLifeSpan:tooltip"
        String: "How many seconds the projectile will fly in the air and be destroyed in case it does not impact anything."
      }
      Overrides {
        Name: "cs:ProjectileSpeed:tooltip"
        String: "The initial speed of the projectile, in centimeters per second."
      }
      Overrides {
        Name: "cs:ProjectileGravity:tooltip"
        String: "The scale of gravity to be used for the projectile. A value of 1 represents Earth gravity. Can be greater than 1. If zero it goes in a straight line (assuming \'homing\' is disabled). If negative the projectile will move upwards over time."
      }
      Overrides {
        Name: "cs:ProjectileHoming:tooltip"
        String: "The homing property causes the projectile to accelerate towards its target. HomingDrag and HomingAcceleration are important companion properties for homing to work correctly, otherwise the projectile might orbit around the target."
      }
      Overrides {
        Name: "cs:HomingDrag:tooltip"
        String: "\"Air drag\" to be used in case homing is enabled."
      }
      Overrides {
        Name: "cs:HomingAcceleration:tooltip"
        String: "Acceleration towards the target, to be used in case homing is enabled."
      }
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "NPC Kit"
}
