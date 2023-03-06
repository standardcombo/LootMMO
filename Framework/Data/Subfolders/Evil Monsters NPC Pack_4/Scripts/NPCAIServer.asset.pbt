Assets {
  Id: 445894117804811401
  Name: "NPCAIServer"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:ModuleManager"
        AssetReference {
          Id: 12017748036332778670
        }
      }
      Overrides {
        Name: "cs:NPCManager"
        AssetReference {
          Id: 13381147647707220155
        }
      }
      Overrides {
        Name: "cs:Root"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:RotationRoot"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Collider"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Trigger"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:AttackComponent"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:HomingTarget"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:EngageEffect"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:NPCManager:tooltip"
        String: "Reference to the NPC Manager allows the NPC to register itself into the system."
      }
      Overrides {
        Name: "cs:Root:tooltip"
        String: "A reference to the root of the template, where most of the NPC\'s custom properties are set."
      }
      Overrides {
        Name: "cs:RotationRoot:tooltip"
        String: "Group to rotate towards the target enemy or movement direction. Often this is the same as the template root, but not necessarily (e.g. A tower is stationary, but an internal part may be the rotation root)"
      }
      Overrides {
        Name: "cs:Collider:tooltip"
        String: "Reference to the NPC\'s collider static mesh. This is the object that will be impacted by enemy weapons. It\'s usually invisible, with collision enabled."
      }
      Overrides {
        Name: "cs:Trigger:tooltip"
        String: "Reference to the NPC\'s avoidance trigger. This trigger detects other objects and helps keep the NPC from walking through other NPCs, giving them some basic flock behavior."
      }
      Overrides {
        Name: "cs:AttackComponent:tooltip"
        String: "Reference to the NPC\'s attack script. The separation between the NPCAI and NPCAttack scripts allows for a greater variety of NPC\'s with different types of attack."
      }
    }
  }
  SerializationVersion: 125
}
