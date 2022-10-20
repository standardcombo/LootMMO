Name: "Undead1"
RootId: 7006174973993846663
Objects {
  Id: 3658142367158340159
  Name: "Waypoints"
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
  ParentId: 7006174973993846663
  ChildIds: 18117243663511394189
  ChildIds: 6051761820731801445
  ChildIds: 8607717789278839347
  ChildIds: 10720691182938326998
  ChildIds: 6686151756183950943
  ChildIds: 2643741810717769310
  ChildIds: 16008485634200580244
  ChildIds: 16614133942077813768
  ChildIds: 1342483352981847364
  ChildIds: 12188610985758192162
  ChildIds: 8838900121282608652
  ChildIds: 310334628348091617
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
  Id: 310334628348091617
  Name: "NPC Waypoint - J"
  Transform {
    Location {
      X: -16040.1992
      Y: 10929.5615
      Z: 42116.1523
    }
    Rotation {
      Yaw: 158.367813
    }
    Scale {
      X: 4.92339087
      Y: 8.09669685
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 249537580807299902
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 8838900121282608652
      }
    }
    Overrides {
      Name: "cs:NPCWaypointB"
      ObjectReference {
        SelfId: 10720691182938326998
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 249537580807299902
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-05
    }
    Scale {
      X: 0.203110784
      Y: 0.213012353
      Z: 0.214792699
    }
  }
  ParentId: 310334628348091617
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8838900121282608652
  Name: "NPC Waypoint - I"
  Transform {
    Location {
      X: -18039.1426
      Y: 11093.71
      Z: 42513.6523
    }
    Rotation {
      Yaw: -161.482651
    }
    Scale {
      X: 4.92339087
      Y: 8.09669685
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 500690845277949367
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 12188610985758192162
      }
    }
    Overrides {
      Name: "cs:NPCWaypointJ"
      ObjectReference {
        SelfId: 310334628348091617
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 500690845277949367
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-05
    }
    Scale {
      X: 0.203110784
      Y: 0.213012353
      Z: 0.214792699
    }
  }
  ParentId: 8838900121282608652
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12188610985758192162
  Name: "NPC Waypoint - H"
  Transform {
    Location {
      X: -20008.6387
      Y: 8722.63379
      Z: 42645.4922
    }
    Rotation {
      Yaw: 108.506866
    }
    Scale {
      X: 9.61720181
      Y: 9.95847797
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 1118436692475766603
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 1342483352981847364
      }
    }
    Overrides {
      Name: "cs:NPCWaypointI"
      ObjectReference {
        SelfId: 8838900121282608652
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1118436692475766603
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-05
    }
    Scale {
      X: 0.203110784
      Y: 0.213012353
      Z: 0.214792699
    }
  }
  ParentId: 12188610985758192162
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1342483352981847364
  Name: "NPC Waypoint - G"
  Transform {
    Location {
      X: -20789.3027
      Y: 6575.60303
      Z: 42152.2656
    }
    Rotation {
      Yaw: 109.990685
    }
    Scale {
      X: 4.92339087
      Y: 8.09669685
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 238486167523318122
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 8607717789278839347
      }
    }
    Overrides {
      Name: "cs:NPCWaypointH"
      ObjectReference {
        SelfId: 12188610985758192162
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 238486167523318122
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-05
    }
    Scale {
      X: 0.203110784
      Y: 0.213012353
      Z: 0.214792699
    }
  }
  ParentId: 1342483352981847364
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16614133942077813768
  Name: "NPC Waypoint - F"
  Transform {
    Location {
      X: -18294.9629
      Y: 4211.32764
      Z: 40657.2812
    }
    Rotation {
      Yaw: -6.57092857
    }
    Scale {
      X: 6.08187723
      Y: 11.7792
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 405972270910100502
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 6686151756183950943
      }
    }
    Overrides {
      Name: "cs:NPCWaypointE"
      ObjectReference {
        SelfId: 16008485634200580244
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 405972270910100502
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.217912704
      Y: 0.231539518
      Z: 0.214792699
    }
  }
  ParentId: 16614133942077813768
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16008485634200580244
  Name: "NPC Waypoint - E"
  Transform {
    Location {
      X: -13421.9746
      Y: 4188.26123
      Z: 40657.2812
    }
    Rotation {
      Yaw: -29.2140808
    }
    Scale {
      X: 10.2048893
      Y: 18.1908092
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 3713359005827180037
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 6686151756183950943
      }
    }
    Overrides {
      Name: "cs:NPCWaypointD"
      ObjectReference {
        SelfId: 2643741810717769310
      }
    }
    Overrides {
      Name: "cs:NPCWaypointF"
      ObjectReference {
        SelfId: 16614133942077813768
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3713359005827180037
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.217912704
      Y: 0.231539518
      Z: 0.214792699
    }
  }
  ParentId: 16008485634200580244
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2643741810717769310
  Name: "NPC Waypoint - D"
  Transform {
    Location {
      X: -15394.8682
      Y: 7911.21631
      Z: 40657.2812
    }
    Rotation {
      Yaw: -43.3959351
    }
    Scale {
      X: 5.2007103
      Y: 18.1908131
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 1307512283604508723
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 6686151756183950943
      }
    }
    Overrides {
      Name: "cs:NPCWaypointE"
      ObjectReference {
        SelfId: 16008485634200580244
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1307512283604508723
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.217912704
      Y: 0.231539518
      Z: 0.214792699
    }
  }
  ParentId: 2643741810717769310
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6686151756183950943
  Name: "NPC Waypoint - C"
  Transform {
    Location {
      X: -16590.7188
      Y: 6459.64648
      Z: 40751.1719
    }
    Rotation {
      Yaw: -59.5057869
    }
    Scale {
      X: 8.56093407
      Y: 8.26843643
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 3862597816161947490
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 8607717789278839347
      }
    }
    Overrides {
      Name: "cs:NPCWaypointD"
      ObjectReference {
        SelfId: 2643741810717769310
      }
    }
    Overrides {
      Name: "cs:NPCWaypointE"
      ObjectReference {
        SelfId: 16008485634200580244
      }
    }
    Overrides {
      Name: "cs:NPCWaypointF"
      ObjectReference {
        SelfId: 16614133942077813768
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3862597816161947490
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.217912704
      Y: 0.231539518
      Z: 0.214792699
    }
  }
  ParentId: 6686151756183950943
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10720691182938326998
  Name: "NPC Waypoint - B"
  Transform {
    Location {
      X: -17630.1777
      Y: 9183.31738
      Z: 41701.9102
    }
    Rotation {
      Yaw: 74.5771561
    }
    Scale {
      X: 4.92340469
      Y: 7.49687958
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 17601404478128822573
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 6051761820731801445
      }
    }
    Overrides {
      Name: "cs:NPCWaypointJ"
      ObjectReference {
        SelfId: 310334628348091617
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17601404478128822573
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-05
    }
    Scale {
      X: 0.203110784
      Y: 0.213012353
      Z: 0.214792699
    }
  }
  ParentId: 10720691182938326998
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8607717789278839347
  Name: "NPC Waypoint - A"
  Transform {
    Location {
      X: -19269.4941
      Y: 6101.59521
      Z: 41564.6953
    }
    Rotation {
      Yaw: -65.9609375
    }
    Scale {
      X: 5.47824812
      Y: 13.2180452
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 13976249059800431037
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 6051761820731801445
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint_0"
      ObjectReference {
        SelfId: 6686151756183950943
      }
    }
    Overrides {
      Name: "cs:NPCWaypointG"
      ObjectReference {
        SelfId: 1342483352981847364
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint_0:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint_0:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13976249059800431037
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.109479882
      Y: 0.0892771408
      Z: 0.214792699
    }
  }
  ParentId: 8607717789278839347
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6051761820731801445
  Name: "NPC Waypoint - 1"
  Transform {
    Location {
      X: -18470.3223
      Y: 7047.98486
      Z: 41389.7734
    }
    Rotation {
      Yaw: -45.3571777
    }
    Scale {
      X: 5.75042677
      Y: 5.09599161
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 2894186968588056707
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 18117243663511394189
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint_0"
      ObjectReference {
        SelfId: 8607717789278839347
      }
    }
    Overrides {
      Name: "cs:NPCWaypointG"
      ObjectReference {
        SelfId: 10720691182938326998
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint_0:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint_0:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2894186968588056707
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.109479882
      Y: 0.0892771408
      Z: 0.214792699
    }
  }
  ParentId: 6051761820731801445
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18117243663511394189
  Name: "NPC Waypoint - 0"
  Transform {
    Location {
      X: -19253.6445
      Y: 7751.4209
      Z: 41471.7305
    }
    Rotation {
      Yaw: -45.3571472
    }
    Scale {
      X: 5.75042677
      Y: 5.09599161
      Z: 4.65565157
    }
  }
  ParentId: 3658142367158340159
  ChildIds: 2243554887679932735
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 6051761820731801445
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2243554887679932735
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.109479882
      Y: 0.0892771408
      Z: 0.214792699
    }
  }
  ParentId: 18117243663511394189
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
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16878430949566981719
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -13344.0264
      Y: 4997.5542
      Z: 40626.293
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 16669258094547747874
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -13867.1367
      Y: 3527.16016
      Z: 40598.75
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 13463947255149779136
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -13159.4502
      Y: 4130.4541
      Z: 40635.5742
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 12590676653596958978
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -18372.8965
      Y: 3925.07715
      Z: 40641.1719
    }
    Rotation {
      Yaw: 49.755291
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 16795484144013804625
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -18339.2402
      Y: 4587.62402
      Z: 40634.7539
    }
    Rotation {
      Yaw: -157.500031
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 15239409286299295105
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -19231.3887
      Y: 7702.62793
      Z: 41461.0859
    }
    Rotation {
      Yaw: 49.7552681
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 703050477258462531
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -18733.1191
      Y: 6330.146
      Z: 41389.7148
    }
    Rotation {
      Yaw: 32.8299713
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 13106393664238907974
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -19802.8359
      Y: 5820.32715
      Z: 41551.2031
    }
    Rotation {
      Yaw: 32.8299026
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 4540335655330310195
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -17382.0469
      Y: 9007.26074
      Z: 41613.2344
    }
    Rotation {
      Yaw: 49.7552681
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 3279711220073309734
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -16088.4619
      Y: 7394.55713
      Z: 40641.0547
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 4100934026884965304
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -15373.9355
      Y: 7944.20508
      Z: 40640.7852
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 13891915658697065431
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -14990.8213
      Y: 8617.37695
      Z: 40651.5
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
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
  Id: 12344785508616411053
  Name: "Quest Area"
  Transform {
    Location {
      X: -16339.1592
      Y: 6401.23242
      Z: 40053.2812
    }
    Rotation {
      Yaw: -157.500031
    }
    Scale {
      X: 64.1438522
      Y: 64.1438522
      Z: 64.1438522
    }
  }
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
      Bool: false
    }
    Overrides {
      Name: "bp:Shape Visibility"
      Enum {
        Value: "mc:evolumevisibility:newenumerator0"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        G: 0.5
        A: 1
      }
    }
    Overrides {
      Name: "bp:Visible In Preview"
      Bool: true
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
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10304034372392130544
  Name: "Spawn Point - Undead1"
  Transform {
    Location {
      X: -14329.6875
      Y: -15.0673981
      Z: 42924.8
    }
    Rotation {
      Yaw: 125.830605
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
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
    SpawnKey: "Undead1"
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
  Id: 11749265526039846501
  Name: "Spawn Point - Undead1"
  Transform {
    Location {
      X: -14236.6982
      Y: 52.0730515
      Z: 42931.5664
    }
    Rotation {
      Yaw: 125.830605
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
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
    SpawnKey: "Undead1"
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
  Id: 377865247354968570
  Name: "Spawn Point - Undead1"
  Transform {
    Location {
      X: -14142.8203
      Y: 119.856201
      Z: 42942.75
    }
    Rotation {
      Yaw: 125.830544
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
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
    SpawnKey: "Undead1"
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
  Id: 11665208858467451903
  Name: "Spawn Point - Undead1"
  Transform {
    Location {
      X: -14050.7285
      Y: 186.349121
      Z: 42949.9
    }
    Rotation {
      Yaw: 125.830605
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
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
    SpawnKey: "Undead1"
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
  Id: 7680097019777200642
  Name: "Spawn Point - Undead1"
  Transform {
    Location {
      X: -13959.9238
      Y: 251.91449
      Z: 42954.918
    }
    Rotation {
      Yaw: 125.830605
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7006174973993846663
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
    SpawnKey: "Undead1"
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
  Id: 11770499567352528297
  Name: "ObjectiveEventListener"
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
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "Undead1"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.NPCDied"
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "Undead"
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
      Id: 9246345034586664616
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9239213713710815773
  Name: "ObjectiveEncounterSpawn"
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
  ParentId: 7006174973993846663
  UnregisteredParameters {
    Overrides {
      Name: "cs:EnemyIDs"
      String: "Skeleton, Skeleton2, Skeleton3, Skeleton4"
    }
    Overrides {
      Name: "cs:MinPlayerLevel"
      Int: 3
    }
    Overrides {
      Name: "cs:EnemyCount"
      Int: 8
    }
    Overrides {
      Name: "cs:ChanceEpicEnemy"
      Float: 0.1
    }
    Overrides {
      Name: "cs:ChanceLegendaryEnemy"
      Float: 0.01
    }
    Overrides {
      Name: "cs:AdditionalRadius"
      Int: 11000
    }
    Overrides {
      Name: "cs:CommonLootId"
      String: "SkeletonCommon"
    }
    Overrides {
      Name: "cs:RareLootId"
      String: "SkeletonRare"
    }
    Overrides {
      Name: "cs:EpicLootId"
      String: "SkeletonEpic"
    }
    Overrides {
      Name: "cs:LegendaryLootId"
      String: "SkeletonLegendary"
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
      Id: 15156443327978326566
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
