Name: "xRae"
RootId: 16116870671107651725
Objects {
  Id: 8881124145295555622
  Name: "Motion Blur Post Process"
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
  ParentId: 16116870671107651725
  UnregisteredParameters {
    Overrides {
      Name: "bp:Intensity"
      Float: 0
    }
    Overrides {
      Name: "bp:Max"
      Float: 0
    }
    Overrides {
      Name: "bp:Per Object Amount"
      Float: 0
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
      Id: 15946579520938017950
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9014108780019463653
  Name: "Rock Flat 01"
  Transform {
    Location {
      X: 6580.52197
      Y: -21790.2168
      Z: 737.849609
    }
    Rotation {
      Pitch: 1.01056743
      Yaw: 108.950699
      Roll: 0.346976161
    }
    Scale {
      X: 3.80228424
      Y: 2.92511749
      Z: 6.8861208
    }
  }
  ParentId: 16116870671107651725
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.292000026
        G: 0.292000026
        B: 0.292000026
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
      Id: 4842806961858489681
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3350559390665798169
  Name: "Scare"
  Transform {
    Location {
      X: -91.1300507
      Y: -15974.4756
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16116870671107651725
  ChildIds: 5540021067551384220
  ChildIds: 5187937529120151426
  ChildIds: 14492461253624427801
  ChildIds: 338153117551636677
  ChildIds: 2544625050990324338
  ChildIds: 8402310416720602432
  ChildIds: 16913080066437432425
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
  Id: 16913080066437432425
  Name: "Creature Beast Deep Low Breath 01 SFX"
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
  ParentId: 3350559390665798169
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
      Id: 11707371210948964647
    }
    Pitch: -1123.18896
    Volume: 2.79620886
    Falloff: -1
    Radius: -1
    IsSpatializationEnabled: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8402310416720602432
  Name: "JumpScare"
  Transform {
    Location {
      X: 91.1300507
      Y: 15974.4756
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3350559390665798169
  UnregisteredParameters {
    Overrides {
      Name: "cs:VoiceCharacterZombieSnarlAttack04SFX"
      ObjectReference {
        SelfId: 2544625050990324338
      }
    }
    Overrides {
      Name: "cs:CreatureBeastDeepLowBreath01SFX"
      ObjectReference {
        SelfId: 16913080066437432425
      }
    }
    Overrides {
      Name: "cs:Trigger1"
      ObjectReference {
        SelfId: 5540021067551384220
      }
    }
    Overrides {
      Name: "cs:Trigger2"
      ObjectReference {
        SelfId: 5187937529120151426
      }
    }
    Overrides {
      Name: "cs:Trigger3"
      ObjectReference {
        SelfId: 14492461253624427801
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
      Id: 15373651705815554089
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2544625050990324338
  Name: "Adult 02 Vocal Efforts Pain Breathing Out Of Breath 02 SFX"
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
  ParentId: 3350559390665798169
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
      Id: 10336788444696592155
    }
    Pitch: -2000
    Volume: 4
    Falloff: -1
    Radius: -1
    FadeOutTime: 0.3
    IsSpatializationEnabled: true
    StopTime: 1.6
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 338153117551636677
  Name: "Voice Character Zombie Snarl Attack 04 SFX"
  Transform {
    Location {
      X: 4044.82495
      Y: -9719.12
      Z: 1146.59729
    }
    Rotation {
      Yaw: 123.584221
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3350559390665798169
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
      Id: 3683706403881711235
    }
    Pitch: -2400
    Volume: 3
    Falloff: -1
    Radius: -1
    FadeInTime: 0.4
    FadeOutTime: 1
    StartTime: 0.3
    IsSpatializationEnabled: true
    StopTime: 2
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14492461253624427801
  Name: "Trigger3"
  Transform {
    Location {
      X: 3847.00488
      Y: -1125.90137
      Z: 799.074829
    }
    Rotation {
    }
    Scale {
      X: 34.7415085
      Y: 34.7415085
      Z: 34.7415085
    }
  }
  ParentId: 3350559390665798169
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
  Id: 5187937529120151426
  Name: "Trigger2"
  Transform {
    Location {
      X: 4898.48926
      Y: -2150.42676
      Z: 1266.71716
    }
    Rotation {
    }
    Scale {
      X: 65.6863861
      Y: 65.6863861
      Z: 65.6863861
    }
  }
  ParentId: 3350559390665798169
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
  Id: 5540021067551384220
  Name: "Trigger1"
  Transform {
    Location {
      X: 6411.83594
      Y: -3982.53027
      Z: 1266.71716
    }
    Rotation {
      Yaw: -37.3181763
    }
    Scale {
      X: 129.86525
      Y: 129.86525
      Z: 129.86525
    }
  }
  ParentId: 3350559390665798169
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
  Id: 8225760367582177523
  Name: "SpawnZombie"
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
  ParentId: 16116870671107651725
  UnregisteredParameters {
    Overrides {
      Name: "cs:FrankenZombie"
      AssetReference {
        Id: 7570130108874215974
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
      Id: 1647607208107245524
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15940213973446538382
  Name: "Callout Sparkle"
  Transform {
    Location {
      X: 1030.14172
      Y: -5952.75391
      Z: 61.6486969
    }
    Rotation {
    }
    Scale {
      X: 2.35559106
      Y: 2.35559106
      Z: 2.35559106
    }
  }
  ParentId: 16116870671107651725
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
      Id: 14231394991004806063
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
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
  Id: 6804530064966610888
  Name: "NPCs"
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
  ParentId: 16116870671107651725
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
    FilePartitionName: "NPCs"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7555897418785953184
  Name: "Craft Equipment"
  Transform {
    Location {
      X: 1027.82446
      Y: -5988.86
      Z: 68.0171204
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16116870671107651725
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
    FilePartitionName: "Craft Equipment"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1487182588878629175
  Name: "Jobs"
  Transform {
    Location {
      X: -16195.0352
      Y: -43.75
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16116870671107651725
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
    FilePartitionName: "Jobs"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9025502218826221741
  Name: "Swimming Physics Volume"
  Transform {
    Location {
      X: -2049.32373
      Y: -40382.1719
      Z: -400
    }
    Rotation {
    }
    Scale {
      X: 520.394226
      Y: 1035.54297
      Z: 150
    }
  }
  ParentId: 16116870671107651725
  UnregisteredParameters {
    Overrides {
      Name: "bp:Volume Color"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 9295606010891936330
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
