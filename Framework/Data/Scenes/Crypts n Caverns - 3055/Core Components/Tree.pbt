Name: "Core Components"
RootId: 811073393120329763
Objects {
  Id: 12894063371806119284
  Name: "Dungeon Environmentals v2"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 811073393120329763
  TemplateInstance {
    ParameterOverrideMap {
      key: 4117456179752281557
      value {
        Overrides {
          Name: "Name"
          String: "Dungeon Environmentals v2"
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
      Id: 12438803575706966398
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 906514993770763386
  Name: "Health Bar"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 811073393120329763
  TemplateInstance {
    ParameterOverrideMap {
      key: 1675656989204002660
      value {
        Overrides {
          Name: "Name"
          String: "Health Bar"
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
    ParameterOverrideMap {
      key: 5873430187788484635
      value {
        Overrides {
          Name: "UIInheritParentWidth"
          Bool: true
        }
        Overrides {
          Name: "Percent"
          Float: 0
        }
        Overrides {
          Name: "Color"
          Color {
            R: 0.786
            G: 3.74794e-07
            A: 1
          }
        }
        Overrides {
          Name: "Height"
          Int: 18
        }
        Overrides {
          Name: "BackgroundColor"
          Color {
            A: 0.287
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15119469979375604568
      value {
        Overrides {
          Name: "Label"
          String: "Health"
        }
        Overrides {
          Name: "Font"
          AssetReference {
            Id: 3117909305006239208
          }
        }
        Overrides {
          Name: "VerticalJustification"
          Enum {
            Value: "mc:everticaljustification:center"
          }
        }
        Overrides {
          Name: "ClipTextToSize"
          Bool: false
        }
        Overrides {
          Name: "OutlineColor"
          Color {
            A: 0.98300004
          }
        }
        Overrides {
          Name: "OutlineSize"
          Int: 3
        }
        Overrides {
          Name: "Size"
          Int: 18
        }
        Overrides {
          Name: "UIY"
          Float: 20.998806
        }
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 18281836076880200646
      value {
        Overrides {
          Name: "Width"
          Int: 766
        }
      }
    }
    TemplateAsset {
      Id: 3202893177501451828
    }
  }
  IsReplicationEnabledByDefault: true
}
