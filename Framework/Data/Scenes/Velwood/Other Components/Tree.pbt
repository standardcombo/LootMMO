Name: "Other Components"
RootId: 5695316879803964261
Objects {
  Id: 804047598734016603
  Name: "Generic Sounds Library"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 804047598734016603
    SubobjectId: 6971558339717546766
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 2311077754949048179
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
  ParentId: 5695316879803964261
  ChildIds: 13503446306130915800
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
    SelfId: 2311077754949048179
    SubobjectId: 5825506913699031339
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13503446306130915800
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
  ParentId: 2311077754949048179
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
    SelfId: 13503446306130915800
    SubobjectId: 14676988788046630784
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9613430517916525507
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
  ParentId: 5695316879803964261
  ChildIds: 18206523816586576106
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
    SelfId: 9613430517916525507
    SubobjectId: 17699998976495263131
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18206523816586576106
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
  ParentId: 9613430517916525507
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
    SelfId: 18206523816586576106
    SubobjectId: 10115176741975785138
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17352668191118006745
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
  ParentId: 5695316879803964261
  ChildIds: 16831776194121146696
  ChildIds: 12675649095770748856
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
    SelfId: 17352668191118006745
    SubobjectId: 9231196837641742209
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12675649095770748856
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
  ParentId: 17352668191118006745
  ChildIds: 9566817336707753160
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
    SelfId: 12675649095770748856
    SubobjectId: 16078467379125668320
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9566817336707753160
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
  ParentId: 12675649095770748856
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
    SelfId: 9566817336707753160
    SubobjectId: 17586251960063154832
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16831776194121146696
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
  ParentId: 17352668191118006745
  ChildIds: 6675417546398569219
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
    SelfId: 16831776194121146696
    SubobjectId: 11050909966513790736
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6675417546398569219
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
  ParentId: 16831776194121146696
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
    SelfId: 6675417546398569219
    SubobjectId: 3200119481270037851
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12606361578704157791
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
  ParentId: 5695316879803964261
  ChildIds: 1241968429672495494
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
    SelfId: 12606361578704157791
    SubobjectId: 16012557571510256135
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1241968429672495494
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
  ParentId: 12606361578704157791
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
    SelfId: 1241968429672495494
    SubobjectId: 7058997560424761310
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2760531081635843111
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
  ParentId: 5695316879803964261
  ChildIds: 10274042361575327518
  ChildIds: 13123497414754561781
  ChildIds: 15688690785778588726
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
    SelfId: 2760531081635843111
    SubobjectId: 6234568694236918399
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15688690785778588726
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
  ParentId: 2760531081635843111
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
    SelfId: 15688690785778588726
    SubobjectId: 12210294814395179630
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13123497414754561781
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
  ParentId: 2760531081635843111
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
    SelfId: 13123497414754561781
    SubobjectId: 14333484317641314477
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10274042361575327518
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
  ParentId: 2760531081635843111
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
    SelfId: 10274042361575327518
    SubobjectId: 18329219760766859590
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14331710843643307354
  Name: "TempStatRecover"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 14331710843643307354
    SubobjectId: 12498343613210813967
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 9307490593930693186
  Name: "Targeting System"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 9307490593930693186
    SubobjectId: 16914859641837291799
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 16897352796311915209
  Name: "AbilityProgression"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 16897352796311915209
    SubobjectId: 9360743438752598428
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 12740672669369184658
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
  ParentId: 5695316879803964261
  ChildIds: 5240117094602503820
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
    SelfId: 12740672669369184658
    SubobjectId: 13836523838949576650
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5240117094602503820
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
  ParentId: 12740672669369184658
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
    SelfId: 5240117094602503820
    SubobjectId: 4067421090961197268
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17646401311985127687
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
  ParentId: 5695316879803964261
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
    SelfId: 17646401311985127687
    SubobjectId: 9524654899406253919
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4972532963747390646
  Name: "ThrowableSupportAbilities"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 4972532963747390646
    SubobjectId: 3357013762079959011
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 4099387377346291938
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
  ParentId: 5695316879803964261
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
    SelfId: 4099387377346291938
    SubobjectId: 5199740351189178042
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17586647940112464721
  Name: "Character Hierarchy"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 17586647940112464721
    SubobjectId: 11495206360820807684
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 13953294382550659272
  Name: "Status Effect System"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 13953294382550659272
    SubobjectId: 12264270491021767581
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 10332613326788529644
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
  ParentId: 5695316879803964261
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
    SelfId: 10332613326788529644
    SubobjectId: 18423683221421421492
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7405545502353797651
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
  ParentId: 5695316879803964261
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
    SelfId: 7405545502353797651
    SubobjectId: 1589501496425008203
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11659756986527455673
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
  ParentId: 5695316879803964261
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
    SelfId: 4409354780480931539
    SubobjectId: 12245008530248017421
    InstanceId: 7752804201856156501
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
  Id: 3720078798789830134
  Name: "Dependencies"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 3720078798789830134
    SubobjectId: 6356586427490150051
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 12364546504419569868
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
  ParentId: 5695316879803964261
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
    SelfId: 12364546504419569868
    SubobjectId: 13835286553656767385
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 13630052257700045197
  Name: "Found Item Cinematic"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 13630052257700045197
    SubobjectId: 15470095652942389976
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 11192427245733392237
  Name: "MMO Portal"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 11192427245733392237
    SubobjectId: 17348995099918167096
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 8834342255489304339
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
  ParentId: 5695316879803964261
  ChildIds: 6798659661493672689
  ChildIds: 8893948281216209881
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
    SelfId: 8834342255489304339
    SubobjectId: 743973740844333387
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8893948281216209881
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
  ParentId: 8834342255489304339
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
    SelfId: 8893948281216209881
    SubobjectId: 839751471443602817
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6798659661493672689
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
  ParentId: 8834342255489304339
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 8893948281216209881
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
    SelfId: 6798659661493672689
    SubobjectId: 3356153302303433897
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7273633563875065485
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
  ParentId: 5695316879803964261
  ChildIds: 4001124171783387182
  ChildIds: 6675838270262930802
  ChildIds: 15411859652568848650
  ChildIds: 14235457231307348879
  ChildIds: 2673851071955316073
  ChildIds: 2809692003472631260
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
    SelfId: 7273633563875065485
    SubobjectId: 1458005628960555221
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2809692003472631260
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
  ParentId: 7273633563875065485
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
    SelfId: 2809692003472631260
    SubobjectId: 6211806015250930564
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2673851071955316073
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
  ParentId: 7273633563875065485
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
    SelfId: 2673851071955316073
    SubobjectId: 6183915316576703281
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14235457231307348879
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
  ParentId: 7273633563875065485
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
    SelfId: 14235457231307348879
    SubobjectId: 13061639279866832343
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15411859652568848650
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
  ParentId: 7273633563875065485
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
    SelfId: 15411859652568848650
    SubobjectId: 11901659112194041682
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6675838270262930802
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
  ParentId: 7273633563875065485
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
    SelfId: 6675838270262930802
    SubobjectId: 3201941532956267306
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4001124171783387182
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
  ParentId: 7273633563875065485
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
    SelfId: 4001124171783387182
    SubobjectId: 5137510313917662838
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 168197231232412054
  Name: "PlayerControlStacks"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 168197231232412054
    SubobjectId: 7620917565111741123
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 15350124954780527103
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
  ParentId: 5695316879803964261
  ChildIds: 7652021244407364300
  ChildIds: 224465225872650221
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
    SelfId: 15350124954780527103
    SubobjectId: 11947022884869380007
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 224465225872650221
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
  ParentId: 15350124954780527103
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
    SelfId: 224465225872650221
    SubobjectId: 8347341346197361077
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7652021244407364300
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
  ParentId: 15350124954780527103
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
    SelfId: 7652021244407364300
    SubobjectId: 1944345108035126420
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1697187726483737215
  Name: "Combat Dependencies"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 1697187726483737215
    SubobjectId: 8942707841303415082
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 13268589291010630355
  Name: "App State Machine"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5695316879803964261
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
    SelfId: 13268589291010630355
    SubobjectId: 15254819974321496454
    InstanceId: 7752804201856156501
    TemplateId: 5338087018861399484
  }
}
Objects {
  Id: 12531984221918445419
  Name: "HarvestingSystem"
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
  ParentId: 5695316879803964261
  ChildIds: 10674635344915159538
  ChildIds: 15938516879811595440
  ChildIds: 13574203821137552727
  UnregisteredParameters {
    Overrides {
      Name: "cs:NODES"
      ObjectReference {
        SelfId: 13574203821137552727
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
      Bool: false
    }
    Overrides {
      Name: "cs:RespawnNodesInterval"
      Vector2 {
        X: 20
        Y: 30
      }
    }
    Overrides {
      Name: "cs:RespawnByTypeOnly"
      Bool: false
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13574203821137552727
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
  ParentId: 12531984221918445419
  ChildIds: 4836168650440678524
  ChildIds: 9105187082512018926
  ChildIds: 3214231704955906817
  ChildIds: 17960623396979331642
  ChildIds: 7283415975120431461
  ChildIds: 9105153351421201848
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
  Id: 9105153351421201848
  Name: "Node_Grave"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13574203821137552727
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
            X: 4893.16504
            Y: -21939.5957
            Z: 926.463501
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -0.359619141
            Yaw: -166.101578
            Roll: -4.88296509
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
  Id: 7283415975120431461
  Name: "Node_Gold"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13574203821137552727
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
            X: 3345.05469
            Y: -22935.2637
            Z: 1324.42786
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -107.007233
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
  Id: 17960623396979331642
  Name: "Node_IronVein"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13574203821137552727
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
            X: 3819.13525
            Y: -22962.75
            Z: 1203.09241
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 0.083622
            Yaw: -103.764618
            Roll: 9.72304249
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.9
            Y: 0.9
            Z: 0.9
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
  Id: 3214231704955906817
  Name: "Node_BirchTree"
  Transform {
    Location {
      X: 4358.06445
      Y: -22505.6875
      Z: 1027.73059
    }
    Rotation {
      Yaw: -178.304749
    }
    Scale {
      X: 0.8
      Y: 0.8
      Z: 0.8
    }
  }
  ParentId: 13574203821137552727
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
            X: 4885.39111
            Y: -22572.4102
            Z: 1027.73059
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -90.9954529
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
  Id: 9105187082512018926
  Name: "Node_BirchTree"
  Transform {
    Location {
      X: 4885.39111
      Y: -22572.4102
      Z: 1027.73059
    }
    Rotation {
      Yaw: -90.9954453
    }
    Scale {
      X: 0.8
      Y: 0.8
      Z: 0.8
    }
  }
  ParentId: 13574203821137552727
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
            X: 4594.39258
            Y: -22805.7578
            Z: 1064.60742
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -90.9954224
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
      Id: 2231785504448967504
    }
  }
}
Objects {
  Id: 4836168650440678524
  Name: "Node_BirchTree"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13574203821137552727
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
            X: 4358.06445
            Y: -22505.6875
            Z: 1027.73059
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
  Id: 15938516879811595440
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
  ParentId: 12531984221918445419
  ChildIds: 290940686330809306
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
  Id: 290940686330809306
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
  ParentId: 15938516879811595440
  UnregisteredParameters {
    Overrides {
      Name: "cs:ROOT"
      ObjectReference {
        SelfId: 12531984221918445419
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10674635344915159538
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
  ParentId: 12531984221918445419
  ChildIds: 15553546613004086434
  ChildIds: 15725310288654848551
  ChildIds: 10851083571327524055
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10851083571327524055
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
  ParentId: 10674635344915159538
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15725310288654848551
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
  ParentId: 10674635344915159538
  ChildIds: 16620152610341381941
  ChildIds: 11552560881751740197
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11552560881751740197
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
  ParentId: 15725310288654848551
  ChildIds: 8494945120699700618
  ChildIds: 12232933937001740013
  ChildIds: 3562985609815533068
  UnregisteredParameters {
    Overrides {
      Name: "cs:HarvestingNow"
      ObjectReference {
        SelfId: 12232933937001740013
      }
    }
    Overrides {
      Name: "cs:UI Progress Bar"
      ObjectReference {
        SelfId: 3562985609815533068
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3562985609815533068
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
  ParentId: 11552560881751740197
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12232933937001740013
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
  ParentId: 11552560881751740197
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8494945120699700618
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
  ParentId: 11552560881751740197
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16620152610341381941
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
  ParentId: 15725310288654848551
  ChildIds: 7183072754905130265
  ChildIds: 10483847272666277229
  ChildIds: 17051982523002540820
  UnregisteredParameters {
    Overrides {
      Name: "cs:HarvestNodeLabel"
      ObjectReference {
        SelfId: 17051982523002540820
      }
    }
    Overrides {
      Name: "cs:HarvestNodeHotkey"
      ObjectReference {
        SelfId: 10483847272666277229
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17051982523002540820
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
  ParentId: 16620152610341381941
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10483847272666277229
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
  ParentId: 16620152610341381941
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7183072754905130265
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
  ParentId: 16620152610341381941
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
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15553546613004086434
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
  ParentId: 10674635344915159538
  UnregisteredParameters {
    Overrides {
      Name: "cs:ROOT"
      ObjectReference {
        SelfId: 12531984221918445419
      }
    }
    Overrides {
      Name: "cs:HarvestingInteractionPanel"
      ObjectReference {
        SelfId: 16620152610341381941
      }
    }
    Overrides {
      Name: "cs:HarvestingProgressionPanel"
      ObjectReference {
        SelfId: 11552560881751740197
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
