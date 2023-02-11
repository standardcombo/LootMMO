Assets {
  Id: 1871653905203352280
  Name: "DropTargetComponentClient"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:ComponentRoot"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:APIInteractionModule"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:SubTarget"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:DropTargetId"
        String: ""
      }
      Overrides {
        Name: "cs:APIInteractionModule:tooltip"
        String: "Must be set to a compatible Input Module"
      }
      Overrides {
        Name: "cs:ComponentRoot:tooltip"
        String: "The Component Root is registered as the target and any interactions will affect it and potentially its children"
      }
      Overrides {
        Name: "cs:SubTarget:tooltip"
        String: "The Sub Target can be used to set a specific Trigger or UIButton to use for interaction events. If left blank the Input Module will find the first appropriate object."
      }
      Overrides {
        Name: "cs:DropTargetId:tooltip"
        String: "An optional string to restrict dropping objects over this one to only objects that have the same Drop target id"
      }
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Interaction System"
  VirtualFolderPath: "Components"
}
