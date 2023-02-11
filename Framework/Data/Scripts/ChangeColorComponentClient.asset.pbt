Assets {
  Id: 13796540155003565193
  Name: "ChangeColorComponentClient"
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
        Name: "cs:ObjectsToColor"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:DefaultColor"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "cs:HoveredColor"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "cs:DraggedColor"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "cs:DraggedOverColor"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "cs:PressedColor"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "cs:SelectedColor"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "cs:PressBinding"
        String: "ability_primary"
      }
      Overrides {
        Name: "cs:ObjectsToColor:tooltip"
        String: "An optional single object or group of objects to apply color changes to. Defaults to the Component Root"
      }
      Overrides {
        Name: "cs:DefaultColor:tooltip"
        String: "The color when no input is occuring"
      }
      Overrides {
        Name: "cs:HoveredColor:tooltip"
        String: "The color when this object is in a hovered state"
      }
      Overrides {
        Name: "cs:PressedColor:tooltip"
        String: "The color when this object is in a pressed state"
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
        Name: "cs:PressBinding:tooltip"
        String: "The binding to use for press interactions"
      }
      Overrides {
        Name: "cs:SubTarget:tooltip"
        String: "The Sub Target can be used to set a specific Trigger or UIButton to use for interaction events. If left blank the Input Module will find the first appropriate object."
      }
      Overrides {
        Name: "cs:DraggedColor:tooltip"
        String: "The color when this object is being dragged"
      }
      Overrides {
        Name: "cs:DraggedOverColor:tooltip"
        String: "The color when another object is being dragged over this object (If this is a valid Drop Target)"
      }
      Overrides {
        Name: "cs:SelectedColor:tooltip"
        String: "The color when this object is in a selected state"
      }
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Interaction System"
  VirtualFolderPath: "Components"
}
