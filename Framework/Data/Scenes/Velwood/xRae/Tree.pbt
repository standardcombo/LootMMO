Name: "xRae"
RootId: 16116870671107651725
Objects {
  Id: 12323240751572531927
  Name: "Humanoid 2 Rig"
  Transform {
    Location {
      X: 3953.69482
      Y: -25693.5957
      Z: 1146.59729
    }
    Rotation {
      Yaw: 123.584206
    }
    Scale {
      X: 1.28117204
      Y: 1.28117204
      Z: 1.28117204
    }
  }
  ParentId: 16116870671107651725
  UnregisteredParameters {
    Overrides {
      Name: "ma:0:Shared_Detail2:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:0:Shared_Detail2:id"
      AssetReference {
        Id: 12143894629036006249
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail1:id"
      AssetReference {
        Id: 13510637552607883678
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail3:id"
      AssetReference {
        Id: 9156392880245197027
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail1:color"
      Color {
        R: 0.279
        G: 0.13976571
        B: 0.059706
        A: 1
      }
    }
    Overrides {
      Name: "ma:1:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15904841793697771346
      }
    }
    Overrides {
      Name: "ma:1:Shared_BaseMaterial:color"
      Color {
        R: 0.663000047
        G: 0.558246
        B: 0.558246
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
      Id: 16912192915158960834
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
        Id: 2576720865550339403
      }
      SkinnedMeshes {
        Id: 17765362537956021931
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
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
  ChildIds: 338153117551636677
  ChildIds: 8402310416720602432
  ChildIds: 16913080066437432425
  ChildIds: 2544625050990324338
  ChildIds: 5187937529120151426
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
  Id: 5187937529120151426
  Name: "Trigger2"
  Transform {
    Location {
      X: -4135.95508
      Y: -6255.35449
      Z: 2358.43
    }
    Rotation {
    }
    Scale {
      X: 345.487091
      Y: 57.8046265
      Z: 85.5630493
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
      Name: "cs:Trigger1"
      ObjectReference {
        SelfId: 5540021067551384220
      }
    }
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
      Name: "cs:Trigger2"
      ObjectReference {
        SelfId: 5187937529120151426
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
    Pitch: -1449.24829
    Volume: 3.13585591
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
  Id: 5540021067551384220
  Name: "Trigger1"
  Transform {
    Location {
      X: -4290.72
      Y: -6293.82129
      Z: 2358.43
    }
    Rotation {
    }
    Scale {
      X: 67.2067871
      Y: 37.0744705
      Z: 85.5630493
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
      Id: 9295606010891936330
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
