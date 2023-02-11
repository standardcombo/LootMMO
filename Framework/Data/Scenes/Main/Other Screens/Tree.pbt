Name: "Other Screens"
RootId: 16937607096047638534
Objects {
  Id: 17902194835412958227
  Name: "Class, Abilities, Inventory & Shop"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16937607096047638534
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1443334462669537307
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 3861733644666963167
      value {
        Overrides {
          Name: "Height"
          Int: 172
        }
        Overrides {
          Name: "Label"
          String: "Missing Ability Description: \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare nunc ac libero rhoncus egestas. Maecenas semper posuere lectus, vitae egestas turpis aliquet ut. Quisque fringilla scelerisque pharetra. Mauris ac molestie mauris, at accumsan libero."
        }
      }
    }
    ParameterOverrideMap {
      key: 8067326117451680903
      value {
        Overrides {
          Name: "Name"
          String: "Class, Abilities, Inventory & Shop"
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 8745204039648026304
      value {
        Overrides {
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topcenter"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:bottomcenter"
          }
        }
        Overrides {
          Name: "UIAddSelfSizeToInheritedSize"
          Bool: true
        }
        Overrides {
          Name: "Width"
          Int: -200
        }
      }
    }
    TemplateAsset {
      Id: 15017071524491817913
    }
  }
}
Objects {
  Id: 17732797197477866073
  Name: "ServerContext"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16937607096047638534
  ChildIds: 14258563675719013355
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  NetworkContext {
    Type: Server
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14258563675719013355
  Name: "Class_Select_Server"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17732797197477866073
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 10103064316001271897
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7381221756579241431
  Name: "Character Select Screen"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16937607096047638534
  TemplateInstance {
    ParameterOverrideMap {
      key: 12879506879962929374
      value {
        Overrides {
          Name: "Name"
          String: "Character Select Screen"
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 11500783014495285293
    }
  }
}
