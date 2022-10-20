Name: "[Alchemi] Ornamental Tree-B"
RootId: 16545840947138223988
Objects {
  Id: 6314571222261773016
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
  ParentId: 16545840947138223988
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
    FilePartitionName: "Leaves"
  }
  InstanceHistory {
    SelfId: 6314571222261773016
    SubobjectId: 13631161438571994921
    InstanceId: 7910341787544862729
    TemplateId: 6419758834910082452
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12931625395355747997
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
  ParentId: 16545840947138223988
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
        R: 0.234375
        G: 0.193166718
        B: 0.0463867225
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
    SelfId: 12931625395355747997
    SubobjectId: 6484089179421453164
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
