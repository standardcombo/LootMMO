Assets {
  Id: 375462531844973898
  Name: "Enemy_Boss1_Necromancer"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12555114022526006492
      Objects {
        Id: 12555114022526006492
        Name: "Enemy_Boss1_Necromancer"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13835231596194112360
        ChildIds: 8268870251817362467
        ChildIds: 5752474580542176374
        ChildIds: 11860041625734473373
        ChildIds: 13724218315738038597
        UnregisteredParameters {
          Overrides {
            Name: "cs:HealthFraction"
            Float: 1
          }
          Overrides {
            Name: "cs:CurrentTask"
            String: ""
          }
          Overrides {
            Name: "cs:TargetID"
            String: ""
          }
          Overrides {
            Name: "cs:Name"
            String: "Arokai, the Fiendraiser"
          }
          Overrides {
            Name: "cs:Level"
            Int: 3
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 2000
          }
          Overrides {
            Name: "cs:MoveSpeed"
            Float: 800
          }
          Overrides {
            Name: "cs:EngageRange"
            Float: 500
          }
          Overrides {
            Name: "cs:ImmuneToStun"
            Bool: true
          }
          Overrides {
            Name: "cs:CapsuleHeight"
            Float: 315
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 150
          }
          Overrides {
            Name: "cs:Experience"
            Float: 40
          }
          Overrides {
            Name: "cs:Task1"
            String: "boss1_shadow_worm"
          }
          Overrides {
            Name: "cs:Task2"
            String: "boss1_raise_army"
          }
          Overrides {
            Name: "cs:Task3"
            String: "boss1_raise_plague_wolves"
          }
          Overrides {
            Name: "cs:Task4"
            String: "boss1_shadow_eruptions"
          }
          Overrides {
            Name: "cs:DropKey1"
            String: "HRBoss1"
          }
          Overrides {
            Name: "cs:DropChance1"
            Float: 0.5
          }
          Overrides {
            Name: "cs:DropKey2"
            String: "EssencePearl"
          }
          Overrides {
            Name: "cs:DropChance2"
            Float: 1
          }
          Overrides {
            Name: "cs:DropKey3"
            String: "HRBoss1Epic"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0.02
          }
          Overrides {
            Name: "cs:DropMinDifficulty3"
            Int: 3
          }
          Overrides {
            Name: "cs:OnPulledEventName"
            String: "Boss1Pulled"
          }
          Overrides {
            Name: "cs:OnResetEventName"
            String: "Boss1Reset"
          }
          Overrides {
            Name: "cs:OnDiedEventName"
            String: "Boss1Died"
          }
          Overrides {
            Name: "cs:MovementEffectTemplate"
            AssetReference {
              Id: 2191240521660447709
            }
          }
          Overrides {
            Name: "cs:DeathEffectTemplate"
            AssetReference {
              Id: 7305482317703142035
            }
          }
          Overrides {
            Name: "cs:FollowRoot"
            ObjectReference {
              SubObjectId: 5752474580542176374
            }
          }
          Overrides {
            Name: "cs:HealthFraction:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CurrentTask:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:TargetID:isrep"
            Bool: true
          }
        }
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
        Id: 8268870251817362467
        Name: "AttachCostumeClient"
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
        ParentId: 12555114022526006492
        UnregisteredParameters {
          Overrides {
            Name: "cs:CostumeFolder"
            ObjectReference {
              SubObjectId: 13724218315738038597
            }
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 11860041625734473373
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
            Id: 9186426042295094807
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5752474580542176374
        Name: "FollowRoot"
        Transform {
          Location {
            Z: 158
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12555114022526006492
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
        Id: 11860041625734473373
        Name: "AnimatedMesh"
        Transform {
          Location {
            Z: 158
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 12555114022526006492
        UnregisteredParameters {
          Overrides {
            Name: "cs:AsleepStance"
            String: "2hand_staff_idle_relaxed"
          }
          Overrides {
            Name: "cs:IdleStance"
            String: "2hand_staff_idle_ready"
          }
          Overrides {
            Name: "cs:RunStance"
            String: "2hand_staff_run_forward"
          }
          Overrides {
            Name: "cs:StareStance"
            String: "2hand_staff_idle_ready"
          }
          Overrides {
            Name: "cs:DeathAnimation"
            String: "unarmed_death"
          }
          Overrides {
            Name: "cs:StunnedAnimation"
            String: "unarmed_stun_dizzy"
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 6360514069944077527
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 1848963245568864173
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.653973877
              B: 0.789999962
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 1
              B: 0.854304314
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 11159694478446545090
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
            Id: 18039984299850060191
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          AnimatedMesh {
            AnimationStance: "2hand_staff"
            AnimationStancePlaybackRate: 1
            AnimationStanceShouldLoop: true
            AnimationPlaybackRateMultiplier: 1
            PlayOnStartAnimation {
              PlaybackRate: 0.134948507
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
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13724218315738038597
        Name: "Costume"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 12555114022526006492
        ChildIds: 13501968775012467549
        ChildIds: 13639899497571339109
        ChildIds: 783634840886979222
        ChildIds: 10198116475777200041
        ChildIds: 12183791587225654553
        ChildIds: 3043138986587778448
        ChildIds: 5104490188020889043
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
        Id: 13501968775012467549
        Name: "left_prop"
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
        ParentId: 13724218315738038597
        ChildIds: 2910658070934568330
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
        Id: 2910658070934568330
        Name: "Torch Fire VFX"
        Transform {
          Location {
            Z: -15
          }
          Rotation {
          }
          Scale {
            X: 0.9
            Y: 0.9
            Z: 0.9
          }
        }
        ParentId: 13501968775012467549
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.289404154
              B: 0.460000038
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.8
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
            Id: 4603537691901304316
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 13639899497571339109
        Name: "right_prop"
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
        ParentId: 13724218315738038597
        ChildIds: 15493877526210955050
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
        Id: 15493877526210955050
        Name: "Torch Fire VFX"
        Transform {
          Location {
            Z: -15
          }
          Rotation {
          }
          Scale {
            X: 0.9
            Y: 0.9
            Z: 0.9
          }
        }
        ParentId: 13639899497571339109
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.289404154
              B: 0.460000038
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.8
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
            Id: 4603537691901304316
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 783634840886979222
        Name: "pelvis"
        Transform {
          Location {
            X: -1.82608485
            Y: 0.000119924545
            Z: 121.379807
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 3.4150944e-05
            Roll: 1.38417732e-11
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13724218315738038597
        ChildIds: 6088055241440413071
        ChildIds: 2922669034200887212
        ChildIds: 12740395640319777720
        ChildIds: 1760173389238310213
        ChildIds: 17914307883973569420
        ChildIds: 10565187177503011588
        ChildIds: 1475506205988466041
        ChildIds: 6478740576771528734
        ChildIds: 12288360534039001341
        ChildIds: 8350102057795534164
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
        Id: 6088055241440413071
        Name: "Capsule"
        Transform {
          Location {
            X: -6.34195662
            Y: 0.510239542
            Z: -118.800331
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -90.0000229
            Roll: 5.74329424
          }
          Scale {
            X: 0.925686
            Y: 0.636968
            Z: 2.14865
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.10879266
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.69664586
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
            Id: 2327009830056851580
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 2922669034200887212
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.34892774
            Y: 3.0150106
            Z: -22.2185917
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -5.50726108e-05
            Roll: 26.8657379
          }
          Scale {
            X: 0.437991083
            Y: 0.684039772
            Z: 0.895243645
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 12740395640319777720
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.34891844
            Y: 3.0150106
            Z: -35.1563339
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -5.32626e-05
            Roll: 33.7637062
          }
          Scale {
            X: 0.525406897
            Y: 0.820562661
            Z: 1.07391953
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 1760173389238310213
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.34891057
            Y: 3.0150106
            Z: -46.2488632
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -6.65426e-05
            Roll: 39.2125244
          }
          Scale {
            X: 0.545044184
            Y: 0.851231694
            Z: 1.11405814
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 17914307883973569420
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.34892774
            Y: 3.0150106
            Z: -22.2185917
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -5.19267305e-05
            Roll: 42.1127052
          }
          Scale {
            X: 0.437991083
            Y: 0.726192951
            Z: 0.895243645
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 10565187177503011588
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 1.3489362
            Y: 3.01500964
            Z: -8.02987
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -6.10351562e-05
            Roll: 26.8656368
          }
          Scale {
            X: 0.383346856
            Y: 0.547589839
            Z: 0.783568919
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 1475506205988466041
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.910898149
            Y: 3.60339546
            Z: -70.9441757
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -4.86777462e-05
            Roll: 30.5038013
          }
          Scale {
            X: 0.573607802
            Y: 0.902578831
            Z: 1.01623
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 6478740576771528734
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.99296236
            Y: 0.268406272
            Z: -91.5472
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -6.85676423e-05
            Roll: 14.1944742
          }
          Scale {
            X: 0.677983463
            Y: 1.03861511
            Z: 1.35929632
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 12288360534039001341
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.79896617
            Y: 3.01443648
            Z: -88.8216171
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -6.84578408e-05
            Roll: 14.7371979
          }
          Scale {
            X: 0.604291737
            Y: 0.909055591
            Z: 1.02352238
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 8350102057795534164
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -3.30328727
            Y: 2.25367165
            Z: -109.384117
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -5.12473925e-05
            Roll: 5.0048604
          }
          Scale {
            X: 0.730896652
            Y: 1.1650368
            Z: 1.35929632
          }
        }
        ParentId: 783634840886979222
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 10198116475777200041
        Name: "neck"
        Transform {
          Location {
            X: -4.71585798
            Y: 0.0119071007
            Z: 177.826
          }
          Rotation {
            Pitch: -9.93497372
            Yaw: 6.17978731e-05
            Roll: -1.08631707e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13724218315738038597
        ChildIds: 12470633035732851892
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
        Id: 12470633035732851892
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: 3.20636415
            Y: -1.22716117
            Z: -4.4678278
          }
          Rotation {
            Pitch: 9.9349947
            Yaw: -0.000335693359
            Roll: 12.8725023
          }
          Scale {
            X: 0.211211681
            Y: 0.377365023
            Z: 0.696663558
          }
        }
        ParentId: 10198116475777200041
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 12183791587225654553
        Name: "left_shoulder"
        Transform {
          Location {
            X: -6.81056404
            Y: -16.4155
            Z: 170.268707
          }
          Rotation {
            Pitch: -1.33299327
            Yaw: -0.856993914
            Roll: 30.509016
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13724218315738038597
        ChildIds: 6008325372807963922
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
        Id: 6008325372807963922
        Name: "Capsule"
        Transform {
          Location {
            X: 1.92131066
            Y: -0.0531466
            Z: -30.7438278
          }
          Rotation {
            Pitch: 0.679849684
            Yaw: 177.718979
            Roll: 0.266530842
          }
          Scale {
            X: 0.257875234
            Y: 0.234097302
            Z: 0.560112238
          }
        }
        ParentId: 12183791587225654553
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.301828831
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
            Id: 2447235726886938258
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 3043138986587778448
        Name: "right_shoulder"
        Transform {
          Location {
            X: -6.81053734
            Y: 16.4153385
            Z: 170.268
          }
          Rotation {
            Pitch: -1.33300018
            Yaw: 0.856999755
            Roll: -30.509016
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13724218315738038597
        ChildIds: 3693774192109141602
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
        Id: 3693774192109141602
        Name: "Capsule"
        Transform {
          Location {
            X: 2.21070623
            Y: -0.319959402
            Z: -34.2560921
          }
          Rotation {
            Pitch: 4.74523973
            Yaw: 2.67768526
            Roll: 7.2078352
          }
          Scale {
            X: 0.170992926
            Y: 0.199499339
            Z: 0.571399
          }
        }
        ParentId: 3043138986587778448
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.325358391
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
            Id: 2447235726886938258
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 5104490188020889043
        Name: "upper_spine"
        Transform {
          Location {
            X: -1.82608485
            Y: 0.000119924545
            Z: 164.282
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 3.4150944e-05
            Roll: 1.38417732e-11
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13724218315738038597
        ChildIds: 5279374214241906688
        ChildIds: 3346575497088764957
        ChildIds: 18419650565587087544
        ChildIds: 10397579729371569220
        ChildIds: 10112538600298343831
        ChildIds: 10499306321459248379
        ChildIds: 14396564222345757083
        ChildIds: 4983904694929258132
        ChildIds: 4399630115395624827
        ChildIds: 4778639226683453558
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
        Id: 5279374214241906688
        Name: "Capsule"
        Transform {
          Location {
            X: 0.842660427
            Y: 0.510190248
            Z: 0.554519057
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -89.9999695
            Roll: -177.619553
          }
          Scale {
            X: 0.399433941
            Y: 0.273616135
            Z: 1.80297828
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.978396118
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.23423743
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
            Id: 2327009830056851580
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 3346575497088764957
        Name: "Capsule"
        Transform {
          Location {
            X: -1.09720969
            Y: 0.510235
            Z: -69.738739
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -90
            Roll: 5.74314499
          }
          Scale {
            X: 0.50167805
            Y: 0.391343474
            Z: 0.830417097
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.65560323
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.978396118
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
            Id: 2327009830056851580
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 18419650565587087544
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -4.55723572
            Y: -0.0729800686
            Z: -2.37289095
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -9.15527344e-05
            Roll: 26.5003738
          }
          Scale {
            X: 0.411218941
            Y: 0.578071356
            Z: 0.87686646
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 10397579729371569220
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -2.91717458
            Y: 0.867151082
            Z: -13.2508221
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -6.10351562e-05
            Roll: 39.2123413
          }
          Scale {
            X: 0.414981037
            Y: 0.535206079
            Z: 0.700452447
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 10112538600298343831
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.822244644
            Y: 1.33753586
            Z: -28.7779236
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -0.000152587891
            Roll: 32.0044327
          }
          Scale {
            X: 0.323971182
            Y: 0.468093574
            Z: 0.665497839
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 10499306321459248379
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.50369823
            Y: 1.44700754
            Z: 2.91104174
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -0.000335693359
            Roll: -29.2367249
          }
          Scale {
            X: 0.255369544
            Y: 0.48148942
            Z: 0.700433731
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 14396564222345757083
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.39863041
            Y: 1.00743461
            Z: -14.8645935
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -6.91507666e-05
            Roll: 23.4467773
          }
          Scale {
            X: 0.294680655
            Y: 0.454024673
            Z: 0.700446725
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 4983904694929258132
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -4.9320693
            Y: 4.41528606
            Z: -1.41537118
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -6.10351562e-05
            Roll: -17.0375671
          }
          Scale {
            X: 0.403284401
            Y: 0.552826941
            Z: 0.889926553
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 4399630115395624827
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -4.93290234
            Y: 0.748486102
            Z: -4.89754915
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -6.10351562e-05
            Roll: -36.3242493
          }
          Scale {
            X: 0.298095942
            Y: 0.608766496
            Z: 0.700446606
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 4778639226683453558
        Name: "Ring"
        Transform {
          Location {
            X: 0.227026522
            Y: 2.95999908
            Z: -35.725235
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: -3.41509331e-05
            Roll: 23.5070038
          }
          Scale {
            X: 0.322746515
            Y: 0.422948182
            Z: 0.422948182
          }
        }
        ParentId: 5104490188020889043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6360514069944077527
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
            Id: 1345394029719914923
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
    }
    Assets {
      Id: 18039984299850060191
      Name: "Fantasy Human Guy 1"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_human_guy_fantasy_001_ref"
      }
    }
    Assets {
      Id: 1848963245568864173
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 4603537691901304316
      Name: "Torch Fire VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_torch_fire"
      }
    }
    Assets {
      Id: 2327009830056851580
      Name: "Cone - Truncated Hollow Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_003"
      }
    }
    Assets {
      Id: 16372496464315477095
      Name: "Ring - Beveled Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_003"
      }
    }
    Assets {
      Id: 2447235726886938258
      Name: "Cone - Truncated Hollow Wide Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_006"
      }
    }
    Assets {
      Id: 1345394029719914923
      Name: "Ring"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_004"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
