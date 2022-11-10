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
  Id: 16140252120888019681
  Name: "Character Hierarchy"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12785624939370825655
  ChildIds: 10751137973508285796
  ChildIds: 11294215158378801472
  ChildIds: 16430282691773435393
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
    SelfId: 17869976470032262922
    SubobjectId: 10798133378291755207
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    WasRoot: true
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16430282691773435393
  Name: "Cheats"
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
  ParentId: 16140252120888019681
  ChildIds: 11351672478064088828
  UnregisteredParameters {
    Overrides {
      Name: "cs:TeleportLocations"
      ObjectReference {
        SelfId: 11351672478064088828
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
      Id: 5038874356007781134
    }
  }
  InstanceHistory {
    SelfId: 8951788553314513553
    SubobjectId: 2170560960840531292
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11351672478064088828
  Name: "Teleport Locations"
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
  ParentId: 16430282691773435393
  ChildIds: 18017859951526599522
  ChildIds: 16035719636268796131
  ChildIds: 7939228674417444938
  ChildIds: 10732554865702532228
  ChildIds: 11074498457756434708
  ChildIds: 10204661014810725095
  ChildIds: 10331268394402092089
  ChildIds: 7888366020183073273
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
    SelfId: 11351672478064088828
    SubobjectId: 1379649659023357046
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7888366020183073273
  Name: "Spawn"
  Transform {
    Location {
      X: -9511.31
      Y: -4394.56934
      Z: -50839.8594
    }
    Rotation {
      Yaw: 180
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11351672478064088828
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
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10331268394402092089
  Name: "Bar"
  Transform {
    Location {
      X: -2244.82666
      Y: -3879.36426
      Z: -51150
    }
    Rotation {
      Yaw: -143.511
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11351672478064088828
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
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 10331268394402092089
    SubobjectId: 129676580603262643
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10204661014810725095
  Name: "Pinball"
  Transform {
    Location {
      X: -4050
      Y: -5837.28955
      Z: -50400
    }
    Rotation {
      Yaw: 89.9999771
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11351672478064088828
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
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 10204661014810725095
    SubobjectId: 230388195682412653
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11074498457756434708
  Name: "Chairs"
  Transform {
    Location {
      X: -2950
      Y: -2500
      Z: -51150
    }
    Rotation {
      Yaw: 90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11351672478064088828
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
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 11074498457756434708
    SubobjectId: 1665267928618689438
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10732554865702532228
  Name: "Map"
  Transform {
    Location {
      X: -3750
      Y: -4750
      Z: -51150
    }
    Rotation {
      Yaw: 90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11351672478064088828
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
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 10732554865702532228
    SubobjectId: 1899688081797355022
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7939228674417444938
  Name: "Workshop"
  Transform {
    Location {
      X: -3891.97656
      Y: -6002.77686
      Z: -51150
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11351672478064088828
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
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 7939228674417444938
    SubobjectId: 16177338458333424320
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16035719636268796131
  Name: "Crafting"
  Transform {
    Location {
      X: -3377.40942
      Y: -8730.44141
      Z: -51200
    }
    Rotation {
      Yaw: -65.6443787
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11351672478064088828
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
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 16035719636268796131
    SubobjectId: 5775567437232286313
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18017859951526599522
  Name: "Cauldron"
  Transform {
    Location {
      X: -4749.99951
      Y: -8049.99951
      Z: -50950
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11351672478064088828
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
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 18017859951526599522
    SubobjectId: 8403982842513537512
    InstanceId: 13620541732778982903
    TemplateId: 5338087018861399484
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11294215158378801472
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
  ParentId: 16140252120888019681
  ChildIds: 10072341869198667051
  ChildIds: 11689578967735389107
  ChildIds: 11788795550557553435
  ChildIds: 845324051778683400
  ChildIds: 13072917911585137694
  ChildIds: 178959768880331408
  ChildIds: 15790681020595420338
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
  }
  InstanceHistory {
    SelfId: 2907361584324815800
    SubobjectId: 5367516725976687733
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15790681020595420338
  Name: "Character_PotionQuickNetwork_Client"
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
  ParentId: 11294215158378801472
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
      Id: 9192068171390019973
    }
  }
  InstanceHistory {
    SelfId: 92844531922968681
    SubobjectId: 7164554582806884260
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 178959768880331408
  Name: "Character_PointsQuickNetwork_Client"
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
  ParentId: 11294215158378801472
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
      Id: 9418090865857346601
    }
  }
  InstanceHistory {
    SelfId: 13094987276331356202
    SubobjectId: 15537128989045776359
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13072917911585137694
  Name: "Character_XpQuickNetwork_Client"
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
  ParentId: 11294215158378801472
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
      Id: 14189191658511042335
    }
  }
  InstanceHistory {
    SelfId: 17256327127743720303
    SubobjectId: 10186737648309839010
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 845324051778683400
  Name: "Character_StatsQuickNetwork_Client"
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
  ParentId: 11294215158378801472
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
      Id: 1237248112539606659
    }
  }
  InstanceHistory {
    SelfId: 16076105511023615866
    SubobjectId: 13636206132014993591
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11788795550557553435
  Name: "CharacterEquipper_Client"
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
  ParentId: 11294215158378801472
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
      Id: 12619922011101275097
    }
  }
  InstanceHistory {
    SelfId: 15447105394287805020
    SubobjectId: 13005095485445852561
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11689578967735389107
  Name: "CharacterEquip_Api"
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
  ParentId: 11294215158378801472
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
      Id: 10365365173678563987
    }
  }
  InstanceHistory {
    SelfId: 12732724041305799794
    SubobjectId: 15174875633602360255
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10072341869198667051
  Name: "Character"
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
  ParentId: 11294215158378801472
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
      Id: 7282416924593627500
    }
  }
  InstanceHistory {
    SelfId: 14609589550334544442
    SubobjectId: 12149574597489051127
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10751137973508285796
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
  ParentId: 16140252120888019681
  ChildIds: 3430988464104479390
  ChildIds: 10293836828310414220
  ChildIds: 18142442599568233263
  ChildIds: 11861850418767056296
  ChildIds: 18076942841047039922
  ChildIds: 14841397661070897172
  ChildIds: 16917758915599692892
  ChildIds: 3311687602461407663
  ChildIds: 7294049785166848181
  ChildIds: 9668762916329415116
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
    SelfId: 8537786665085251000
    SubobjectId: 1465933016331969141
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9668762916329415116
  Name: "Character_PotionQuickNetwork_Server"
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
  ParentId: 10751137973508285796
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
      Id: 13552875232596020869
    }
  }
  InstanceHistory {
    SelfId: 2297663423405843202
    SubobjectId: 9063130616257686735
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7294049785166848181
  Name: "Character_PointsQuickNetwork_Server"
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
  ParentId: 10751137973508285796
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
      Id: 14110294990563773938
    }
  }
  InstanceHistory {
    SelfId: 13296195758628668548
    SubobjectId: 15754108728776641353
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3311687602461407663
  Name: "Character_XpQuickNetwork_Server"
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
  ParentId: 10751137973508285796
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
      Id: 8660061653595364871
    }
  }
  InstanceHistory {
    SelfId: 16954405015773723522
    SubobjectId: 9902958715081454671
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16917758915599692892
  Name: "Character_StatsQuickNetwork_Server"
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
  ParentId: 10751137973508285796
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
      Id: 15302640241377471898
    }
  }
  InstanceHistory {
    SelfId: 4221262545014196105
    SubobjectId: 6390794892397332548
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14841397661070897172
  Name: "LevelUpVFX_Spawn"
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
  ParentId: 10751137973508285796
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
      Id: 17789809634028385281
    }
  }
  InstanceHistory {
    SelfId: 13005861388723225209
    SubobjectId: 15445763379139169716
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18076942841047039922
  Name: "Character_ApplyStats"
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
  ParentId: 10751137973508285796
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
      Id: 9536421750749492709
    }
  }
  InstanceHistory {
    SelfId: 8086125219254919622
    SubobjectId: 1302655164175789579
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11861850418767056296
  Name: "CharacterEquipper_Server"
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
  ParentId: 10751137973508285796
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
      Id: 12351455841742754921
    }
  }
  InstanceHistory {
    SelfId: 8585183245240377122
    SubobjectId: 1513481465456939247
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18142442599568233263
  Name: "CharacterEquip_Api"
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
  ParentId: 10751137973508285796
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
      Id: 10365365173678563987
    }
  }
  InstanceHistory {
    SelfId: 11763636743912543588
    SubobjectId: 13935422275145767593
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10293836828310414220
  Name: "CharacterSave_API"
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
  ParentId: 10751137973508285796
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
      Id: 17155980473777263656
    }
  }
  InstanceHistory {
    SelfId: 17040906290744922576
    SubobjectId: 10257282468303396381
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3430988464104479390
  Name: "Character"
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
  ParentId: 10751137973508285796
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
      Id: 7282416924593627500
    }
  }
  InstanceHistory {
    SelfId: 1265416592903294902
    SubobjectId: 8335015419326759035
    InstanceId: 13620541732778982903
    TemplateId: 17078281080146673991
    NestedInstanceIds: 11495206360820807684
    OuterTemplateIds: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
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
  Id: 14075809790449031681
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
