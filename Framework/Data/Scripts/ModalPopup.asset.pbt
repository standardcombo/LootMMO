Assets {
  Id: 16035118790854660264
  Name: "ModalPopup"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:MainPanel"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:OutsideButton"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:CloseButton"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:OpenSFX"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:CloseSFX"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:HideSFX"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:FadeColor"
        Color {
          A: 0.5
        }
      }
      Overrides {
        Name: "cs:MoveSpeed"
        Float: 16
      }
      Overrides {
        Name: "cs:OffScreenY"
        Int: 850
      }
      Overrides {
        Name: "cs:ShowCursor"
        Bool: true
      }
      Overrides {
        Name: "cs:MainPanel:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:MainPanel:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:OutsideButton:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:OutsideButton:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:MoveSpeed:tooltip"
        String: "How fast the popup will move in and out of the screen."
      }
      Overrides {
        Name: "cs:OffScreenY:tooltip"
        String: "The position off-screen (vertically)."
      }
      Overrides {
        Name: "cs:FadeColor:tooltip"
        String: "Color of the background layer, behind the popup when the modal appears."
      }
      Overrides {
        Name: "cs:CloseSFX:tooltip"
        String: "Sound to play when the close button, or outside are pressed."
      }
      Overrides {
        Name: "cs:OpenSFX:tooltip"
        String: "Sound to play when the modal appears."
      }
      Overrides {
        Name: "cs:CloseButton:tooltip"
        String: "Reference to the close button [x]."
      }
      Overrides {
        Name: "cs:OutsideButton:tooltip"
        String: "A large button that fills the whole screen behind the popup. This detects clicks outside of the dialog."
      }
      Overrides {
        Name: "cs:MainPanel:tooltip"
        String: "Reference to the main UI Panel that will be animated in/out."
      }
      Overrides {
        Name: "cs:ShowCursor:tooltip"
        String: "If true, the mouse cursor will appear when this popup appears and will disappear when the popup is hidden."
      }
      Overrides {
        Name: "cs:HideSFX:tooltip"
        String: "Sound to play when the modal becomes hidden, regardless of how it became hidden."
      }
    }
  }
  SerializationVersion: 119
}
