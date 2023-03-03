Name: "Other Components"
RootId: 12785624939370825655
Objects {
  Id: 15977102234834599673
  Name: "Generic Sounds Library"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 17810628279987388495
      value {
        Overrides {
          Name: "Name"
          String: "Generic Sounds Library"
        }
      }
    }
    TemplateAsset {
      Id: 13225073513533744256
    }
  }
  InstanceHistory {
    SelfId: 15977102234834599673
    SubobjectId: 6971558339717546766
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 16029690256237857697
  Name: "PlayerDamagerOverride"
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
  ParentId: 12785624939370825655
  ChildIds: 4972992676861111562
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
    SelfId: 16029690256237857697
    SubobjectId: 5825506913699031339
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4972992676861111562
  Name: "PlayerDamageOverride"
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
  ParentId: 16029690256237857697
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
      Id: 4188743870964439278
    }
  }
  InstanceHistory {
    SelfId: 4972992676861111562
    SubobjectId: 14676988788046630784
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8867511516048588561
  Name: "Potion Auto Equip"
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
  ParentId: 12785624939370825655
  ChildIds: 201798111709338680
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
    SelfId: 8867511516048588561
    SubobjectId: 17699998976495263131
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 201798111709338680
  Name: "PotionAutoEquip"
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
  ParentId: 8867511516048588561
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
      Id: 14326098358875983326
    }
  }
  InstanceHistory {
    SelfId: 201798111709338680
    SubobjectId: 10115176741975785138
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1060440941013075211
  Name: "PotionSelect"
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
  ParentId: 12785624939370825655
  ChildIds: 1724885150399282586
  ChildIds: 5876789678194568042
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
    SelfId: 1060440941013075211
    SubobjectId: 9231196837641742209
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5876789678194568042
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
  ParentId: 1060440941013075211
  ChildIds: 8836721131916441626
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
    SelfId: 5876789678194568042
    SubobjectId: 16078467379125668320
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8836721131916441626
  Name: "Potion_Select_Client"
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
  ParentId: 5876789678194568042
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
      Id: 9580703737437746580
    }
  }
  InstanceHistory {
    SelfId: 8836721131916441626
    SubobjectId: 17586251960063154832
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1724885150399282586
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
  ParentId: 1060440941013075211
  ChildIds: 11728963603379621841
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
    SelfId: 1724885150399282586
    SubobjectId: 11050909966513790736
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11728963603379621841
  Name: "Potion_Select_Serve"
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
  ParentId: 1724885150399282586
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
      Id: 3456618091225098536
    }
  }
  InstanceHistory {
    SelfId: 11728963603379621841
    SubobjectId: 3200119481270037851
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5806465597144932493
  Name: "Character AutoSave"
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
  ParentId: 12785624939370825655
  ChildIds: 17247138500301710676
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
    SelfId: 5806465597144932493
    SubobjectId: 16012557571510256135
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17247138500301710676
  Name: "Character_AutoSave"
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
  ParentId: 5806465597144932493
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
      Id: 4869393409251262569
    }
  }
  InstanceHistory {
    SelfId: 17247138500301710676
    SubobjectId: 7058997560424761310
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15576014623177363701
  Name: "EquipmentEquipper"
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
  ParentId: 12785624939370825655
  ChildIds: 8138784858589748172
  ChildIds: 5207984145688523303
  ChildIds: 2873036559636250852
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
    SelfId: 15576014623177363701
    SubobjectId: 6234568694236918399
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2873036559636250852
  Name: "ClassEquipper"
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
  ParentId: 15576014623177363701
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
      Id: 116029304157028287
    }
  }
  InstanceHistory {
    SelfId: 2873036559636250852
    SubobjectId: 12210294814395179630
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5207984145688523303
  Name: "InventoryEquipment"
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
  ParentId: 15576014623177363701
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
      Id: 17285934925408891118
    }
  }
  InstanceHistory {
    SelfId: 5207984145688523303
    SubobjectId: 14333484317641314477
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8138784858589748172
  Name: "PointsSpentHook"
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
  ParentId: 15576014623177363701
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
      Id: 5292521385556981970
    }
  }
  InstanceHistory {
    SelfId: 8138784858589748172
    SubobjectId: 18329219760766859590
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1186394790122445816
  Name: "TempStatRecover"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 15976610100924950826
      value {
        Overrides {
          Name: "Name"
          String: "TempStatRecover"
        }
      }
    }
    TemplateAsset {
      Id: 1625765452394729564
    }
  }
  InstanceHistory {
    SelfId: 1186394790122445816
    SubobjectId: 12498343613210813967
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 10373414106376324968
  Name: "HarvestingSystem"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  ChildIds: 14128543530406111848
  ChildIds: 13004147102434117689
  ChildIds: 14517073988449193345
  UnregisteredParameters {
    Overrides {
      Name: "cs:NODES"
      ObjectReference {
        SelfId: 14517073988449193345
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
      Int: 30
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
    SelfId: 10373414106376324968
    SubobjectId: 7850202630071972824
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14517073988449193345
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
  ParentId: 10373414106376324968
  ChildIds: 2046345634514956476
  ChildIds: 5226779375673105605
  ChildIds: 1799621899566507110
  ChildIds: 5969166789517420973
  ChildIds: 82744001247175728
  ChildIds: 1275116928330618593
  ChildIds: 12342795210482138116
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
    SelfId: 14517073988449193345
    SubobjectId: 3058860559211657521
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12342795210482138116
  Name: "Node_Grave"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14517073988449193345
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
          String: "Node_Grave"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -1802.27246
            Y: -2277.46191
            Z: 3329.0625
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 175.782593
          }
        }
      }
    }
    TemplateAsset {
      Id: 5151630942758078215
    }
  }
}
Objects {
  Id: 1275116928330618593
  Name: "Node_BirchTree"
  Transform {
    Location {
      X: -2289.89844
      Y: 672.193359
      Z: 3264.09131
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14517073988449193345
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
            X: -2048.04419
            Y: -150.774658
            Z: 3302.96045
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 82744001247175728
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14517073988449193345
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
            X: -2289.89844
            Y: 672.193359
            Z: 3264.2854
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -155.558212
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.1
            Y: 1.1
            Z: 1.1
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
  Id: 5969166789517420973
  Name: "Node_Coal"
  Transform {
    Location {
      X: -2071.51245
      Y: 1755.10132
      Z: 3210.98584
    }
    Rotation {
      Yaw: -160.927505
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14517073988449193345
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 17706867916820843333
      value {
        Overrides {
          Name: "Name"
          String: "Node_Gold"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -2729.93213
            Y: 1523.98499
            Z: 3210.98584
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 109.95047
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.2
            Y: 1.2
            Z: 1.2
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
  Id: 1799621899566507110
  Name: "Node_Gold"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14517073988449193345
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
          String: "Node_Gold"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -2091.88
            Y: 1679.59155
            Z: 3210.98584
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 25.0691948
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
  Id: 5226779375673105605
  Name: "Node_IronVein"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14517073988449193345
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
            X: -1489.99951
            Y: 976.169067
            Z: 3260.10352
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 54.3729324
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
  Id: 2046345634514956476
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14517073988449193345
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
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
            X: -1151.8302
            Y: -514.682373
            Z: 3318.21094
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -178.304749
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
  Id: 13004147102434117689
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
  ParentId: 10373414106376324968
  ChildIds: 1997409103861369941
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
    SelfId: 13004147102434117689
    SubobjectId: 6303986680589352073
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1997409103861369941
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
  ParentId: 13004147102434117689
  UnregisteredParameters {
    Overrides {
      Name: "cs:ROOT"
      ObjectReference {
        SelfId: 10373414106376324968
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 10506754159465741130
    }
  }
  InstanceHistory {
    SelfId: 1997409103861369941
    SubobjectId: 17923333001343236325
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14128543530406111848
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
  ParentId: 10373414106376324968
  ChildIds: 12194854927351603000
  ChildIds: 5726141867706109310
  ChildIds: 12818731713796929307
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
    SelfId: 14128543530406111848
    SubobjectId: 2816697983493431000
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12818731713796929307
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
  ParentId: 14128543530406111848
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
    SelfId: 12818731713796929307
    SubobjectId: 5972063427784786859
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5726141867706109310
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
  ParentId: 14128543530406111848
  ChildIds: 17609819517072364552
  ChildIds: 16084410522482813413
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
    SelfId: 5726141867706109310
    SubobjectId: 12426301261115947470
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16084410522482813413
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
  ParentId: 5726141867706109310
  ChildIds: 1874712645941153005
  ChildIds: 2043828424723810815
  ChildIds: 14290180552163580544
  UnregisteredParameters {
    Overrides {
      Name: "cs:HarvestingNow"
      ObjectReference {
        SelfId: 2043828424723810815
      }
    }
    Overrides {
      Name: "cs:UI Progress Bar"
      ObjectReference {
        SelfId: 14290180552163580544
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
    SelfId: 16084410522482813413
    SubobjectId: 4337827078867262805
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14290180552163580544
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
  ParentId: 16084410522482813413
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
    SelfId: 14290180552163580544
    SubobjectId: 2689963888374935088
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2043828424723810815
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
  ParentId: 16084410522482813413
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
    SelfId: 2043828424723810815
    SubobjectId: 18399847187548929359
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1874712645941153005
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
  ParentId: 16084410522482813413
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
    SelfId: 1874712645941153005
    SubobjectId: 17942360296208332893
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17609819517072364552
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
  ParentId: 5726141867706109310
  ChildIds: 7780060530185437165
  ChildIds: 12199602781903178765
  ChildIds: 16548066855472053645
  UnregisteredParameters {
    Overrides {
      Name: "cs:HarvestNodeLabel"
      ObjectReference {
        SelfId: 16548066855472053645
      }
    }
    Overrides {
      Name: "cs:HarvestNodeHotkey"
      ObjectReference {
        SelfId: 12199602781903178765
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
    SelfId: 17609819517072364552
    SubobjectId: 1686286987294040248
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16548066855472053645
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
  ParentId: 17609819517072364552
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
    SelfId: 16548066855472053645
    SubobjectId: 478168507041909053
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12199602781903178765
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
  ParentId: 17609819517072364552
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
    SelfId: 12199602781903178765
    SubobjectId: 5353076265335421117
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7780060530185437165
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
  ParentId: 17609819517072364552
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
    SelfId: 7780060530185437165
    SubobjectId: 9870785702615960413
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12194854927351603000
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
  ParentId: 14128543530406111848
  UnregisteredParameters {
    Overrides {
      Name: "cs:ROOT"
      ObjectReference {
        SelfId: 10373414106376324968
      }
    }
    Overrides {
      Name: "cs:HarvestingInteractionPanel"
      ObjectReference {
        SelfId: 17609819517072364552
      }
    }
    Overrides {
      Name: "cs:HarvestingProgressionPanel"
      ObjectReference {
        SelfId: 16084410522482813413
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 11638447669813120456
    }
  }
  InstanceHistory {
    SelfId: 12194854927351603000
    SubobjectId: 5348186642771766152
    InstanceId: 7696850434992128152
    TemplateId: 10601222624369640402
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6320878713053459680
  Name: "Targeting System"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 6543542712491765073
      value {
        Overrides {
          Name: "Name"
          String: "Targeting System"
        }
      }
    }
    TemplateAsset {
      Id: 15018293112981776438
    }
  }
  InstanceHistory {
    SelfId: 6320878713053459680
    SubobjectId: 16914859641837291799
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 4390420321585755243
  Name: "AbilityProgression"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 3731413319797607307
      value {
        Overrides {
          Name: "Name"
          String: "AbilityProgression"
        }
      }
    }
    TemplateAsset {
      Id: 14104061968928386320
    }
  }
  InstanceHistory {
    SelfId: 4390420321585755243
    SubobjectId: 9360743438752598428
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 5668212139925810496
  Name: "AutoWeaponSwap"
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
  ParentId: 12785624939370825655
  ChildIds: 13177211560263248478
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
    SelfId: 5668212139925810496
    SubobjectId: 13836523838949576650
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13177211560263248478
  Name: "SafeZone_WeaponSwap"
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
  ParentId: 5668212139925810496
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
      Id: 11576949396442714438
    }
  }
  InstanceHistory {
    SelfId: 13177211560263248478
    SubobjectId: 4067421090961197268
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 757417128085081557
  Name: "Missuse Folder"
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
  ParentId: 12785624939370825655
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
    FilePartitionName: "Missuse Folder"
  }
  InstanceHistory {
    SelfId: 757417128085081557
    SubobjectId: 9524654899406253919
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10633949456136083988
  Name: "ThrowableSupportAbilities"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 7065226975354398550
      value {
        Overrides {
          Name: "Name"
          String: "ThrowableSupportAbilities"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -2268.74902
            Y: -3020.33
            Z: -51261.1289
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -124.999992
          }
        }
      }
    }
    TemplateAsset {
      Id: 11996264710300556235
    }
  }
  InstanceHistory {
    SelfId: 10633949456136083988
    SubobjectId: 3357013762079959011
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 14304995627621200944
  Name: "EquipmentCleanupOnLeave"
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
  ParentId: 12785624939370825655
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
      Id: 4319333374079986798
    }
  }
  InstanceHistory {
    SelfId: 14304995627621200944
    SubobjectId: 5199740351189178042
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2486778425283724787
  Name: "Character Hierarchy"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10798133378291755207
      value {
        Overrides {
          Name: "Name"
          String: "Character Hierarchy"
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
      Id: 17078281080146673991
    }
  }
  InstanceHistory {
    SelfId: 2486778425283724787
    SubobjectId: 11495206360820807684
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 1672686501659725418
  Name: "Status Effect System"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 4353908238033297960
      value {
        Overrides {
          Name: "Name"
          String: "Status Effect System"
        }
      }
    }
    TemplateAsset {
      Id: 4539412308632193351
    }
  }
  InstanceHistory {
    SelfId: 1672686501659725418
    SubobjectId: 12264270491021767581
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 8143264252428292414
  Name: "ObjectPlacement"
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
  ParentId: 12785624939370825655
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
    FilePartitionName: "NewFolder"
  }
  InstanceHistory {
    SelfId: 8143264252428292414
    SubobjectId: 18423683221421421492
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10998835681812852417
  Name: "AbilityDisabler"
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
  ParentId: 12785624939370825655
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
    FilePartitionName: "AbilityDisabler"
  }
  InstanceHistory {
    SelfId: 10998835681812852417
    SubobjectId: 1589501496425008203
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6893244762116818283
  Name: "Character Equipper"
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
  ParentId: 12785624939370825655
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
    FilePartitionName: "Equpper"
  }
  InstanceHistory {
    SelfId: 14075809790449031681
    SubobjectId: 12245008530248017421
    InstanceId: 13620541732778982903
    TemplateId: 13074073657660917058
    WasRoot: true
    NestedInstanceIds: 7900543579759898107
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16515477359352224596
  Name: "Dependencies"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 7449135717838944500
      value {
        Overrides {
          Name: "Name"
          String: "Dependencies"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 150
            Y: -150.000122
            Z: -50
          }
        }
      }
    }
    TemplateAsset {
      Id: 7454552000980805838
    }
  }
  InstanceHistory {
    SelfId: 16515477359352224596
    SubobjectId: 6356586427490150051
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 9008656502296120942
  Name: "Loot Drop Factory 3.0"
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
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 12522389637121468714
      value {
        Overrides {
          Name: "Name"
          String: "Loot Drop Factory 3.0"
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
      Id: 15438156706895969314
    }
  }
  InstanceHistory {
    SelfId: 9008656502296120942
    SubobjectId: 13835286553656767385
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 7761162871175552815
  Name: "Found Item Cinematic"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 9673760375168532882
      value {
        Overrides {
          Name: "Name"
          String: "Found Item Cinematic"
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
      Id: 16293405889891577506
    }
  }
  InstanceHistory {
    SelfId: 7761162871175552815
    SubobjectId: 15470095652942389976
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 5603007442870981071
  Name: "MMO Portal"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 7994230572995548289
      value {
        Overrides {
          Name: "Name"
          String: "MMO Portal"
        }
      }
    }
    TemplateAsset {
      Id: 14735854669174090622
    }
  }
  InstanceHistory {
    SelfId: 5603007442870981071
    SubobjectId: 17348995099918167096
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 9583552097270062017
  Name: "Respawn Zone (under the world)"
  Transform {
    Location {
      Z: -1700
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  ChildIds: 11547174821964613155
  ChildIds: 9586994225153838859
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
  InstanceHistory {
    SelfId: 9583552097270062017
    SubobjectId: 743973740844333387
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9586994225153838859
  Name: "Trigger"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 900
      Y: 900
      Z: 1
    }
  }
  ParentId: 9583552097270062017
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
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  InstanceHistory {
    SelfId: 9586994225153838859
    SubobjectId: 839751471443602817
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11547174821964613155
  Name: "PlayerTriggerBroadcastEvent"
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
  ParentId: 9583552097270062017
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 9586994225153838859
      }
    }
    Overrides {
      Name: "cs:EventID"
      String: "SpawnPlayerAt"
    }
    Overrides {
      Name: "cs:AdditionalParam"
      String: "Social"
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
  Script {
    ScriptAsset {
      Id: 13872004245301301589
    }
  }
  InstanceHistory {
    SelfId: 11547174821964613155
    SubobjectId: 3356153302303433897
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11139475088052789855
  Name: "Misc Server"
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
  ParentId: 12785624939370825655
  ChildIds: 14546811096002602236
  ChildIds: 11728263122256425376
  ChildIds: 3136636263324976600
  ChildIds: 4316979858254432093
  ChildIds: 15815819185115836859
  ChildIds: 15607357959555741966
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
    SelfId: 11139475088052789855
    SubobjectId: 1458005628960555221
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15607357959555741966
  Name: "LootCoinsAdapter_Server"
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
  ParentId: 11139475088052789855
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
      Id: 8104924942521878347
    }
  }
  InstanceHistory {
    SelfId: 15607357959555741966
    SubobjectId: 6211806015250930564
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15815819185115836859
  Name: "RewardsAdapter"
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
  ParentId: 11139475088052789855
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
      Id: 14343187592492468620
    }
  }
  InstanceHistory {
    SelfId: 15815819185115836859
    SubobjectId: 6183915316576703281
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4316979858254432093
  Name: "SafeZoneAppStates"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -1.36603758e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11139475088052789855
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
      Id: 11333987766339350641
    }
  }
  InstanceHistory {
    SelfId: 4316979858254432093
    SubobjectId: 13061639279866832343
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3136636263324976600
  Name: "SupportAbilities"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -1.02452814e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11139475088052789855
  UnregisteredParameters {
    Overrides {
      Name: "cs:channelAbility"
      AssetReference {
        Id: 5095812687312647724
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 8716198136127297204
    }
  }
  InstanceHistory {
    SelfId: 3136636263324976600
    SubobjectId: 11901659112194041682
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11728263122256425376
  Name: "ItemFactory"
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
  ParentId: 11139475088052789855
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
      Id: 11974960246926030049
    }
  }
  InstanceHistory {
    SelfId: 11728263122256425376
    SubobjectId: 3201941532956267306
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14546811096002602236
  Name: "PlayerJoinMessageChat"
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
  ParentId: 11139475088052789855
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
      Id: 7340036351095563195
    }
  }
  InstanceHistory {
    SelfId: 14546811096002602236
    SubobjectId: 5137510313917662838
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15332244000940332852
  Name: "PlayerControlStacks"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 14651507380374460243
      value {
        Overrides {
          Name: "Name"
          String: "PlayerControlStacks"
        }
      }
    }
    TemplateAsset {
      Id: 6930416641467149122
    }
  }
  InstanceHistory {
    SelfId: 15332244000940332852
    SubobjectId: 7620917565111741123
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 3125753175296963885
  Name: "Misc Client"
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
  ParentId: 12785624939370825655
  ChildIds: 10689028068618937886
  ChildIds: 18265205142595023679
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
    SelfId: 3125753175296963885
    SubobjectId: 11947022884869380007
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18265205142595023679
  Name: "GlobalAudioController"
  Transform {
    Location {
      X: 2419.76221
      Y: -1055.86011
      Z: -4132.96045
    }
    Rotation {
      Yaw: 124.999992
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3125753175296963885
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
      Id: 4171342585748687683
    }
  }
  InstanceHistory {
    SelfId: 18265205142595023679
    SubobjectId: 8347341346197361077
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10689028068618937886
  Name: "SocialKitNameplateController"
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
  ParentId: 3125753175296963885
  UnregisteredParameters {
    Overrides {
      Name: "cs:ShowOnSelf"
      Bool: true
    }
    Overrides {
      Name: "cs:MaxDistanceOnTeammates"
      Float: 0
    }
    Overrides {
      Name: "cs:ShowOnDeadPlayers"
      Bool: false
    }
    Overrides {
      Name: "cs:Scale"
      Float: 1
    }
    Overrides {
      Name: "cs:NameplateTemplate"
      AssetReference {
        Id: 9863662204509797960
      }
    }
    Overrides {
      Name: "cs:ShowOnSelf:tooltip"
      String: "Show a nameplate on the local player"
    }
    Overrides {
      Name: "cs:ShowOnSelf:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ShowOnSelf:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:MaxDistanceOnTeammates:tooltip"
      String: "Only show nameplates on teammates up to this distance away. 0 means always show them."
    }
    Overrides {
      Name: "cs:MaxDistanceOnTeammates:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:MaxDistanceOnTeammates:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ShowOnDeadPlayers:tooltip"
      String: "Show nameplates even on dead players"
    }
    Overrides {
      Name: "cs:ShowOnDeadPlayers:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ShowOnDeadPlayers:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Scale:tooltip"
      String: "Overall scale factor for nameplates"
    }
    Overrides {
      Name: "cs:Scale:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Scale:ml"
      Bool: false
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
  Script {
    ScriptAsset {
      Id: 13713889337716467688
    }
  }
  InstanceHistory {
    SelfId: 10689028068618937886
    SubobjectId: 1944345108035126420
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13915845686757242077
  Name: "Combat Dependencies"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 8014650375856875642
      value {
        Overrides {
          Name: "Name"
          String: "Combat Dependencies"
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
      Id: 2087257134469971969
    }
  }
  InstanceHistory {
    SelfId: 13915845686757242077
    SubobjectId: 8942707841303415082
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 7976406536754551921
  Name: "App State Machine"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  TemplateInstance {
    ParameterOverrideMap {
      key: 7285454893618858797
      value {
        Overrides {
          Name: "Name"
          String: "App State Machine"
        }
      }
    }
    TemplateAsset {
      Id: 17121829851945685150
    }
  }
  InstanceHistory {
    SelfId: 7976406536754551921
    SubobjectId: 15254819974321496454
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
}
