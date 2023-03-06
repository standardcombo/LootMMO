Assets {
  Id: 15273141754477528387
  Name: "Skeleton Boss - Bone Giant"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14952932245782266398
      Objects {
        Id: 14952932245782266398
        Name: "Skeleton Boss - Bone Giant"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16927451366098705499
        ChildIds: 1680794467450067203
        ChildIds: 5061593326325135753
        UnregisteredParameters {
          Overrides {
            Name: "cs:ObjectId"
            Int: 0
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
            Name: "cs:CurrentHealth"
            Float: 5000
          }
          Overrides {
            Name: "cs:MoveSpeed"
            Float: 400
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
            Name: "cs:IsPushable"
            Bool: true
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
            String: "Common"
          }
          Overrides {
            Name: "cs:CurrentState:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CurrentHealth:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ObjectId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:Team:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:LootId:tooltip"
            String: "The ID of the group of loot from the Loot Factory. E.g. \"Common\" will drop a common loot when the NPC is killed. To drop nothing remove this property."
          }
          Overrides {
            Name: "cs:ObjectId:tooltip"
            String: "Set at runtime. The NPC Manager dynamically assigns an ID to each NPC so they can know if a networked event pertains to them or to another NPC."
          }
          Overrides {
            Name: "cs:Team:tooltip"
            String: "Like players, NPCs can have a team. They will fight players and NPCs from other teams and will not fight characters from the same team as them. When spawned from a spawn camp, the NPC\'s team is dynamically set to that of the camp."
          }
          Overrides {
            Name: "cs:CurrentState:tooltip"
            String: "Set dynamically at runtime. This is the internal state of the NPC, such as sleeping, engaging, attacking, etc. This networked property coordinates the server and client parts of the NPC."
          }
          Overrides {
            Name: "cs:CurrentHealth:tooltip"
            String: "The NPC\'s health/hitpoints. When editing it represents their max and initial health. During runtime it\'s their current health."
          }
          Overrides {
            Name: "cs:MoveSpeed:tooltip"
            String: "The NPC\'s top movement speed in cm/s. Set to zero for an NPC that doesn\'t move (e.g. Tower or other building)."
          }
          Overrides {
            Name: "cs:TurnSpeed:tooltip"
            String: "How quickly the NPC rotates to face their target or when searching for the origin of an attack."
          }
          Overrides {
            Name: "cs:LogicalPeriod:tooltip"
            String: "To avoid overusing the server\'s CPU the NPC\'s only make decisions periodically. The LogicalPeriod is the length of that interval, in seconds."
          }
          Overrides {
            Name: "cs:ReturnToSpawn:tooltip"
            String: "If true, the NPC will try to return to their spawn point after they have nothing to do."
          }
          Overrides {
            Name: "cs:VisionHalfAngle:tooltip"
            String: "This is half the vision cone\'s angle. Enemies outside the angle will not be seen. If set to 0 or greater than 360 then the NPC has full vision all around it. A value of 90 degrees would result in a half-sphere of peripheral vision. The smaller the value, the worse is the NPC\'s vision."
          }
          Overrides {
            Name: "cs:VisionRadius:tooltip"
            String: "The max range of the vision (in centimeters). Enemies at a distance greater than this value will not be seen."
          }
          Overrides {
            Name: "cs:HearingRadius:tooltip"
            String: "If an ally is hit by an attack, the point of impact is compared against the HearingRadius. If closer than this distance, then the NPC will begin a search to find the source of the attack."
          }
          Overrides {
            Name: "cs:SearchBonusVision:tooltip"
            String: "While searching for an enemy that recently attacked, the NPC can be given a bonus vision range."
          }
          Overrides {
            Name: "cs:SearchDuration:tooltip"
            String: "Duration, in seconds, if the search pattern."
          }
          Overrides {
            Name: "cs:PossibilityRadius:tooltip"
            String: "When searching for an enemy that attacked recently, the NPC will scan an area starting at itself then moving in the direction where the attack came from. The PossibilityRadius is the search volume that moves in that direction. A larger value means the NPC has an easier time spotting enemies."
          }
          Overrides {
            Name: "cs:ChaseRadius:tooltip"
            String: "If engaging an enemy that is outside of attack range, the NPC will give up the chase if the enemy goes further than their ChaseRadius."
          }
          Overrides {
            Name: "cs:AttackRange:tooltip"
            String: "The NPC engages and moves towards a target until that target is within the AttackRange. That\'s when it changes to an Attack state and produces the projectile that is the combat interaction. A smaller attack range means the NPC must get closer before executing an attack."
          }
          Overrides {
            Name: "cs:AttackCast:tooltip"
            String: "While executing an attack, the AttackCast is the amount of \"windup\" time, in seconds, before the projectile is produced."
          }
          Overrides {
            Name: "cs:AttackRecovery:tooltip"
            String: "During an attack, the AttackRecovery time is an amount in seconds after the projectile is created, during which the NPC winds down their attack and essentially does nothing."
          }
          Overrides {
            Name: "cs:AttackCooldown:tooltip"
            String: "The AttackCooldown is the minimum amount of time, in seconds, between NPC attacks. If the attack is on cooldown and the target continues within attack range, the NPC will essentially do nothing until the attack cooldown time completes."
          }
          Overrides {
            Name: "cs:IsPushable:tooltip"
            String: "If true, then the NPC can be pushed aside by allied characters if they are trying to occupy the same space."
          }
          Overrides {
            Name: "cs:RewardResourceType:tooltip"
            String: "Some NPCs can grant resources to players that kill them. The RewardResourceType is the Type of resource to grant to players."
          }
          Overrides {
            Name: "cs:RewardResourceAmount:tooltip"
            String: "Some NPCs can grant resources to players that kill them. The RewardResourceAmount is the Amount of the resource to grant to players"
          }
          Overrides {
            Name: "cs:AttackMinAngle:tooltip"
            String: "The NPC rotates towards the target to attack it. If an AttackMinAngle is defined, then the NPC will only initiate the attack if the target is within that angle in front them them. The value represents half of the area, in other words, a value of 180 allows the NPC to attack from any angle."
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16927451366098705499
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
        ParentId: 14952932245782266398
        ChildIds: 17079756669854903845
        ChildIds: 11945280850636438691
        ChildIds: 4603201381396745916
        ChildIds: 7044908340764711717
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
        Id: 17079756669854903845
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
        ParentId: 16927451366098705499
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14952932245782266398
            }
          }
          Overrides {
            Name: "cs:ForwardNode"
            ObjectReference {
              SubObjectId: 4603201381396745916
            }
          }
          Overrides {
            Name: "cs:GeoRoot"
            ObjectReference {
              SubObjectId: 7044908340764711717
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
            Id: 13207247269641724863
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11945280850636438691
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
        ParentId: 16927451366098705499
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14952932245782266398
            }
          }
          Overrides {
            Name: "cs:DamageFX"
            AssetReference {
              Id: 3446005350254892810
            }
          }
          Overrides {
            Name: "cs:DestroyFX"
            AssetReference {
              Id: 3446005350254892810
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
            Id: 2696873634105648919
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4603201381396745916
        Name: "ForwardNode"
        Transform {
          Location {
            X: 99.9999924
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
        ParentId: 16927451366098705499
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7044908340764711717
        Name: "Geometry"
        Transform {
          Location {
            X: 0.000244140625
            Y: 0.000488280959
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16927451366098705499
        ChildIds: 8100821109487810565
        ChildIds: 6522670710040898119
        ChildIds: 4580967196232557939
        ChildIds: 225697505844014925
        ChildIds: 15512516095109659024
        ChildIds: 9918982219533484648
        ChildIds: 1777001282058844851
        ChildIds: 8649273609548801905
        ChildIds: 8384083252288105435
        ChildIds: 3274923403842769102
        ChildIds: 1668244657772013139
        ChildIds: 9938246706459132311
        ChildIds: 3471460643979178380
        ChildIds: 13618671761492851051
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
        Id: 8100821109487810565
        Name: "NPCHealthBarDataProviderClient"
        Transform {
          Location {
            X: 0.000244140509
            Y: -5.8207654e-11
            Z: 600
          }
          Rotation {
            Yaw: 4.09810964e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14952932245782266398
            }
          }
          Overrides {
            Name: "cs:HealthBarTemplate"
            AssetReference {
              Id: 17757165064885894236
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
            Id: 3239620386572954627
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6522670710040898119
        Name: "AnimControllerZombie"
        Transform {
          Location {
            X: -0.000244140625
            Y: -0.00048828125
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14952932245782266398
            }
          }
          Overrides {
            Name: "cs:AttackAnim"
            String: "2hand_melee_slash_vertical"
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
            String: "unarmed_idle_relaxed"
          }
          Overrides {
            Name: "cs:ReadyStance"
            String: "unarmed_idle_ready"
          }
          Overrides {
            Name: "cs:WalkStance"
            String: "unarmed_walk_forward"
          }
          Overrides {
            Name: "cs:RunStance"
            String: "unarmed_run_forward"
          }
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 225697505844014925
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
            Id: 5925832696058163527
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4580967196232557939
        Name: "AnimatedMeshCostume"
        Transform {
          Location {
            X: -1250.75708
            Y: -1964.00659
            Z: 134.312256
          }
          Rotation {
            Yaw: 89.9999161
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
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
            Id: 17933452124445269420
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 225697505844014925
        Name: "Humanoid 2 Rig"
        Transform {
          Location {
            Z: 285.707886
          }
          Rotation {
            Yaw: 3.41509112e-05
          }
          Scale {
            X: 2.75630093
            Y: 2.75630093
            Z: 2.75630093
          }
        }
        ParentId: 7044908340764711717
        UnregisteredParameters {
          Overrides {
            Name: "ma:1:Shared_Detail3:id"
            AssetReference {
              Id: 1915461248412394696
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail4:id"
            AssetReference {
              Id: 1915461248412394696
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail2:id"
            AssetReference {
              Id: 1915461248412394696
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail1:id"
            AssetReference {
              Id: 1915461248412394696
            }
          }
          Overrides {
            Name: "ma:1:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1915461248412394696
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
            Id: 6712061604039642122
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          AnimatedMesh {
            AnimationStance: "unarmed_bind_pose"
            AnimationStancePlaybackRate: 1
            AnimationStanceShouldLoop: true
            AnimationPlaybackRateMultiplier: 1
            PlayOnStartAnimation {
              PlaybackRate: 1
              ShouldLoop: true
            }
            SkinnedMeshes {
              Id: 16790500082606928318
            }
            SkinnedMeshes {
              Id: 7310539306123103170
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15512516095109659024
        Name: "left_elbow"
        Transform {
          Location {
            X: -10.5500488
            Y: -137.907715
            Z: 364.741577
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 15808061437627378811
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
        Id: 15808061437627378811
        Name: "Bone Human Spine 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -23.6993828
            Yaw: 71.6341629
            Roll: 42.6699104
          }
          Scale {
            X: 1.90032697
            Y: 1.90032971
            Z: 0.899840117
          }
        }
        ParentId: 15512516095109659024
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9918982219533484648
        Name: "left_shoulder"
        Transform {
          Location {
            X: -21.9367676
            Y: -80.6806641
            Z: 437.189972
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 13016605216411512759
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
        Id: 13016605216411512759
        Name: "Bone Human Spine 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 4.01628065
            Yaw: 85.7351074
            Roll: 53.4192238
          }
          Scale {
            X: 2.66880345
            Y: 2.66880631
            Z: 1.28304338
          }
        }
        ParentId: 9918982219533484648
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1777001282058844851
        Name: "left_hip"
        Transform {
          Location {
            X: -3.3918457
            Y: -39.1362305
            Z: 229.425644
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 15285988743676540778
        ChildIds: 16806249836302993507
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
        Id: 15285988743676540778
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: 6.18939209
            Y: -9.828125
          }
          Rotation {
            Pitch: 2.51674
            Yaw: 35.7083282
            Roll: 11.5853062
          }
          Scale {
            X: 2.2914536
            Y: 2.29144955
            Z: 1.27251542
          }
        }
        ParentId: 1777001282058844851
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16806249836302993507
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -6.18939209
            Y: 9.828125
            Z: 45.8843384
          }
          Rotation {
            Pitch: -1.45819092
            Yaw: -121.766113
            Roll: 17.3422737
          }
          Scale {
            X: 1.71239734
            Y: 1.71239734
            Z: 1.71239734
          }
        }
        ParentId: 1777001282058844851
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8649273609548801905
        Name: "left_knee"
        Transform {
          Location {
            X: -13.6564941
            Y: -58.4477539
            Z: 21.877655
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 15173505675310550931
        ChildIds: 13637031646924851278
        ChildIds: 2679592184721033376
        ChildIds: 16053228681767876514
        ChildIds: 14257746006907647369
        ChildIds: 17190058431525011707
        ChildIds: 1647787657342662506
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
        Id: 15173505675310550931
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 0.72845459
            Y: 7.06542969
            Z: 96.5825882
          }
          Rotation {
            Yaw: -57.1934204
          }
          Scale {
            X: 1.09067774
            Y: 1.09067774
            Z: 1.09067774
          }
        }
        ParentId: 8649273609548801905
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13637031646924851278
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -9.47210693
            Y: -5.27392578
            Z: 135.930084
          }
          Rotation {
            Pitch: 5.19558096
            Yaw: 153.639297
            Roll: 21.4671745
          }
          Scale {
            X: 1.41961467
            Y: 1.41961467
            Z: 1.41961467
          }
        }
        ParentId: 8649273609548801905
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2679592184721033376
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 1.31668091
            Y: 8.14599609
            Z: -3.74939632
          }
          Rotation {
            Pitch: 6.57986259
            Yaw: -153.406097
            Roll: 3.28843474
          }
          Scale {
            X: 1.84701812
            Y: 1.84701812
            Z: 1.84701812
          }
        }
        ParentId: 8649273609548801905
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16053228681767876514
        Name: "Bone Human Femur 01"
        Transform {
          Location {
            X: 5.5335083
            Y: 2.91210938
            Z: 78.1608
          }
          Rotation {
            Pitch: -6.40188599
            Yaw: -41.3708191
            Roll: -2.07983398
          }
          Scale {
            X: 2.06766486
            Y: 2.06766558
            Z: 2.17196894
          }
        }
        ParentId: 8649273609548801905
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
            Id: 15837729084628174211
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14257746006907647369
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 2.87506104
            Y: 6.51171875
            Z: 39.2198944
          }
          Rotation {
            Yaw: -32.4587288
          }
          Scale {
            X: 1.27572012
            Y: 1.27572012
            Z: 1.27572012
          }
        }
        ParentId: 8649273609548801905
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17190058431525011707
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: -1.92578125
            Y: -11.734375
            Z: 70.8437958
          }
          Rotation {
            Pitch: 6.21894169
            Yaw: -16.4458618
            Roll: -4.73965454
          }
          Scale {
            X: 2.29145241
            Y: 2.29145145
            Z: 1.46496487
          }
        }
        ParentId: 8649273609548801905
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1647787657342662506
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: -1.43991089
            Y: 18.7609863
            Z: 69.5370636
          }
          Rotation {
            Pitch: 0.0448333584
            Yaw: -156.810287
            Roll: -0.0736694336
          }
          Scale {
            X: 2.29145312
            Y: 2.29144835
            Z: 1.23347914
          }
        }
        ParentId: 8649273609548801905
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8384083252288105435
        Name: "lower_spine"
        Transform {
          Location {
            X: -20.5639553
            Y: 4.67285442
            Z: 354.334229
          }
          Rotation {
            Yaw: 89.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 11624693696195870195
        ChildIds: 7892803338456047330
        ChildIds: 16586373420744305829
        ChildIds: 12074728729509611826
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
        Id: 11624693696195870195
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 3.47070312
            Y: 3.38647461
          }
          Rotation {
            Pitch: 8.99684048
            Yaw: 94.2281
            Roll: 38.6989136
          }
          Scale {
            X: 2.07730889
            Y: 2.07730889
            Z: 2.07730889
          }
        }
        ParentId: 8384083252288105435
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7892803338456047330
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 3.47070312
            Y: 3.38647461
          }
          Rotation {
            Pitch: 9.33381462
            Yaw: 177.562622
            Roll: -6.79993725
          }
          Scale {
            X: 2.02177477
            Y: 2.02177477
            Z: 2.02177477
          }
        }
        ParentId: 8384083252288105435
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16586373420744305829
        Name: "Bone Human Skull Pile 01"
        Transform {
          Location {
            X: -6.94152832
            Y: -6.77270508
            Z: 32.14151
          }
          Rotation {
            Yaw: 6
          }
          Scale {
            X: 1.53673947
            Y: 1.53673947
            Z: 1.53673947
          }
        }
        ParentId: 8384083252288105435
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
            Id: 187990000505505202
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12074728729509611826
        Name: "Bone Human Skull Pile 02"
        Transform {
          Location {
            X: -1.62591553
            Y: -12.6530762
            Z: 4.75524902
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: 70.459259
            Roll: -179.999985
          }
          Scale {
            X: 1.02020276
            Y: 1.0202024
            Z: 1.16834128
          }
        }
        ParentId: 8384083252288105435
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
            Id: 1693931880134837521
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3274923403842769102
        Name: "right_hip"
        Transform {
          Location {
            X: -3.39232278
            Y: 39.1367035
            Z: 229.425644
          }
          Rotation {
            Yaw: 89.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 770058449543410784
        ChildIds: 4644700964818146074
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
        Id: 770058449543410784
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: 6.18939209
            Y: -9.828125
          }
          Rotation {
            Pitch: 7.6216712
            Yaw: 8.18113232
            Roll: 9.10267544
          }
          Scale {
            X: 2.29145241
            Y: 2.29145145
            Z: 1.46496487
          }
        }
        ParentId: 3274923403842769102
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4644700964818146074
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -6.18939209
            Y: 9.828125
            Z: 45.8843231
          }
          Rotation {
            Pitch: -1.45827258
            Yaw: -121.765724
            Roll: -1.48519874
          }
          Scale {
            X: 1.71239734
            Y: 1.71239734
            Z: 1.71239734
          }
        }
        ParentId: 3274923403842769102
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1668244657772013139
        Name: "right_knee"
        Transform {
          Location {
            X: -13.6564722
            Y: 58.4477272
            Z: 21.877655
          }
          Rotation {
            Yaw: 89.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 6888168652731137935
        ChildIds: 17788516940456800886
        ChildIds: 594678444504508626
        ChildIds: 3363418413635110421
        ChildIds: 6401207610487725728
        ChildIds: 10157777071036868619
        ChildIds: 13864694605727966595
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
        Id: 6888168652731137935
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 6.83392334
            Y: 0.663330078
            Z: 121.604706
          }
          Rotation {
            Yaw: -126.301498
          }
          Scale {
            X: 1.09067774
            Y: 1.09067774
            Z: 1.09067774
          }
        }
        ParentId: 1668244657772013139
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17788516940456800886
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -9.47210693
            Y: -5.27392578
            Z: 135.930069
          }
          Rotation {
            Pitch: -3.28648877
            Yaw: 174.75383
            Roll: 21.8242912
          }
          Scale {
            X: 1.41961467
            Y: 1.41961467
            Z: 1.41961467
          }
        }
        ParentId: 1668244657772013139
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 594678444504508626
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 6.66345215
            Y: 6.31396484
            Z: 0.145847321
          }
          Rotation {
            Yaw: -167.064102
            Roll: 3.04277539
          }
          Scale {
            X: 1.84701812
            Y: 1.84701812
            Z: 1.84701812
          }
        }
        ParentId: 1668244657772013139
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3363418413635110421
        Name: "Bone Human Femur 01"
        Transform {
          Location {
            X: 5.5335083
            Y: 2.91210938
            Z: 78.1608047
          }
          Rotation {
            Yaw: -41.6027946
            Roll: -2.06686449
          }
          Scale {
            X: 2.60480738
            Y: 2.60480738
            Z: 2.60480738
          }
        }
        ParentId: 1668244657772013139
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
            Id: 15837729084628174211
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6401207610487725728
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 7.68286133
            Y: 3.45361328
            Z: 39.2198944
          }
          Rotation {
            Yaw: -32.4587402
          }
          Scale {
            X: 1.27572012
            Y: 1.27572012
            Z: 1.27572012
          }
        }
        ParentId: 1668244657772013139
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10157777071036868619
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: -4.86523438
            Y: -14.3728027
            Z: 70.3375397
          }
          Rotation {
            Pitch: 4.28853226
            Yaw: -35.8908691
            Roll: -6.53762817
          }
          Scale {
            X: 2.29145241
            Y: 2.29145145
            Z: 1.46496487
          }
        }
        ParentId: 1668244657772013139
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13864694605727966595
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: 6.55792236
            Y: 17.8249512
            Z: 69.5367584
          }
          Rotation {
            Pitch: 0.00220615091
            Yaw: 173.326233
            Roll: -0.0862121433
          }
          Scale {
            X: 2.29145241
            Y: 2.29145145
            Z: 1.46496487
          }
        }
        ParentId: 1668244657772013139
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9938246706459132311
        Name: "upper_spine"
        Transform {
          Location {
            X: -28.5947113
            Y: -3.80712
            Z: 462.39978
          }
          Rotation {
            Yaw: 89.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 14462255995060934279
        ChildIds: 7659912315106300770
        ChildIds: 10861409663801734716
        ChildIds: 7667657053964220060
        ChildIds: 2972687416791974332
        ChildIds: 16580668674180452960
        ChildIds: 3436274625846591391
        ChildIds: 11731868187573818916
        ChildIds: 16122302736686766197
        ChildIds: 8479019058168675448
        ChildIds: 13200542049031019374
        ChildIds: 13044756680869125688
        ChildIds: 14122325959880462191
        ChildIds: 12606127355805843826
        ChildIds: 6556921979194353033
        ChildIds: 6764590129441684606
        ChildIds: 13407430721299142132
        ChildIds: 3457673857560151440
        ChildIds: 2648625436428660087
        ChildIds: 8481932934586273937
        ChildIds: 2071251102826545280
        ChildIds: 16295805034753466869
        ChildIds: 3497940796119800514
        ChildIds: 117236908341776991
        ChildIds: 11017135352636646807
        ChildIds: 18347863307471249197
        ChildIds: 11382743251406622801
        ChildIds: 8868587373448015490
        ChildIds: 3414065364370214794
        ChildIds: 15435253012899796970
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
        Id: 14462255995060934279
        Name: "Bone Human Skull Pile 01"
        Transform {
          Location {
            X: 1.53839111
            Y: 5.94335938
            Z: 29.5444946
          }
          Rotation {
          }
          Scale {
            X: 1.98701203
            Y: 1.98701203
            Z: 1.98701203
          }
        }
        ParentId: 9938246706459132311
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
            Id: 187990000505505202
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7659912315106300770
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 20.7562561
            Y: -13.8120117
            Z: 24.7784424
          }
          Rotation {
            Pitch: -4.27114868
            Yaw: -164.10051
            Roll: 14.6530313
          }
          Scale {
            X: 1.91648424
            Y: 1.91648424
            Z: 1.91648424
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10861409663801734716
        Name: "Bone Human Skull Pile 01"
        Transform {
          Location {
            X: 1.53839111
            Y: 3.62133789
            Z: 44.1031494
          }
          Rotation {
            Pitch: 9.2085762
            Yaw: 66.9874268
            Roll: 20.6451168
          }
          Scale {
            X: 1.65631139
            Y: 1.65631139
            Z: 1.65631139
          }
        }
        ParentId: 9938246706459132311
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
            Id: 187990000505505202
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7667657053964220060
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 2.31182861
            Y: -29.8544922
          }
          Rotation {
            Pitch: -12.4840698
            Yaw: 177.536667
            Roll: -5.871521
          }
          Scale {
            X: 1.91648424
            Y: 1.91648424
            Z: 1.91648424
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2972687416791974332
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 2.31182861
            Y: 18.0861816
          }
          Rotation {
            Pitch: 0.0732742622
            Yaw: 52.2331123
            Roll: 10.4306602
          }
          Scale {
            X: 2.04147506
            Y: 2.04147506
            Z: 2.04147506
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16580668674180452960
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -13.1925964
            Y: -7.24438477
            Z: 16.7289429
          }
          Rotation {
            Pitch: -12.4840622
            Yaw: 124.125496
            Roll: -5.87152481
          }
          Scale {
            X: 1.91648424
            Y: 1.91648424
            Z: 1.91648424
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3436274625846591391
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -8.24267578
            Y: 9.46240234
          }
          Rotation {
            Pitch: -19.7226486
            Yaw: -43.093792
            Roll: 28.0148125
          }
          Scale {
            X: 2.04147506
            Y: 2.04147506
            Z: 2.04147506
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11731868187573818916
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 14.4650574
            Y: 11.7980957
            Z: 13.6369629
          }
          Rotation {
            Pitch: 7.19816542
            Yaw: -59.5038528
            Roll: 7.23534203
          }
          Scale {
            X: 1.66996241
            Y: 1.66996241
            Z: 1.66996241
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16122302736686766197
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -21.4866028
            Y: 2.00170898
            Z: 13.6369629
          }
          Rotation {
            Pitch: -16.3767643
            Yaw: 60.7093
            Roll: 1.59205854
          }
          Scale {
            X: 1.66996241
            Y: 1.66996241
            Z: 1.66996241
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8479019058168675448
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 31.1097717
            Y: -0.893066406
            Z: 24.7247
          }
          Rotation {
            Pitch: 19.1457157
            Yaw: -126.064163
            Roll: -12.7400208
          }
          Scale {
            X: 1.91648424
            Y: 1.91648424
            Z: 1.91648424
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13200542049031019374
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -36.4143677
            Y: -8.81860352
            Z: 24.7247
          }
          Rotation {
            Pitch: -7.4102478
            Yaw: 138.694855
            Roll: -12.1287231
          }
          Scale {
            X: 1.91648424
            Y: 1.91648424
            Z: 1.91648424
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13044756680869125688
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -12.5097961
            Y: -11.5327148
            Z: 51.362915
          }
          Rotation {
            Pitch: -7.41015625
            Yaw: 138.694504
            Roll: -40.4415894
          }
          Scale {
            X: 1.91648424
            Y: 1.91648424
            Z: 1.91648424
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14122325959880462191
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 17.7841492
            Y: 7.10205078
            Z: 51.362915
          }
          Rotation {
            Pitch: 3.24963307
            Yaw: -68.2995
            Roll: -25.6156311
          }
          Scale {
            X: 1.91648424
            Y: 1.91648424
            Z: 1.91648424
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12606127355805843826
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: -4.09619141
            Y: -37.5649414
            Z: 28.0559692
          }
          Rotation {
            Pitch: 0.506738544
            Yaw: 166.224167
            Roll: -26.6821899
          }
          Scale {
            X: 1.51509476
            Y: 1.51509476
            Z: 1.51509476
          }
        }
        ParentId: 9938246706459132311
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
            Id: 18300597072120582980
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6556921979194353033
        Name: "Bone Human Ribcage 01"
        Transform {
          Location {
            X: 6.40911865
            Y: -9.76513672
            Z: -24.6644897
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 3.17068052
            Y: 2.70000076
            Z: 2.70000052
          }
        }
        ParentId: 9938246706459132311
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
        CoreMesh {
          MeshAsset {
            Id: 8077254311283484047
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6764590129441684606
        Name: "Horn"
        Transform {
          Location {
            X: -24.6074219
            Y: -5.52319336
            Z: 59.0402832
          }
          Rotation {
            Yaw: -116.860161
            Roll: -45.3412361
          }
          Scale {
            X: 0.47083047
            Y: 0.470837861
            Z: 0.547409296
          }
        }
        ParentId: 9938246706459132311
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15870500759731022668
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12312309181178321417
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13407430721299142132
        Name: "Horn"
        Transform {
          Location {
            X: 30.7470093
            Y: 2.46411133
            Z: 59.0402832
          }
          Rotation {
            Pitch: -3.20897985
            Yaw: 63.746357
            Roll: -51.8159409
          }
          Scale {
            X: 0.457550019
            Y: 0.4575589
            Z: 0.637599468
          }
        }
        ParentId: 9938246706459132311
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15870500759731022668
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12312309181178321417
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3457673857560151440
        Name: "Horn"
        Transform {
          Location {
            X: 6.94500732
            Y: -28.567627
            Z: 27.7659302
          }
          Rotation {
            Pitch: -4.13308382
            Yaw: -1.72976708
            Roll: -57.4000587
          }
          Scale {
            X: 0.35543564
            Y: 0.355441391
            Z: 0.429520875
          }
        }
        ParentId: 9938246706459132311
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15870500759731022668
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12312309181178321417
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2648625436428660087
        Name: "Horn"
        Transform {
          Location {
            X: -9.19464111
            Y: 22.0993652
            Z: 16.9282837
          }
          Rotation {
            Pitch: 6.27165031
            Yaw: -168.653732
            Roll: -73.9076309
          }
          Scale {
            X: 0.412636638
            Y: 0.412643224
            Z: 0.648472965
          }
        }
        ParentId: 9938246706459132311
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15870500759731022668
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12312309181178321417
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8481932934586273937
        Name: "Horn"
        Transform {
          Location {
            X: 14.5415649
            Y: 14.7490234
            Z: 45.3341675
          }
          Rotation {
            Yaw: 155.841125
            Roll: -45.342968
          }
          Scale {
            X: 0.412636638
            Y: 0.412643224
            Z: 0.648472965
          }
        }
        ParentId: 9938246706459132311
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15870500759731022668
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12312309181178321417
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2071251102826545280
        Name: "Horn"
        Transform {
          Location {
            X: -24.8241577
            Y: -23.3071289
            Z: 28.4976196
          }
          Rotation {
            Pitch: 8.07679367
            Yaw: -36.4315796
            Roll: -86.0685
          }
          Scale {
            X: 0.35543564
            Y: 0.355441391
            Z: 0.429520875
          }
        }
        ParentId: 9938246706459132311
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15870500759731022668
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12312309181178321417
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16295805034753466869
        Name: "Left Arm Rotation Point"
        Transform {
          Location {
            X: -32.9623413
            Y: 17.8161621
            Z: -16.1802368
          }
          Rotation {
            Pitch: -17.6994228
            Yaw: 56.8240471
            Roll: -42.9096832
          }
          Scale {
            X: 0.00631570397
            Y: 0.00631570397
            Z: 0.00631570397
          }
        }
        ParentId: 9938246706459132311
        ChildIds: 12936729296499927607
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
            Id: 17228562421233615007
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12936729296499927607
        Name: "Left Arm (Don\'t Edit)"
        Transform {
          Location {
            X: 2531.80078
            Y: 425.800476
            Z: -6585.98438
          }
          Rotation {
            Pitch: -3.93283081
            Yaw: 93.7929535
            Roll: 19.9493408
          }
          Scale {
            X: -391.834473
            Y: 391.834473
            Z: 391.834473
          }
        }
        ParentId: 16295805034753466869
        ChildIds: 18037131505598657578
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
            Id: 15888819483408013079
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18037131505598657578
        Name: "Left Forearm Rotation Point"
        Transform {
          Location {
            X: -0.642578125
            Y: 0.438659668
            Z: -21.4781494
          }
          Rotation {
            Pitch: 31.2495956
            Yaw: 13.1090031
            Roll: -5.04986572
          }
          Scale {
            X: -0.00165545719
            Y: 0.00165545719
            Z: 0.00165545719
          }
        }
        ParentId: 12936729296499927607
        ChildIds: 16586919462193971897
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
            Id: 17228562421233615007
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16586919462193971897
        Name: "Left Forearm (Don\'t Edit)"
        Transform {
          Location {
            X: 2198.33813
            Y: 1661.06934
            Z: -10733.0703
          }
          Rotation {
            Pitch: -0.000427246094
            Yaw: -8.69278
            Roll: 7.8507248e-05
          }
          Scale {
            X: 755.078369
            Y: 755.078369
            Z: 755.078369
          }
        }
        ParentId: 18037131505598657578
        ChildIds: 7663382381532263747
        ChildIds: 9438271011199315047
        ChildIds: 3900227070276194071
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
        Id: 7663382381532263747
        Name: "Left Hand"
        Transform {
          Location {
            X: 1.90647745
            Y: 4.05458307
            Z: -14.1718683
          }
          Rotation {
            Yaw: 118.41758
            Roll: -179.999985
          }
          Scale {
            X: 0.8
            Y: 0.8
            Z: 0.8
          }
        }
        ParentId: 16586919462193971897
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
            Id: 17629040563554338359
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9438271011199315047
        Name: "Ulna (Don\'t Edit)"
        Transform {
          Location {
            X: -0.778453827
            Y: -1.89941502
          }
          Rotation {
            Pitch: -15.7959595
            Yaw: -159.095459
            Roll: 11.3700304
          }
          Scale {
            X: 0.8
            Y: 0.8
            Z: 0.8
          }
        }
        ParentId: 16586919462193971897
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
            Id: 8458280282514908280
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3900227070276194071
        Name: "Radius (Don\'t Edit)"
        Transform {
          Location {
            X: 0.778453827
            Y: 1.89941502
            Z: 2.81859589
          }
          Rotation {
            Pitch: -10.3281536
            Yaw: -137.072464
            Roll: 11.6898403
          }
          Scale {
            X: 0.7
            Y: 0.7
            Z: 0.7
          }
        }
        ParentId: 16586919462193971897
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
            Id: 8458280282514908280
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3497940796119800514
        Name: "Right Arm Rotation Point"
        Transform {
          Location {
            X: 42.3686523
            Y: 21.4228516
            Z: -11.4024353
          }
          Rotation {
            Pitch: -29.5455532
            Yaw: -160.81868
            Roll: 4.63257694
          }
          Scale {
            X: 0.021338189
            Y: 0.021338189
            Z: 0.021338189
          }
        }
        ParentId: 9938246706459132311
        ChildIds: 16617897521172175500
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
            Id: 17228562421233615007
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16617897521172175500
        Name: "Right Arm (Don\'t Edit)"
        Transform {
          Location {
            X: -623.449707
            Y: -366.840607
            Z: -1977.92285
          }
          Rotation {
            Pitch: -3.32366943
            Yaw: 108.902481
            Roll: -17.1098938
          }
          Scale {
            X: 115.97567
            Y: 115.97567
            Z: 115.97567
          }
        }
        ParentId: 3497940796119800514
        ChildIds: 5454434213105040415
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
            Id: 15888819483408013079
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5454434213105040415
        Name: "Right Forearm Rotation Point"
        Transform {
          Location {
            X: 1.10501575
            Y: -0.15303503
            Z: -21.8289986
          }
          Rotation {
            Pitch: 41.0267677
            Yaw: -117.8741
            Roll: -26.2480164
          }
          Scale {
            X: 0.00263023912
            Y: 0.00263023912
            Z: 0.00263023912
          }
        }
        ParentId: 16617897521172175500
        ChildIds: 16615845686011054995
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
            Id: 17228562421233615007
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16615845686011054995
        Name: "Right Forearm (Don\'t Edit)"
        Transform {
          Location {
            X: -1652.26111
            Y: 914.181458
            Z: -6928.21
          }
          Rotation {
            Pitch: -3.32366943
            Yaw: 108.902405
            Roll: -17.1099243
          }
          Scale {
            X: 380.193542
            Y: 380.193542
            Z: 380.193542
          }
        }
        ParentId: 5454434213105040415
        ChildIds: 13658667148395024543
        ChildIds: 4859032071112202383
        ChildIds: 724327068487465984
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
        Id: 13658667148395024543
        Name: "Right Hand"
        Transform {
          Location {
            X: 7.01779747
            Y: -3.25774384
            Z: -17.4496613
          }
          Rotation {
            Pitch: -7.71536255
            Yaw: 165.585831
            Roll: 164.333786
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16615845686011054995
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
            Id: 17629040563554338359
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4859032071112202383
        Name: "Ulna (Don\'t Edit)"
        Transform {
          Location {
            X: -1.80979371
            Y: -2.12308908
            Z: 1.11758709e-06
          }
          Rotation {
            Pitch: 17.5054798
            Yaw: 15.1564293
            Roll: 9.66034794
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16615845686011054995
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
            Id: 8458280282514908280
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 724327068487465984
        Name: "Radius (Don\'t Edit)"
        Transform {
          Location {
            X: 1.80979395
            Y: 2.12308288
            Z: 2.29358387
          }
          Rotation {
            Pitch: 14.5239391
            Yaw: 17.3642597
            Roll: 19.6822681
          }
          Scale {
            X: 0.875
            Y: 0.875
            Z: 0.875
          }
        }
        ParentId: 16615845686011054995
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
            Id: 8458280282514908280
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
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 117236908341776991
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: 76.2813721
            Y: 57.7485352
            Z: -39.2688599
          }
          Rotation {
            Pitch: -26.918
            Yaw: 156.554825
            Roll: 39.993515
          }
          Scale {
            X: -2.42532063
            Y: 2.42532492
            Z: 1.14843452
          }
        }
        ParentId: 9938246706459132311
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11017135352636646807
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: 129.396851
            Y: 66.8620605
            Z: -129.107544
          }
          Rotation {
            Pitch: -26.1808033
            Yaw: 153.178131
            Roll: -12.5263224
          }
          Scale {
            X: -2.14213157
            Y: 2.14213562
            Z: 1.01433933
          }
        }
        ParentId: 9938246706459132311
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18347863307471249197
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: -54.2372437
            Y: 52.2966309
            Z: -43.0852356
          }
          Rotation {
            Pitch: 21.0626621
            Yaw: -161.727921
            Roll: 37.886982
          }
          Scale {
            X: -2.42532063
            Y: 2.42532492
            Z: 1.14843452
          }
        }
        ParentId: 9938246706459132311
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11382743251406622801
        Name: "Bone Human Spine 01"
        Transform {
          Location {
            X: -108.966736
            Y: 78.2883301
            Z: -127.931702
          }
          Rotation {
            Pitch: 27.0778732
            Yaw: -153.254425
            Roll: 4.03327703
          }
          Scale {
            X: -2.14213157
            Y: 2.14213562
            Z: 1.01433933
          }
        }
        ParentId: 9938246706459132311
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8868587373448015490
        Name: "eyes"
        Transform {
          Location {
            X: 1.25735474
            Y: -13.7631836
            Z: -140.85553
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9938246706459132311
        ChildIds: 10745616939105889527
        ChildIds: 4325803939472945262
        ChildIds: 13775120067439258907
        ChildIds: 17475409604060885562
        ChildIds: 1835790801442585551
        ChildIds: 16465593174289376060
        ChildIds: 18334205174482172760
        ChildIds: 1035283528235587469
        ChildIds: 16713859680740533955
        ChildIds: 8096240224647478631
        ChildIds: 3037700005107576592
        ChildIds: 11207224668642769087
        ChildIds: 5401819870490276372
        ChildIds: 9717698410517381412
        ChildIds: 12287571387769711597
        ChildIds: 2369313155861207065
        ChildIds: 45820043980710373
        ChildIds: 5996370135894527027
        ChildIds: 1256123009213236380
        ChildIds: 1973933086669273055
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
        Id: 10745616939105889527
        Name: "Sphere"
        Transform {
          Location {
            X: 5.56884766
            Y: -43.0192871
            Z: 156.408051
          }
          Rotation {
          }
          Scale {
            X: 0.115729451
            Y: 0.115729451
            Z: 0.115729451
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4325803939472945262
        Name: "Sphere"
        Transform {
          Location {
            X: -14.8773499
            Y: -35.8293457
            Z: 187.038818
          }
          Rotation {
          }
          Scale {
            X: 0.115729451
            Y: 0.115729451
            Z: 0.115729451
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13775120067439258907
        Name: "Sphere"
        Transform {
          Location {
            X: 35.9650574
            Y: -26.3042
            Z: 169.00705
          }
          Rotation {
          }
          Scale {
            X: 0.115729451
            Y: 0.115729451
            Z: 0.115729451
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17475409604060885562
        Name: "Sphere"
        Transform {
          Location {
            X: -17.9595032
            Y: -12.8999023
            Z: 220.597046
          }
          Rotation {
          }
          Scale {
            X: 0.115729451
            Y: 0.115729451
            Z: 0.115729451
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1835790801442585551
        Name: "Sphere"
        Transform {
          Location {
            X: 10.9080505
            Y: -15.1889648
            Z: 207.619019
          }
          Rotation {
          }
          Scale {
            X: 0.115729451
            Y: 0.115729451
            Z: 0.115729451
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16465593174289376060
        Name: "Sphere"
        Transform {
          Location {
            X: 47.3719788
            Y: -3.35083
            Z: 185.342102
          }
          Rotation {
          }
          Scale {
            X: 0.115729451
            Y: 0.115729451
            Z: 0.115729451
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18334205174482172760
        Name: "Sphere"
        Transform {
          Location {
            X: -64.4104614
            Y: -7.22607422
            Z: 181.64444
          }
          Rotation {
          }
          Scale {
            X: 0.115729451
            Y: 0.115729451
            Z: 0.115729451
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1035283528235587469
        Name: "Sphere"
        Transform {
          Location {
            X: 4.76480103
            Y: 60.6401367
            Z: 189.781525
          }
          Rotation {
          }
          Scale {
            X: 0.115729451
            Y: 0.115729451
            Z: 0.115729451
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16713859680740533955
        Name: "Sphere"
        Transform {
          Location {
            X: -16.400177
            Y: 55.5275879
            Z: 145.706787
          }
          Rotation {
          }
          Scale {
            X: 0.137345299
            Y: 0.137345299
            Z: 0.137345299
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8096240224647478631
        Name: "Sphere"
        Transform {
          Location {
            X: -37.7311096
            Y: 35.0539551
            Z: 159.296967
          }
          Rotation {
          }
          Scale {
            X: 0.112762928
            Y: 0.112762928
            Z: 0.112762928
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3037700005107576592
        Name: "Sphere"
        Transform {
          Location {
            X: 31.7582703
            Y: 46.6838379
            Z: 160.545898
          }
          Rotation {
          }
          Scale {
            X: 0.107623
            Y: 0.107623
            Z: 0.107623
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11207224668642769087
        Name: "Point Light"
        Transform {
          Location {
            X: 1.92388916
            Y: -5.86401367
            Z: 108.985077
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8868587373448015490
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
        Light {
          Intensity: 100
          Color {
            R: 0.659999967
            G: 0.157350987
            A: 1
          }
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 100
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
          ShadowBias: 0.4
          ShadowSlopeBias: 0.6
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
        Id: 5401819870490276372
        Name: "Sphere"
        Transform {
          Location {
            X: 1.85931396
            Y: -18.9812012
            Z: 50.4499817
          }
          Rotation {
          }
          Scale {
            X: 0.0986173525
            Y: 0.0986173525
            Z: 0.0986173525
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9717698410517381412
        Name: "Sphere"
        Transform {
          Location {
            X: -9.03833
            Y: -23.7441406
            Z: 25.0706482
          }
          Rotation {
          }
          Scale {
            X: 0.0636986271
            Y: 0.0636986271
            Z: 0.0636986271
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12287571387769711597
        Name: "Sphere"
        Transform {
          Location {
            X: -35.0032349
            Y: -3.43334961
            Z: 25.0706482
          }
          Rotation {
          }
          Scale {
            X: 0.0636986271
            Y: 0.0636986271
            Z: 0.0636986271
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2369313155861207065
        Name: "Sphere"
        Transform {
          Location {
            X: 8.36935425
            Y: 28.7583
            Z: 25.0706482
          }
          Rotation {
          }
          Scale {
            X: 0.0636986271
            Y: 0.0636986271
            Z: 0.0636986271
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 45820043980710373
        Name: "Sphere"
        Transform {
          Location {
            X: 32.0279846
            Y: -20.657959
            Z: 25.0706482
          }
          Rotation {
          }
          Scale {
            X: 0.0636986271
            Y: 0.0636986271
            Z: 0.0636986271
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5996370135894527027
        Name: "Sphere"
        Transform {
          Location {
            X: 14.9020081
            Y: -10.1606445
          }
          Rotation {
          }
          Scale {
            X: 0.0636986271
            Y: 0.0636986271
            Z: 0.0636986271
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1256123009213236380
        Name: "Sphere"
        Transform {
          Location {
            X: -5.22265625
            Y: -38.5693359
            Z: 78.4803772
          }
          Rotation {
          }
          Scale {
            X: 0.0986173525
            Y: 0.0986173525
            Z: 0.0986173525
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1973933086669273055
        Name: "Sphere"
        Transform {
          Location {
            X: 37.4488525
            Y: 8.07251
            Z: 34.4537048
          }
          Rotation {
          }
          Scale {
            X: 0.0636986271
            Y: 0.0636986271
            Z: 0.0636986271
          }
        }
        ParentId: 8868587373448015490
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6671542772216446363
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
            Id: 6364366561006842220
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3414065364370214794
        Name: "Decal Stains Top 01"
        Transform {
          Location {
            X: -0.778442383
            Y: -38.4174805
            Z: -76.50354
          }
          Rotation {
            Yaw: 176.820908
            Roll: 90.0000153
          }
          Scale {
            X: 0.151658192
            Y: 0.415061921
            Z: 0.249304026
          }
        }
        ParentId: 9938246706459132311
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.041
              G: 0.0371161923
              B: 0.0177119989
              A: 0.8
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
        Blueprint {
          BlueprintAsset {
            Id: 10355029531225878397
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15435253012899796970
        Name: "Decal Stains Round 01"
        Transform {
          Location {
            X: -0.0219116211
            Y: -45.1088867
            Z: 54.3648682
          }
          Rotation {
            Yaw: 166.945084
            Roll: 60.0663757
          }
          Scale {
            X: 0.143933237
            Y: 0.143933237
            Z: 0.143933237
          }
        }
        ParentId: 9938246706459132311
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
        Blueprint {
          BlueprintAsset {
            Id: 13650699884663610996
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3471460643979178380
        Name: "right_shoulder"
        Transform {
          Location {
            X: -21.9367409
            Y: 80.6806412
            Z: 437.189972
          }
          Rotation {
            Yaw: 89.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 10252029184172348940
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
        Id: 10252029184172348940
        Name: "Bone Human Spine 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 4.01628065
            Yaw: 85.7351074
            Roll: 53.4192238
          }
          Scale {
            X: 2.66880345
            Y: 2.66880631
            Z: 1.28304338
          }
        }
        ParentId: 3471460643979178380
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13618671761492851051
        Name: "right_elbow"
        Transform {
          Location {
            X: -10.5500126
            Y: 137.907654
            Z: 364.741577
          }
          Rotation {
            Yaw: 89.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7044908340764711717
        ChildIds: 14093030922882746906
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
        Id: 14093030922882746906
        Name: "Bone Human Spine 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -23.6993828
            Yaw: 71.6341629
            Roll: 42.6699104
          }
          Scale {
            X: 1.90032697
            Y: 1.90032971
            Z: 0.899840117
          }
        }
        ParentId: 13618671761492851051
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
            Id: 8994064342170684646
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1680794467450067203
        Name: "ServerContext"
        Transform {
          Location {
            Z: 100
          }
          Rotation {
            Yaw: -89.9999619
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14952932245782266398
        ChildIds: 5719847766285491148
        ChildIds: 6635055764794941148
        ChildIds: 5393426390718152355
        ChildIds: 9777026908882376628
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
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5719847766285491148
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
        ParentId: 1680794467450067203
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14952932245782266398
            }
          }
          Overrides {
            Name: "cs:RotationRoot"
            ObjectReference {
              SubObjectId: 14952932245782266398
            }
          }
          Overrides {
            Name: "cs:Collider"
            ObjectReference {
              SubObjectId: 5061593326325135753
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 5393426390718152355
            }
          }
          Overrides {
            Name: "cs:AttackComponent"
            ObjectReference {
              SubObjectId: 6635055764794941148
            }
          }
          Overrides {
            Name: "cs:EngageEffect"
            AssetReference {
              Id: 16820732663284816684
            }
          }
          Overrides {
            Name: "cs:HomingTarget"
            ObjectReference {
              SubObjectId: 5061593326325135753
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
            Id: 17016640927435284623
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6635055764794941148
        Name: "NPCAttackServer"
        Transform {
          Location {
            X: 3.43322754e-05
            Y: 59.0603
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
        ParentId: 1680794467450067203
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14952932245782266398
            }
          }
          Overrides {
            Name: "cs:DamageToPlayers"
            Int: 15
          }
          Overrides {
            Name: "cs:DamageToNPCs"
            Float: 20
          }
          Overrides {
            Name: "cs:ProjectileBody"
            AssetReference {
              Id: 6784379060495701723
            }
          }
          Overrides {
            Name: "cs:MuzzleFlash"
            AssetReference {
              Id: 4233562491461276107
            }
          }
          Overrides {
            Name: "cs:ImpactSurface"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:ImpactCharacter"
            AssetReference {
              Id: 7112711373603013485
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
            Id: 17990898546226248034
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5393426390718152355
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
        ParentId: 1680794467450067203
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9777026908882376628
        Name: "NPCHeadshot"
        Transform {
          Location {
            Z: 85
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1680794467450067203
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
            Id: 6090439000677197063
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5061593326325135753
        Name: "Collider"
        Transform {
          Location {
            X: -22.1103516
            Z: 252.183685
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 2.10000014
            Y: 1.39996588
            Z: 2.9
          }
        }
        ParentId: 14952932245782266398
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
        WantsNetworking: true
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
            Id: 916665379155427451
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
      Id: 6712061604039642122
      Name: "Humanoid 2 Rig"
      PlatformAssetType: 25
      PrimaryAsset {
        AssetType: "SkeletonAssetRef"
        AssetId: "npc_guy_wireframe_001_ref"
      }
    }
    Assets {
      Id: 16790500082606928318
      Name: "Humanoid 2 Karl"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_guy_head_basic_004_ref"
      }
    }
    Assets {
      Id: 7310539306123103170
      Name: "Humanoid 2 Cyber Hacker Helmet"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_guy_hat_scifi_005_ref"
      }
    }
    Assets {
      Id: 1915461248412394696
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 8994064342170684646
      Name: "Bone Human Spine 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_spine_01_ref"
      }
    }
    Assets {
      Id: 18300597072120582980
      Name: "Bone Human Skull 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_skull_01_ref"
      }
    }
    Assets {
      Id: 15837729084628174211
      Name: "Bone Human Femur 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_femur_01_ref"
      }
    }
    Assets {
      Id: 187990000505505202
      Name: "Bone Human Skull Pile 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_skull_pile_01_ref"
      }
    }
    Assets {
      Id: 1693931880134837521
      Name: "Bone Human Skull Pile 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_skull_pile_02_ref"
      }
    }
    Assets {
      Id: 8077254311283484047
      Name: "Bone Human Ribcage 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_ribcage_01_ref"
      }
    }
    Assets {
      Id: 12312309181178321417
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
      }
    }
    Assets {
      Id: 17228562421233615007
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 15888819483408013079
      Name: "Bone Human Humerus 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_humerus_01_ref"
      }
    }
    Assets {
      Id: 17629040563554338359
      Name: "Bone Human Hand 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_hand_01_ref"
      }
    }
    Assets {
      Id: 8458280282514908280
      Name: "Bone Human Ulna 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_ulna_01_ref"
      }
    }
    Assets {
      Id: 6364366561006842220
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 10355029531225878397
      Name: "Decal Stains Top 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_stain_top_001"
      }
    }
    Assets {
      Id: 13650699884663610996
      Name: "Decal Stains Round 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_stain_round_001"
      }
    }
    Assets {
      Id: 916665379155427451
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 10184847056121543272
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Pack of 15 enemy NPCs seperated in 3 different themes: Skeleton, Necro and Beastbone, all with a common dark fantasy style that fits well for any fantasy, D&D style game, or games involving demons or dark magic. Each theme has 5 NPCs of a different role and design: basic, melee, range, caster and boss. Most of them have custom attack VFX, animations and SFX. \r\n\r\nThese NPC\'s use scripts from the NPC AI Kit CC by Standardcombo, they require the \"Combat Dependencies\" script to function: \r\n - Import \"Combat Dependencies\" by standardcombo in the Community Content.\r\n - Drag and drop the imported script in your hierarchy\r\nNow the NPCs should move and attack you. For more info on setting up NPCs in your game (weapons, respawns, etc...) I recommend you downlaod and work with the AI NPC Kit. \r\n\r\n\r\n\r\n\r\n\r\n"
  }
  SerializationVersion: 125
  DirectlyPublished: true
  VirtualFolderPath: "Evil Monsters NPCs"
}
