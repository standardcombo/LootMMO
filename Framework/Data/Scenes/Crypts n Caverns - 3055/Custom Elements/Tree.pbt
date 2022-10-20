Name: "Custom Elements"
RootId: 18384832674565965731
Objects {
  Id: 17819281143940016648
  Name: "Game Portal"
  Transform {
    Location {
      X: -4581.41553
      Y: -2155.07715
      Z: 50
    }
    Rotation {
      Yaw: 135
    }
    Scale {
      X: 0.746701717
      Y: 0.746701717
      Z: 0.746701717
    }
  }
  ParentId: 18384832674565965731
  ChildIds: 17338501221426472587
  ChildIds: 17878757881210734652
  UnregisteredParameters {
    Overrides {
      Name: "cs:DestinationGame"
      String: "15499c/neotokyo-world"
    }
    Overrides {
      Name: "cs:EnableEvent"
      String: "LevelComplete"
    }
    Overrides {
      Name: "cs:EnableDelay"
      Float: 8.5
    }
    Overrides {
      Name: "cs:DestinationGame:tooltip"
      String: "The id of the game that this will portal players to. Example: The game ID for the URL https://www.coregames.com/games/577d80/core-royale is 577d80/core-royale."
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17878757881210734652
  Name: "ClientContext"
  Transform {
    Location {
      Z: 150
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17819281143940016648
  ChildIds: 13689765555361009256
  ChildIds: 3855080905238553550
  ChildIds: 2192138860934979329
  ChildIds: 2585317335848328264
  UnregisteredParameters {
    Overrides {
      Name: "cs:IsEnabled"
      Bool: false
    }
    Overrides {
      Name: "cs:IsEnabled:isrep"
      Bool: true
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  Id: 2585317335848328264
  Name: "Portal VFX"
  Transform {
    Location {
      Z: 109.864426
    }
    Rotation {
      Yaw: -89.999939
    }
    Scale {
      X: 0.9
      Y: 0.9
      Z: 0.9
    }
  }
  ParentId: 17878757881210734652
  UnregisteredParameters {
    Overrides {
      Name: "bp:Portal Shape"
      Int: 3
    }
    Overrides {
      Name: "bp:Portal Spread"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Intensity Color Blend"
      Float: 1
    }
    Overrides {
      Name: "bp:Background Texture"
      Enum {
        Value: "mc:eportalbackground:15"
      }
    }
    Overrides {
      Name: "bp:Scene View Distortion Type"
      Enum {
        Value: "mc:eportalscenedistortiontype:newenumerator0"
      }
    }
    Overrides {
      Name: "bp:Edge Distortion"
      Float: 0
    }
    Overrides {
      Name: "bp:Speed"
      Float: 0.247848794
    }
    Overrides {
      Name: "bp:Intersection Distance"
      Float: 44.234417
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: false
    }
    Overrides {
      Name: "bp:Maintain picture scale"
      Bool: false
    }
    Overrides {
      Name: "bp:Edge Distance"
      Float: 0.45
    }
    Overrides {
      Name: "bp:Unlit"
      Bool: true
    }
    Overrides {
      Name: "bp:Disable Swirl and Edge"
      Bool: false
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        G: 1.79999971
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color B"
      Color {
        G: 0.228999957
        B: 0.687000036
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color C"
      Color {
        G: 0.0599999391
        B: 0.399999976
        A: 1
      }
    }
    Overrides {
      Name: "bp:Swirl Color"
      Color {
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 6677237403455816226
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2192138860934979329
  Name: "Transfer Trigger"
  Transform {
    Location {
      Y: -8.79592514
      Z: 9.32098
    }
    Rotation {
    }
    Scale {
      X: 2.67087984
      Y: 0.44514659
      Z: 2.67087984
    }
  }
  ParentId: 17878757881210734652
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
    InteractionLabel: "Take Portal to Another Core Game"
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
  Id: 3855080905238553550
  Name: "Interaction Trigger"
  Transform {
    Location {
      Y: 9.85764122
      Z: -115.9589
    }
    Rotation {
    }
    Scale {
      X: 2.74999976
      Y: 1.51608109
      Z: 2.5
    }
  }
  ParentId: 17878757881210734652
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
    Interactable: true
    InteractionLabel: "Open Portal"
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
  Id: 13689765555361009256
  Name: "PortalPaintingClient"
  Transform {
    Location {
      Z: -150
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17878757881210734652
  UnregisteredParameters {
    Overrides {
      Name: "cs:TransferTrigger"
      ObjectReference {
        SelfId: 2192138860934979329
      }
    }
    Overrides {
      Name: "cs:InteractionTrigger"
      ObjectReference {
        SelfId: 3855080905238553550
      }
    }
    Overrides {
      Name: "cs:PortalVFX"
      ObjectReference {
        SelfId: 2585317335848328264
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 17819281143940016648
      }
    }
    Overrides {
      Name: "cs:NetObject"
      ObjectReference {
        SelfId: 17878757881210734652
      }
    }
    Overrides {
      Name: "cs:ScaleOnEnable"
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
  Script {
    ScriptAsset {
      Id: 9636815241709916745
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17338501221426472587
  Name: "PortalPaintingServer"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1.33922279
      Y: 1.33922279
      Z: 1.33922279
    }
  }
  ParentId: 17819281143940016648
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 17819281143940016648
      }
    }
    Overrides {
      Name: "cs:NetObject"
      ObjectReference {
        SelfId: 17878757881210734652
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
      Id: 15281295104358832901
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3714026494525583304
  Name: "TutorialLevelCompleteCondition"
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
  ParentId: 18384832674565965731
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
      Id: 3455393544958752504
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15616234485359837608
  Name: "Treasure Chest - Big"
  Transform {
    Location {
      X: -4425
      Y: -2000
      Z: 50
    }
    Rotation {
      Yaw: -135
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
  ChildIds: 4322780629339479551
  ChildIds: 12490176672073428279
  ChildIds: 9788570042434304466
  UnregisteredParameters {
    Overrides {
      Name: "cs:LootID"
      String: "LaserSword"
    }
    Overrides {
      Name: "cs:AppearEventID"
      String: "LastSkeleton"
    }
    Overrides {
      Name: "cs:HideEventID"
      String: ""
    }
    Overrides {
      Name: "cs:AdditionalAppearDelay"
      Float: 1.7
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
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
  Id: 9788570042434304466
  Name: "ClientContext"
  Transform {
    Location {
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
  ParentId: 15616234485359837608
  ChildIds: 9238637203912888121
  ChildIds: 5074310364106238464
  ChildIds: 17011911449041676609
  WantsNetworking: true
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
  Id: 17011911449041676609
  Name: "Chest Gems Opening 01 SFX"
  Transform {
    Location {
      X: 0.000488281192
      Y: -2.91038305e-11
    }
    Rotation {
      Yaw: 89.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9788570042434304466
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
      Id: 5586383917361334043
    }
    Volume: 1
    Falloff: 5000
    Radius: 800
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5074310364106238464
  Name: "Geo Root"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.8
      Y: 0.8
      Z: 0.8
    }
  }
  ParentId: 9788570042434304466
  ChildIds: 10275096881763553193
  ChildIds: 4092332066389925452
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
  Id: 4092332066389925452
  Name: "Fantasy Chest Base 03"
  Transform {
    Location {
      X: 1.71661086e-05
      Y: -0.000488281192
      Z: -3.05175781e-05
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5074310364106238464
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
      Id: 11493405264835290361
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10275096881763553193
  Name: "Lid"
  Transform {
    Location {
      X: 1.90734863e-05
      Y: 49.9995041
      Z: 79.9999695
    }
    Rotation {
      Pitch: 4.09811328e-05
      Yaw: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5074310364106238464
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
      Id: 9927175959700879828
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9238637203912888121
  Name: "TreasureChestClient"
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
  ParentId: 9788570042434304466
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 12490176672073428279
      }
    }
    Overrides {
      Name: "cs:GeoRoot"
      ObjectReference {
        SelfId: 5074310364106238464
      }
    }
    Overrides {
      Name: "cs:Lid"
      ObjectReference {
        SelfId: 10275096881763553193
      }
    }
    Overrides {
      Name: "cs:SFX"
      ObjectReference {
        SelfId: 17011911449041676609
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
      Id: 3835481589347263342
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12490176672073428279
  Name: "Trigger"
  Transform {
    Location {
      Z: 50.0000038
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 0.7
      Y: 0.3
      Z: 2
    }
  }
  ParentId: 15616234485359837608
  WantsNetworking: true
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
  Trigger {
    Interactable: true
    InteractionLabel: "Open Treasure"
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
  Id: 4322780629339479551
  Name: "TreasureChestServer"
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
  ParentId: 15616234485359837608
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 12490176672073428279
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 15616234485359837608
      }
    }
    Overrides {
      Name: "cs:AppearFX"
      AssetReference {
        Id: 912611014203211818
      }
    }
  }
  WantsNetworking: true
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
      Id: 6570547770023402585
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6589929476674887583
  Name: "RPG Skeleton - Marksman"
  Transform {
    Location {
      X: -3700
      Y: 950
      Z: 50
    }
    Rotation {
      Yaw: -45
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
  ChildIds: 5368313942049550595
  UnregisteredParameters {
    Overrides {
      Name: "cs:Tag_1"
      String: "Undead"
    }
    Overrides {
      Name: "cs:Tag_2"
      String: "Ranged"
    }
    Overrides {
      Name: "cs:RewardResourceType"
      String: "XP"
    }
    Overrides {
      Name: "cs:RewardResourceAmount"
      Int: 1
    }
    Overrides {
      Name: "cs:LootId"
      String: ""
    }
    Overrides {
      Name: "cs:AttackRange"
      Float: 1300
    }
    Overrides {
      Name: "cs:AttackMinAngle"
      Float: 30
    }
    Overrides {
      Name: "cs:AttackCast"
      Float: 0.5
    }
    Overrides {
      Name: "cs:AttackRecovery"
      Float: 1
    }
    Overrides {
      Name: "cs:AttackCooldown"
      Float: 1.5
    }
    Overrides {
      Name: "cs:MoveSpeed"
      Float: 450
    }
    Overrides {
      Name: "cs:TurnSpeed"
      Float: 3
    }
    Overrides {
      Name: "cs:LogicalPeriod"
      Float: 0.5
    }
    Overrides {
      Name: "cs:ReturnToSpawn"
      Bool: true
    }
    Overrides {
      Name: "cs:IsPushable"
      Bool: true
    }
    Overrides {
      Name: "cs:VisionHalfAngle"
      Float: 85
    }
    Overrides {
      Name: "cs:VisionRadius"
      Float: 2500
    }
    Overrides {
      Name: "cs:HearingRadius"
      Float: 1000
    }
    Overrides {
      Name: "cs:SearchBonusVision"
      Float: 5000
    }
    Overrides {
      Name: "cs:SearchDuration"
      Float: 6
    }
    Overrides {
      Name: "cs:PossibilityRadius"
      Float: 800
    }
    Overrides {
      Name: "cs:ChaseRadius"
      Float: 4000
    }
    Overrides {
      Name: "cs:Team"
      Int: 2
    }
    Overrides {
      Name: "cs:CurrentState"
      Int: 0
    }
    Overrides {
      Name: "cs:Team:tooltip"
      String: "Like players, NPCs can have a team. They will fight players and NPCs from other teams and will not fight characters from the same team as them. When spawned from a spawn camp, the NPC\'s team is dynamically set to that of the camp."
    }
    Overrides {
      Name: "cs:Team:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:Team:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CurrentState:tooltip"
      String: "Set dynamically at runtime. This is the internal state of the NPC, such as sleeping, engaging, attacking, etc. This networked property coordinates the server and client parts of the NPC."
    }
    Overrides {
      Name: "cs:CurrentState:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:CurrentState:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:MoveSpeed:tooltip"
      String: "The NPC\'s top movement speed in cm/s. Set to zero for an NPC that doesn\'t move (e.g. Tower or other building)."
    }
    Overrides {
      Name: "cs:MoveSpeed:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:MoveSpeed:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:TurnSpeed:tooltip"
      String: "How quickly the NPC rotates to face their target or when searching for the origin of an attack."
    }
    Overrides {
      Name: "cs:TurnSpeed:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:TurnSpeed:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LogicalPeriod:tooltip"
      String: "To avoid overusing the server\'s CPU the NPC\'s only make decisions periodically. The LogicalPeriod is the length of that interval, in seconds."
    }
    Overrides {
      Name: "cs:LogicalPeriod:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LogicalPeriod:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ReturnToSpawn:tooltip"
      String: "If true, the NPC will try to return to their spawn point after they have nothing to do."
    }
    Overrides {
      Name: "cs:ReturnToSpawn:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ReturnToSpawn:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:VisionHalfAngle:tooltip"
      String: "This is half the vision cone\'s angle. Enemies outside the angle will not be seen. If set to 0 or greater than 360 then the NPC has full vision all around it. A value of 90 degrees would result in a half-sphere of peripheral vision. The smaller the value, the worse is the NPC\'s vision."
    }
    Overrides {
      Name: "cs:VisionHalfAngle:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:VisionHalfAngle:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:VisionRadius:tooltip"
      String: "The max range of the vision (in centimeters). Enemies at a distance greater than this value will not be seen."
    }
    Overrides {
      Name: "cs:VisionRadius:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:VisionRadius:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:HearingRadius:tooltip"
      String: "If an ally is hit by an attack, the point of impact is compared against the HearingRadius. If closer than this distance, then the NPC will begin a search to find the source of the attack."
    }
    Overrides {
      Name: "cs:HearingRadius:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:HearingRadius:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:SearchBonusVision:tooltip"
      String: "While searching for an enemy that recently attacked, the NPC can be given a bonus vision range."
    }
    Overrides {
      Name: "cs:SearchBonusVision:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:SearchBonusVision:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:SearchDuration:tooltip"
      String: "Duration, in seconds, if the search pattern."
    }
    Overrides {
      Name: "cs:SearchDuration:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:SearchDuration:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:PossibilityRadius:tooltip"
      String: "When searching for an enemy that attacked recently, the NPC will scan an area starting at itself then moving in the direction where the attack came from. The PossibilityRadius is the search volume that moves in that direction. A larger value means the NPC has an easier time spotting enemies."
    }
    Overrides {
      Name: "cs:PossibilityRadius:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:PossibilityRadius:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ChaseRadius:tooltip"
      String: "If engaging an enemy that is outside of attack range, the NPC will give up the chase if the enemy goes further than their ChaseRadius."
    }
    Overrides {
      Name: "cs:ChaseRadius:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ChaseRadius:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackRange:tooltip"
      String: "The NPC engages and moves towards a target until that target is within the AttackRange. That\'s when it changes to an Attack state and produces the projectile that is the combat interaction. A smaller attack range means the NPC must get closer before executing an attack."
    }
    Overrides {
      Name: "cs:AttackRange:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackRange:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackMinAngle:tooltip"
      String: "The NPC rotates towards the target to attack it. If an AttackMinAngle is defined, then the NPC will only initiate the attack if the target is within that angle in front them them. The value represents half of the area, in other words, a value of 180 allows the NPC to attack from any angle."
    }
    Overrides {
      Name: "cs:AttackMinAngle:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackMinAngle:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackCast:tooltip"
      String: "While executing an attack, the AttackCast is the amount of \"windup\" time, in seconds, before the projectile is produced."
    }
    Overrides {
      Name: "cs:AttackCast:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackCast:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackRecovery:tooltip"
      String: "During an attack, the AttackRecovery time is an amount in seconds after the projectile is created, during which the NPC winds down their attack and essentially does nothing."
    }
    Overrides {
      Name: "cs:AttackRecovery:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackRecovery:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackCooldown:tooltip"
      String: "The AttackCooldown is the minimum amount of time, in seconds, between NPC attacks. If the attack is on cooldown and the target continues within attack range, the NPC will essentially do nothing until the attack cooldown time completes."
    }
    Overrides {
      Name: "cs:AttackCooldown:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackCooldown:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:IsPushable:tooltip"
      String: "If true, then the NPC can be pushed aside by allied characters if they are trying to occupy the same space."
    }
    Overrides {
      Name: "cs:IsPushable:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:IsPushable:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RewardResourceType:tooltip"
      String: "Some NPCs can grant resources to players that kill them. The RewardResourceType is the Type of resource to grant to players."
    }
    Overrides {
      Name: "cs:RewardResourceType:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RewardResourceType:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RewardResourceAmount:tooltip"
      String: "Some NPCs can grant resources to players that kill them. The RewardResourceAmount is the Amount of the resource to grant to players"
    }
    Overrides {
      Name: "cs:RewardResourceAmount:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RewardResourceAmount:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LootId:tooltip"
      String: "The ID of the group of loot from the Loot Factory. E.g. \"Common\" will drop a common loot when the NPC is killed. To drop nothing remove this property."
    }
    Overrides {
      Name: "cs:LootId:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LootId:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Tag_1:category"
      String: "Tags"
    }
    Overrides {
      Name: "cs:Tag_2:category"
      String: "Tags"
    }
    Overrides {
      Name: "cs:MoveSpeed:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:LogicalPeriod:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:TurnSpeed:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:ReturnToSpawn:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:VisionHalfAngle:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:VisionRadius:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:HearingRadius:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:SearchBonusVision:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:SearchDuration:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:PossibilityRadius:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:ChaseRadius:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:AttackRange:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:AttackMinAngle:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:AttackCast:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:AttackRecovery:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:AttackCooldown:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:IsPushable:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:RewardResourceType:category"
      String: "Drops"
    }
    Overrides {
      Name: "cs:RewardResourceAmount:category"
      String: "Drops"
    }
    Overrides {
      Name: "cs:LootId:category"
      String: "Drops"
    }
  }
  WantsNetworking: true
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
  DamageableObject {
    DamageSettings {
      MaxHitpoints: 100
      StartingHitpoints: 200
      DestroyOnDeath: true
      DestroyOnDeathDelay: 10
      DestroyOnDeathClientTemplateId {
        Id: 841534158063459245
      }
      DestroyOnDeathNetworkedTemplateId {
        Id: 841534158063459245
      }
    }
  }
  InstanceHistory {
    SelfId: 6589929476674887583
    SubobjectId: 1997282349948663995
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:high"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5368313942049550595
  Name: "LocalContext"
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
  ParentId: 6589929476674887583
  ChildIds: 9163217815248606473
  ChildIds: 9408944244630130769
  ChildIds: 3334721960574317955
  WantsNetworking: true
  NetworkContext {
    Type: Local
  }
  InstanceHistory {
    SelfId: 5368313942049550595
    SubobjectId: 739700093450327591
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3334721960574317955
  Name: "Collider"
  Transform {
    Location {
      Z: 110
    }
    Rotation {
    }
    Scale {
      X: 0.9
      Y: 0.9
      Z: 1.1
    }
  }
  ParentId: 5368313942049550595
  UnregisteredParameters {
    Overrides {
      Name: "cs:Walkable"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        A: 1
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15683169359350375517
    }
    Teams {
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
    SelfId: 3334721960574317955
    SubobjectId: 7963678825654784679
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
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
  Id: 9408944244630130769
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
  ParentId: 5368313942049550595
  ChildIds: 9619222158239490607
  ChildIds: 14825570703756292265
  ChildIds: 6312059722994057910
  ChildIds: 2587404298716199374
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
    SelfId: 9408944244630130769
    SubobjectId: 14001881140192835445
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2587404298716199374
  Name: "GeoRoot"
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
  ParentId: 9408944244630130769
  ChildIds: 11166243890417973154
  ChildIds: 13632857714866178489
  ChildIds: 12484915676320200586
  ChildIds: 12178189805780682684
  ChildIds: 7942842583271652431
  ChildIds: 2382318719107156481
  ChildIds: 14322315548202444361
  ChildIds: 5728664644458456474
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
    SelfId: 2587404298716199374
    SubobjectId: 7145993005084827370
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5728664644458456474
  Name: "head"
  Transform {
    Location {
      X: -0.34375
      Y: -0.044921875
      Z: 145.818359
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2587404298716199374
  ChildIds: 16270073506153465151
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
    SelfId: 5728664644458456474
    SubobjectId: 1099910075558183614
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16270073506153465151
  Name: "Eye Patch"
  Transform {
    Location {
      X: 1.65234375
      Y: -2.29003906
      Z: 50.5424805
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5728664644458456474
  ChildIds: 1369545061043992048
  ChildIds: 682286457056899288
  ChildIds: 13952792198068621428
  ChildIds: 17198365480400760154
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
    SelfId: 16270073506153465151
    SubobjectId: 11603821170939945499
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17198365480400760154
  Name: "Ring - Thin"
  Transform {
    Location {
      X: -4.86328125
      Y: 0.666015625
      Z: 1.16699219
    }
    Rotation {
      Pitch: 0.0252785292
      Yaw: -8.10608864
      Roll: 36.9958801
    }
    Scale {
      X: 0.22190243
      Y: 0.188856989
      Z: 0.225292712
    }
  }
  ParentId: 16270073506153465151
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11580750779458949993
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.032
        G: 0.032
        B: 0.032
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.2215631
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16353917461806733124
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
    SelfId: 17198365480400760154
    SubobjectId: 12569328917630765694
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13952792198068621428
  Name: "Ring - Thin"
  Transform {
    Location {
      X: -1.40429688
      Y: 1.74023438
    }
    Rotation {
      Pitch: 0.0252785292
      Yaw: -8.10608768
      Roll: 36.9959106
    }
    Scale {
      X: 0.221903965
      Y: 0.21132952
      Z: 0.225301921
    }
  }
  ParentId: 16270073506153465151
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11580750779458949993
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.032
        G: 0.032
        B: 0.032
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.2215631
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16353917461806733124
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
    SelfId: 13952792198068621428
    SubobjectId: 9322911728984733520
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 682286457056899288
  Name: "Hill 05"
  Transform {
    Location {
      X: 6.2734375
      Y: -2.40625
      Z: 0.316162109
    }
    Rotation {
      Pitch: 61.2107124
      Yaw: 57.967308
      Roll: -103.121689
    }
    Scale {
      X: 0.0117433695
      Y: 0.0117433695
      Z: 0.0117433695
    }
  }
  ParentId: 16270073506153465151
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.222000018
        G: 0.222000018
        B: 0.222000018
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 8828521707055617985
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
    SelfId: 682286457056899288
    SubobjectId: 5310891491560937468
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
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
  Id: 1369545061043992048
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
      X: 8.84375
      Y: -5.66894531
      Z: -34.2834473
    }
    Rotation {
      Roll: 1.19528268e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16270073506153465151
  UnregisteredParameters {
    Overrides {
      Name: "cs:ChanceToDestroy"
      Float: 0.85
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 1369545061043992048
    SubobjectId: 6035524700185498324
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14322315548202444361
  Name: "upper_spine"
  Transform {
    Location {
      X: -0.34375
      Y: -0.044921875
      Z: 145.818359
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2587404298716199374
  ChildIds: 15084326412419296307
  ChildIds: 2596543822522336522
  ChildIds: 13779266734949002706
  ChildIds: 18131874325067372987
  ChildIds: 14654433186363951151
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
    SelfId: 14322315548202444361
    SubobjectId: 9655984082787811693
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14654433186363951151
  Name: "Moss Chest"
  Transform {
    Location {
      X: 10.4960938
      Y: -7.95898438
      Z: 16.2590332
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14322315548202444361
  ChildIds: 12642233173656192274
  ChildIds: 17932492966263922767
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
    SelfId: 14654433186363951151
    SubobjectId: 10060167530982846219
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17932492966263922767
  Name: "Decal Moss Patch"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -97.5000305
      Roll: 89.9999619
    }
    Scale {
      X: 0.0846253186
      Y: 0.0846124813
      Z: 0.0430278331
    }
  }
  ParentId: 14654433186363951151
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.467347622
        G: 0.531
        B: 0.0138278827
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
      Id: 14633329416983781101
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 17932492966263922767
    SubobjectId: 13267295612742125419
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
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
  Id: 12642233173656192274
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: 1.19528295e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14654433186363951151
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 12642233173656192274
    SubobjectId: 17271823891091825206
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18131874325067372987
  Name: "Grass Rib"
  Transform {
    Location {
      X: 2.05078125
      Y: 14.3808594
      Z: -1.82763672
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14322315548202444361
  ChildIds: 12054477958487112325
  ChildIds: 4924008355863544352
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
    SelfId: 18131874325067372987
    SubobjectId: 13502565633436909215
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4924008355863544352
  Name: "Grass Tall"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 52.5398865
      Roll: 179.999954
    }
    Scale {
      X: 0.00681202579
      Y: 0.045213189
      Z: 0.253063828
    }
  }
  ParentId: 18131874325067372987
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Grass:id"
      AssetReference {
        Id: 2572933921419539642
      }
    }
    Overrides {
      Name: "ma:Nature_Grass:color"
      Color {
        R: 0.0799725801
        G: 0.114000008
        B: 0.0140450932
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 8553298544017934648
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
    SelfId: 4924008355863544352
    SubobjectId: 330578910230127876
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12054477958487112325
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: -5.97641474e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18131874325067372987
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 12054477958487112325
    SubobjectId: 16684147302816521633
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13779266734949002706
  Name: "Heart"
  Transform {
    Location {
      X: -0.998046875
      Y: -7.67089844
      Z: 14.0097656
    }
    Rotation {
      Roll: -12.2631531
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14322315548202444361
  ChildIds: 6703109019661223583
  ChildIds: 8511974661888424596
  ChildIds: 7179216295551075110
  ChildIds: 10720454378980102760
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
    SelfId: 13779266734949002706
    SubobjectId: 18445106146343652086
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10720454378980102760
  Name: "Sphere"
  Transform {
    Location {
      X: -0.001953125
      Y: -1.47845089
      Z: 3.32695079
    }
    Rotation {
      Roll: 54.3932037
    }
    Scale {
      X: 0.0936279669
      Y: 0.0669318661
      Z: 0.102864243
    }
  }
  ParentId: 13779266734949002706
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.265000015
        G: 0.088775
        B: 0.0535299927
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 10720454378980102760
    SubobjectId: 15277705495078384972
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7179216295551075110
  Name: "Sphere"
  Transform {
    Location {
      X: -0.001953125
      Y: 1.3951447
      Z: 1.59554374
    }
    Rotation {
      Roll: -37.6444473
    }
    Scale {
      X: 0.0936279669
      Y: 0.0936279669
      Z: 0.116669647
    }
  }
  ParentId: 13779266734949002706
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.135
        G: 0.045225
        B: 0.0272699967
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 7179216295551075110
    SubobjectId: 2549696450460738562
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8511974661888424596
  Name: "Sphere"
  Transform {
    Location {
      X: -0.001953125
      Y: 0.0858511552
      Z: -1.0165273
    }
    Rotation {
      Roll: -3.75660384e-05
    }
    Scale {
      X: 0.111281186
      Y: 0.111281186
      Z: 0.158991396
    }
  }
  ParentId: 13779266734949002706
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.135
        G: 0.045225
        B: 0.0272699967
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 8511974661888424596
    SubobjectId: 3955145213842939312
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6703109019661223583
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: 12.2631292
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13779266734949002706
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 6703109019661223583
    SubobjectId: 2145365323678884283
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2596543822522336522
  Name: "Guts"
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
  ParentId: 14322315548202444361
  ChildIds: 5261015554000679876
  ChildIds: 12722461165970119151
  ChildIds: 4242500436634863067
  ChildIds: 8365620201038630904
  ChildIds: 6259531633796576032
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
    SelfId: 2596543822522336522
    SubobjectId: 7262936893881328174
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6259531633796576032
  Name: "Cone - Bullet"
  Transform {
    Location {
      X: 0.525390625
      Y: -6.25390625
      Z: -7.06933594
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -179.999969
      Roll: -179.999939
    }
    Scale {
      X: 0.042130556
      Y: 0.0421305411
      Z: 0.054762397
    }
  }
  ParentId: 2596543822522336522
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239215702
        G: 0.101960793
        B: 0.0745098069
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2264041107168619230
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
    SelfId: 6259531633796576032
    SubobjectId: 1593630632545489924
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8365620201038630904
  Name: "Ring - Thick"
  Transform {
    Location {
      Z: -7.65136719
    }
    Rotation {
    }
    Scale {
      X: 0.0997017771
      Y: 0.208957568
      Z: 0.208957568
    }
  }
  ParentId: 2596543822522336522
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239215702
        G: 0.101960793
        B: 0.0745098069
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
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
    SelfId: 8365620201038630904
    SubobjectId: 3808712098191550684
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4242500436634863067
  Name: "Ring - Thick"
  Transform {
    Location {
      Z: -4.1496582
    }
    Rotation {
    }
    Scale {
      X: 0.110825367
      Y: 0.232270673
      Z: 0.232270673
    }
  }
  ParentId: 2596543822522336522
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239215702
        G: 0.101960793
        B: 0.0745098069
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
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
    SelfId: 4242500436634863067
    SubobjectId: 8801027552912237311
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12722461165970119151
  Name: "Ring - Thick"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.118700117
      Y: 0.248774841
      Z: 0.248774841
    }
  }
  ParentId: 2596543822522336522
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239215702
        G: 0.101960793
        B: 0.0745098069
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
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
    SelfId: 12722461165970119151
    SubobjectId: 17315398562977431243
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5261015554000679876
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: 3.84198102e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2596543822522336522
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 5261015554000679876
    SubobjectId: 702849077562184928
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15084326412419296307
  Name: "Lung"
  Transform {
    Location {
      X: -2.09570312
      Y: 6.68359375
      Z: 17.6203613
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14322315548202444361
  ChildIds: 226622232422397390
  ChildIds: 6720399891335840404
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
    SelfId: 15084326412419296307
    SubobjectId: 10490482999853222679
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6720399891335840404
  Name: "Thorn"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -179.999954
      Roll: -168.927124
    }
    Scale {
      X: 0.484463543
      Y: 0.24931252
      Z: 0.271215856
    }
  }
  ParentId: 15084326412419296307
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239000008
        G: 0.104909055
        B: 0.0748069957
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7436120957885304537
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
    SelfId: 6720399891335840404
    SubobjectId: 2125782994611889584
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 226622232422397390
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: 3.84198102e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15084326412419296307
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 226622232422397390
    SubobjectId: 4892875116032283370
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2382318719107156481
  Name: "right_prop"
  Transform {
    Location {
      X: 7.66796875
      Y: 53.328125
      Z: 107.507202
    }
    Rotation {
      Pitch: 74.4261703
      Yaw: -133.846
      Roll: 46.8663063
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2587404298716199374
  ChildIds: 9413991612083079414
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
    SelfId: 2382318719107156481
    SubobjectId: 7047102102491409701
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9413991612083079414
  Name: "Fantasy Weapon - Crossbow 01 (Prop)"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 9.56226431e-05
      Yaw: -179.999939
      Roll: 7.5559e-05
    }
    Scale {
      X: 0.763853908
      Y: 0.763853908
      Z: 0.763853908
    }
  }
  ParentId: 2382318719107156481
  ChildIds: 7194000953344922427
  ChildIds: 4763786643013427625
  ChildIds: 3835542636898652521
  ChildIds: 17471866368105517057
  ChildIds: 14377669427538382878
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
    SelfId: 9413991612083079414
    SubobjectId: 14008115931884416978
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14377669427538382878
  Name: "Fantasy Crossbow Stock 01"
  Transform {
    Location {
      X: -3.46280432
      Z: 17.1326046
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9413991612083079414
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.73953426
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.50209606
    }
    Overrides {
      Name: "ma:Shared_Trim:color"
      Color {
        R: 0.60800004
        G: 0.60800004
        B: 0.60800004
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5386842465317264650
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
    SelfId: 14377669427538382878
    SubobjectId: 9747014920530474810
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
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
  Id: 17471866368105517057
  Name: "Fantasy Crossbow Grip 01"
  Transform {
    Location {
      X: 1.7599206
      Y: -7.62939453e-06
      Z: 8.08739853
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9413991612083079414
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.33294129
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 5.90964317
    }
    Overrides {
      Name: "ma:Shared_Trim2:color"
      Color {
        R: 0.603000045
        G: 0.603000045
        B: 0.603000045
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1562290466453296467
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
    SelfId: 17471866368105517057
    SubobjectId: 12879008106155865893
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3835542636898652521
  Name: "Fantasy Crossbow Foregrip 01"
  Transform {
    Location {
      X: 33.3169479
      Z: 15.1326046
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9413991612083079414
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Trim:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_Trim:utile"
      Float: 4.85937834
    }
    Overrides {
      Name: "ma:Shared_Trim:vtile"
      Float: 2.70171261
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.609
        G: 0.609
        B: 0.609
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15312805567995783140
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
    SelfId: 3835542636898652521
    SubobjectId: 8500951056941348429
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4763786643013427625
  Name: "Fantasy Crossbow Bow 01"
  Transform {
    Location {
      X: 78.3212357
      Y: 0.234184265
      Z: 13.1491394
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9413991612083079414
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Trim:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_Trim:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Trim:utile"
      Float: 4.40646601
    }
    Overrides {
      Name: "ma:Shared_Trim:vtile"
      Float: 3.62334657
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12875975218361332960
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
    SelfId: 4763786643013427625
    SubobjectId: 207089652037650061
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7194000953344922427
  Name: "Fantasy Crossbow Bolt 01"
  Transform {
    Location {
      X: 39.5371933
      Z: 25.1326046
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9413991612083079414
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.388
        G: 0.245442152
        B: 0.10476
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 10184847056121543272
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3337256621200851928
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
    SelfId: 7194000953344922427
    SubobjectId: 2528170336675951647
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7942842583271652431
  Name: "Skeleton Mob"
  Transform {
    Location {
      Z: 104.998901
    }
    Rotation {
      Yaw: -6.8301847e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2587404298716199374
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14698875350380456389
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.583333
        G: 0.406894237
        B: 0.176166564
        A: 1
      }
    }
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
  CoreMesh {
    MeshAsset {
      Id: 10824426293829047600
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    AnimatedMesh {
      AnimationStance: "unarmed_bind_pose"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
    }
  }
  InstanceHistory {
    SelfId: 7942842583271652431
    SubobjectId: 3384808585879706475
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12178189805780682684
  Name: "AnimControllerHideAttackProp"
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
  ParentId: 2587404298716199374
  UnregisteredParameters {
    Overrides {
      Name: "cs:AttackProp"
      ObjectReference {
        SelfId: 7194000953344922427
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 6589929476674887583
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
      Id: 2099941017973188377
    }
  }
  InstanceHistory {
    SelfId: 12178189805780682684
    SubobjectId: 16844161198568677528
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12484915676320200586
  Name: "AnimatedMeshCostume"
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
  ParentId: 2587404298716199374
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
      Id: 8881557842072219981
    }
  }
  InstanceHistory {
    SelfId: 12484915676320200586
    SubobjectId: 17113873121481887918
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13632857714866178489
  Name: "AnimControllerZombie"
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
  ParentId: 2587404298716199374
  UnregisteredParameters {
    Overrides {
      Name: "cs:AnimatedMesh"
      ObjectReference {
        SelfId: 7942842583271652431
      }
    }
    Overrides {
      Name: "cs:AttackAnim"
      String: "2hand_rifle_shoot"
    }
    Overrides {
      Name: "cs:AttackPlayback"
      Float: 1.4
    }
    Overrides {
      Name: "cs:PlayAttackOnRecovery"
      Bool: true
    }
    Overrides {
      Name: "cs:IdleStance"
      String: "2hand_rifle_idle_relaxed"
    }
    Overrides {
      Name: "cs:ReadyStance"
      String: "2hand_rifle_aim_shoulder"
    }
    Overrides {
      Name: "cs:WalkStance"
      String: "2hand_rifle_walk_forward"
    }
    Overrides {
      Name: "cs:RunStance"
      String: "2hand_rifle_run_forward"
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 6589929476674887583
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
      Id: 427248120346786709
    }
  }
  InstanceHistory {
    SelfId: 13632857714866178489
    SubobjectId: 18298766963528642205
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11166243890417973154
  Name: "NPCHealthBarDataProviderClient"
  Transform {
    Location {
      Z: 260
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2587404298716199374
  UnregisteredParameters {
    Overrides {
      Name: "cs:HealthBarTemplate"
      AssetReference {
        Id: 4315867458127260351
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 6589929476674887583
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
      Id: 1401124806849575098
    }
  }
  InstanceHistory {
    SelfId: 11166243890417973154
    SubobjectId: 15723636327053316230
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6312059722994057910
  Name: "ForwardNode"
  Transform {
    Location {
      X: 5
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9408944244630130769
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
    SelfId: 6312059722994057910
    SubobjectId: 1682961592151532946
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14825570703756292265
  Name: "NPCAttackClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1.33333337
      Y: 1.33333337
      Z: 1.33333337
    }
  }
  ParentId: 9408944244630130769
  UnregisteredParameters {
    Overrides {
      Name: "cs:DamageFX"
      AssetReference {
        Id: 6439897776520759745
      }
    }
    Overrides {
      Name: "cs:DestroyFX"
      AssetReference {
        Id: 6439897776520759745
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 6589929476674887583
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
      Id: 9324991830768780045
    }
  }
  InstanceHistory {
    SelfId: 14825570703756292265
    SubobjectId: 10195276852652218253
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9619222158239490607
  Name: "NPCAIClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1.33333337
      Y: 1.33333337
      Z: 1.33333337
    }
  }
  ParentId: 9408944244630130769
  UnregisteredParameters {
    Overrides {
      Name: "cs:GeoRoot"
      ObjectReference {
        SelfId: 2587404298716199374
      }
    }
    Overrides {
      Name: "cs:ForwardNode"
      ObjectReference {
        SelfId: 6312059722994057910
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 6589929476674887583
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
      Id: 16526478722992756359
    }
  }
  InstanceHistory {
    SelfId: 9619222158239490607
    SubobjectId: 14248742502636160267
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9163217815248606473
  Name: "ServerContext"
  Transform {
    Location {
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5368313942049550595
  ChildIds: 2817512399314294726
  ChildIds: 3777780889336124118
  ChildIds: 2495107573810328233
  ChildIds: 17282512478697135038
  ChildIds: 1486737514055539770
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  NetworkContext {
    Type: Server
  }
  InstanceHistory {
    SelfId: 9163217815248606473
    SubobjectId: 4605403733082337837
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1486737514055539770
  Name: "DamageableDeathBroadcastEvent"
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
  ParentId: 9163217815248606473
  UnregisteredParameters {
    Overrides {
      Name: "cs:EventID"
      String: "LastSkeleton"
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
      Id: 15460891057637454420
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17282512478697135038
  Name: "NPCHeadshot"
  Transform {
    Location {
      Z: 90
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9163217815248606473
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
      Id: 8341736443469670175
    }
  }
  InstanceHistory {
    SelfId: 17282512478697135038
    SubobjectId: 12615767619181640858
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2495107573810328233
  Name: "Trigger"
  Transform {
    Location {
      Z: -25
    }
    Rotation {
    }
    Scale {
      X: 1.99963439
      Y: 1.99963439
      Z: 1.99963439
    }
  }
  ParentId: 9163217815248606473
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
      Value: "mc:etriggershape:sphere"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  InstanceHistory {
    SelfId: 2495107573810328233
    SubobjectId: 7089654655840687501
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3777780889336124118
  Name: "NPCAttackServer"
  Transform {
    Location {
      X: 53.2324219
      Z: 55.9741211
    }
    Rotation {
      Pitch: 34.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9163217815248606473
  UnregisteredParameters {
    Overrides {
      Name: "cs:DamageToPlayers"
      Int: 5
    }
    Overrides {
      Name: "cs:DamageToNPCs"
      Float: 20
    }
    Overrides {
      Name: "cs:ProjectileBody"
      AssetReference {
        Id: 4591186836374158816
      }
    }
    Overrides {
      Name: "cs:MuzzleFlash"
      AssetReference {
        Id: 9281011578601836522
      }
    }
    Overrides {
      Name: "cs:ImpactSurface"
      AssetReference {
        Id: 15728676179772725900
      }
    }
    Overrides {
      Name: "cs:ImpactCharacter"
      AssetReference {
        Id: 307406115803496087
      }
    }
    Overrides {
      Name: "cs:ProjectileLifeSpan"
      Float: 2
    }
    Overrides {
      Name: "cs:ProjectileSpeed"
      Float: 3500
    }
    Overrides {
      Name: "cs:ProjectileGravity"
      Float: 1
    }
    Overrides {
      Name: "cs:ProjectileHoming"
      Bool: false
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 6589929476674887583
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
      Id: 13670653971905386821
    }
  }
  InstanceHistory {
    SelfId: 3777780889336124118
    SubobjectId: 8407864205170865650
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2817512399314294726
  Name: "NPCAIServer"
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
  ParentId: 9163217815248606473
  UnregisteredParameters {
    Overrides {
      Name: "cs:Collider"
      ObjectReference {
        SelfId: 3334721960574317955
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 2495107573810328233
      }
    }
    Overrides {
      Name: "cs:AttackComponent"
      ObjectReference {
        SelfId: 3777780889336124118
      }
    }
    Overrides {
      Name: "cs:HomingTarget"
      ObjectReference {
        SelfId: 3334721960574317955
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 6589929476674887583
      }
    }
    Overrides {
      Name: "cs:RotationRoot"
      ObjectReference {
        SelfId: 6589929476674887583
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
      Id: 877607263390645540
    }
  }
  InstanceHistory {
    SelfId: 2817512399314294726
    SubobjectId: 7483351866561982690
    InstanceId: 12163632311488996422
    TemplateId: 8874753243177893219
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11841168973343878917
  Name: "RPG Skeleton - Full Armed"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 5413985969182385702
      value {
        Overrides {
          Name: "Name"
          String: "RPG Skeleton - Full Armed"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -3687.84424
            Y: 199.243164
            Z: 49.999939
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 39.2204514
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
        Overrides {
          Name: "cs:LootId"
          String: ""
        }
        Overrides {
          Name: "Damageable.MaxHitPoints"
          Float: 200
        }
      }
    }
    TemplateAsset {
      Id: 9351087071380283443
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10088552290629423802
  Name: "RPG Skeleton - Unarmed"
  Transform {
    Location {
      X: 2400
      Y: 1100
      Z: 50
    }
    Rotation {
      Yaw: -89.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 5965388886224970353
      value {
        Overrides {
          Name: "Name"
          String: "RPG Skeleton - Unarmed"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -850
            Y: 1600
            Z: 50
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -90
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
        Overrides {
          Name: "Damageable.MaxHitPoints"
          Float: 60
        }
        Overrides {
          Name: "cs:LootId"
          String: ""
        }
      }
    }
    TemplateAsset {
      Id: 18343431396922342877
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10996774610267861785
  Name: "Locked Gate"
  Transform {
    Location {
      X: 5981.9209
      Y: -2715.08936
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 16107452528929690851
      value {
        Overrides {
          Name: "Name"
          String: "Locked Gate"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1175
            Y: -800
            Z: 50
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 180
          }
        }
      }
    }
    TemplateAsset {
      Id: 3827264004051456006
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1397084611612369842
  Name: "Treasure Chest"
  Transform {
    Location {
      X: 2400
      Y: -2250
      Z: 50
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
  ParentId: 18384832674565965731
  ChildIds: 8138724698499324027
  ChildIds: 17860086469643185855
  ChildIds: 7304503411514043970
  UnregisteredParameters {
    Overrides {
      Name: "cs:LootID"
      String: "Key"
    }
    Overrides {
      Name: "cs:AppearEventID"
      String: "Skeleton2"
    }
    Overrides {
      Name: "cs:HideEventID"
      String: ""
    }
    Overrides {
      Name: "cs:AdditionalAppearDelay"
      Float: 1
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
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
  Id: 7304503411514043970
  Name: "ClientContext"
  Transform {
    Location {
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
  ParentId: 1397084611612369842
  ChildIds: 17061687376334714422
  ChildIds: 150109114964051672
  ChildIds: 1699986175195038165
  WantsNetworking: true
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
  Id: 1699986175195038165
  Name: "Chest Gems Opening 01 SFX"
  Transform {
    Location {
      X: 0.000488281192
      Y: -2.91038305e-11
    }
    Rotation {
      Yaw: 89.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7304503411514043970
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
      Id: 5586383917361334043
    }
    Volume: 1
    Falloff: 3600
    Radius: 400
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 150109114964051672
  Name: "Geo Root"
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
  ParentId: 7304503411514043970
  ChildIds: 1422929776724632576
  ChildIds: 9826378021181830203
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
  Id: 9826378021181830203
  Name: "Lid"
  Transform {
    Location {
      Y: 36.5996056
      Z: 45
    }
    Rotation {
      Yaw: -179.999985
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 150109114964051672
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
      Id: 9188351867310556903
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1422929776724632576
  Name: "Fantasy Chest Base 01"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 1.70754702e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 150109114964051672
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
      Id: 3753434009625901326
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17061687376334714422
  Name: "TreasureChestClient"
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
  ParentId: 7304503411514043970
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 17860086469643185855
      }
    }
    Overrides {
      Name: "cs:GeoRoot"
      ObjectReference {
        SelfId: 150109114964051672
      }
    }
    Overrides {
      Name: "cs:Lid"
      ObjectReference {
        SelfId: 9826378021181830203
      }
    }
    Overrides {
      Name: "cs:SFX"
      ObjectReference {
        SelfId: 1699986175195038165
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
      Id: 3835481589347263342
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17860086469643185855
  Name: "Trigger"
  Transform {
    Location {
      Z: 50.0000038
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 0.3
      Y: 0.3
      Z: 1.99999988
    }
  }
  ParentId: 1397084611612369842
  WantsNetworking: true
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
  Trigger {
    Interactable: true
    InteractionLabel: "Open Treasure"
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
  Id: 8138724698499324027
  Name: "TreasureChestServer"
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
  ParentId: 1397084611612369842
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 17860086469643185855
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 1397084611612369842
      }
    }
    Overrides {
      Name: "cs:AppearFX"
      AssetReference {
        Id: 912611014203211818
      }
    }
  }
  WantsNetworking: true
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
      Id: 6570547770023402585
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1997800453497773311
  Name: "RPG Skeleton - Swordsman"
  Transform {
    Location {
      X: 1450
      Y: -850
      Z: 50
    }
    Rotation {
      Yaw: -45
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
  ChildIds: 14975917759626488696
  UnregisteredParameters {
    Overrides {
      Name: "cs:Tag_1"
      String: "Undead"
    }
    Overrides {
      Name: "cs:Tag_2"
      String: "Melee"
    }
    Overrides {
      Name: "cs:RewardResourceType"
      String: "XP"
    }
    Overrides {
      Name: "cs:RewardResourceAmount"
      Int: 1
    }
    Overrides {
      Name: "cs:LootId"
      String: ""
    }
    Overrides {
      Name: "cs:AttackRange"
      Float: 200
    }
    Overrides {
      Name: "cs:AttackMinAngle"
      Float: 30
    }
    Overrides {
      Name: "cs:AttackCast"
      Float: 0.5
    }
    Overrides {
      Name: "cs:AttackRecovery"
      Float: 1
    }
    Overrides {
      Name: "cs:AttackCooldown"
      Float: 1.5
    }
    Overrides {
      Name: "cs:MoveSpeed"
      Float: 550
    }
    Overrides {
      Name: "cs:TurnSpeed"
      Float: 3
    }
    Overrides {
      Name: "cs:LogicalPeriod"
      Float: 0.5
    }
    Overrides {
      Name: "cs:ReturnToSpawn"
      Bool: true
    }
    Overrides {
      Name: "cs:IsPushable"
      Bool: true
    }
    Overrides {
      Name: "cs:VisionHalfAngle"
      Float: 85
    }
    Overrides {
      Name: "cs:VisionRadius"
      Float: 2500
    }
    Overrides {
      Name: "cs:HearingRadius"
      Float: 1000
    }
    Overrides {
      Name: "cs:SearchBonusVision"
      Float: 5000
    }
    Overrides {
      Name: "cs:SearchDuration"
      Float: 6
    }
    Overrides {
      Name: "cs:PossibilityRadius"
      Float: 800
    }
    Overrides {
      Name: "cs:ChaseRadius"
      Float: 4000
    }
    Overrides {
      Name: "cs:Team"
      Int: 2
    }
    Overrides {
      Name: "cs:CurrentState"
      Int: 0
    }
    Overrides {
      Name: "cs:Team:tooltip"
      String: "Like players, NPCs can have a team. They will fight players and NPCs from other teams and will not fight characters from the same team as them. When spawned from a spawn camp, the NPC\'s team is dynamically set to that of the camp."
    }
    Overrides {
      Name: "cs:Team:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:Team:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CurrentState:tooltip"
      String: "Set dynamically at runtime. This is the internal state of the NPC, such as sleeping, engaging, attacking, etc. This networked property coordinates the server and client parts of the NPC."
    }
    Overrides {
      Name: "cs:CurrentState:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:CurrentState:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:MoveSpeed:tooltip"
      String: "The NPC\'s top movement speed in cm/s. Set to zero for an NPC that doesn\'t move (e.g. Tower or other building)."
    }
    Overrides {
      Name: "cs:MoveSpeed:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:MoveSpeed:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:TurnSpeed:tooltip"
      String: "How quickly the NPC rotates to face their target or when searching for the origin of an attack."
    }
    Overrides {
      Name: "cs:TurnSpeed:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:TurnSpeed:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LogicalPeriod:tooltip"
      String: "To avoid overusing the server\'s CPU the NPC\'s only make decisions periodically. The LogicalPeriod is the length of that interval, in seconds."
    }
    Overrides {
      Name: "cs:LogicalPeriod:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LogicalPeriod:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ReturnToSpawn:tooltip"
      String: "If true, the NPC will try to return to their spawn point after they have nothing to do."
    }
    Overrides {
      Name: "cs:ReturnToSpawn:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ReturnToSpawn:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:VisionHalfAngle:tooltip"
      String: "This is half the vision cone\'s angle. Enemies outside the angle will not be seen. If set to 0 or greater than 360 then the NPC has full vision all around it. A value of 90 degrees would result in a half-sphere of peripheral vision. The smaller the value, the worse is the NPC\'s vision."
    }
    Overrides {
      Name: "cs:VisionHalfAngle:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:VisionHalfAngle:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:VisionRadius:tooltip"
      String: "The max range of the vision (in centimeters). Enemies at a distance greater than this value will not be seen."
    }
    Overrides {
      Name: "cs:VisionRadius:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:VisionRadius:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:HearingRadius:tooltip"
      String: "If an ally is hit by an attack, the point of impact is compared against the HearingRadius. If closer than this distance, then the NPC will begin a search to find the source of the attack."
    }
    Overrides {
      Name: "cs:HearingRadius:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:HearingRadius:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:SearchBonusVision:tooltip"
      String: "While searching for an enemy that recently attacked, the NPC can be given a bonus vision range."
    }
    Overrides {
      Name: "cs:SearchBonusVision:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:SearchBonusVision:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:SearchDuration:tooltip"
      String: "Duration, in seconds, if the search pattern."
    }
    Overrides {
      Name: "cs:SearchDuration:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:SearchDuration:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:PossibilityRadius:tooltip"
      String: "When searching for an enemy that attacked recently, the NPC will scan an area starting at itself then moving in the direction where the attack came from. The PossibilityRadius is the search volume that moves in that direction. A larger value means the NPC has an easier time spotting enemies."
    }
    Overrides {
      Name: "cs:PossibilityRadius:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:PossibilityRadius:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ChaseRadius:tooltip"
      String: "If engaging an enemy that is outside of attack range, the NPC will give up the chase if the enemy goes further than their ChaseRadius."
    }
    Overrides {
      Name: "cs:ChaseRadius:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ChaseRadius:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackRange:tooltip"
      String: "The NPC engages and moves towards a target until that target is within the AttackRange. That\'s when it changes to an Attack state and produces the projectile that is the combat interaction. A smaller attack range means the NPC must get closer before executing an attack."
    }
    Overrides {
      Name: "cs:AttackRange:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackRange:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackMinAngle:tooltip"
      String: "The NPC rotates towards the target to attack it. If an AttackMinAngle is defined, then the NPC will only initiate the attack if the target is within that angle in front them them. The value represents half of the area, in other words, a value of 180 allows the NPC to attack from any angle."
    }
    Overrides {
      Name: "cs:AttackMinAngle:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackMinAngle:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackCast:tooltip"
      String: "While executing an attack, the AttackCast is the amount of \"windup\" time, in seconds, before the projectile is produced."
    }
    Overrides {
      Name: "cs:AttackCast:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackCast:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackRecovery:tooltip"
      String: "During an attack, the AttackRecovery time is an amount in seconds after the projectile is created, during which the NPC winds down their attack and essentially does nothing."
    }
    Overrides {
      Name: "cs:AttackRecovery:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackRecovery:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackCooldown:tooltip"
      String: "The AttackCooldown is the minimum amount of time, in seconds, between NPC attacks. If the attack is on cooldown and the target continues within attack range, the NPC will essentially do nothing until the attack cooldown time completes."
    }
    Overrides {
      Name: "cs:AttackCooldown:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AttackCooldown:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:IsPushable:tooltip"
      String: "If true, then the NPC can be pushed aside by allied characters if they are trying to occupy the same space."
    }
    Overrides {
      Name: "cs:IsPushable:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:IsPushable:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RewardResourceType:tooltip"
      String: "Some NPCs can grant resources to players that kill them. The RewardResourceType is the Type of resource to grant to players."
    }
    Overrides {
      Name: "cs:RewardResourceType:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RewardResourceType:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:RewardResourceAmount:tooltip"
      String: "Some NPCs can grant resources to players that kill them. The RewardResourceAmount is the Amount of the resource to grant to players"
    }
    Overrides {
      Name: "cs:RewardResourceAmount:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:RewardResourceAmount:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:LootId:tooltip"
      String: "The ID of the group of loot from the Loot Factory. E.g. \"Common\" will drop a common loot when the NPC is killed. To drop nothing remove this property."
    }
    Overrides {
      Name: "cs:LootId:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:LootId:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Tag_1:category"
      String: "Tags"
    }
    Overrides {
      Name: "cs:Tag_2:category"
      String: "Tags"
    }
    Overrides {
      Name: "cs:MoveSpeed:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:LogicalPeriod:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:TurnSpeed:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:ReturnToSpawn:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:VisionHalfAngle:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:VisionRadius:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:HearingRadius:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:SearchBonusVision:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:SearchDuration:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:PossibilityRadius:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:ChaseRadius:category"
      String: "Detection"
    }
    Overrides {
      Name: "cs:AttackRange:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:AttackMinAngle:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:AttackCast:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:AttackRecovery:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:AttackCooldown:category"
      String: "Combat"
    }
    Overrides {
      Name: "cs:IsPushable:category"
      String: "Movement"
    }
    Overrides {
      Name: "cs:RewardResourceType:category"
      String: "Drops"
    }
    Overrides {
      Name: "cs:RewardResourceAmount:category"
      String: "Drops"
    }
    Overrides {
      Name: "cs:LootId:category"
      String: "Drops"
    }
  }
  WantsNetworking: true
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
  DamageableObject {
    DamageSettings {
      MaxHitpoints: 120
      StartingHitpoints: 150
      DestroyOnDeath: true
      DestroyOnDeathDelay: 10
      DestroyOnDeathClientTemplateId {
        Id: 841534158063459245
      }
      DestroyOnDeathNetworkedTemplateId {
        Id: 841534158063459245
      }
    }
  }
  InstanceHistory {
    SelfId: 1997800453497773311
    SubobjectId: 17046756464842563297
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:high"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14975917759626488696
  Name: "LocalContext"
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
  ParentId: 1997800453497773311
  ChildIds: 5491696389718396138
  ChildIds: 3853690350186984811
  ChildIds: 11074080936284229817
  WantsNetworking: true
  NetworkContext {
    Type: Local
  }
  InstanceHistory {
    SelfId: 14975917759626488696
    SubobjectId: 4106869005054224742
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11074080936284229817
  Name: "Collider"
  Transform {
    Location {
      Z: 110
    }
    Rotation {
    }
    Scale {
      X: 0.9
      Y: 0.9
      Z: 1.1
    }
  }
  ParentId: 14975917759626488696
  UnregisteredParameters {
    Overrides {
      Name: "cs:Walkable"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        A: 1
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15683169359350375517
    }
    Teams {
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
    SelfId: 11074080936284229817
    SubobjectId: 7963678825654784679
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
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
  Id: 3853690350186984811
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
  ParentId: 14975917759626488696
  ChildIds: 3645120270201653013
  ChildIds: 8815589585012168083
  ChildIds: 16172627353053226892
  ChildIds: 10664533282702515444
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
    SelfId: 3853690350186984811
    SubobjectId: 14001881140192835445
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10664533282702515444
  Name: "GeoRoot"
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
  ParentId: 3853690350186984811
  ChildIds: 3251090595982168728
  ChildIds: 11336224412605121312
  ChildIds: 1921650199577039536
  ChildIds: 15695857494475463029
  ChildIds: 10873928402427522875
  ChildIds: 8154699646677369715
  ChildIds: 17899565653788278944
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
    SelfId: 10664533282702515444
    SubobjectId: 7145993005084827370
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17899565653788278944
  Name: "head"
  Transform {
    Location {
      X: -0.34375
      Y: -0.044921875
      Z: 145.818359
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10664533282702515444
  ChildIds: 6206716348976455685
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
    SelfId: 17899565653788278944
    SubobjectId: 1099910075558183614
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6206716348976455685
  Name: "Eye Patch"
  Transform {
    Location {
      X: 1.65234375
      Y: -2.29003906
      Z: 50.5424805
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17899565653788278944
  ChildIds: 11883275374529253578
  ChildIds: 13735893027660223970
  ChildIds: 8523625863347221838
  ChildIds: 6432433622681962592
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
    SelfId: 6206716348976455685
    SubobjectId: 11603821170939945499
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6432433622681962592
  Name: "Ring - Thin"
  Transform {
    Location {
      X: -4.86328125
      Y: 0.666015625
      Z: 1.16699219
    }
    Rotation {
      Pitch: 0.0252785292
      Yaw: -8.10608864
      Roll: 36.9958801
    }
    Scale {
      X: 0.22190243
      Y: 0.188856989
      Z: 0.225292712
    }
  }
  ParentId: 6206716348976455685
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11580750779458949993
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.032
        G: 0.032
        B: 0.032
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.2215631
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16353917461806733124
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
    SelfId: 6432433622681962592
    SubobjectId: 12569328917630765694
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8523625863347221838
  Name: "Ring - Thin"
  Transform {
    Location {
      X: -1.40429688
      Y: 1.74023438
    }
    Rotation {
      Pitch: 0.0252785292
      Yaw: -8.10608768
      Roll: 36.9959106
    }
    Scale {
      X: 0.221903965
      Y: 0.21132952
      Z: 0.225301921
    }
  }
  ParentId: 6206716348976455685
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11580750779458949993
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.032
        G: 0.032
        B: 0.032
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.2215631
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16353917461806733124
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
    SelfId: 8523625863347221838
    SubobjectId: 9322911728984733520
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13735893027660223970
  Name: "Hill 05"
  Transform {
    Location {
      X: 6.2734375
      Y: -2.40625
      Z: 0.316162109
    }
    Rotation {
      Pitch: 61.2107124
      Yaw: 57.967308
      Roll: -103.121689
    }
    Scale {
      X: 0.0117433695
      Y: 0.0117433695
      Z: 0.0117433695
    }
  }
  ParentId: 6206716348976455685
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.222000018
        G: 0.222000018
        B: 0.222000018
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 8828521707055617985
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
    SelfId: 13735893027660223970
    SubobjectId: 5310891491560937468
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
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
  Id: 11883275374529253578
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
      X: 8.84375
      Y: -5.66894531
      Z: -34.2834473
    }
    Rotation {
      Roll: 1.19528268e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6206716348976455685
  UnregisteredParameters {
    Overrides {
      Name: "cs:ChanceToDestroy"
      Float: 0.85
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 11883275374529253578
    SubobjectId: 6035524700185498324
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8154699646677369715
  Name: "upper_spine"
  Transform {
    Location {
      X: -0.34375
      Y: -0.044921875
      Z: 145.818359
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10664533282702515444
  ChildIds: 7403369094752700681
  ChildIds: 10655658406120103984
  ChildIds: 635443034600868072
  ChildIds: 5496957418853563521
  ChildIds: 8986730003525217557
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
    SelfId: 8154699646677369715
    SubobjectId: 9655984082787811693
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8986730003525217557
  Name: "Moss Chest"
  Transform {
    Location {
      X: 10.4960938
      Y: -7.95898438
      Z: 16.2590332
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8154699646677369715
  ChildIds: 1772863626201505832
  ChildIds: 5707544328210367861
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
    SelfId: 8986730003525217557
    SubobjectId: 10060167530982846219
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5707544328210367861
  Name: "Decal Moss Patch"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -97.5000305
      Roll: 89.9999619
    }
    Scale {
      X: 0.0846253186
      Y: 0.0846124813
      Z: 0.0430278331
    }
  }
  ParentId: 8986730003525217557
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.467347622
        G: 0.531
        B: 0.0138278827
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
      Id: 14633329416983781101
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 5707544328210367861
    SubobjectId: 13267295612742125419
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
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
  Id: 1772863626201505832
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: 1.19528295e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8986730003525217557
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 1772863626201505832
    SubobjectId: 17271823891091825206
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5496957418853563521
  Name: "Grass Rib"
  Transform {
    Location {
      X: 2.05078125
      Y: 14.3808594
      Z: -1.82763672
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8154699646677369715
  ChildIds: 1198623606385024959
  ChildIds: 17563424499092760346
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
    SelfId: 5496957418853563521
    SubobjectId: 13502565633436909215
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17563424499092760346
  Name: "Grass Tall"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 52.5398865
      Roll: 179.999954
    }
    Scale {
      X: 0.00681202579
      Y: 0.045213189
      Z: 0.253063828
    }
  }
  ParentId: 5496957418853563521
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Grass:id"
      AssetReference {
        Id: 2572933921419539642
      }
    }
    Overrides {
      Name: "ma:Nature_Grass:color"
      Color {
        R: 0.0799725801
        G: 0.114000008
        B: 0.0140450932
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 8553298544017934648
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
    SelfId: 17563424499092760346
    SubobjectId: 330578910230127876
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1198623606385024959
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: -5.97641474e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5496957418853563521
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 1198623606385024959
    SubobjectId: 16684147302816521633
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 635443034600868072
  Name: "Heart"
  Transform {
    Location {
      X: -0.998046875
      Y: -7.67089844
      Z: 14.0097656
    }
    Rotation {
      Roll: -12.2631531
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8154699646677369715
  ChildIds: 16928604559465751461
  ChildIds: 13963654596445364142
  ChildIds: 15297027175439984156
  ChildIds: 2535230209154594642
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
    SelfId: 635443034600868072
    SubobjectId: 18445106146343652086
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2535230209154594642
  Name: "Sphere"
  Transform {
    Location {
      X: -0.001953125
      Y: -1.47845089
      Z: 3.32695079
    }
    Rotation {
      Roll: 54.3932037
    }
    Scale {
      X: 0.0936279669
      Y: 0.0669318661
      Z: 0.102864243
    }
  }
  ParentId: 635443034600868072
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.265000015
        G: 0.088775
        B: 0.0535299927
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 2535230209154594642
    SubobjectId: 15277705495078384972
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15297027175439984156
  Name: "Sphere"
  Transform {
    Location {
      X: -0.001953125
      Y: 1.3951447
      Z: 1.59554374
    }
    Rotation {
      Roll: -37.6444473
    }
    Scale {
      X: 0.0936279669
      Y: 0.0936279669
      Z: 0.116669647
    }
  }
  ParentId: 635443034600868072
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.135
        G: 0.045225
        B: 0.0272699967
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 15297027175439984156
    SubobjectId: 2549696450460738562
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13963654596445364142
  Name: "Sphere"
  Transform {
    Location {
      X: -0.001953125
      Y: 0.0858511552
      Z: -1.0165273
    }
    Rotation {
      Roll: -3.75660384e-05
    }
    Scale {
      X: 0.111281186
      Y: 0.111281186
      Z: 0.158991396
    }
  }
  ParentId: 635443034600868072
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.135
        G: 0.045225
        B: 0.0272699967
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 13963654596445364142
    SubobjectId: 3955145213842939312
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16928604559465751461
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: 12.2631292
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 635443034600868072
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 16928604559465751461
    SubobjectId: 2145365323678884283
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10655658406120103984
  Name: "Guts"
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
  ParentId: 8154699646677369715
  ChildIds: 18368678479964116734
  ChildIds: 533400587480710357
  ChildIds: 10162413994398441697
  ChildIds: 14119032478566001346
  ChildIds: 16228181257389839898
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
    SelfId: 10655658406120103984
    SubobjectId: 7262936893881328174
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16228181257389839898
  Name: "Cone - Bullet"
  Transform {
    Location {
      X: 0.525390625
      Y: -6.25390625
      Z: -7.06933594
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -179.999969
      Roll: -179.999939
    }
    Scale {
      X: 0.042130556
      Y: 0.0421305411
      Z: 0.054762397
    }
  }
  ParentId: 10655658406120103984
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239215702
        G: 0.101960793
        B: 0.0745098069
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2264041107168619230
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
    SelfId: 16228181257389839898
    SubobjectId: 1593630632545489924
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14119032478566001346
  Name: "Ring - Thick"
  Transform {
    Location {
      Z: -7.65136719
    }
    Rotation {
    }
    Scale {
      X: 0.0997017771
      Y: 0.208957568
      Z: 0.208957568
    }
  }
  ParentId: 10655658406120103984
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239215702
        G: 0.101960793
        B: 0.0745098069
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
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
    SelfId: 14119032478566001346
    SubobjectId: 3808712098191550684
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10162413994398441697
  Name: "Ring - Thick"
  Transform {
    Location {
      Z: -4.1496582
    }
    Rotation {
    }
    Scale {
      X: 0.110825367
      Y: 0.232270673
      Z: 0.232270673
    }
  }
  ParentId: 10655658406120103984
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239215702
        G: 0.101960793
        B: 0.0745098069
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
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
    SelfId: 10162413994398441697
    SubobjectId: 8801027552912237311
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 533400587480710357
  Name: "Ring - Thick"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.118700117
      Y: 0.248774841
      Z: 0.248774841
    }
  }
  ParentId: 10655658406120103984
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239215702
        G: 0.101960793
        B: 0.0745098069
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
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
    SelfId: 533400587480710357
    SubobjectId: 17315398562977431243
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18368678479964116734
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: 3.84198102e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10655658406120103984
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 18368678479964116734
    SubobjectId: 702849077562184928
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7403369094752700681
  Name: "Lung"
  Transform {
    Location {
      X: -2.09570312
      Y: 6.68359375
      Z: 17.6203613
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8154699646677369715
  ChildIds: 13028167961110794484
  ChildIds: 16909871031902660526
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
    SelfId: 7403369094752700681
    SubobjectId: 10490482999853222679
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16909871031902660526
  Name: "Thorn"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -179.999954
      Roll: -168.927124
    }
    Scale {
      X: 0.484463543
      Y: 0.24931252
      Z: 0.271215856
    }
  }
  ParentId: 7403369094752700681
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.239000008
        G: 0.104909055
        B: 0.0748069957
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7436120957885304537
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
    SelfId: 16909871031902660526
    SubobjectId: 2125782994611889584
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13028167961110794484
  Name: "ChanceToDestroyParent"
  Transform {
    Location {
    }
    Rotation {
      Roll: 3.84198102e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7403369094752700681
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
      Id: 14194144483212673639
    }
  }
  InstanceHistory {
    SelfId: 13028167961110794484
    SubobjectId: 4892875116032283370
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10873928402427522875
  Name: "right_prop"
  Transform {
    Location {
      X: 7.66796875
      Y: 53.328125
      Z: 107.507202
    }
    Rotation {
      Pitch: 74.4261703
      Yaw: -133.846
      Roll: 46.8663063
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10664533282702515444
  ChildIds: 12684824586272939463
  ChildIds: 16717453355244219876
  ChildIds: 16032319002520281822
  ChildIds: 16203508623343412987
  ChildIds: 6567465236489030513
  ChildIds: 997495547206210053
  ChildIds: 10922071158333561430
  ChildIds: 16345438593619308826
  ChildIds: 12100899665284616224
  ChildIds: 11722093468770663555
  ChildIds: 12642666724461842876
  ChildIds: 3886924232982503050
  ChildIds: 16193168376914259145
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
    SelfId: 10873928402427522875
    SubobjectId: 7047102102491409701
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16193168376914259145
  Name: "Handle"
  Transform {
    Location {
      Y: -0.0374755859
      Z: 7.57117462
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10873928402427522875
  ChildIds: 9670884355682457287
  ChildIds: 11669539289431411865
  ChildIds: 5280523674472501300
  ChildIds: 15251978333935765788
  ChildIds: 16080306637279755892
  ChildIds: 187545093032478036
  ChildIds: 5391464245954941437
  ChildIds: 17426816422558913449
  ChildIds: 15658402942251761476
  ChildIds: 303522139013876958
  ChildIds: 5445064782206286775
  ChildIds: 2483959087634566391
  ChildIds: 15622510637509336097
  ChildIds: 10466901320462536230
  ChildIds: 9925234317263024683
  ChildIds: 4506913145043528138
  ChildIds: 9591842496173548086
  ChildIds: 4033105200585362584
  ChildIds: 12286658764607368899
  ChildIds: 8964097888277793986
  ChildIds: 2429741699238316577
  ChildIds: 6112734776887590148
  ChildIds: 12988186263883469007
  ChildIds: 16544129384822132831
  ChildIds: 14024166247859434718
  ChildIds: 11646886523945178777
  ChildIds: 9177553412400970193
  ChildIds: 4574472456472591044
  ChildIds: 14087959247578828062
  ChildIds: 17467507055887328091
  ChildIds: 1424726361191483580
  ChildIds: 8052644117827889908
  ChildIds: 4415485329549683048
  ChildIds: 4792321797759525065
  ChildIds: 10560286307339275886
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
    SelfId: 16193168376914259145
    SubobjectId: 1698440442498100951
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10560286307339275886
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.0814851522
      Y: 0.0374755859
      Z: -30.4928741
    }
    Rotation {
      Pitch: 0.476665229
    }
    Scale {
      X: 0.0567028672
      Y: 0.0464581251
      Z: 0.0169442259
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 10560286307339275886
    SubobjectId: 7324557445604346992
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4792321797759525065
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0881054401
      Y: 0.0374755859
      Z: -29.7354279
    }
    Rotation {
      Pitch: -6.92422485
    }
    Scale {
      X: 0.0568939559
      Y: 0.0466146693
      Z: 0.0170013197
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 4792321797759525065
    SubobjectId: 13090307197127156439
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4415485329549683048
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.192963958
      Y: 0.0374755859
      Z: -28.9871826
    }
    Rotation {
      Pitch: 10.0883255
    }
    Scale {
      X: 0.0572786964
      Y: 0.0469299182
      Z: 0.0171162914
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 4415485329549683048
    SubobjectId: 14586410158332603254
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8052644117827889908
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.05874753
      Y: 0.0374755859
      Z: -28.3607178
    }
    Rotation {
      Pitch: -6.38250732
    }
    Scale {
      X: 0.0578616783
      Y: 0.0474075675
      Z: 0.0172905158
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 8052644117827889908
    SubobjectId: 11018935459871238378
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1424726361191483580
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.131193638
      Y: 0.0374755859
      Z: -27.5032272
    }
    Rotation {
      Pitch: 7.06261349
    }
    Scale {
      X: 0.0582529679
      Y: 0.0477281436
      Z: 0.0174074359
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 1424726361191483580
    SubobjectId: 16496130530210056866
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17467507055887328091
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0372216702
      Y: 0.0374755859
      Z: -26.5391312
    }
    Rotation {
      Pitch: -6.38534546
    }
    Scale {
      X: 0.0582529679
      Y: 0.0477281399
      Z: 0.0174074341
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 17467507055887328091
    SubobjectId: 379058129542488389
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14087959247578828062
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.157356739
      Y: 0.0374755859
      Z: -25.8056793
    }
    Rotation {
      Pitch: 6.55747318
    }
    Scale {
      X: 0.0586469546
      Y: 0.0480509624
      Z: 0.0175251663
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 14087959247578828062
    SubobjectId: 3794808295354273536
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4574472456472591044
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0361407399
      Y: 0.0374755859
      Z: -24.9799728
    }
    Rotation {
      Pitch: -5.18087769
    }
    Scale {
      X: 0.059045516
      Y: 0.0483775102
      Z: 0.0176442619
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 4574472456472591044
    SubobjectId: 14434151382490216666
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9177553412400970193
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.0605182052
      Y: 0.0374755859
      Z: -23.9738197
    }
    Rotation {
      Pitch: 6.40173101
    }
    Scale {
      X: 0.0594447628
      Y: 0.0487046093
      Z: 0.0177635681
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 9177553412400970193
    SubobjectId: 9833216671161318351
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11646886523945178777
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.00379526615
      Y: 0.0374755859
      Z: -23.1726112
    }
    Rotation {
      Pitch: -3.16592407
    }
    Scale {
      X: 0.0598298907
      Y: 0.0490201227
      Z: 0.017878646
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 11646886523945178777
    SubobjectId: 6235708499143742599
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14024166247859434718
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.0606187582
      Y: 0.0374755859
      Z: -22.2763901
    }
    Rotation {
      Pitch: 5.20265055
    }
    Scale {
      X: 0.0596845485
      Y: 0.048901055
      Z: 0.0178352073
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 14024166247859434718
    SubobjectId: 3869852827362703040
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16544129384822132831
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.164682865
      Y: 0.0374755859
      Z: -21.4780807
    }
    Rotation {
      Pitch: -7.1237793
    }
    Scale {
      X: 0.0596912876
      Y: 0.0489066169
      Z: 0.017837232
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 16544129384822132831
    SubobjectId: 1347469400411558465
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12988186263883469007
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.0988124609
      Y: 0.0374755859
      Z: -20.3832169
    }
    Rotation {
      Pitch: 6.02335215
    }
    Scale {
      X: 0.0609571636
      Y: 0.0499437787
      Z: 0.018215511
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 12988186263883469007
    SubobjectId: 4833748700288275153
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6112734776887590148
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0830101371
      Y: 0.0374755859
      Z: -19.7491341
    }
    Rotation {
      Pitch: -8.45230103
    }
    Scale {
      X: 0.0612419732
      Y: 0.0501771197
      Z: 0.0183006208
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 6112734776887590148
    SubobjectId: 11817280109060964122
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2429741699238316577
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.125578701
      Y: 0.0374755859
      Z: -18.9151459
    }
    Rotation {
      Pitch: 4.63334036
    }
    Scale {
      X: 0.0616561323
      Y: 0.0505164526
      Z: 0.0184243824
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 2429741699238316577
    SubobjectId: 15461859661964920895
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8964097888277793986
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0535429716
      Y: 0.0374755859
      Z: -18.0411835
    }
    Rotation {
      Pitch: -7.47412109
    }
    Scale {
      X: 0.0620730482
      Y: 0.0508580469
      Z: 0.0185489673
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 8964097888277793986
    SubobjectId: 10037817457658367708
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12286658764607368899
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.12633872
      Y: 0.0374755859
      Z: -17.0674248
    }
    Rotation {
      Pitch: 4.43549728
    }
    Scale {
      X: 0.0624928102
      Y: 0.0512019694
      Z: 0.0186744034
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 12286658764607368899
    SubobjectId: 6749023708495293661
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4033105200585362584
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0552088022
      Y: 0.0374755859
      Z: -16.0861282
    }
    Rotation {
      Pitch: -7.98407
    }
    Scale {
      X: 0.0624935
      Y: 0.0512025319
      Z: 0.0186746083
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 4033105200585362584
    SubobjectId: 13894684078411239046
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9591842496173548086
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.189155102
      Y: 0.0374755859
      Z: -15.2606544
    }
    Rotation {
      Pitch: 7.75537205
    }
    Scale {
      X: 0.0631295666
      Y: 0.0517236777
      Z: 0.0188646801
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 9591842496173548086
    SubobjectId: 8229962923145568296
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4506913145043528138
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0249616504
      Y: 0.0374755859
      Z: -14.5196533
    }
    Rotation {
      Pitch: -4.61929321
    }
    Scale {
      X: 0.0633423
      Y: 0.0518979765
      Z: 0.018928254
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 4506913145043528138
    SubobjectId: 14528726622058195924
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9925234317263024683
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.160041213
      Y: 0.0374755859
      Z: -13.4850235
    }
    Rotation {
      Pitch: 6.37670517
    }
    Scale {
      X: 0.0637706444
      Y: 0.0522489287
      Z: 0.0190562513
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 9925234317263024683
    SubobjectId: 9121520169081581621
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10466901320462536230
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0881054401
      Y: 0.0374755859
      Z: -12.7275734
    }
    Rotation {
      Pitch: -6.92422485
    }
    Scale {
      X: 0.0639855489
      Y: 0.0524250083
      Z: 0.0191204697
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 10466901320462536230
    SubobjectId: 7379786844632583224
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15622510637509336097
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.192963958
      Y: 0.0374755859
      Z: -11.979332
    }
    Rotation {
      Pitch: 10.0883255
    }
    Scale {
      X: 0.0644182414
      Y: 0.0527795218
      Z: 0.0192497689
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 15622510637509336097
    SubobjectId: 3451425160590057023
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2483959087634566391
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.05874753
      Y: 0.0374755859
      Z: -11.3528671
    }
    Rotation {
      Pitch: -6.38250732
    }
    Scale {
      X: 0.0650739
      Y: 0.0533167198
      Z: 0.019445695
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 2483959087634566391
    SubobjectId: 15371746380017979113
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5445064782206286775
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.131193638
      Y: 0.0374755859
      Z: -10.4953766
    }
    Rotation {
      Pitch: 7.06261349
    }
    Scale {
      X: 0.0655139536
      Y: 0.0536772683
      Z: 0.019577194
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 5445064782206286775
    SubobjectId: 13599573259463211433
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 303522139013876958
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0372216702
      Y: 0.0374755859
      Z: -9.53128052
    }
    Rotation {
      Pitch: -6.38534546
    }
    Scale {
      X: 0.0655139536
      Y: 0.0536772646
      Z: 0.0195771921
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 303522139013876958
    SubobjectId: 17518423676594294464
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15658402942251761476
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.157356739
      Y: 0.0374755859
      Z: -8.79782867
    }
    Rotation {
      Pitch: 6.55747318
    }
    Scale {
      X: 0.065957047
      Y: 0.0540403
      Z: 0.0197096
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 15658402942251761476
    SubobjectId: 3343483748464819546
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17426816422558913449
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.0361407399
      Y: 0.0374755859
      Z: -7.97212219
    }
    Rotation {
      Pitch: -5.18087769
    }
    Scale {
      X: 0.0664052814
      Y: 0.0544075482
      Z: 0.0198435429
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 17426816422558913449
    SubobjectId: 500989681765241271
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5391464245954941437
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.0605182052
      Y: 0.0374755859
      Z: -6.96595764
    }
    Rotation {
      Pitch: 6.40173101
    }
    Scale {
      X: 0.0668543056
      Y: 0.0547754467
      Z: 0.0199777205
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 5391464245954941437
    SubobjectId: 13689243469142070243
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 187545093032478036
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.00379526615
      Y: 0.0374755859
      Z: -6.16475677
    }
    Rotation {
      Pitch: -3.16592407
    }
    Scale {
      X: 0.0672874227
      Y: 0.0551302806
      Z: 0.0201071464
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 187545093032478036
    SubobjectId: 17704187822832879434
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16080306637279755892
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.0606187582
      Y: 0.0374755859
      Z: -5.26852417
    }
    Rotation {
      Pitch: 5.20265055
    }
    Scale {
      X: 0.0671239644
      Y: 0.0549963638
      Z: 0.0200582948
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 16080306637279755892
    SubobjectId: 2883178912965983338
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15251978333935765788
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: -0.164682865
      Y: 0.0374755859
      Z: -4.47021484
    }
    Rotation {
      Pitch: -7.1237793
    }
    Scale {
      X: 0.067131564
      Y: 0.0550026074
      Z: 0.0200605709
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 15251978333935765788
    SubobjectId: 2630747865980570370
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5280523674472501300
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      X: 0.0988124609
      Y: 0.0374755859
      Z: -3.37535858
    }
    Rotation {
      Pitch: 6.02335215
    }
    Scale {
      X: 0.0685552284
      Y: 0.0561690442
      Z: 0.0204859972
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 5280523674472501300
    SubobjectId: 13718969484728390186
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11669539289431411865
  Name: "Cylinder - Rounded Bottom-Aligned"
  Transform {
    Location {
      Y: 0.0374755859
      Z: -2.05876923
    }
    Rotation {
    }
    Scale {
      X: 0.0673129112
      Y: 0.0573124401
      Z: 0.0209030025
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4848432830553094634
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 2
        G: 1.06595993
        B: 0.279999971
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.216159552
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.216159552
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9718010419719203372
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
    SelfId: 11669539289431411865
    SubobjectId: 6258079772473527943
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9670884355682457287
  Name: "Sphere"
  Transform {
    Location {
      Z: -33.5506973
    }
    Rotation {
    }
    Scale {
      X: 0.0843298882
      Y: 0.0843298882
      Z: 0.0843298882
    }
  }
  ParentId: 16193168376914259145
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.51000005
        G: 0.51000005
        B: 0.51000005
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 9670884355682457287
    SubobjectId: 8151023120896251097
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3886924232982503050
  Name: "Decal Stains Round 01"
  Transform {
    Location {
      X: 1.28282666
      Y: -1.35178423
      Z: 93.5923615
    }
    Rotation {
      Pitch: 1.51869249
      Yaw: -165.498978
      Roll: 89.4675293
    }
    Scale {
      X: 0.0214861706
      Y: 0.114255846
      Z: 0.114255741
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.459000021
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
      Id: 12385794193739794509
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 3886924232982503050
    SubobjectId: 14040678534101736596
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12642666724461842876
  Name: "Horn"
  Transform {
    Location {
      X: -5.62194824
      Y: -0.0374755859
      Z: 10.3821716
    }
    Rotation {
      Pitch: 1.29244244
      Yaw: -94.8305664
      Roll: -90.0548096
    }
    Scale {
      X: 0.0562205352
      Y: 0.0562199801
      Z: 0.3305538
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.51000005
        G: 0.51000005
        B: 0.51000005
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 17951992793618514894
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
    SelfId: 12642666724461842876
    SubobjectId: 6365948180753978274
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
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
  Id: 11722093468770663555
  Name: "Sphere"
  Transform {
    Location {
      X: -23.6124268
      Y: 1.59289551
      Z: 10.4843063
    }
    Rotation {
      Pitch: 9.56226431e-05
      Yaw: -179.999802
      Roll: 3.5858644e-05
    }
    Scale {
      X: 0.0449759364
      Y: 0.0449759364
      Z: 0.0449759364
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.51000005
        G: 0.51000005
        B: 0.51000005
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 11722093468770663555
    SubobjectId: 6162788674868215453
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12100899665284616224
  Name: "Horn"
  Transform {
    Location {
      X: 5.62194824
      Y: -0.0374755859
      Z: 10.3821716
    }
    Rotation {
      Pitch: 1.29249024
      Yaw: 85.1693039
      Roll: -90.0548096
    }
    Scale {
      X: 0.0562205352
      Y: 0.0562199801
      Z: 0.3305538
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.51000005
        G: 0.51000005
        B: 0.51000005
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 17951992793618514894
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
    SelfId: 12100899665284616224
    SubobjectId: 5819963961902060094
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
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
  Id: 16345438593619308826
  Name: "Sphere"
  Transform {
    Location {
      X: 23.6124268
      Y: -1.66784668
      Z: 10.4843063
    }
    Rotation {
    }
    Scale {
      X: 0.0449759364
      Y: 0.0449759364
      Z: 0.0449759364
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.51000005
        G: 0.51000005
        B: 0.51000005
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7363477334452929865
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
    SelfId: 16345438593619308826
    SubobjectId: 1584435348953510660
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10922071158333561430
  Name: "Cube"
  Transform {
    Location {
      Y: -0.0374755859
      Z: 10.3821716
    }
    Rotation {
    }
    Scale {
      X: 0.112439848
      Y: 0.0534089282
      Z: 0.0562199242
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.51000005
        G: 0.51000005
        B: 0.51000005
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
    Value: "mc:ecollisionsetting:forceoff"
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
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 10922071158333561430
    SubobjectId: 6969707018820212808
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
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
  Id: 997495547206210053
  Name: "Wedge - Concave Polished"
  Transform {
    Location {
      Y: 1.31182861
      Z: 13.1931686
    }
    Rotation {
      Yaw: 89.9999313
    }
    Scale {
      X: 0.00168659771
      Y: 0.0562199242
      Z: 0.562199235
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.136375755
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.59075212
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.572
        G: 0.572
        B: 0.572
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3323004215598028599
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
    SelfId: 997495547206210053
    SubobjectId: 18085456273202155547
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6567465236489030513
  Name: "Wedge - Concave Polished"
  Transform {
    Location {
      Y: 1.31182861
      Z: 13.1931686
    }
    Rotation {
      Yaw: -89.999939
    }
    Scale {
      X: 0.00168659771
      Y: 0.0562199242
      Z: 0.562199235
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.9521265
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.572
        G: 0.572
        B: 0.572
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3323004215598028599
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
    SelfId: 6567465236489030513
    SubobjectId: 12398392820823902575
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16203508623343412987
  Name: "Wedge - Concave Polished"
  Transform {
    Location {
      Y: -1.38677979
      Z: 13.1931686
    }
    Rotation {
      Yaw: -89.999939
    }
    Scale {
      X: 0.00168659771
      Y: 0.0562199242
      Z: 0.562199235
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.136375755
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.59075212
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.572
        G: 0.572
        B: 0.572
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3323004215598028599
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
    SelfId: 16203508623343412987
    SubobjectId: 1726514166468797669
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16032319002520281822
  Name: "Wedge - Concave Polished"
  Transform {
    Location {
      Y: -1.38677979
      Z: 13.1931686
    }
    Rotation {
      Yaw: 89.9999313
    }
    Scale {
      X: 0.00168659771
      Y: 0.0562199242
      Z: 0.562199235
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.9521265
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.572
        G: 0.572
        B: 0.572
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3323004215598028599
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
    SelfId: 16032319002520281822
    SubobjectId: 2978462040813134016
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16717453355244219876
  Name: "Cube"
  Transform {
    Location {
      Y: -0.0374755859
      Z: 66.0332947
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 0.0281099621
      Y: 0.00562199205
      Z: 0.895094097
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.572
        G: 0.572
        B: 0.572
        A: 1
      }
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
    Value: "mc:ecollisionsetting:forceoff"
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
  InstanceHistory {
    SelfId: 16717453355244219876
    SubobjectId: 2246153831764193274
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:low"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12684824586272939463
  Name: "Cone - Bullet"
  Transform {
    Location {
      Y: -0.0374755859
      Z: 13.1931686
    }
    Rotation {
    }
    Scale {
      X: 0.112439848
      Y: 0.0281099621
      Z: 0.487779826
    }
  }
  ParentId: 10873928402427522875
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9651684874529213799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.309285074
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.953539968
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2264041107168619230
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
    SelfId: 12684824586272939463
    SubobjectId: 5125710468754776025
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15695857494475463029
  Name: "Skeleton Mob"
  Transform {
    Location {
      Z: 104.998901
    }
    Rotation {
      Yaw: -6.8301847e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10664533282702515444
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14698875350380456389
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.583333
        G: 0.406894237
        B: 0.176166564
        A: 1
      }
    }
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
  CoreMesh {
    MeshAsset {
      Id: 10824426293829047600
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    AnimatedMesh {
      AnimationStance: "unarmed_bind_pose"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
    }
  }
  InstanceHistory {
    SelfId: 15695857494475463029
    SubobjectId: 3384808585879706475
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1921650199577039536
  Name: "AnimatedMeshCostume"
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
  ParentId: 10664533282702515444
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
      Id: 8881557842072219981
    }
  }
  InstanceHistory {
    SelfId: 1921650199577039536
    SubobjectId: 17113873121481887918
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11336224412605121312
  Name: "AnimControllerZombie"
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
  ParentId: 10664533282702515444
  UnregisteredParameters {
    Overrides {
      Name: "cs:AnimatedMesh"
      ObjectReference {
        SelfId: 15695857494475463029
      }
    }
    Overrides {
      Name: "cs:AttackAnim"
      String: "1hand_melee_slash_left"
    }
    Overrides {
      Name: "cs:IdleStance"
      String: "1hand_melee_idle_relaxed"
    }
    Overrides {
      Name: "cs:ReadyStance"
      String: "1hand_melee_idle_ready"
    }
    Overrides {
      Name: "cs:WalkStance"
      String: "1hand_melee_walk_forward"
    }
    Overrides {
      Name: "cs:RunStance"
      String: "1hand_melee_run_forward"
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 1997800453497773311
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
      Id: 427248120346786709
    }
  }
  InstanceHistory {
    SelfId: 11336224412605121312
    SubobjectId: 7672443025496277310
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3251090595982168728
  Name: "NPCHealthBarDataProviderClient"
  Transform {
    Location {
      Z: 260
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10664533282702515444
  UnregisteredParameters {
    Overrides {
      Name: "cs:HealthBarTemplate"
      AssetReference {
        Id: 4315867458127260351
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 1997800453497773311
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
      Id: 1401124806849575098
    }
  }
  InstanceHistory {
    SelfId: 3251090595982168728
    SubobjectId: 15723636327053316230
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16172627353053226892
  Name: "ForwardNode"
  Transform {
    Location {
      X: 5
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3853690350186984811
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
    SelfId: 16172627353053226892
    SubobjectId: 1682961592151532946
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8815589585012168083
  Name: "NPCAttackClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1.33333337
      Y: 1.33333337
      Z: 1.33333337
    }
  }
  ParentId: 3853690350186984811
  UnregisteredParameters {
    Overrides {
      Name: "cs:DamageFX"
      AssetReference {
        Id: 6439897776520759745
      }
    }
    Overrides {
      Name: "cs:DestroyFX"
      AssetReference {
        Id: 6439897776520759745
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 1997800453497773311
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
      Id: 9324991830768780045
    }
  }
  InstanceHistory {
    SelfId: 8815589585012168083
    SubobjectId: 10195276852652218253
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3645120270201653013
  Name: "NPCAIClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1.33333337
      Y: 1.33333337
      Z: 1.33333337
    }
  }
  ParentId: 3853690350186984811
  UnregisteredParameters {
    Overrides {
      Name: "cs:GeoRoot"
      ObjectReference {
        SelfId: 10664533282702515444
      }
    }
    Overrides {
      Name: "cs:ForwardNode"
      ObjectReference {
        SelfId: 16172627353053226892
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 1997800453497773311
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
      Id: 16526478722992756359
    }
  }
  InstanceHistory {
    SelfId: 3645120270201653013
    SubobjectId: 14248742502636160267
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5491696389718396138
  Name: "ServerContext"
  Transform {
    Location {
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14975917759626488696
  ChildIds: 10444294613362504444
  ChildIds: 9477009235477788652
  ChildIds: 8339328511163863556
  ChildIds: 10756884107083749267
  ChildIds: 16302894049613280587
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  NetworkContext {
    Type: Server
  }
  InstanceHistory {
    SelfId: 5491696389718396138
    SubobjectId: 13483159941755981556
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16302894049613280587
  Name: "NPCHeadshot"
  Transform {
    Location {
      Z: 90
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5491696389718396138
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
      Id: 8341736443469670175
    }
  }
  InstanceHistory {
    SelfId: 16302894049613280587
    SubobjectId: 1518875809838200661
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10756884107083749267
  Name: "Trigger"
  Transform {
    Location {
      Z: -25
    }
    Rotation {
    }
    Scale {
      X: 1.99963439
      Y: 1.99963439
      Z: 1.99963439
    }
  }
  ParentId: 5491696389718396138
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
      Value: "mc:etriggershape:sphere"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  InstanceHistory {
    SelfId: 10756884107083749267
    SubobjectId: 7089654655840687501
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8339328511163863556
  Name: "DamageableDeathBroadcastEvent"
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
  ParentId: 5491696389718396138
  UnregisteredParameters {
    Overrides {
      Name: "cs:EventID"
      String: "Skeleton2"
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
      Id: 15460891057637454420
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9477009235477788652
  Name: "NPCAttackServer"
  Transform {
    Location {
      X: 81.4707
      Z: 13.3623047
    }
    Rotation {
      Pitch: 6.10298538
      Yaw: 7.6284e-14
      Roll: 1.43097795e-12
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5491696389718396138
  UnregisteredParameters {
    Overrides {
      Name: "cs:DamageToPlayers"
      Int: 20
    }
    Overrides {
      Name: "cs:DamageToNPCs"
      Float: 20
    }
    Overrides {
      Name: "cs:ProjectileBody"
      AssetReference {
        Id: 17434832614945470616
      }
    }
    Overrides {
      Name: "cs:MuzzleFlash"
      AssetReference {
        Id: 11731221552292390181
      }
    }
    Overrides {
      Name: "cs:ImpactSurface"
      AssetReference {
        Id: 15728676179772725900
      }
    }
    Overrides {
      Name: "cs:ImpactCharacter"
      AssetReference {
        Id: 307406115803496087
      }
    }
    Overrides {
      Name: "cs:ProjectileLifeSpan"
      Float: 0.11
    }
    Overrides {
      Name: "cs:ProjectileSpeed"
      Float: 50
    }
    Overrides {
      Name: "cs:ProjectileGravity"
      Float: 0
    }
    Overrides {
      Name: "cs:ProjectileHoming"
      Bool: true
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 1997800453497773311
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
      Id: 13670653971905386821
    }
  }
  InstanceHistory {
    SelfId: 9477009235477788652
    SubobjectId: 8407864205170865650
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10444294613362504444
  Name: "NPCAIServer"
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
  ParentId: 5491696389718396138
  UnregisteredParameters {
    Overrides {
      Name: "cs:Collider"
      ObjectReference {
        SelfId: 11074080936284229817
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 10756884107083749267
      }
    }
    Overrides {
      Name: "cs:AttackComponent"
      ObjectReference {
        SelfId: 9477009235477788652
      }
    }
    Overrides {
      Name: "cs:HomingTarget"
      ObjectReference {
        SelfId: 11074080936284229817
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 1997800453497773311
      }
    }
    Overrides {
      Name: "cs:RotationRoot"
      ObjectReference {
        SelfId: 1997800453497773311
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
      Id: 877607263390645540
    }
  }
  InstanceHistory {
    SelfId: 10444294613362504444
    SubobjectId: 7483351866561982690
    InstanceId: 10471293678120575554
    TemplateId: 12376745787390098485
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15589263530439580413
  Name: "RPG Skeleton - Unarmed"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 5965388886224970353
      value {
        Overrides {
          Name: "Name"
          String: "RPG Skeleton - Unarmed"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 2400
            Y: 1100
            Z: 50
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -89.9999924
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
        Overrides {
          Name: "Damageable.MaxHitPoints"
          Float: 60
        }
        Overrides {
          Name: "cs:LootId"
          String: ""
        }
        Overrides {
          Name: "Damageable.StartingHitPoints"
          Float: 60
        }
      }
    }
    TemplateAsset {
      Id: 18343431396922342877
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10816976692276899515
  Name: "Spawn Point"
  Transform {
    Location {
      X: 3150
      Y: 3600
      Z: 165
    }
    Rotation {
      Yaw: -179.999985
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
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
  Id: 5288873638020236718
  Name: "Spawn Point"
  Transform {
    Location {
      X: 1650
      Y: 3600
      Z: 165
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18384832674565965731
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
