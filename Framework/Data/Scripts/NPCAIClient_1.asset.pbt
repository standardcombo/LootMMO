Assets {
  Id: 16526478722992756359
  Name: "NPCAIClient"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Root"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:ForwardNode"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:GeoRoot"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Root:tooltip"
        String: "A reference to the root of the template, where most of the NPC\'s custom properties are set."
      }
      Overrides {
        Name: "cs:ForwardNode:tooltip"
        String: "A Core Object in the client context that indicates the forward/face of the NPC."
      }
      Overrides {
        Name: "cs:GeoRoot:tooltip"
        String: "The group under which is all the artwork for the NPC. At runtime it becomes detached from the whole template to avoid the network jitter and produce smooth movement of the NPC\'s visual parts."
      }
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "NPC Kit"
}
