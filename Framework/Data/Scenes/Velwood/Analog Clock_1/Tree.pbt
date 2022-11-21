Name: "Analog Clock_1"
RootId: 9365875276957594129
Objects {
  Id: 3993439169695300374
  Name: "Time"
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
  ParentId: 9365875276957594129
  ChildIds: 13830684827964396954
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
    SelfId: 3993439169695300374
    SubobjectId: 1326078235196798253
    InstanceId: 5519599202995054309
    TemplateId: 4338639372156055274
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13830684827964396954
  Name: "Hands"
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
  ParentId: 3993439169695300374
  ChildIds: 2449179633814098888
  ChildIds: 12240335548544189696
  ChildIds: 11887833376157147700
  ChildIds: 12529294437653734622
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
    SelfId: 13830684827964396954
    SubobjectId: 11168030389378374561
    InstanceId: 5519599202995054309
    TemplateId: 4338639372156055274
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12529294437653734622
  Name: "Second"
  Transform {
    Location {
      Z: 1
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13830684827964396954
  ChildIds: 5498496518065718573
  ChildIds: 16479511613994635821
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
    SelfId: 12529294437653734622
    SubobjectId: 9866357697563683557
    InstanceId: 5519599202995054309
    TemplateId: 4338639372156055274
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16479511613994635821
  Name: "Tip"
  Transform {
    Location {
      X: 99.9999466
      Z: 0.00100708008
    }
    Rotation {
      Yaw: 44.9999695
    }
    Scale {
      X: 0.07
      Y: 0.07
      Z: 1
    }
  }
  ParentId: 12529294437653734622
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5351428073291024820
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
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
      Id: 8933537604162373856
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
  InstanceHistory {
    SelfId: 16479511613994635821
    SubobjectId: 13960695286822771734
    InstanceId: 5519599202995054309
    TemplateId: 4338639372156055274
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
  Id: 5498496518065718573
  Name: "Arm"
  Transform {
    Location {
      X: 50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 0.03
      Z: 1
    }
  }
  ParentId: 12529294437653734622
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5351428073291024820
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
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
      Id: 8933537604162373856
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
  InstanceHistory {
    SelfId: 5498496518065718573
    SubobjectId: 7584681442364230422
    InstanceId: 5519599202995054309
    TemplateId: 4338639372156055274
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
  Id: 11887833376157147700
  Name: "Minute"
  Transform {
    Location {
      Z: 2
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13830684827964396954
  ChildIds: 7068225977607678206
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
    SelfId: 11887833376157147700
    SubobjectId: 9364874363632397327
    InstanceId: 5519599202995054309
    TemplateId: 4338639372156055274
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7068225977607678206
  Name: "Arm"
  Transform {
    Location {
      X: -9.17602539
      Y: 0.258300781
      Z: 13.0009747
    }
    Rotation {
      Yaw: -89.6084
      Roll: 89.9999771
    }
    Scale {
      X: 2.58967018
      Y: 1.68885899
      Z: 2.37765574
    }
  }
  ParentId: 11887833376157147700
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Trim:id"
      AssetReference {
        Id: 12889861000896994476
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 12889861000896994476
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.389000028
        G: 0.389000028
        B: 0.389000028
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
  CoreMesh {
    MeshAsset {
      Id: 4342756216088781504
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
    SelfId: 5831829064240176280
    SubobjectId: 1132790452851144389
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 13504435348949306797
    OuterTemplateIds: 4338639372156055274
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
  Id: 12240335548544189696
  Name: "Hour"
  Transform {
    Location {
      Z: 3
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13830684827964396954
  ChildIds: 11697947327578300386
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
    SelfId: 12240335548544189696
    SubobjectId: 10147400170057861947
    InstanceId: 5519599202995054309
    TemplateId: 4338639372156055274
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11697947327578300386
  Name: "Fantasy Sword Blade 01"
  Transform {
    Location {
      X: -2.84399414
      Y: -0.91796875
      Z: 19.8593731
    }
    Rotation {
      Pitch: 1.36603776e-05
      Yaw: -88.983429
      Roll: 89.9999847
    }
    Scale {
      X: 2.58295035
      Y: 1.68440509
      Z: 3.45671511
    }
  }
  ParentId: 12240335548544189696
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Trim:id"
      AssetReference {
        Id: 12889861000896994476
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 12889861000896994476
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.389000028
        G: 0.389000028
        B: 0.389000028
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
  CoreMesh {
    MeshAsset {
      Id: 5605120965849612947
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
    SelfId: 10425488633105689476
    SubobjectId: 14985848586864148953
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 13504435348949306797
    OuterTemplateIds: 4338639372156055274
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
  Id: 2449179633814098888
  Name: "Center"
  Transform {
    Location {
      X: -5.77832031
      Z: 17.6572247
    }
    Rotation {
    }
    Scale {
      X: 0.153642043
      Y: 0.153642043
      Z: 0.07
    }
  }
  ParentId: 13830684827964396954
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4019005240395597937
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.068
        G: 0.068
        B: 0.068
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
      Id: 6530006698448607407
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
  InstanceHistory {
    SelfId: 2449179633814098888
    SubobjectId: 356238485440814579
    InstanceId: 5519599202995054309
    TemplateId: 4338639372156055274
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
  Id: 10783778725344914235
  Name: "clock"
  Transform {
    Location {
      X: -5.754879
      Y: 0.639648438
      Z: -43.7490196
    }
    Rotation {
      Pitch: 2.04905664e-05
      Yaw: -89.9999695
      Roll: 89.9999771
    }
    Scale {
      X: 0.992634475
      Y: 0.992634475
      Z: 0.992634475
    }
  }
  ParentId: 9365875276957594129
  ChildIds: 6590411475645919843
  ChildIds: 4056926279965192887
  ChildIds: 16089936871307054985
  ChildIds: 1480317989747150923
  ChildIds: 14327282739213979158
  ChildIds: 15485154096472118058
  ChildIds: 15600367669194096371
  ChildIds: 1941317873558383922
  ChildIds: 12743434213681490300
  ChildIds: 13182794749417386672
  ChildIds: 1380232071673529319
  ChildIds: 16641915528504401110
  ChildIds: 934302386786518257
  ChildIds: 10720930082157084776
  ChildIds: 3067079696474744842
  ChildIds: 2193116724304746355
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
    SelfId: 12060110029881270109
    SubobjectId: 17872734563340530944
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2193116724304746355
  Name: "Sphere"
  Transform {
    Location {
      Y: -0.535217285
    }
    Rotation {
    }
    Scale {
      X: 0.686239302
      Y: 1.49229491
      Z: 0.686239302
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 3212816664375386901
    SubobjectId: 8340839077909367112
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 3067079696474744842
  Name: "Pipe Thin 01 - Large"
  Transform {
    Location {
      Y: -58.3425
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.448526442
      Y: 0.448526442
      Z: 0.448526442
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4298367287035211518
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 11348006848872106943
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
    SelfId: 1759155978208238700
    SubobjectId: 5133941132130760241
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 10720930082157084776
  Name: "Cube"
  Transform {
    Location {
      X: 98.0673828
      Y: -17.821228
      Z: 97.2768555
    }
    Rotation {
      Pitch: -45
      Roll: 90
    }
    Scale {
      X: 0.1
      Y: 1.49999976
      Z: 0.799999952
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 11975588913938838542
    SubobjectId: 17971471247671746131
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 934302386786518257
  Name: "Cube"
  Transform {
    Location {
      X: -95.5655518
      Y: -17.821228
      Z: -96.3563232
    }
    Rotation {
      Pitch: -45
      Roll: 90
    }
    Scale {
      X: 0.1
      Y: 1.49999976
      Z: 0.8
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 4471789259092537495
    SubobjectId: 7014453088831331018
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 16641915528504401110
  Name: "Cube"
  Transform {
    Location {
      X: -97.2766724
      Y: -17.821228
      Z: 98.0673828
    }
    Rotation {
      Pitch: 45
      Roll: 90
    }
    Scale {
      X: 0.1
      Y: 1.49999976
      Z: 0.799999952
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 15279101313613572272
    SubobjectId: 10042164025478136557
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 1380232071673529319
  Name: "Cube"
  Transform {
    Location {
      X: 96.3563843
      Y: -17.821228
      Z: -95.5656738
    }
    Rotation {
      Pitch: 45
      Roll: 90
    }
    Scale {
      X: 0.1
      Y: 1.49999976
      Z: 0.8
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 2440425915937208193
    SubobjectId: 9117688320227859932
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 13182794749417386672
  Name: "Pipe Thin 01 - Large"
  Transform {
    Location {
      Y: -60.8042603
    }
    Rotation {
      Pitch: 90
      Yaw: -26.5650635
      Roll: 63.4349518
    }
    Scale {
      X: 0.136369094
      Y: 0.136369094
      Z: 0.136369094
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4298367287035211518
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 11348006848872106943
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
    SelfId: 9514701162222421718
    SubobjectId: 15806976098324147339
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 12743434213681490300
  Name: "Cube"
  Transform {
    Location {
      X: -138.129089
      Y: -17.821228
      Z: 0.559082031
    }
    Rotation {
      Pitch: 90
      Yaw: -26.5650635
      Roll: 63.4349518
    }
    Scale {
      X: 0.1
      Y: 1.49999976
      Z: 0.799999952
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 9376624541203209498
    SubobjectId: 15958185458292258631
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 1941317873558383922
  Name: "Cube"
  Transform {
    Location {
      X: 135.709412
      Y: -17.821228
      Z: 0.559082031
    }
    Rotation {
      Pitch: 90
      Yaw: -26.5650635
      Roll: 63.4349518
    }
    Scale {
      X: 0.1
      Y: 1.49999976
      Z: 0.8
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 2884909481236076884
    SubobjectId: 8601851835907273481
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 15600367669194096371
  Name: "Cube"
  Transform {
    Location {
      X: 0.559143066
      Y: -17.821228
      Z: -135.709473
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.1
      Y: 1.49999976
      Z: 0.8
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 16899212298842180245
    SubobjectId: 13101177217819762888
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 15485154096472118058
  Name: "Cube"
  Transform {
    Location {
      X: 0.559143066
      Y: -17.821228
      Z: 138.12915
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.1
      Y: 1.49999976
      Z: 0.799999952
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 16438105835811120972
    SubobjectId: 13495398446940343569
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 14327282739213979158
  Name: "Cube"
  Transform {
    Location {
      X: 0.559143066
      Y: -55.1967163
      Z: 138.12915
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.109446928
      Y: 1.28165448
      Z: 0.109446734
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 17594728169334946416
    SubobjectId: 12356649516738564141
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 1480317989747150923
  Name: "Cube"
  Transform {
    Location {
      X: 0.559143066
      Y: -55.1967163
      Z: -135.709473
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.109446928
      Y: 1.28165448
      Z: 0.109446742
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17118136979191323600
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.283000022
        G: 0.283000022
        B: 0.283000022
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
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
    SelfId: 2770442674880390189
    SubobjectId: 8729169768527220336
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 16089936871307054985
  Name: "Pipe Thin 01 - Large"
  Transform {
    Location {
      Y: -55.7824097
    }
    Rotation {
      Roll: 89.9999619
    }
    Scale {
      X: 0.365080357
      Y: 0.365080357
      Z: 0.365080357
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4298367287035211518
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.841
        G: 0.841
        B: 0.841
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
  CoreMesh {
    MeshAsset {
      Id: 11348006848872106943
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
    SelfId: 17128108469234990063
    SubobjectId: 12890965348897821106
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 4056926279965192887
  Name: "Pipe Thin 01 - Large"
  Transform {
    Location {
      Y: -55.7824097
    }
    Rotation {
      Roll: 89.9999847
    }
    Scale {
      X: 0.290182441
      Y: 0.290182441
      Z: 0.290182441
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4298367287035211518
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.841
        G: 0.841
        B: 0.841
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
  CoreMesh {
    MeshAsset {
      Id: 11348006848872106943
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
    SelfId: 771429746527323857
    SubobjectId: 6188508892136123532
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
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
  Id: 6590411475645919843
  Name: "Cylinder - Polished"
  Transform {
    Location {
    }
    Rotation {
      Roll: -89.9999924
    }
    Scale {
      X: 4.07872772
      Y: 4.07872772
      Z: 1.09812021
    }
  }
  ParentId: 10783778725344914235
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5351428073291024820
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.783571362
        B: 0.495
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
  CoreMesh {
    MeshAsset {
      Id: 12905923173550510229
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
    SelfId: 7605572483728770565
    SubobjectId: 3952683451996662872
    InstanceId: 5519599202995054309
    TemplateId: 6344390375798230566
    NestedInstanceIds: 15243021188410125450
    NestedInstanceIds: 7558011477230756135
    OuterTemplateIds: 4338639372156055274
    OuterTemplateIds: 8026234147816505055
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
