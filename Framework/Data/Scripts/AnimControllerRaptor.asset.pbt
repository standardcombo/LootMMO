Assets {
  Id: 9537848603078707653
  Name: "AnimControllerRaptor"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:AnimatedMesh"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Root"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:IdleStance"
        String: "unarmed_idle_ready"
      }
      Overrides {
        Name: "cs:WalkStance"
        String: "unarmed_walk_forward"
      }
      Overrides {
        Name: "cs:RunStance"
        String: "unarmed_run_forward"
      }
      Overrides {
        Name: "cs:AttackAnim_1"
        String: "unarmed_bite"
      }
      Overrides {
        Name: "cs:AttackAnim_2"
        String: "unarmed_claw"
      }
      Overrides {
        Name: "cs:WalkSpeed"
        Int: 5
      }
      Overrides {
        Name: "cs:RunSpeed"
        Int: 350
      }
      Overrides {
        Name: "cs:AnimatedMesh:tooltip"
        String: "Reference to the animated mesh object for this NPC."
      }
      Overrides {
        Name: "cs:Root:tooltip"
        String: "A reference to the root of the template, where most of the NPC\'s custom properties are set."
      }
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "NPC Kit"
}
