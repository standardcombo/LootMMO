Assets {
  Id: 12888348717690736901
  Name: "Treasure Drop (Legendary)"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14831485199602450348
      Objects {
        Id: 14831485199602450348
        Name: "Treasure Drop (Legendary)"
        Transform {
          Scale {
            X: 1.13873112
            Y: 1.13873112
            Z: 1.13873112
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16106866849547257005
        ChildIds: 16511175990383211684
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16106866849547257005
        Name: "TreasureDrop"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1.00000012
          }
        }
        ParentId: 14831485199602450348
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 6650838075150176247
            }
          }
          Overrides {
            Name: "cs:ImpactSfx"
            ObjectReference {
              SubObjectId: 18418057035667650221
            }
          }
          Overrides {
            Name: "cs:OpenSfx"
            ObjectReference {
              SubObjectId: 8773490158630797204
            }
          }
          Overrides {
            Name: "cs:OpenVfx"
            ObjectReference {
              SubObjectId: 6188882155452312531
            }
          }
          Overrides {
            Name: "cs:NormalGeo"
            ObjectReference {
              SubObjectId: 9378122644316549004
            }
          }
          Overrides {
            Name: "cs:FadeGeo"
            ObjectReference {
              SubObjectId: 621861363291480293
            }
          }
          Overrides {
            Name: "cs:PhysicsObject"
            ObjectReference {
              SubObjectId: 16511175990383211684
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14831485199602450348
            }
          }
          Overrides {
            Name: "cs:PickupSfx"
            ObjectReference {
              SubObjectId: 1493808738605153233
            }
          }
          Overrides {
            Name: "cs:Lid"
            ObjectReference {
              SubObjectId: 11496358719907627023
            }
          }
          Overrides {
            Name: "cs:OpenDelay"
            Float: 3.1
          }
          Overrides {
            Name: "cs:SparklesVfx"
            ObjectReference {
              SubObjectId: 16390505701693381479
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
            Id: 3285502920416476594
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16511175990383211684
        Name: "Physics Cube"
        Transform {
          Location {
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14831485199602450348
        ChildIds: 6650838075150176247
        ChildIds: 18418057035667650221
        ChildIds: 8773490158630797204
        ChildIds: 6188882155452312531
        ChildIds: 16390505701693381479
        ChildIds: 1493808738605153233
        ChildIds: 9378122644316549004
        ChildIds: 621861363291480293
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
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
        PhysicsObject {
          PhysicsShape {
            Value: "mc:ephysicsshape:cube"
          }
          Settings {
            Mass: 100
            LinearDamping: 1
            AngularDamping: 17
          }
          TeamSettings {
          }
          Radius: 50
          CubeSize {
            X: 100
            Y: 100
            Z: 100
          }
          DamageSettings {
            MaxHitpoints: 100
            StartingHitpoints: 100
            StartInvulnerable: true
            DestroyOnDeath: true
            DestroyOnDeathClientTemplateId {
              Id: 841534158063459245
            }
            DestroyOnDeathNetworkedTemplateId {
              Id: 841534158063459245
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6650838075150176247
        Name: "Trigger"
        Transform {
          Location {
            Z: -4.28571463
          }
          Rotation {
          }
          Scale {
            X: 5.71428633
            Y: 5.71428633
            Z: 5.71428633
          }
        }
        ParentId: 16511175990383211684
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
        Id: 18418057035667650221
        Name: "Metal Thud Hollow Hit Impact Long 01 SFX"
        Transform {
          Location {
            Z: -4.28571463
          }
          Rotation {
          }
          Scale {
            X: 1.42857158
            Y: 1.42857158
            Z: 1.42857158
          }
        }
        ParentId: 16511175990383211684
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
            Id: 1015296774480736559
          }
          Volume: 1
          Falloff: 3000
          Radius: 200
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8773490158630797204
        Name: "Chest Magic Opening 03 SFX"
        Transform {
          Location {
            Z: -4.28571463
          }
          Rotation {
            Pitch: 6.83018879e-06
            Roll: 3.84198e-06
          }
          Scale {
            X: 1.42857158
            Y: 1.42857158
            Z: 1.42857158
          }
        }
        ParentId: 16511175990383211684
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
            Id: 13183535063044407174
          }
          Volume: 1.4
          Falloff: 3000
          Radius: 200
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6188882155452312531
        Name: "Resurrection VFX"
        Transform {
          Location {
            X: 2.17982724e-05
            Z: -2.92053366
          }
          Rotation {
          }
          Scale {
            X: 1.42857158
            Y: 1.42857158
            Z: 1.14285731
          }
        }
        ParentId: 16511175990383211684
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Beam"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Spiral"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Base Rays"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: false
          }
          Overrides {
            Name: "bp:Local Space"
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
            Id: 16693287233971223649
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16390505701693381479
        Name: "Callout Sparkle"
        Transform {
          Location {
            Z: 13.468997
          }
          Rotation {
          }
          Scale {
            X: 0.364820719
            Y: 0.99902308
            Z: 0.530728757
          }
        }
        ParentId: 16511175990383211684
        UnregisteredParameters {
          Overrides {
            Name: "bp:Density"
            Float: 0.6
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
            Id: 14231394991004806063
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1493808738605153233
        Name: "Magic Poof Sparkle 01 SFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.66666663
            Y: 1.66666663
            Z: 1.66666663
          }
        }
        ParentId: 16511175990383211684
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
            Id: 16786565957515303135
          }
          Volume: 1
          Falloff: 3000
          Radius: 200
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9378122644316549004
        Name: "Normal"
        Transform {
          Location {
            Z: -4.28571463
          }
          Rotation {
          }
          Scale {
            X: 0.857143
            Y: 0.857143
            Z: 0.857143
          }
        }
        ParentId: 16511175990383211684
        ChildIds: 1496633549042646669
        ChildIds: 11496358719907627023
        ChildIds: 1853838326590283864
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 1496633549042646669
        Name: "Fantasy Chest Base 03"
        Transform {
          Location {
            X: -0.238313302
            Y: 5.03677802e-05
            Z: -53.3333435
          }
          Rotation {
            Yaw: 90.0000153
          }
          Scale {
            X: 0.602265656
            Y: 0.602265656
            Z: 0.602265656
          }
        }
        ParentId: 9378122644316549004
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11496358719907627023
        Name: "Fantasy Chest Lid 03"
        Transform {
          Location {
            X: -30.3516407
            Y: 2.78154971e-06
            Z: -5.15209341
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: -89.9999466
            Roll: -1.62844391e-12
          }
          Scale {
            X: 0.602265656
            Y: 0.602265656
            Z: 0.602265656
          }
        }
        ParentId: 9378122644316549004
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.960000038
              G: 0.629404068
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1853838326590283864
        Name: "Fantasy Chest Treasure Pile 01"
        Transform {
          Location {
            X: -0.238313317
            Y: 5.03677838e-05
            Z: -8.16342354
          }
          Rotation {
            Yaw: 90.0000153
          }
          Scale {
            X: 1.50566411
            Y: 0.752832055
            Z: 0.703909636
          }
        }
        ParentId: 9378122644316549004
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15153963755059509736
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 3533190463953898497
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
        Id: 621861363291480293
        Name: "Fade"
        Transform {
          Location {
            Z: -4.28571463
          }
          Rotation {
          }
          Scale {
            X: 0.857143
            Y: 0.857143
            Z: 0.857143
          }
        }
        ParentId: 16511175990383211684
        ChildIds: 18255030194068204504
        ChildIds: 7126694790152979403
        ChildIds: 14944301436955767843
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
        Id: 18255030194068204504
        Name: "Fantasy Chest Base 03"
        Transform {
          Location {
            X: -0.238313302
            Y: 5.03677802e-05
            Z: -53.3333435
          }
          Rotation {
            Yaw: 90.0000153
          }
          Scale {
            X: 0.602265656
            Y: 0.602265656
            Z: 0.602265656
          }
        }
        ParentId: 621861363291480293
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11413009373670830295
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 11413009373670830295
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7126694790152979403
        Name: "Fantasy Chest Treasure Pile 01"
        Transform {
          Location {
            X: -0.238313302
            Y: 5.03677802e-05
            Z: -8.16342163
          }
          Rotation {
            Yaw: 90.0000153
          }
          Scale {
            X: 1.50566411
            Y: 0.752832055
            Z: 0.903398514
          }
        }
        ParentId: 621861363291480293
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11413009373670830295
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 3533190463953898497
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
        Id: 14944301436955767843
        Name: "Fantasy Chest Lid 03"
        Transform {
          Location {
            X: -30.3516407
            Y: 2.78154971e-06
            Z: -5.15209341
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: -89.9999084
            Roll: -135
          }
          Scale {
            X: 0.602265656
            Y: 0.602265656
            Z: 0.602265656
          }
        }
        ParentId: 621861363291480293
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.960000038
              G: 0.629404068
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11413009373670830295
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 11413009373670830295
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11413009373670830295
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 1015296774480736559
      Name: "Metal Thud Hollow Hit Impact Long 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_impact_metal_thud_hollow_tail_01a_Cue_ref"
      }
    }
    Assets {
      Id: 13183535063044407174
      Name: "Chest Magic Opening 03 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_chest_magic_opening_03_Cue_ref"
      }
    }
    Assets {
      Id: 16693287233971223649
      Name: "Resurrection VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_resurrection"
      }
    }
    Assets {
      Id: 14231394991004806063
      Name: "Callout Sparkle"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_sparkles_volume_vfx"
      }
    }
    Assets {
      Id: 16786565957515303135
      Name: "Magic Poof Sparkle 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_poof_sparkle_01a_Cue_ref"
      }
    }
    Assets {
      Id: 11493405264835290361
      Name: "Fantasy Chest Base 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_chest_003_ref"
      }
    }
    Assets {
      Id: 9927175959700879828
      Name: "Fantasy Chest Lid 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_chest_lid_003_ref"
      }
    }
    Assets {
      Id: 3533190463953898497
      Name: "Fantasy Chest Treasure Pile 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_chest_treasure_pile_001_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
}
