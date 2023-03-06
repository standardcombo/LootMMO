Assets {
  Id: 1811470417276014342
  Name: "BroadcastEventComponentClient"
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
        Name: "cs:EventName"
        String: ""
      }
      Overrides {
        Name: "cs:EventData"
        String: ""
      }
      Overrides {
        Name: "cs:BroadcastToServer"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnBeginHover"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnEndHover"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnBeginPress"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnEndPress"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnBeginDragOver"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnEndDragOver"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnBeginDrag"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnEndDrag"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnDropped"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnSelected"
        Bool: false
      }
      Overrides {
        Name: "cs:BroadcastOnDeselected"
        Bool: false
      }
      Overrides {
        Name: "cs:APIReliableEvents"
        AssetReference {
          Id: 3250974370878480081
        }
      }
      Overrides {
        Name: "cs:PressBinding:tooltip"
        String: "The binding to use for press interactions"
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
        Name: "cs:EventName:tooltip"
        String: "The event name to broadcast"
      }
      Overrides {
        Name: "cs:BroadcastOnBeginHover:tooltip"
        String: "If true will broadcast the event when a hover begins"
      }
      Overrides {
        Name: "cs:EventData:tooltip"
        String: "An optional string to send with the event. You can also use the API to set more complex data for this event."
      }
      Overrides {
        Name: "cs:BroadcastToServer:tooltip"
        String: "If true the event will be broadcast to the server instead of locally"
      }
      Overrides {
        Name: "cs:BroadcastOnEndHover:tooltip"
        String: "If true will broadcast the event when a hover ends"
      }
      Overrides {
        Name: "cs:BroadcastOnBeginPress:tooltip"
        String: "If true will broadcast the event when a press  begins"
      }
      Overrides {
        Name: "cs:BroadcastOnEndPress:tooltip"
        String: "If true will broadcast the event when a press ends"
      }
      Overrides {
        Name: "cs:BroadcastOnBeginDragOver:tooltip"
        String: "If true will broadcast the event when an object is dragged over this (This must be a Drop target)"
      }
      Overrides {
        Name: "cs:BroadcastOnEndDragOver:tooltip"
        String: "If true will broadcast the event when an object is dragged away from this (This must be a Drop target)"
      }
      Overrides {
        Name: "cs:BroadcastOnBeginDrag:tooltip"
        String: "If true will broadcast the event when a drag  begins"
      }
      Overrides {
        Name: "cs:BroadcastOnEndDrag:tooltip"
        String: "If true will broadcast the event when a drag ends"
      }
      Overrides {
        Name: "cs:BroadcastOnSelected:tooltip"
        String: "If true will broadcast the event when this object is selected"
      }
      Overrides {
        Name: "cs:BroadcastOnDeselected:tooltip"
        String: "If true will broadcast the event when this object is deselected"
      }
      Overrides {
        Name: "cs:BroadcastOnDropped:tooltip"
        String: "If true will broadcast the event when this object is dropped"
      }
      Overrides {
        Name: "cs:SubTarget:tooltip"
        String: "The Sub Target can be used to set a specific Trigger or UIButton to use for interaction events. If left blank the Input Module will find the first appropriate object."
      }
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Interaction System"
  VirtualFolderPath: "Components"
}
