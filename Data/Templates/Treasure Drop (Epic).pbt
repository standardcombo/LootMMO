Assets {
  Id: 7329290546600037547
  Name: "Treasure Drop (Epic)"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5736513865213122727
      Objects {
        Id: 5736513865213122727
        Name: "Treasure Drop (Epic)"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6759660929604019110
        ChildIds: 7452136696396256175
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
        Id: 6759660929604019110
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
        ParentId: 5736513865213122727
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 15998105561276999932
            }
          }
          Overrides {
            Name: "cs:ImpactSfx"
            ObjectReference {
              SubObjectId: 9066344771479359910
            }
          }
          Overrides {
            Name: "cs:OpenSfx"
            ObjectReference {
              SubObjectId: 18125166688679172255
            }
          }
          Overrides {
            Name: "cs:OpenVfx"
            ObjectReference {
              SubObjectId: 15540627385922145496
            }
          }
          Overrides {
            Name: "cs:NormalGeo"
            ObjectReference {
              SubObjectId: 30959057459021959
            }
          }
          Overrides {
            Name: "cs:FadeGeo"
            ObjectReference {
              SubObjectId: 10009670596354541550
            }
          }
          Overrides {
            Name: "cs:PhysicsObject"
            ObjectReference {
              SubObjectId: 7452136696396256175
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 5736513865213122727
            }
          }
          Overrides {
            Name: "cs:PickupSfx"
            ObjectReference {
              SubObjectId: 10877080272135445722
            }
          }
          Overrides {
            Name: "cs:Lid"
            ObjectReference {
              SubObjectId: 489815171895235339
            }
          }
          Overrides {
            Name: "cs:OpenDelay"
            Float: 2.9
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
        Id: 7452136696396256175
        Name: "Physics Cube"
        Transform {
          Location {
            Z: 38
          }
          Rotation {
          }
          Scale {
            X: 0.75
            Y: 0.75
            Z: 0.75
          }
        }
        ParentId: 5736513865213122727
        ChildIds: 15998105561276999932
        ChildIds: 9066344771479359910
        ChildIds: 18125166688679172255
        ChildIds: 15540627385922145496
        ChildIds: 10877080272135445722
        ChildIds: 30959057459021959
        ChildIds: 10009670596354541550
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
        Id: 15998105561276999932
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
        ParentId: 7452136696396256175
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
        Id: 9066344771479359910
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
        ParentId: 7452136696396256175
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
        Id: 18125166688679172255
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
        ParentId: 7452136696396256175
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
        Id: 15540627385922145496
        Name: "Resurrection VFX"
        Transform {
          Location {
            X: 2.17982724e-05
            Z: 23.9787102
          }
          Rotation {
          }
          Scale {
            X: 1.42857158
            Y: 1.42857158
            Z: 1.14285731
          }
        }
        ParentId: 7452136696396256175
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
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10877080272135445722
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
        ParentId: 7452136696396256175
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
        Id: 30959057459021959
        Name: "Normal"
        Transform {
          Location {
            Z: -14.0952377
          }
          Rotation {
          }
          Scale {
            X: 0.685714424
            Y: 0.685714424
            Z: 0.685714424
          }
        }
        ParentId: 7452136696396256175
        ChildIds: 15411750340889369276
        ChildIds: 10743893704404037201
        ChildIds: 489815171895235339
        ChildIds: 5101934107296995728
        ChildIds: 534041868814342550
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
        Id: 15411750340889369276
        Name: "Fantasy Chest Treasure Pile 01"
        Transform {
          Location {
            X: -0.873093665
            Y: 1.44872372e-08
            Z: 21.4790401
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1.65526092
            Y: 1.41440463
            Z: 1.4393338
          }
        }
        ParentId: 30959057459021959
        UnregisteredParameters {
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10743893704404037201
        Name: "Japanese - Chest Base - Medium 01"
        Transform {
          Location {
            X: -1.00400734
            Y: 5.79489488e-08
            Z: -53.3333511
          }
          Rotation {
            Yaw: -90.0000076
          }
          Scale {
            X: 1.16441798
            Y: 1.16441798
            Z: 1.16441798
          }
        }
        ParentId: 30959057459021959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 6292751136247244633
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 1
              B: 0.999999523
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
            Id: 4849578069430354018
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
        Id: 489815171895235339
        Name: "Japanese - Chest Lid - Medium 01"
        Transform {
          Location {
            X: -51.0739708
            Y: 4.63591596e-06
            Z: 38.6556664
          }
          Rotation {
            Yaw: -90.0000076
          }
          Scale {
            X: 1.16441798
            Y: 1.16441798
            Z: 1.16441798
          }
        }
        ParentId: 30959057459021959
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
            Id: 2098223903465055557
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
        Id: 5101934107296995728
        Name: "Japanese - Chest Hinge 01"
        Transform {
          Location {
            X: -43.5053062
            Y: 40.7546158
            Z: 37.4912491
          }
          Rotation {
            Yaw: -90.0000076
          }
          Scale {
            X: 1.16441798
            Y: 1.16441798
            Z: 1.16441798
          }
        }
        ParentId: 30959057459021959
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
            Id: 6753491216021993641
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
        Id: 534041868814342550
        Name: "Japanese - Chest Hinge 01"
        Transform {
          Location {
            X: -43.5053139
            Y: -40.7546082
            Z: 37.4912491
          }
          Rotation {
            Yaw: -90.0000076
          }
          Scale {
            X: 1.16441798
            Y: 1.16441798
            Z: 1.16441798
          }
        }
        ParentId: 30959057459021959
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
            Id: 6753491216021993641
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
        Id: 10009670596354541550
        Name: "Fade"
        Transform {
          Location {
            Z: -14.0952377
          }
          Rotation {
          }
          Scale {
            X: 0.685714424
            Y: 0.685714424
            Z: 0.685714424
          }
        }
        ParentId: 7452136696396256175
        ChildIds: 12426092056344430028
        ChildIds: 13069481793638623215
        ChildIds: 10903226694921546367
        ChildIds: 9820825892670161717
        ChildIds: 18176944056111857646
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
        Id: 12426092056344430028
        Name: "Fantasy Chest Treasure Pile 01"
        Transform {
          Location {
            X: -0.873093665
            Y: 7.24361868e-08
            Z: 21.4790401
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 1.65526068
            Y: 1.41440463
            Z: 1.4393338
          }
        }
        ParentId: 10009670596354541550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13069481793638623215
        Name: "Japanese - Chest Base - Medium 01"
        Transform {
          Location {
            X: -1.00400734
            Y: 5.79489488e-08
            Z: -53.3333511
          }
          Rotation {
            Yaw: -90.0000153
          }
          Scale {
            X: 1.16441798
            Y: 1.16441798
            Z: 1.16441798
          }
        }
        ParentId: 10009670596354541550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11413009373670830295
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 1
              B: 0.999999523
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11413009373670830295
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 4849578069430354018
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
        Id: 10903226694921546367
        Name: "Japanese - Chest Lid - Medium 01"
        Transform {
          Location {
            X: -51.0739708
            Y: 4.63591596e-06
            Z: 38.6556664
          }
          Rotation {
            Yaw: -90
            Roll: -135
          }
          Scale {
            X: 1.16441798
            Y: 1.16441798
            Z: 1.16441798
          }
        }
        ParentId: 10009670596354541550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11413009373670830295
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 2098223903465055557
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
        Id: 9820825892670161717
        Name: "Japanese - Chest Hinge 01"
        Transform {
          Location {
            X: -43.5053062
            Y: 40.7546158
            Z: 37.4912491
          }
          Rotation {
            Yaw: -90.0000153
          }
          Scale {
            X: 1.16441798
            Y: 1.16441798
            Z: 1.16441798
          }
        }
        ParentId: 10009670596354541550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 6753491216021993641
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
        Id: 18176944056111857646
        Name: "Japanese - Chest Hinge 01"
        Transform {
          Location {
            X: -43.5053139
            Y: -40.7546082
            Z: 37.4912491
          }
          Rotation {
            Yaw: -90.0000153
          }
          Scale {
            X: 1.16441798
            Y: 1.16441798
            Z: 1.16441798
          }
        }
        ParentId: 10009670596354541550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 6753491216021993641
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
      Id: 16786565957515303135
      Name: "Magic Poof Sparkle 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_poof_sparkle_01a_Cue_ref"
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
    Assets {
      Id: 4849578069430354018
      Name: "Japanese Rare Chest Base 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_jpn_chest_med_base_001"
      }
    }
    Assets {
      Id: 2098223903465055557
      Name: "Japanese Rare Chest Lid 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_jpn_chest_med_lid_001"
      }
    }
    Assets {
      Id: 6753491216021993641
      Name: "Japanese Chest Hinge 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_jpn_chest_med_hinge_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
}
