Name: "NPCs"
RootId: 6804530064966610888
Objects {
  Id: 6633574829989932321
  Name: "Militia"
  Transform {
    Location {
      X: -1624.54211
      Y: 2818.85376
      Z: 95.2952118
    }
    Rotation {
      Yaw: 3.83954406
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
  ChildIds: 621495648225913746
  ChildIds: 11413700859792911819
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
  Id: 11413700859792911819
  Name: "NPCgeo"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -66.2981
    }
    Scale {
      X: 2.88
      Y: 2.88
      Z: 2.88
    }
  }
  ParentId: 6633574829989932321
  ChildIds: 1944610113648566963
  ChildIds: 5375701635192052657
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5375701635192052657
  Name: "Signals"
  Transform {
    Location {
      X: -0.53903991
      Y: 0.957767189
      Z: 48.1050835
    }
    Rotation {
      Yaw: 12.2446556
    }
    Scale {
      X: 1.04166663
      Y: 1.04166663
      Z: 1.04166663
    }
  }
  ParentId: 11413700859792911819
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Signals_1"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1944610113648566963
  Name: "Militia"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11413700859792911819
  TemplateInstance {
    ParameterOverrideMap {
      key: 2601898497610098493
      value {
        Overrides {
          Name: "Name"
          String: "Militia"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -18.0773067
            Y: 4.87396049
            Z: 3.09546256
          }
        }
      }
    }
    TemplateAsset {
      Id: 12920677605849515880
    }
  }
}
Objects {
  Id: 621495648225913746
  Name: "LocalLogic"
  Transform {
    Location {
      X: -25.6984863
      Y: -19.3632812
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6633574829989932321
  ChildIds: 7492278727993067237
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
    Type: Local
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7492278727993067237
  Name: "Trigger"
  Transform {
    Location {
      X: 39.2944946
      Y: 47.1462288
    }
    Rotation {
      Yaw: -54.0534668
    }
    Scale {
      X: 3
      Y: 3.22036529
      Z: 3
    }
  }
  ParentId: 621495648225913746
  ChildIds: 804080911497293666
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
  Trigger {
    Interactable: true
    InteractionLabel: "Chat"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:sphere"
    }
    InteractionTemplate {
      Id: 841534158063459245
    }
    BreadcrumbTemplate {
      Id: 841534158063459245
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 804080911497293666
  Name: "ChatNPC"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-06
    }
    Scale {
      X: 0.333333343
      Y: 0.333333343
      Z: 0.333333343
    }
  }
  ParentId: 7492278727993067237
  UnregisteredParameters {
    Overrides {
      Name: "cs:ChatID"
      String: "Militia"
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
      Id: 8180739351578799712
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4080377456527800823
  Name: "Blacksmith"
  Transform {
    Location {
      X: 1666.40955
      Y: -5971.74316
      Z: 83.9012146
    }
    Rotation {
      Yaw: -23.4493713
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
  ChildIds: 8602490099821804058
  ChildIds: 5635181792071920996
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
  Id: 5635181792071920996
  Name: "NPCgeo"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -66.2981
    }
    Scale {
      X: 2.88
      Y: 2.88
      Z: 2.88
    }
  }
  ParentId: 4080377456527800823
  ChildIds: 17413455773688951402
  ChildIds: 13863239342207112463
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13863239342207112463
  Name: "Signals"
  Transform {
    Location {
      X: -0.53903991
      Y: 0.957767189
      Z: 48.1050835
    }
    Rotation {
      Yaw: 12.2446556
    }
    Scale {
      X: 1.04166663
      Y: 1.04166663
      Z: 1.04166663
    }
  }
  ParentId: 5635181792071920996
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Signals"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17413455773688951402
  Name: "Blacksmith"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5635181792071920996
  TemplateInstance {
    ParameterOverrideMap {
      key: 17487510503134157460
      value {
        Overrides {
          Name: "Name"
          String: "Blacksmith"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -18.0773106
            Y: 4.87394857
            Z: 3.09546256
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 3.80704474
            Yaw: 32.8250275
            Roll: -1.95173693
          }
        }
      }
    }
    TemplateAsset {
      Id: 18176387296437376549
    }
  }
}
Objects {
  Id: 8602490099821804058
  Name: "LocalLogic"
  Transform {
    Location {
      X: -25.6984863
      Y: -19.3632812
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4080377456527800823
  ChildIds: 7082165415581629156
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
    Type: Local
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7082165415581629156
  Name: "Trigger"
  Transform {
    Location {
      X: 39.2944946
      Y: 47.1462288
    }
    Rotation {
      Yaw: -54.0534668
    }
    Scale {
      X: 3
      Y: 3.22036529
      Z: 3
    }
  }
  ParentId: 8602490099821804058
  ChildIds: 7536615665351417354
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
  Trigger {
    Interactable: true
    InteractionLabel: "Chat"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:sphere"
    }
    InteractionTemplate {
      Id: 841534158063459245
    }
    BreadcrumbTemplate {
      Id: 841534158063459245
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7536615665351417354
  Name: "ChatNPC"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-06
    }
    Scale {
      X: 0.333333343
      Y: 0.333333343
      Z: 0.333333343
    }
  }
  ParentId: 7082165415581629156
  UnregisteredParameters {
    Overrides {
      Name: "cs:ChatID"
      String: "Blacksmith"
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
      Id: 8180739351578799712
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13660530881697860626
  Name: "Miner"
  Transform {
    Location {
      X: 1572.99304
      Y: -8652.56738
      Z: -52.9509506
    }
    Rotation {
      Yaw: -62.907074
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
  ChildIds: 2004755088735334760
  ChildIds: 819224908374950920
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
  Id: 819224908374950920
  Name: "NPCgeo"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -66.2980957
    }
    Scale {
      X: 2.88
      Y: 2.88
      Z: 2.88
    }
  }
  ParentId: 13660530881697860626
  ChildIds: 11069446394590563015
  ChildIds: 18106365414632172225
  ChildIds: 370281142724139058
  ChildIds: 4527254085211215257
  ChildIds: 11236932831340706969
  ChildIds: 11607755201309467638
  ChildIds: 16342588324962778823
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16342588324962778823
  Name: "Effects - Gather Stone"
  Transform {
    Location {
      X: 26.250515
      Y: 27.9445057
      Z: -22.6660938
    }
    Rotation {
      Yaw: 129.205154
    }
    Scale {
      X: 0.347222209
      Y: 0.347222209
      Z: 0.347222209
    }
  }
  ParentId: 819224908374950920
  ChildIds: 15603612418439967524
  ChildIds: 2015918882688487050
  ChildIds: 6373823538704655581
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
    SelfId: 16342588324962778823
    SubobjectId: 5538753253552500178
    InstanceId: 13498153491995104195
    TemplateId: 3913565970023041867
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6373823538704655581
  Name: "Heavy Ground Rocky Debris Impact 01 SFX"
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
  ParentId: 16342588324962778823
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
  AudioInstance {
    AudioAsset {
      Id: 16735611449542770288
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
  InstanceHistory {
    SelfId: 6373823538704655581
    SubobjectId: 17754682312606398408
    InstanceId: 13498153491995104195
    TemplateId: 3913565970023041867
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2015918882688487050
  Name: "Hammer Chisel Metal Mine Rock Hit 01 SFX"
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
  ParentId: 16342588324962778823
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
  AudioInstance {
    AudioAsset {
      Id: 14745273200076872780
    }
    Volume: 1
    Falloff: -1
    Radius: 1000
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
  InstanceHistory {
    SelfId: 2015918882688487050
    SubobjectId: 13107982114516983199
    InstanceId: 13498153491995104195
    TemplateId: 3913565970023041867
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15603612418439967524
  Name: "Explosion Kit Rock Burst VFX"
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
  ParentId: 16342588324962778823
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.248000011
        G: 0.248000011
        B: 0.248000011
        A: 1
      }
    }
    Overrides {
      Name: "bp:Density"
      Float: 7.58632183
    }
    Overrides {
      Name: "bp:Initial Velocity Multiplier"
      Float: 0.25
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
  Blueprint {
    BlueprintAsset {
      Id: 1057362875518977208
    }
    TeamSettings {
    }
    Vfx {
    }
  }
  InstanceHistory {
    SelfId: 15603612418439967524
    SubobjectId: 8546205988312571953
    InstanceId: 13498153491995104195
    TemplateId: 3913565970023041867
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11607755201309467638
  Name: "Signals"
  Transform {
    Location {
      X: -0.53903991
      Y: 0.957767189
      Z: 48.1050835
    }
    Rotation {
      Yaw: 12.2446556
    }
    Scale {
      X: 1.04166663
      Y: 1.04166663
      Z: 1.04166663
    }
  }
  ParentId: 819224908374950920
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Signals_2"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11236932831340706969
  Name: "Gatherable Stone - State 1"
  Transform {
    Location {
      X: 52.9050865
      Y: 34.1666908
      Z: -40.2613792
    }
    Rotation {
      Pitch: 14.6475992
      Yaw: 129.205154
    }
    Scale {
      X: 0.347222209
      Y: 0.347222209
      Z: 0.347222209
    }
  }
  ParentId: 819224908374950920
  ChildIds: 2710665599408115981
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
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 11236932831340706969
    SubobjectId: 4375348249174955034
    InstanceId: 13857550230587295442
    TemplateId: 16950761026157849342
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2710665599408115981
  Name: "Geo (Art)"
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
  ParentId: 11236932831340706969
  ChildIds: 4258731862934163821
  ChildIds: 6463798748542281674
  ChildIds: 3519868272721669632
  ChildIds: 5303004851087045073
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
    SelfId: 2710665599408115981
    SubobjectId: 9428284527078832526
    InstanceId: 13857550230587295442
    TemplateId: 16950761026157849342
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5303004851087045073
  Name: "Rock Pile 002"
  Transform {
    Location {
      X: -36.1542969
      Y: -75.9003906
      Z: 24.2520676
    }
    Rotation {
      Yaw: 36.7148933
    }
    Scale {
      X: 0.864949286
      Y: 0.864949286
      Z: 0.840284228
    }
  }
  ParentId: 2710665599408115981
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14212988502358508072
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
  CoreMesh {
    MeshAsset {
      Id: 14293176668765266901
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
  InstanceHistory {
    SelfId: 5303004851087045073
    SubobjectId: 17208755562200209746
    InstanceId: 13857550230587295442
    TemplateId: 16950761026157849342
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3519868272721669632
  Name: "Rock Pile 001"
  Transform {
    Location {
      X: -47.5966797
      Y: 134.96875
      Z: 3.41638184
    }
    Rotation {
      Yaw: -48.6708374
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2710665599408115981
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14293176668765266901
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
    SelfId: 3519868272721669632
    SubobjectId: 10921461476718921347
    InstanceId: 13857550230587295442
    TemplateId: 16950761026157849342
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6463798748542281674
  Name: "Rock 03"
  Transform {
    Location {
      X: 65.9707
      Y: 43.2148438
      Z: 3.4163208
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.561915219
    }
  }
  ParentId: 2710665599408115981
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 6981536508008379085
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
    SelfId: 6463798748542281674
    SubobjectId: 18374053598292463433
    InstanceId: 13857550230587295442
    TemplateId: 16950761026157849342
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4258731862934163821
  Name: "Rock Pile 002"
  Transform {
    Location {
      X: -42.7597656
      Y: -70.0449219
      Z: 3.41625977
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2710665599408115981
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16388825162191980240
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
    SelfId: 4258731862934163821
    SubobjectId: 11264567828727724526
    InstanceId: 13857550230587295442
    TemplateId: 16950761026157849342
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4527254085211215257
  Name: "right_prop"
  Transform {
    Location {
      X: -20.0774212
      Y: 18.977499
      Z: -0.422520101
    }
    Rotation {
      Pitch: 74.4255676
      Yaw: -115.907013
      Roll: 46.8657265
    }
    Scale {
      X: 0.347222209
      Y: 0.347222209
      Z: 0.347222209
    }
  }
  ParentId: 819224908374950920
  ChildIds: 8461854656779227928
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 8461854656779227928
  Name: "Urban Iron Pickaxe 01 Template"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4527254085211215257
  TemplateInstance {
    ParameterOverrideMap {
      key: 17427950119200585681
      value {
        Overrides {
          Name: "Name"
          String: "Urban Iron Pickaxe 01 Template"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 9.25064087e-05
            Y: 0.000267982483
            Z: -12.6992645
          }
        }
      }
    }
    TemplateAsset {
      Id: 768627957573145374
    }
  }
}
Objects {
  Id: 370281142724139058
  Name: "Miner"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 819224908374950920
  TemplateInstance {
    ParameterOverrideMap {
      key: 11052251438623501049
      value {
        Overrides {
          Name: "Name"
          String: "Miner"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -16.9071331
            Y: 0.541157186
            Z: -1.29346049
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 17.938797
          }
        }
      }
    }
    TemplateAsset {
      Id: 5542352630394806668
    }
  }
}
Objects {
  Id: 18106365414632172225
  Name: "AnimatedMeshCostume"
  Transform {
    Location {
      X: 566.506775
      Y: -703.742676
      Z: 17.3883228
    }
    Rotation {
      Yaw: 129.205154
    }
    Scale {
      X: 0.347222209
      Y: 0.347222209
      Z: 0.347222209
    }
  }
  ParentId: 819224908374950920
  UnregisteredParameters {
    Overrides {
      Name: "cs:Mesh"
      ObjectReference {
        SelfId: 5942609737900599877
      }
    }
    Overrides {
      Name: "cs:EffectsGatherStone"
      ObjectReference {
        SelfId: 16342588324962778823
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
  Script {
    ScriptAsset {
      Id: 2040202329199522922
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11069446394590563015
  Name: "Prop_Metal Hand Lantern_LootMMO"
  Transform {
    Location {
      X: -2947.08423
      Y: -22351.291
      Z: 2517.90137
    }
    Rotation {
      Pitch: -15.9941711
      Yaw: 26.2794819
      Roll: -1.72598195
    }
    Scale {
      X: 0.466663122
      Y: 0.466663122
      Z: 0.466663122
    }
  }
  ParentId: 819224908374950920
  TemplateInstance {
    ParameterOverrideMap {
      key: 6854115439581406339
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 0.314
            B: 0.314
            A: 1
          }
        }
        Overrides {
          Name: "AttenuationRadius"
          Float: 3641.78345
        }
        Overrides {
          Name: "SourceRadius"
          Float: 0
        }
        Overrides {
          Name: "SoftSourceRadius"
          Float: 220.035858
        }
        Overrides {
          Name: "SourceLength"
          Float: 54.4578247
        }
        Overrides {
          Name: "FallOffExponent"
          Float: 10.6574078
        }
        Overrides {
          Name: "Temperature"
          Float: 3134.34106
        }
        Overrides {
          Name: "Intensity"
          Float: 11.3161497
        }
      }
    }
    ParameterOverrideMap {
      key: 14826529378783049208
      value {
        Overrides {
          Name: "Name"
          String: "Prop_Metal Hand Lantern_LootMMO"
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 11.9439373
            Yaw: 154.992676
            Roll: 11.732255
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.162035793
            Y: 0.162035793
            Z: 0.162035793
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -38.5316849
            Y: 58.228035
            Z: -29.259264
          }
        }
      }
    }
    TemplateAsset {
      Id: 15485064354472933835
    }
  }
}
Objects {
  Id: 2004755088735334760
  Name: "LocalLogic"
  Transform {
    Location {
      X: -25.6984863
      Y: -19.3632812
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13660530881697860626
  ChildIds: 16087578676819592951
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
    Type: Local
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16087578676819592951
  Name: "Trigger"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -54.0534706
    }
    Scale {
      X: 3
      Y: 3
      Z: 3
    }
  }
  ParentId: 2004755088735334760
  ChildIds: 8889188642590982862
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
  Trigger {
    Interactable: true
    InteractionLabel: "Chat"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
      Id: 841534158063459245
    }
    BreadcrumbTemplate {
      Id: 841534158063459245
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8889188642590982862
  Name: "ChatNPC"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-06
    }
    Scale {
      X: 0.333333343
      Y: 0.333333343
      Z: 0.333333343
    }
  }
  ParentId: 16087578676819592951
  UnregisteredParameters {
    Overrides {
      Name: "cs:ChatID"
      String: "Miner"
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
      Id: 8180739351578799712
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2450179119937356925
  Name: "Greeter"
  Transform {
    Location {
      X: -2874.9939
      Y: -22257.3926
      Z: 2582.13428
    }
    Rotation {
      Pitch: 4.50795889
      Yaw: 169.997574
      Roll: -6.019104
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
  ChildIds: 13781026987187032289
  ChildIds: 4306925911175813128
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
  Id: 4306925911175813128
  Name: "NPCgeo"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -66.2981
    }
    Scale {
      X: 2.88
      Y: 2.88
      Z: 2.88
    }
  }
  ParentId: 2450179119937356925
  ChildIds: 4464870050830864738
  ChildIds: 17373180581747013269
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17373180581747013269
  Name: "Signals"
  Transform {
    Location {
      X: -0.53903991
      Y: 0.957767189
      Z: 48.1050835
    }
    Rotation {
      Yaw: 12.2446556
    }
    Scale {
      X: 1.04166663
      Y: 1.04166663
      Z: 1.04166663
    }
  }
  ParentId: 4306925911175813128
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Signals_3"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4464870050830864738
  Name: "Greeter"
  Transform {
    Location {
      X: -18.0772438
      Y: 4.87397242
      Z: 3.09546471
    }
    Rotation {
      Pitch: -1.93063354
      Yaw: 32.9542046
      Roll: -3.81777954
    }
    Scale {
      X: 0.360407203
      Y: 0.360407203
      Z: 0.360407203
    }
  }
  ParentId: 4306925911175813128
  ChildIds: 9267667729584033008
  UnregisteredParameters {
    Overrides {
      Name: "ma:0:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:0:Shared_Detail1:color"
      Color {
        R: 0.03125
        G: 0.0284611881
        B: 0.02734375
        A: 1
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail2:color"
      Color {
        R: 0.048
        G: 0.0339432806
        B: 0.033024
        A: 1
      }
    }
    Overrides {
      Name: "ma:1:Shared_BaseMaterial:color"
      Color {
        R: 0.085
        G: 0.0593676604
        B: 0.0423299968
        A: 1
      }
    }
    Overrides {
      Name: "ma:2:Shared_Detail2:color"
      Color {
        R: 0.0440000035
        G: 0.020996388
        B: 0.019492
        A: 1
      }
    }
    Overrides {
      Name: "ma:0:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16582650616127206033
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
  CoreMesh {
    MeshAsset {
      Id: 12092204065995792596
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 11241465226241462039
      }
      SkinnedMeshes {
        Id: 3557954209464392513
      }
      SkinnedMeshes {
        Id: 15494817542660282536
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
  InstanceHistory {
    SelfId: 4464870050830864738
    SubobjectId: 5339325576282374243
    InstanceId: 6806576216077729781
    TemplateId: 6566379502194667695
    WasRoot: true
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9267667729584033008
  Name: "Prop_Metal Hand Lantern_LootMMO"
  Transform {
    Location {
      X: -114.640625
      Y: -22509.3457
      Z: 1864.14868
    }
    Rotation {
      Pitch: -3.23650551
      Yaw: 24.687521
      Roll: -3.48355198
    }
    Scale {
      X: 0.880786
      Y: 0.880786
      Z: 0.880786
    }
  }
  ParentId: 4464870050830864738
  TemplateInstance {
    ParameterOverrideMap {
      key: 6854115439581406339
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 0.314
            B: 0.314
            A: 1
          }
        }
        Overrides {
          Name: "AttenuationRadius"
          Float: 3641.78345
        }
        Overrides {
          Name: "SourceRadius"
          Float: 0
        }
        Overrides {
          Name: "SoftSourceRadius"
          Float: 220.035858
        }
        Overrides {
          Name: "SourceLength"
          Float: 54.4578247
        }
        Overrides {
          Name: "FallOffExponent"
          Float: 10.6574078
        }
        Overrides {
          Name: "Temperature"
          Float: 3134.34106
        }
        Overrides {
          Name: "Intensity"
          Float: 11.3161497
        }
      }
    }
    ParameterOverrideMap {
      key: 14826529378783049208
      value {
        Overrides {
          Name: "Name"
          String: "Prop_Metal Hand Lantern_LootMMO"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 25.8847885
            Y: 60.1034737
            Z: -88.038063
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -5.86483717
            Yaw: -109.66864
            Roll: -7.08508396
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.449590892
            Y: 0.449590892
            Z: 0.449590892
          }
        }
      }
    }
    TemplateAsset {
      Id: 15485064354472933835
    }
  }
  InstanceHistory {
    SelfId: 9267667729584033008
    SubobjectId: 16062246073499546373
    InstanceId: 6806576216077729781
    TemplateId: 6566379502194667695
  }
}
Objects {
  Id: 13781026987187032289
  Name: "LocalLogic"
  Transform {
    Location {
      X: -25.6984863
      Y: -19.3632812
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2450179119937356925
  ChildIds: 8811408917068771163
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
    Type: Local
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8811408917068771163
  Name: "Trigger"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -54.0534706
    }
    Scale {
      X: 3
      Y: 3
      Z: 3
    }
  }
  ParentId: 13781026987187032289
  ChildIds: 12835239215145585284
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
  Trigger {
    Interactable: true
    InteractionLabel: "Chat"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
      Id: 841534158063459245
    }
    BreadcrumbTemplate {
      Id: 841534158063459245
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12835239215145585284
  Name: "ChatNPC"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-06
    }
    Scale {
      X: 0.333333343
      Y: 0.333333343
      Z: 0.333333343
    }
  }
  ParentId: 8811408917068771163
  UnregisteredParameters {
    Overrides {
      Name: "cs:ChatID"
      String: "Greeter"
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
      Id: 8180739351578799712
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16313518309989094715
  Name: "Logic"
  Transform {
    Location {
      X: 175.049805
      Y: 72.6254044
      Z: -3.81469727e-06
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
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
    FilePartitionName: "Logic"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
