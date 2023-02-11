Assets {
  Id: 5631192551256795714
  Name: "PickupBobRotateClient"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Target"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:SpawnImpulse"
        Float: 1000
      }
      Overrides {
        Name: "cs:Gravity"
        Float: 2000
      }
      Overrides {
        Name: "cs:BobAmplitude"
        Float: 15
      }
      Overrides {
        Name: "cs:BobFrequency"
        Float: 2
      }
      Overrides {
        Name: "cs:RotationSpeed"
        Float: 100
      }
      Overrides {
        Name: "cs:Target:tooltip"
        String: "The target object to be animated up and down. This should be marked as (client) and not (networked) for the script to work correctly."
      }
      Overrides {
        Name: "cs:SpawnImpulse:tooltip"
        String: "Vertical impulse that begins the physics animation when the object is spawned."
      }
      Overrides {
        Name: "cs:Gravity:tooltip"
        String: "How much gravity to apply over time to the animation."
      }
      Overrides {
        Name: "cs:BobAmplitude:tooltip"
        String: "After the object is resting, the Amplitude is how far the object animates up and down as it oscilates."
      }
      Overrides {
        Name: "cs:BobFrequency:tooltip"
        String: "After the object is resting, the Frequency is how quickly the object animates up and down as it oscilates. Smaller numbers translate to faster movement."
      }
      Overrides {
        Name: "cs:RotationSpeed:tooltip"
        String: "After the object is resting, the Rotation Speed is how quickly it rotates around itself (Z-axis) as it bobs up/down."
      }
    }
  }
  SerializationVersion: 123
}
