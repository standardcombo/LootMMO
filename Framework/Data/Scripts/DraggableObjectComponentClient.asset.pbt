Assets {
  Id: 5098061186514063462
  Name: "DraggableObjectComponentClient"
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
        Name: "cs:PressBinding"
        String: "ability_primary"
      }
      Overrides {
        Name: "cs:DragData"
        String: ""
      }
      Overrides {
        Name: "cs:DropTargetIds"
        String: ""
      }
      Overrides {
        Name: "cs:ResetOnDrop"
        Bool: false
      }
      Overrides {
        Name: "cs:SnapToInput"
        Bool: false
      }
      Overrides {
        Name: "cs:SnapOffset"
        Vector {
        }
      }
      Overrides {
        Name: "cs:ComponentRoot:tooltip"
        String: "The Component Root is registered as the target and any interactions will affect it and potentially its children"
      }
      Overrides {
        Name: "cs:APIInteractionModule:tooltip"
        String: "Must be set to a compatible Input Module"
      }
      Overrides {
        Name: "cs:SubTarget:tooltip"
        String: "The Sub Target can be used to set a specific Trigger or UIButton to use for interaction events. If left blank the Input Module will find the first appropriate object."
      }
      Overrides {
        Name: "cs:PressBinding:tooltip"
        String: "The binding to use for press interactions"
      }
      Overrides {
        Name: "cs:DragData:tooltip"
        String: "An optional string to send to Drop targets. You can also use the API to set more complex data for this event."
      }
      Overrides {
        Name: "cs:DropTargetIds:tooltip"
        String: "An optional comma separated string to use to restrict dropping to specific Drop Targets"
      }
      Overrides {
        Name: "cs:ResetOnDrop:tooltip"
        String: "If true the dragged object will reset to its original position when the drag ends"
      }
      Overrides {
        Name: "cs:SnapToInput:tooltip"
        String: "If true the dragged object or proxy will center its anchor or pivot onto the input"
      }
      Overrides {
        Name: "cs:SnapOffset:tooltip"
        String: "The object will follow the input with this offset while being dragged"
      }
    }
  }
  SerializationVersion: 120
  VirtualFolderPath: "Interaction System"
  VirtualFolderPath: "Components"
}
