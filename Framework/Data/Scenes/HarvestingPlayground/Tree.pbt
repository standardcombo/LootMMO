Name: "Root"
RootId: 4781671109827199097
Objects {
  Id: 4781671109827199097
  Name: "Root"
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
  ChildIds: 9086936746104183945
  ChildIds: 16813558807825262224
  ChildIds: 10005074784157121906
  ChildIds: 14982843161775482339
  ChildIds: 6687243479689433930
  ChildIds: 11717113739800138726
  ChildIds: 1882642578214012306
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1882642578214012306
  Name: "testnodes"
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
  ParentId: 4781671109827199097
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11717113739800138726
  Name: "HarvestingSystem"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  ChildIds: 16824571392837779174
  ChildIds: 11031086880332864695
  ChildIds: 16436247575342307599
  UnregisteredParameters {
    Overrides {
      Name: "cs:NODES"
      ObjectReference {
        SelfId: 16436247575342307599
      }
    }
    Overrides {
      Name: "cs:API_HarvestingSystem"
      AssetReference {
        Id: 10330204589680347581
      }
    }
    Overrides {
      Name: "cs:HarvestingNodes"
      AssetReference {
        Id: 5382877410966996753
      }
    }
    Overrides {
      Name: "cs:HarvestingTools"
      AssetReference {
        Id: 5490973462993262132
      }
    }
    Overrides {
      Name: "cs:InitNodesSpawnedPerCent"
      Int: 50
    }
    Overrides {
      Name: "cs:InitSpawnEvenByType"
      Bool: true
    }
    Overrides {
      Name: "cs:RespawnNodesInterval"
      Vector2 {
        X: 5
        Y: 15
      }
    }
    Overrides {
      Name: "cs:RespawnByTypeOnly"
      Bool: true
    }
    Overrides {
      Name: "cs:RemovePartiallyMinedNodesAfter"
      Int: 10
    }
    Overrides {
      Name: "cs:SpawnOnlyFullNodes"
      Bool: true
    }
    Overrides {
      Name: "cs:RespawnByTypeOnly:tooltip"
      String: "If true, the mined node will be replaced by the same type. This has precedense prior the RespawnNodes"
    }
    Overrides {
      Name: "cs:InitNodesSpawnedPerCent:tooltip"
      String: "How many nodes in the world will spawn populated, per cent value of all nodes."
    }
    Overrides {
      Name: "cs:InitSpawnEvenByType:tooltip"
      String: "If true, the initial node spawning will be per type. If false, the nodes will be populated at random."
    }
    Overrides {
      Name: "cs:RemovePartiallyMinedNodesAfter:tooltip"
      String: "timeout in seconds after the at least once mined node will be destroyed and sent to respawn handler. Set to 0 to keep partially mined nodes without reset."
    }
    Overrides {
      Name: "cs:SpawnOnlyFullNodes:tooltip"
      String: "If false, the newly spawned nodes do have random richness <1,maxAllowedForNode>. If false, nodes do always spawn with max richness."
    }
    Overrides {
      Name: "cs:NODES:category"
      String: "InnerVars"
    }
    Overrides {
      Name: "cs:API_HarvestingSystem:category"
      String: "InnerVars"
    }
    Overrides {
      Name: "cs:HarvestingNodes:category"
      String: "InnerVars"
    }
    Overrides {
      Name: "cs:HarvestingTools:category"
      String: "InnerVars"
    }
    Overrides {
      Name: "cs:RespawnNodesInterval:tooltip"
      String: "min max time in seconds when a node will respawn after being mined. set to <0,0> to disable respawning."
    }
  }
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 11717113739800138726
    SubobjectId: 7850202630071972824
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16436247575342307599
  Name: "NODES"
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
  ParentId: 11717113739800138726
  ChildIds: 10543776999897222165
  ChildIds: 7362614949103988672
  ChildIds: 11661932222438382807
  ChildIds: 18208474069312877951
  ChildIds: 15052382228760106507
  ChildIds: 7707941086991563152
  ChildIds: 17115095255672256727
  ChildIds: 12487331075790438653
  ChildIds: 7025661055493370247
  ChildIds: 7156862630332904504
  ChildIds: 12008125951448864371
  ChildIds: 6857549076725287050
  ChildIds: 1138599536678341877
  ChildIds: 8246750018855989896
  ChildIds: 13968508578549765202
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 16436247575342307599
    SubobjectId: 3058860559211657521
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13968508578549765202
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 0.842530608
      Y: 0.842530608
      Z: 0.842530608
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 10735264763254810291
      value {
        Overrides {
          Name: "Name"
          String: "Node_BirchTree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1039.6958
            Y: -1365.62256
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -103.681206
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 8246750018855989896
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 1.1902585
      Y: 1.1902585
      Z: 1.1902585
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 10735264763254810291
      value {
        Overrides {
          Name: "Name"
          String: "Node_BirchTree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1476.60364
            Y: -1294.92859
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 3.6585629
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 1138599536678341877
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 0.984221935
      Y: 0.984221935
      Z: 0.984221935
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 10735264763254810291
      value {
        Overrides {
          Name: "Name"
          String: "Node_BirchTree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 2159.6123
            Y: -1504.15833
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 110.646652
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 6857549076725287050
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 0.945878506
      Y: 0.945878506
      Z: 0.945878506
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 10735264763254810291
      value {
        Overrides {
          Name: "Name"
          String: "Node_BirchTree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1740.85217
            Y: -2027.08801
            Z: 0.000267028809
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 49.6817093
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 12008125951448864371
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 1.19976807
      Y: 1.19976807
      Z: 1.19976807
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 10735264763254810291
      value {
        Overrides {
          Name: "Name"
          String: "Node_BirchTree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1225.82532
            Y: -2081.10962
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -23.8739491
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 7156862630332904504
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 0.858632207
      Y: 0.858632207
      Z: 0.858632207
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 10735264763254810291
      value {
        Overrides {
          Name: "Name"
          String: "Node_BirchTree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 622.136169
            Y: -1715.42261
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -47.4732819
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 7025661055493370247
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 1.19418931
      Y: 1.19418931
      Z: 1.19418931
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 10735264763254810291
      value {
        Overrides {
          Name: "Name"
          String: "Node_BirchTree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 353.826599
            Y: -2290.15161
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 56.4383965
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 12487331075790438653
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 0.804883
      Y: 0.804883
      Z: 0.804883
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 10735264763254810291
      value {
        Overrides {
          Name: "Name"
          String: "Node_BirchTree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1749.90601
            Y: -757.24585
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 147.649673
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 17115095255672256727
  Name: "Node_Coal"
  Transform {
    Scale {
      X: 0.947550893
      Y: 0.947550893
      Z: 0.947550893
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 17706867916820843333
      value {
        Overrides {
          Name: "Name"
          String: "Node_Coal"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -127.853264
            Y: -172.225647
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -64.8323669
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
      Id: 5634713177964474569
    }
  }
}
Objects {
  Id: 7707941086991563152
  Name: "Node_Coal"
  Transform {
    Scale {
      X: 1.16197395
      Y: 1.16197395
      Z: 1.16197395
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 17706867916820843333
      value {
        Overrides {
          Name: "Name"
          String: "Node_Coal"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -1347.48743
            Y: 40.1836586
            Z: 2.28881836e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -125.072189
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
      Id: 5634713177964474569
    }
  }
}
Objects {
  Id: 15052382228760106507
  Name: "Node_Coal"
  Transform {
    Scale {
      X: 0.825428
      Y: 0.825428
      Z: 0.825428
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 17706867916820843333
      value {
        Overrides {
          Name: "Name"
          String: "Node_Coal"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -41.6326294
            Y: -602.324768
            Z: 128.101395
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -24.0664368
            Yaw: 27.4058952
            Roll: -3.32887864
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
      Id: 5634713177964474569
    }
  }
}
Objects {
  Id: 18208474069312877951
  Name: "Node_Coal"
  Transform {
    Scale {
      X: 0.974370599
      Y: 0.974370599
      Z: 0.974370599
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 17706867916820843333
      value {
        Overrides {
          Name: "Name"
          String: "Node_Coal"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -788.369934
            Y: -111.872986
            Z: 52.795475
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -34.2108498
            Yaw: 91.2772217
            Roll: -17.4117966
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
      Id: 5634713177964474569
    }
  }
}
Objects {
  Id: 11661932222438382807
  Name: "Node_IronVein"
  Transform {
    Scale {
      X: 1.11131322
      Y: 1.11131322
      Z: 1.11131322
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 17706867916820843333
      value {
        Overrides {
          Name: "Name"
          String: "Node_IronVein"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -399.973297
            Y: -942.860352
            Z: 279.741547
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 7.15815401
            Yaw: -32.1705551
            Roll: 3.19095397
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
      Id: 9888337940943011348
    }
  }
}
Objects {
  Id: 7362614949103988672
  Name: "Node_IronVein"
  Transform {
    Scale {
      X: 1.11752677
      Y: 1.11752677
      Z: 1.11752677
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 17706867916820843333
      value {
        Overrides {
          Name: "Name"
          String: "Node_IronVein"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -1344.74
            Y: -392.68103
            Z: 150.458954
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 1.38151503
            Yaw: 68.5711823
            Roll: 23.6615334
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
      Id: 9888337940943011348
    }
  }
}
Objects {
  Id: 10543776999897222165
  Name: "Node_IronVein"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16436247575342307599
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 17706867916820843333
      value {
        Overrides {
          Name: "Name"
          String: "Node_IronVein"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -896.273132
            Y: -1102.0459
            Z: 105.990807
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -10.0689888
            Yaw: 129.883041
            Roll: 29.3229504
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
      Id: 9888337940943011348
    }
  }
}
Objects {
  Id: 11031086880332864695
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
  ParentId: 11717113739800138726
  ChildIds: 3951470009787439323
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
  InstanceHistory {
    SelfId: 11031086880332864695
    SubobjectId: 6303986680589352073
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3951470009787439323
  Name: "HarvestingSystem_Server"
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
  ParentId: 11031086880332864695
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
      Id: 10506754159465741130
    }
  }
  InstanceHistory {
    SelfId: 3951470009787439323
    SubobjectId: 17923333001343236325
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16824571392837779174
  Name: "ClientContext"
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
  ParentId: 11717113739800138726
  ChildIds: 9534852705399491510
  ChildIds: 7068714377157401072
  ChildIds: 11280111225869099925
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  NetworkContext {
    MinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
    IsAllowedForPC: true
    IsAllowedForMobile: true
    IsAllowedForLowMemoryMobile: true
    PCMinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    PCMaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
    MobileMinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MobileMaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
  }
  InstanceHistory {
    SelfId: 16824571392837779174
    SubobjectId: 2816697983493431000
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11280111225869099925
  Name: "HarvestingSystem_ReadMe"
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
  ParentId: 16824571392837779174
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
      Id: 2827277044402293060
    }
  }
  InstanceHistory {
    SelfId: 11280111225869099925
    SubobjectId: 5972063427784786859
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7068714377157401072
  Name: "UI Container"
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
  ParentId: 16824571392837779174
  ChildIds: 15640135615803179142
  ChildIds: 17462997620930657643
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
      IsHUD: true
      CanvasWorldSize {
        X: 1024
        Y: 1024
      }
      RedrawTime: 30
      UseSafeZoneAdjustment: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 7068714377157401072
    SubobjectId: 12426301261115947470
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17462997620930657643
  Name: "HarvestingProgressionPanel"
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
  ParentId: 7068714377157401072
  ChildIds: 3993031295049783395
  ChildIds: 3545294881414372721
  ChildIds: 16951164758522023438
  UnregisteredParameters {
    Overrides {
      Name: "cs:HarvestingNow"
      ObjectReference {
        SelfId: 3545294881414372721
      }
    }
    Overrides {
      Name: "cs:UI Progress Bar"
      ObjectReference {
        SelfId: 16951164758522023438
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 210
    Height: 60
    UIX: 100
    UIY: 50
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 841534158063459245
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 17462997620930657643
    SubobjectId: 4337827078867262805
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16951164758522023438
  Name: "UI Progress Bar"
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
  ParentId: 17462997620930657643
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
  Control {
    Width: -8
    Height: 5
    UIY: -2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    StatBar {
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      BackgroundColor {
        R: 0.02
        G: 0.02
        B: 0.02
        A: 0.8
      }
      Percent: 0.375002861
      FillBrush {
        Id: 841534158063459245
      }
      BackgroundBrush {
        Id: 841534158063459245
      }
      FillType {
        Value: "mc:eprogressbarfilltype:lefttoright"
      }
      FillTileType {
        Value: "mc:eslatebrushtiletype:notile"
      }
      BackgroundTileType {
        Value: "mc:eslatebrushtiletype:notile"
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16951164758522023438
    SubobjectId: 2689963888374935088
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3545294881414372721
  Name: "HarvestingNow"
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
  ParentId: 17462997620930657643
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
  Control {
    Width: -20
    Height: 40
    UIY: -5
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Label: "SHORT"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:bottom"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3545294881414372721
    SubobjectId: 18399847187548929359
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3993031295049783395
  Name: "UI Image"
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
  ParentId: 17462997620930657643
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
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        A: 0.4
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 3993031295049783395
    SubobjectId: 17942360296208332893
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15640135615803179142
  Name: "HarvestingInteractionPanel"
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
  ParentId: 7068714377157401072
  ChildIds: 5086281564162747235
  ChildIds: 9521731039009986691
  ChildIds: 14468028034368088323
  UnregisteredParameters {
    Overrides {
      Name: "cs:HarvestNodeLabel"
      ObjectReference {
        SelfId: 14468028034368088323
      }
    }
    Overrides {
      Name: "cs:HarvestNodeHotkey"
      ObjectReference {
        SelfId: 9521731039009986691
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 210
    Height: 60
    UIX: 100
    UIY: 50
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 841534158063459245
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15640135615803179142
    SubobjectId: 1686286987294040248
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14468028034368088323
  Name: "HarvestNodeLabel"
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
  ParentId: 15640135615803179142
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
  Control {
    Width: -65
    UIX: -15
    UIY: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    UseParentHeight: true
    Text {
      Label: "Harvest node here"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14468028034368088323
    SubobjectId: 478168507041909053
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9521731039009986691
  Name: "HarvestNodeHotkey"
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
  ParentId: 15640135615803179142
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
  Control {
    Width: 40
    Height: 60
    UIX: 10
    UIY: 2
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "[F]"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
      }
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
        X: 2
        Y: 2
      }
      OutlineColor {
        A: 1
      }
      OutlineSize: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middleleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middleleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9521731039009986691
    SubobjectId: 5353076265335421117
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5086281564162747235
  Name: "UI Image"
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
  ParentId: 15640135615803179142
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
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 13835327457650939377
      }
      Color {
        A: 0.4
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 5086281564162747235
    SubobjectId: 9870785702615960413
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9534852705399491510
  Name: "HarvestingSystem_Client"
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
  ParentId: 16824571392837779174
  UnregisteredParameters {
  }
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
      Id: 11638447669813120456
    }
  }
  InstanceHistory {
    SelfId: 9534852705399491510
    SubobjectId: 5348186642771766152
    InstanceId: 16277170407346932078
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6687243479689433930
  Name: "Hill 02"
  Transform {
    Location {
      X: -757.663574
      Y: -797.715515
      Z: 6.10351562e-05
    }
    Rotation {
    }
    Scale {
      X: 3.34565306
      Y: 3.34565306
      Z: 3.34565306
    }
  }
  ParentId: 4781671109827199097
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
  CoreMesh {
    MeshAsset {
      Id: 14270419193600238466
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14982843161775482339
  Name: "Default Floor"
  Transform {
    Location {
      Z: -50
    }
    Rotation {
    }
    Scale {
      X: 50
      Y: 50
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10005074784157121906
  Name: "Default Sky"
  Transform {
    Location {
      Z: 700
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  ChildIds: 13551641546322277000
  ChildIds: 7155168770677928712
  ChildIds: 10505154200474359396
  UnregisteredParameters {
  }
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
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10505154200474359396
  Name: "Sun Light"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -45.8452454
      Yaw: 33.9371338
      Roll: 8.92731857
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10005074784157121906
  UnregisteredParameters {
    Overrides {
      Name: "bp:Use Temperature"
      Bool: false
    }
    Overrides {
      Name: "bp:Light Color"
      Color {
        R: 1
        G: 0.955973327
        B: 0.73791039
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shape"
      Int: 1
    }
    Overrides {
      Name: "bp:Size"
      Float: 5
    }
    Overrides {
      Name: "bp:Light Shaft Bloom"
      Bool: true
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: false
    }
    Overrides {
      Name: "bp:Light Shaft Mask Darkness"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 3.5
    }
    Overrides {
      Name: "bp:Sun Disc Color"
      Color {
        R: 3
        G: 3
        B: 3
        A: 1
      }
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Scale"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Threshold"
      Float: 0.05
    }
    Overrides {
      Name: "bp:Light Shaft Occlusion"
      Bool: true
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Tint"
      Color {
        R: 1
        G: 0.998476863
        B: 0.77
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 16910278292812118833
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7155168770677928712
  Name: "Skylight"
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
  ParentId: 10005074784157121906
  UnregisteredParameters {
    Overrides {
      Name: "bp:Index"
      Int: 3
    }
    Overrides {
      Name: "bp:Occlusion Contrast"
      Float: 0
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 3
    }
    Overrides {
      Name: "bp:Lower Hemisphere Color"
      Color {
        R: 0.0666259378
        G: 0.0307134502
        A: 1
      }
    }
    Overrides {
      Name: "bp:Occlusion Tint"
      Color {
        R: 0.0274509825
        G: 0.0274509825
        B: 0.0392156877
        A: 1
      }
    }
    Overrides {
      Name: "bp:Occlusion Exponent"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: false
    }
    Overrides {
      Name: "bp:Tint Color"
      Color {
        R: 0.502886474
        G: 0.48514995
        B: 0.752942204
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 11515840070784317904
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13551641546322277000
  Name: "Sky Dome"
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
  ParentId: 10005074784157121906
  UnregisteredParameters {
    Overrides {
      Name: "bp:Zenith Color"
      Color {
        R: 0.0243181027
        G: 0.0633459464
        B: 0.212230757
        A: 0.886000037
      }
    }
    Overrides {
      Name: "bp:Horizon Color"
      Color {
        R: 0.489468127
        G: 0.480969489
        B: 0.623960376
        A: 0.895000041
      }
    }
    Overrides {
      Name: "bp:Haze Color"
      Color {
        R: 0.590618849
        G: 0.590618849
        B: 0.701101899
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Sun Color for Cloud Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Cloud Ambient Brightness"
      Float: 3
    }
    Overrides {
      Name: "bp:Cloud Rim Brightness"
      Float: 50
    }
    Overrides {
      Name: "bp:Cloud Opacity"
      Float: 0
    }
    Overrides {
      Name: "bp:Cloud Ambient Color"
      Color {
        R: 2
        G: 2
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Color"
      Color {
        R: 2
        G: 2
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Shape"
      Int: 4
    }
    Overrides {
      Name: "bp:Cloud Lighting Brightness"
      Float: 1
    }
    Overrides {
      Name: "bp:Cloud Wisp Opacity"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Cloud Speed"
      Float: 1
    }
    Overrides {
      Name: "bp:Brightness"
      Float: 1
    }
    Overrides {
      Name: "bp:Background Clouds"
      Bool: true
    }
    Overrides {
      Name: "bp:High Cloud Index"
      Int: 2
    }
    Overrides {
      Name: "bp:High Cloud Opacity"
      Float: 0
    }
    Overrides {
      Name: "bp:High Cloud Noise Amount"
      Float: 0.1
    }
    Overrides {
      Name: "bp:High Cloud Noise Scale"
      Float: 0.2
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 7887238662729938253
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16813558807825262224
  Name: "Spawn Point"
  Transform {
    Location {
      X: -784.097595
      Y: -590.688782
      Z: 334.220459
    }
    Rotation {
      Yaw: -113.950165
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  UnregisteredParameters {
  }
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
    Value: "mc:eindicatorvisibility:alwaysvisible"
  }
  PlayerSpawnPoint {
    TeamInt: 1
    PlayerScaleMultiplier: 1
    SpawnEffectsTemplate {
      Id: 841534158063459245
    }
    ShouldDecrowdPlayers: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9086936746104183945
  Name: "Gameplay Settings"
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
  ParentId: 4781671109827199097
  UnregisteredParameters {
  }
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Gameplay Settings"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
