Name: "Top-Level UI"
RootId: 764194984864902660
Objects {
  Id: 13538073745225936914
  Name: "Reward Toast UI"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  TemplateInstance {
    ParameterOverrideMap {
      key: 10097200626876299952
      value {
        Overrides {
          Name: "Name"
          String: "Reward Toast UI"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -6291.92725
            Y: -3673.86475
            Z: -50441.0938
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 816526729401422220
    }
  }
}
Objects {
  Id: 16660806578145495134
  Name: "EnemyHealthBarTopUI"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 764194984864902660
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7836656182518814459
      value {
        Overrides {
          Name: "Name"
          String: "EnemyHealthBarTopUI"
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
      Id: 6510175741766471704
    }
  }
}
