Name: "Other Screens"
RootId: 16194698060440896494
Objects {
  Id: 7986997683593335347
  Name: "Class, Abilities, Inventory & Shop"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16194698060440896494
  TemplateInstance {
    ParameterOverrideMap {
      key: 8067326117451680903
      value {
        Overrides {
          Name: "Name"
          String: "Class, Abilities, Inventory & Shop"
        }
      }
    }
    TemplateAsset {
      Id: 15017071524491817913
    }
  }
}
Objects {
  Id: 11666290505603236137
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
  ParentId: 16194698060440896494
  ChildIds: 13960186669809585767
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
  Id: 13960186669809585767
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
  ParentId: 11666290505603236137
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
  Id: 1074799061569388025
  Name: "Character Select Screen"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16194698060440896494
  TemplateInstance {
    ParameterOverrideMap {
      key: 12879506879962929374
      value {
        Overrides {
          Name: "Name"
          String: "Character Select Screen"
        }
      }
    }
    TemplateAsset {
      Id: 11500783014495285293
    }
  }
}
