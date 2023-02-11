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
      key: 818846036172377395
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 2764905514123890102
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 1906330821133065852
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 2764905514123890102
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 4701203326673532013
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 2764905514123890102
          }
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
      key: 9419591027367816534
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 2764905514123890102
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 11076679475220455610
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 2764905514123890102
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 14204967939976225582
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 2764905514123890102
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15446451858021390363
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 2764905514123890102
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 17975137821765129122
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 2764905514123890102
          }
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
