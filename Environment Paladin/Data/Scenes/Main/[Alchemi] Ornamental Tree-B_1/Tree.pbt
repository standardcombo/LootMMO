Name: "[Alchemi] Ornamental Tree-B_1"
RootId: 16979256324099530095
Objects {
  Id: 12012509862549535392
  Name: "Leaves"
  Transform {
    Location {
      X: 1.60134768
      Y: 0.555786133
      Z: 100.943932
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16979256324099530095
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Leaves_1"
  }
  InstanceHistory {
    SelfId: 12012509862549535392
    SubobjectId: 5494182751460595537
    InstanceId: 7910341787544862729
    TemplateId: 6419758834910082452
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2449835260200022160
  Name: "Trunk"
  Transform {
    Location {
      X: -19.2162037
      Y: -6.66955566
    }
    Rotation {
    }
    Scale {
      X: 0.941420317
      Y: 0.864922702
      Z: 1.47891533
    }
  }
  ParentId: 16979256324099530095
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8427773903698338025
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 7.47818422
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 15.4896441
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.92
        B: 0.92
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 9415492167542037299
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 2449835260200022160
    SubobjectId: 14660853105604025697
    InstanceId: 7910341787544862729
    TemplateId: 6419758834910082452
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
