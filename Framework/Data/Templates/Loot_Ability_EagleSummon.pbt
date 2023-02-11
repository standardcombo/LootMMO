Assets {
  Id: 6400205909178909512
  Name: "Loot_Ability_EagleSummon"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10190610956955079352
      Objects {
        Id: 10190610956955079352
        Name: "Loot_Ability_EagleSummon"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1262806953336043792
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag_1"
            String: "Avarian"
          }
          Overrides {
            Name: "cs:Tag_2"
            String: "Melee"
          }
          Overrides {
            Name: "cs:RewardResourceType"
            String: "0"
          }
          Overrides {
            Name: "cs:RewardResourceAmount"
            Int: 0
          }
          Overrides {
            Name: "cs:LootId"
            String: "Common"
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
            Float: 2
          }
          Overrides {
            Name: "cs:LogicalPeriod"
            Float: 0.5
          }
          Overrides {
            Name: "cs:ReturnToSpawn"
            Bool: false
          }
          Overrides {
            Name: "cs:IsPushable"
            Bool: true
          }
          Overrides {
            Name: "cs:VisionHalfAngle"
            Float: 0
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
            Name: "cs:Armor"
            Float: 50
          }
          Overrides {
            Name: "cs:Damage"
            Float: 0
          }
          Overrides {
            Name: "cs:IsCrit"
            Bool: false
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
          Overrides {
            Name: "cs:Armor:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:Damage:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:IsCrit:isrep"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        DamageableObject {
          DamageSettings {
            MaxHitpoints: 400
            StartingHitpoints: 500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:high"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1262806953336043792
        Name: "LocalContext"
        Transform {
          Location {
            Z: -25
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10190610956955079352
        ChildIds: 581629701699634310
        ChildIds: 8236933984233397266
        ChildIds: 13372845881417330954
        WantsNetworking: true
        NetworkContext {
          Type: Local
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:low"
        }
      }
      Objects {
        Id: 581629701699634310
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
        ParentId: 1262806953336043792
        ChildIds: 7577712643662644782
        ChildIds: 9212741899637430156
        ChildIds: 4496221888261179657
        ChildIds: 12497658063206460068
        ChildIds: 12217031484892374906
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
          Value: "mc:eproxyrelevance:low"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7577712643662644782
        Name: "EagleAIServer"
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
        ParentId: 581629701699634310
        UnregisteredParameters {
          Overrides {
            Name: "cs:Collider"
            ObjectReference {
              SubObjectId: 13372845881417330954
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 9212741899637430156
            }
          }
          Overrides {
            Name: "cs:AttackComponent"
            ObjectReference {
              SubObjectId: 12217031484892374906
            }
          }
          Overrides {
            Name: "cs:HomingTarget"
            ObjectReference {
              SubObjectId: 13372845881417330954
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 10190610956955079352
            }
          }
          Overrides {
            Name: "cs:RotationRoot"
            ObjectReference {
              SubObjectId: 10190610956955079352
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
            Id: 7645994610634595213
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9212741899637430156
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
        ParentId: 581629701699634310
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
        Id: 4496221888261179657
        Name: "NPCHeadshot"
        Transform {
          Location {
            X: 37.317627
            Z: 123.069008
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 581629701699634310
        UnregisteredParameters {
          Overrides {
            Name: "cs:Radius"
            Float: 21
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
            Id: 8341736443469670175
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12497658063206460068
        Name: "NPCKitArmor"
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
        ParentId: 581629701699634310
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
        Script {
          ScriptAsset {
            Id: 2902220968407700742
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12217031484892374906
        Name: "EagleAttackServer"
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
        ParentId: 581629701699634310
        UnregisteredParameters {
          Overrides {
            Name: "cs:ModuleManager:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ModuleManager:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Root:tooltip"
            String: "A reference to the root of the template, where most of the NPC\'s custom properties are set."
          }
          Overrides {
            Name: "cs:Root:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Root:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DamageToPlayers:tooltip"
            String: "How much damage this NPC deals to players."
          }
          Overrides {
            Name: "cs:DamageToPlayers:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DamageToPlayers:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DamageToNPCs:tooltip"
            String: "How much damage this NPC deals to other NPCs."
          }
          Overrides {
            Name: "cs:DamageToNPCs:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DamageToNPCs:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileBody:tooltip"
            String: "Visual template used for the body of the projectile that is shot when this NPC attacks. The projectile is spawned with rotation and direction matching those of the NPCAttackServer script object, which is why the orientation of this script within the template hierarchy is important."
          }
          Overrides {
            Name: "cs:ProjectileBody:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileBody:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:MuzzleFlash:tooltip"
            String: "Visual effect to spawn at the \"weapon muzzle\", this can also be a sword swipe effect or sometimes just a sound. It is positioned and rotated to where the NPCAttackServer is located, which is why the orientation of this script within the template hierarchy is important."
          }
          Overrides {
            Name: "cs:MuzzleFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:MuzzleFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ImpactSurface:tooltip"
            String: "Visual effect to spawn at the point of impact of the projectile, in case a non-character object is impacted (e.g. a wall)."
          }
          Overrides {
            Name: "cs:ImpactSurface:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ImpactSurface:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ImpactCharacter:tooltip"
            String: "Visual effect to spawn at the point of impact of the projectile, in case a Player or NPC is impacted."
          }
          Overrides {
            Name: "cs:ImpactCharacter:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ImpactCharacter:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileLifeSpan:tooltip"
            String: "How many seconds the projectile will fly in the air and be destroyed in case it does not impact anything."
          }
          Overrides {
            Name: "cs:ProjectileLifeSpan:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileLifeSpan:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileSpeed:tooltip"
            String: "The initial speed of the projectile, in centimeters per second."
          }
          Overrides {
            Name: "cs:ProjectileSpeed:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileSpeed:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileGravity:tooltip"
            String: "The scale of gravity to be used for the projectile. A value of 1 represents Earth gravity. Can be greater than 1. If zero it goes in a straight line (assuming \'homing\' is disabled). If negative the projectile will move upwards over time."
          }
          Overrides {
            Name: "cs:ProjectileGravity:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileGravity:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileHoming:tooltip"
            String: "The homing property causes the projectile to accelerate towards its target. HomingDrag and HomingAcceleration are important companion properties for homing to work correctly, otherwise the projectile might orbit around the target."
          }
          Overrides {
            Name: "cs:ProjectileHoming:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProjectileHoming:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:HomingDrag:tooltip"
            String: "\"Air drag\" to be used in case homing is enabled."
          }
          Overrides {
            Name: "cs:HomingDrag:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:HomingDrag:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:HomingAcceleration:tooltip"
            String: "Acceleration towards the target, to be used in case homing is enabled."
          }
          Overrides {
            Name: "cs:HomingAcceleration:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:HomingAcceleration:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 10190610956955079352
            }
          }
          Overrides {
            Name: "cs:ImpactCharacter"
            AssetReference {
              Id: 307406115803496087
            }
          }
          Overrides {
            Name: "cs:ProjectileBody"
            AssetReference {
              Id: 17434832614945470616
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
            Id: 7914762310391321834
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8236933984233397266
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
        ParentId: 1262806953336043792
        ChildIds: 143525153632646653
        ChildIds: 17346195986269019483
        ChildIds: 12138277205487695916
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
          Value: "mc:eproxyrelevance:low"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 143525153632646653
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
        ParentId: 8236933984233397266
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
              SubObjectId: 10190610956955079352
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17346195986269019483
        Name: "ForwardNode"
        Transform {
          Location {
            X: 5
            Z: 270.135834
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8236933984233397266
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
        Id: 12138277205487695916
        Name: "GeoRoot"
        Transform {
          Location {
            Z: 208.472229
          }
          Rotation {
          }
          Scale {
            X: 0.659029603
            Y: 0.659029603
            Z: 0.659029603
          }
        }
        ParentId: 8236933984233397266
        ChildIds: 4798034511233458201
        ChildIds: 15955461966290683853
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
        Id: 4798034511233458201
        Name: "NPCHealthBarDataProviderClient"
        Transform {
          Location {
            Z: 149.698364
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12138277205487695916
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
              SubObjectId: 10190610956955079352
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15955461966290683853
        Name: "Hunter Elf Eagle Active Basic"
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
        ParentId: 12138277205487695916
        ChildIds: 15557930017523444593
        UnregisteredParameters {
          Overrides {
            Name: "cs:AnimationStance"
            String: "unarmed_idle_ready"
          }
          Overrides {
            Name: "cs:Attack"
            Bool: false
          }
          Overrides {
            Name: "cs:Owner"
            String: ""
          }
          Overrides {
            Name: "cs:Attack:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:Owner:isrep"
            Bool: true
          }
        }
        Lifespan: 20
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
          SelfId: 2821560832229360775
          SubobjectId: 15396417406637580467
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
          WasRoot: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15557930017523444593
        Name: "ClientContext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 15955461966290683853
        ChildIds: 9748279179978325271
        ChildIds: 3321248754713690286
        ChildIds: 14591404167916859611
        ChildIds: 11243952041583269946
        ChildIds: 11191340988888559741
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
          SelfId: 15549592678872278234
          SubobjectId: 2686505520815898862
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9748279179978325271
        Name: "Eagle Costume"
        Transform {
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15557930017523444593
        ChildIds: 10973602945198666338
        ChildIds: 5062887376285142950
        ChildIds: 1173911040842675217
        ChildIds: 4523500855373904500
        ChildIds: 11454233877514580882
        ChildIds: 17045840617867133598
        ChildIds: 8085775590101750077
        ChildIds: 7928046167064224026
        ChildIds: 4683175137984704303
        ChildIds: 3920723607417982745
        ChildIds: 8785392144332800116
        ChildIds: 15108435916593849008
        ChildIds: 7425950744109749651
        ChildIds: 797467952003048331
        ChildIds: 4469999168475740869
        ChildIds: 5670355373754185014
        ChildIds: 1785479716949964725
        ChildIds: 1375956435616600341
        ChildIds: 5771937013532837250
        ChildIds: 14358868087325922782
        ChildIds: 11890023286130226117
        ChildIds: 9909612152041300503
        ChildIds: 8880870152645371892
        ChildIds: 8612656375097271296
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
        InstanceHistory {
          SelfId: 2280177200851697106
          SubobjectId: 17088895296586144230
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10973602945198666338
        Name: "head"
        Transform {
          Location {
            X: 26.2532959
            Z: 12.5180626
          }
          Rotation {
            Pitch: -31.1474304
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 5696306151141140958
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
          SelfId: 7844698224846227010
          SubobjectId: 11411793623511016054
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5696306151141140958
        Name: "Head"
        Transform {
          Location {
            X: -4.10555458
            Z: -9.04451
          }
          Rotation {
            Pitch: 17.8274612
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10973602945198666338
        ChildIds: 9956464393363910512
        ChildIds: 11259700820022160088
        ChildIds: 11830011011453520423
        ChildIds: 3771404582042336475
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
          SelfId: 16846287577102376709
          SubobjectId: 1966150977759918897
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9956464393363910512
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 10.7337761
            Z: 1.51502681
          }
          Rotation {
            Yaw: 90
            Roll: 6.27396584
          }
          Scale {
            X: 0.621164918
            Y: 0.735014319
            Z: 0.621165216
          }
        }
        ParentId: 5696306151141140958
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8911288174540730015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 7.69379425
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 9.46858501
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.728000045
              G: 0.431207478
              B: 0.138320014
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
            Id: 11594524757616528940
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 14982870268091287283
          SubobjectId: 4426752071596647111
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 11259700820022160088
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 13.2130499
            Y: 2.75585938
            Z: 7.8443675
          }
          Rotation {
            Yaw: -90
            Roll: 111.899666
          }
          Scale {
            X: 0.052431
            Y: 0.052431
            Z: 0.052431
          }
        }
        ParentId: 5696306151141140958
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.49615622
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.00628924
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.64
              G: 0.190728486
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 675563715440209277
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
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 2665340743127950925
          SubobjectId: 15455812852613218937
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 11830011011453520423
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 13.2130499
            Y: -2.75598145
            Z: 7.8443675
          }
          Rotation {
            Yaw: -90
            Roll: 111.899666
          }
          Scale {
            X: 0.052431
            Y: 0.052431
            Z: 0.052431
          }
        }
        ParentId: 5696306151141140958
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.49615622
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.00628924
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.64
              G: 0.190728486
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 675563715440209277
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
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 14030232545704079546
          SubobjectId: 3474039497761035406
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 3771404582042336475
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 14.5358362
            Z: 5.38443041
          }
          Rotation {
            Yaw: -90
            Roll: 102.656433
          }
          Scale {
            X: 0.0596850775
            Y: 0.0626144
            Z: 0.0286285598
          }
        }
        ParentId: 5696306151141140958
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.49615622
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.00628924
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.615894
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 9932904826413509849
          SubobjectId: 8888952270210337005
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 5062887376285142950
        Name: "left_wing"
        Transform {
          Location {
            X: 6.51397705
            Y: -4.88195801
            Z: 11.1366882
          }
          Rotation {
            Pitch: 23.5259094
            Yaw: -4.6558651e-07
            Roll: -38.4191
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 10097721826865716207
        ChildIds: 8956770150481801503
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
          SelfId: 6316899240133161766
          SubobjectId: 11901044373313001234
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10097721826865716207
        Name: "LeftWing"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 27.5123692
            Yaw: -12.4589539
            Roll: -25.5612488
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 5062887376285142950
        ChildIds: 15761207831789623214
        ChildIds: 16757971446600497782
        ChildIds: 7065817396369756124
        ChildIds: 13154418199304028631
        ChildIds: 324338749987787902
        ChildIds: 17013603258570117689
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
          SelfId: 8692084013639847271
          SubobjectId: 9953904012001749331
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15761207831789623214
        Name: "Bone Human Scapula 01"
        Transform {
          Location {
            X: 7.07902
            Y: -3.74878311
            Z: 32.3980789
          }
          Rotation {
            Pitch: -4.20391846
            Yaw: -10.3792114
            Roll: -23.4520264
          }
          Scale {
            X: 0.42307809
            Y: 1.07750463
            Z: -1.0000006
          }
        }
        ParentId: 10097721826865716207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8911288174540730015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 7.38093805
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 7.38093805
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.379
              G: 0.186663762
              B: 0.0795899928
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
            Id: 10743705362862236791
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 15003006343265993855
          SubobjectId: 2501257466124476491
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 16757971446600497782
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 6.43628263
            Y: -1.19588852
            Z: 27.5766106
          }
          Rotation {
            Pitch: 26.1154251
            Yaw: 117.24205
            Roll: 18.9815483
          }
          Scale {
            X: 0.00646890607
            Y: 0.053174708
            Z: 0.203092948
          }
        }
        ParentId: 10097721826865716207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.301914513
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.341956407
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 13675220950831580247
          SubobjectId: 5713668998204366947
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 7065817396369756124
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 6.35151482
            Y: 1.27086067
            Z: 21.8142
          }
          Rotation {
            Pitch: 22.9332886
            Yaw: 108.813675
            Roll: 37.2590599
          }
          Scale {
            X: 0.00754621
            Y: 0.0868702307
            Z: 0.182081133
          }
        }
        ParentId: 10097721826865716207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.301914513
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.341956407
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 4539284368446497317
          SubobjectId: 14735186148604593681
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 13154418199304028631
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 2.71236324
            Y: 1.844769
            Z: 15.4580011
          }
          Rotation {
            Pitch: 10.0235615
            Yaw: 128.623306
            Roll: 39.64254
          }
          Scale {
            X: 0.006686348
            Y: 0.0812549293
            Z: 0.168508142
          }
        }
        ParentId: 10097721826865716207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.328051299
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.403725803
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 11584685742204117505
          SubobjectId: 5928479713410549301
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 324338749987787902
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 1.7800951
            Y: 2.51099515
            Z: 9.87734
          }
          Rotation {
            Pitch: 13.5996914
            Yaw: 133.139435
            Roll: 47.1878281
          }
          Scale {
            X: 0.00668646395
            Y: 0.0920172408
            Z: 0.124236047
          }
        }
        ParentId: 10097721826865716207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.420838416
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.611470878
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 6473646017760607046
          SubobjectId: 12345528141645078386
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 17013603258570117689
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 0.235173464
            Y: 2.32413602
            Z: 5.25285196
          }
          Rotation {
            Pitch: -5.8855896
            Yaw: 142.646576
            Roll: 49.5596313
          }
          Scale {
            X: 0.00674833963
            Y: 0.0664804131
            Z: 0.125401482
          }
        }
        ParentId: 10097721826865716207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.301914513
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.341956407
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 3085951117763578089
          SubobjectId: 15587137115822845149
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 8956770150481801503
        Name: "Group"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 22.7889118
            Yaw: 58.7802238
            Roll: -22.5413818
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5062887376285142950
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
          SelfId: 9898194054358042676
          SubobjectId: 8925661270985468928
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1173911040842675217
        Name: "left_ankle"
        Transform {
          Location {
            X: -12.98
            Y: -12.4190063
            Z: -29.603775
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 10921661187854880333
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 6291181338879608377
          SubobjectId: 11947459056179192333
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10921661187854880333
        Name: "LeftAnkle"
        Transform {
          Location {
            Y: -3
          }
          Rotation {
            Pitch: 67.499939
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1173911040842675217
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
          SelfId: 12540396016121723689
          SubobjectId: 6668508414949285661
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4523500855373904500
        Name: "left_knee"
        Transform {
          Location {
            X: -0.644
            Y: -12.4949951
            Z: -30.2882843
          }
          Rotation {
            Pitch: -80.4953308
            Yaw: -179.969772
            Roll: 178.658539
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 18369779296031812415
          SubobjectId: 895568022732066571
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11454233877514580882
        Name: "left_hip"
        Transform {
          Location {
            X: -5.631
            Y: -11.4914551
            Z: -7.56521606
          }
          Rotation {
            Pitch: 21.4884167
            Roll: 2.35313892
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 2846714621162218213
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
          SelfId: 17807487438905928843
          SubobjectId: 406385906511907007
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2846714621162218213
        Name: "LeftHip"
        Transform {
          Location {
            X: 2.48886645e-05
            Y: 5.00005436
            Z: 0.0389371067
          }
          Rotation {
            Pitch: -23.5420532
            Yaw: -12.082489
            Roll: 4.55377913
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11454233877514580882
        ChildIds: 17515310214024623062
        ChildIds: 15197213536671102255
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
          SelfId: 1440692414293488637
          SubobjectId: 16248280127286925257
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17515310214024623062
        Name: "Fantasy Pommel 02"
        Transform {
          Location {
            X: -1.90906036
            Y: 0.417969197
            Z: -10.1710205
          }
          Rotation {
            Yaw: -90
            Roll: 9.25639439
          }
          Scale {
            X: 0.15453054
            Y: 0.350582898
            Z: 0.463590473
          }
        }
        ParentId: 2846714621162218213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8911288174540730015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.852328897
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.888456464
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.243000016
              G: 0.119681492
              B: 0.05103
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
            Id: 15339827692159902109
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 10055250223379724710
          SubobjectId: 8721306869561220498
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 15197213536671102255
        Name: "LeftKnee"
        Transform {
          Location {
            X: -6.36943483
            Y: -0.188456714
            Z: -19.8556385
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2846714621162218213
        ChildIds: 9940793688341062466
        ChildIds: 11171518913879882279
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
          SelfId: 12649277732927274858
          SubobjectId: 6703715497856899934
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9940793688341062466
        Name: "Sphere"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -46.3887939
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 0.0521534048
            Y: 0.0442597121
            Z: 0.328463793
          }
        }
        ParentId: 15197213536671102255
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 1441324042091297733
          SubobjectId: 16610329007031656433
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 11171518913879882279
        Name: "Group"
        Transform {
          Location {
            X: 12.4040613
            Y: -2.50909853
            Z: -11.2501869
          }
          Rotation {
            Pitch: -40
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15197213536671102255
        ChildIds: 16708733484154897270
        ChildIds: 3289561239771969424
        ChildIds: 12541046310614255266
        ChildIds: 2691273368042132313
        ChildIds: 14511857681176789458
        ChildIds: 6205574014392600755
        ChildIds: 12735878164252778693
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
          SelfId: 15878666043128612874
          SubobjectId: 3377550243902319678
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16708733484154897270
        Name: "Group"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 40
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11171518913879882279
        ChildIds: 8935880512672376287
        ChildIds: 14057942065612895396
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
          SelfId: 10517021862317707624
          SubobjectId: 7165461237132637532
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8935880512672376287
        Name: "Sphere"
        Transform {
          Location {
            X: -1.63158762
            Y: 2.1838274
            Z: -0.747281313
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.0414880328
            Y: 0.0302881412
            Z: 0.146278709
          }
        }
        ParentId: 16708733484154897270
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 4944235482259766619
          SubobjectId: 13123015801941547375
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 14057942065612895396
        Name: "Sphere"
        Transform {
          Location {
            X: -7.78127337
            Y: 2.22185421
            Z: -0.904624641
          }
          Rotation {
            Yaw: 90
            Roll: 110.803
          }
          Scale {
            X: 0.0389342606
            Y: 0.0389342569
            Z: 0.0322396643
          }
        }
        ParentId: 16708733484154897270
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 9241693670501418632
          SubobjectId: 8269230980332479164
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 3289561239771969424
        Name: "Sphere"
        Transform {
          Location {
            X: -1.77861655
            Y: 2.30351686
            Z: -0.613058448
          }
          Rotation {
            Pitch: -45
            Yaw: -179.999985
            Roll: -179.999985
          }
          Scale {
            X: 0.0292572659
            Y: 0.0421605855
            Z: 0.185237184
          }
        }
        ParentId: 11171518913879882279
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 18086804219552692732
          SubobjectId: 685143295442066888
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 12541046310614255266
        Name: "Sphere"
        Transform {
          Location {
            X: -1.33517933
            Y: 2.31824756
            Z: -2.07074785
          }
          Rotation {
            Pitch: -43.0053406
            Yaw: 158.058609
            Roll: 149.22995
          }
          Scale {
            X: 0.0336301364
            Y: 0.0336286649
            Z: 0.183542475
          }
        }
        ParentId: 11171518913879882279
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 14147906977902595183
          SubobjectId: 3950876087320209499
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 2691273368042132313
        Name: "Sphere"
        Transform {
          Location {
            X: -1.33517933
            Y: 2.31824756
            Z: -2.07074785
          }
          Rotation {
            Pitch: -43.0053711
            Yaw: -158.058517
            Roll: -149.229858
          }
          Scale {
            X: 0.0336301364
            Y: 0.0336286649
            Z: 0.183542475
          }
        }
        ParentId: 11171518913879882279
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 14655020194978810205
          SubobjectId: 4170955126154636649
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 14511857681176789458
        Name: "Sphere"
        Transform {
          Location {
            X: 4.32830381
            Y: 2.4017756
            Z: -6.84966278
          }
          Rotation {
            Pitch: 3.81209922
            Yaw: -91.5218201
            Roll: 156.602112
          }
          Scale {
            X: 0.0389342606
            Y: 0.0389342569
            Z: 0.0322396643
          }
        }
        ParentId: 11171518913879882279
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 4868081937054322108
          SubobjectId: 12758068912524339592
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 6205574014392600755
        Name: "Sphere"
        Transform {
          Location {
            X: 1.72666073
            Y: -3.70229506
            Z: -7.74505043
          }
          Rotation {
            Pitch: -3.80404663
            Yaw: -139.942627
            Roll: 139.270935
          }
          Scale {
            X: 0.0389342606
            Y: 0.0389342569
            Z: 0.0322396643
          }
        }
        ParentId: 11171518913879882279
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 3515377952912629332
          SubobjectId: 14000005901091682912
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 12735878164252778693
        Name: "Sphere"
        Transform {
          Location {
            X: 1.58986926
            Y: 8.22815704
            Z: -7.46291208
          }
          Rotation {
            Pitch: -3.51257324
            Yaw: -29.7938232
            Roll: 154.583572
          }
          Scale {
            X: 0.0389342606
            Y: 0.0389342569
            Z: 0.0322396643
          }
        }
        ParentId: 11171518913879882279
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 1185230502918451547
          SubobjectId: 16353109500292535663
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 17045840617867133598
        Name: "left_shoulder"
        Transform {
          Location {
            X: 13.9058838
            Y: -13.1456299
            Z: 5.0814476
          }
          Rotation {
            Pitch: -8.609
            Yaw: 4.31751431e-07
            Roll: 36.0494232
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 13146045174172433565
          SubobjectId: 4968315643026790569
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8085775590101750077
        Name: "left_elbow"
        Transform {
          Location {
            X: 11.8807983
            Y: -22.9926147
            Z: -8.29491
          }
          Rotation {
            Pitch: 37.7880363
            Yaw: 52.7104111
            Roll: 64.9862671
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 896073748879686588
          SubobjectId: 18369159225523789704
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7928046167064224026
        Name: "left_wrist"
        Transform {
          Location {
            X: 22.0396729
            Y: -26.9603882
            Z: -12.1615906
          }
          Rotation {
            Pitch: -3.52264404
            Yaw: 74.470726
            Roll: 77.5309296
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 1163457700521361217
          SubobjectId: 16331824881365506933
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4683175137984704303
        Name: "nameplate"
        Transform {
          Location {
            Z: 60.565
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 3531667572679697358
          SubobjectId: 14087297414880757754
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3920723607417982745
        Name: "neck"
        Transform {
          Location {
            X: 19.965271
            Z: 7.97729111
          }
          Rotation {
            Pitch: -54.165802
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 71077322641414004
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
          SelfId: 1416528945872474621
          SubobjectId: 16225245960108799433
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 71077322641414004
        Name: "Fantasy Pommel 02"
        Transform {
          Location {
            X: 0.977854729
            Z: -0.169352114
          }
          Rotation {
            Pitch: -20.6254272
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 0.230342075
            Y: 0.454775244
            Z: 0.334254891
          }
        }
        ParentId: 3920723607417982745
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8911288174540730015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.476652831
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.562753081
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.728000045
              G: 0.431207478
              B: 0.138320014
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
            Id: 15339827692159902109
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 11386421844346627416
          SubobjectId: 7820378674966724972
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 8785392144332800116
        Name: "pelvis"
        Transform {
          Location {
            X: -5.01690674
            Z: -10.1860924
          }
          Rotation {
            Pitch: -53.9808693
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 17550666112630591471
          SubobjectId: 77510595711921115
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15108435916593849008
        Name: "right_wing"
        Transform {
          Location {
            X: 6.51397705
            Y: 4.88198853
            Z: 11.1367073
          }
          Rotation {
            Pitch: 23.5259972
            Roll: -141.580917
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 435368288994290766
        ChildIds: 18077124298707703560
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
          SelfId: 18068008648237782329
          SubobjectId: 593723692355154189
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 435368288994290766
        Name: "RightWing"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -27.5123596
            Yaw: -12.4589539
            Roll: -154.438705
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 15108435916593849008
        ChildIds: 3450830172691203415
        ChildIds: 6959555135912286918
        ChildIds: 4513119991255263823
        ChildIds: 16228651783932258962
        ChildIds: 17017092892134253546
        ChildIds: 14941843187563947845
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
          SelfId: 11402581233166574661
          SubobjectId: 7835482259074580593
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3450830172691203415
        Name: "Bone Human Scapula 01"
        Transform {
          Location {
            X: 7.07554865
            Y: 3.76624298
            Z: 32.3953323
          }
          Rotation {
            Pitch: 4.20394707
            Yaw: -169.620743
            Roll: -23.4520264
          }
          Scale {
            X: -0.422999918
            Y: 1.07750463
            Z: -1.0000006
          }
        }
        ParentId: 435368288994290766
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8911288174540730015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 7.38093805
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 7.38093805
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.379
              G: 0.186663762
              B: 0.0795899928
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
            Id: 10743705362862236791
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 5536275347889385364
          SubobjectId: 13715694758848564128
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 6959555135912286918
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 6.43628407
            Y: 1.19598961
            Z: 27.5766068
          }
          Rotation {
            Pitch: 26.1155128
            Yaw: -117.242126
            Roll: -18.9814453
          }
          Scale {
            X: 0.00646890607
            Y: 0.053174708
            Z: 0.203092948
          }
        }
        ParentId: 435368288994290766
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.301914513
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.341956407
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 5359526053363429233
          SubobjectId: 13322771547933657925
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 4513119991255263823
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 6.35152578
            Y: -1.27098083
            Z: 21.8141785
          }
          Rotation {
            Pitch: 24.5171471
            Yaw: -107.165558
            Roll: -25.784729
          }
          Scale {
            X: 0.00754604209
            Y: 0.077766
            Z: 0.18208085
          }
        }
        ParentId: 435368288994290766
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.301914513
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.341956407
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 13770502127733403634
          SubobjectId: 5591645649816161222
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 16228651783932258962
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 2.71235037
            Y: -1.84500551
            Z: 15.4579906
          }
          Rotation {
            Pitch: 11.1107368
            Yaw: -130.559189
            Roll: -30.5777283
          }
          Scale {
            X: 0.006686348
            Y: 0.0812549293
            Z: 0.168508142
          }
        }
        ParentId: 435368288994290766
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.328051299
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.403725803
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 3110139706939190891
          SubobjectId: 15684433571233876575
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 17017092892134253546
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 1.780092
            Y: -2.5106225
            Z: 9.87734
          }
          Rotation {
            Pitch: 13.5997324
            Yaw: -133.139282
            Roll: -40.8083496
          }
          Scale {
            X: 0.00668646395
            Y: 0.0920172408
            Z: 0.124236047
          }
        }
        ParentId: 435368288994290766
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.420838416
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.611470878
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 6567355289536489437
          SubobjectId: 12222994209953743849
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 14941843187563947845
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 0.235188
            Y: -2.32404685
            Z: 5.25286293
          }
          Rotation {
            Pitch: -9.82516479
            Yaw: -141.161636
            Roll: -49.2967224
          }
          Scale {
            X: 0.00674833963
            Y: 0.0664804131
            Z: 0.125401482
          }
        }
        ParentId: 435368288994290766
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.301914513
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.341956407
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 13428354792234721569
          SubobjectId: 5249010404666459413
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 18077124298707703560
        Name: "Group"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -22.7889404
            Yaw: 58.7801399
            Roll: 22.5414658
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15108435916593849008
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
          SelfId: 17159346976766334557
          SubobjectId: 2062962570687246953
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7425950744109749651
        Name: "right_ankle"
        Transform {
          Location {
            X: -12.98
            Y: 12.4190063
            Z: -29.603775
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 4397087513348887404
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 992673081064803010
          SubobjectId: 18394262485535043318
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4397087513348887404
        Name: "RightAnkle"
        Transform {
          Location {
            Y: 3
          }
          Rotation {
            Pitch: 67.499939
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7425950744109749651
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
          SelfId: 11792377345084550832
          SubobjectId: 5847310696467466884
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 797467952003048331
        Name: "right_knee"
        Transform {
          Location {
            X: 0.643554688
            Y: 12.4949646
            Z: -30.2883339
          }
          Rotation {
            Pitch: -80.4949341
            Yaw: 179.975983
            Roll: -178.663528
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 7826282355006978818
          SubobjectId: 11394011366708797238
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4469999168475740869
        Name: "right_hip"
        Transform {
          Location {
            X: -5.63072205
            Y: 11.4914551
            Z: -7.565
          }
          Rotation {
            Pitch: 21.4883614
            Roll: -2.35379028
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 1419439465106828753
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
          SelfId: 13565464772642910946
          SubobjectId: 5674840061235779286
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1419439465106828753
        Name: "RightHip"
        Transform {
          Location {
            X: -1.99526548e-05
            Y: -5.00005436
            Z: 0.0835715681
          }
          Rotation {
            Pitch: -23.5421753
            Yaw: 12.0824671
            Roll: -4.55377197
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4469999168475740869
        ChildIds: 1098193827683296317
        ChildIds: 6491204206290452914
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
          SelfId: 4436655155137602582
          SubobjectId: 14920716889310625826
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1098193827683296317
        Name: "Fantasy Pommel 02"
        Transform {
          Location {
            X: -1.90905106
            Y: -0.418067962
            Z: -10.1710339
          }
          Rotation {
            Yaw: -90
            Roll: 9.25669479
          }
          Scale {
            X: 0.15453054
            Y: 0.350582898
            Z: 0.463590473
          }
        }
        ParentId: 1419439465106828753
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8911288174540730015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.852328897
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.888456464
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.243000016
              G: 0.119681492
              B: 0.05103
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
            Id: 15339827692159902109
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 18074981379179437545
          SubobjectId: 600132562914097629
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 6491204206290452914
        Name: "RightKnee"
        Transform {
          Location {
            X: -5.17169523
            Y: 0.168854296
            Z: -20.3270416
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1419439465106828753
        ChildIds: 11117526009505905394
        ChildIds: 11129647242275345594
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
          SelfId: 1415582902995394711
          SubobjectId: 16223667386899874979
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11117526009505905394
        Name: "Group"
        Transform {
          Location {
            X: 12.8216324
            Y: 2.34017348
            Z: -11.8432274
          }
          Rotation {
            Pitch: -35
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6491204206290452914
        ChildIds: 7387567762139628344
        ChildIds: 9120073036681490503
        ChildIds: 16080285283501836317
        ChildIds: 17069314572717647059
        ChildIds: 7546375725635728977
        ChildIds: 8025894209706718623
        ChildIds: 562890717704133910
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
          SelfId: 15725815268830511621
          SubobjectId: 2935910474206111281
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7387567762139628344
        Name: "Group"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 45
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11117526009505905394
        ChildIds: 3227688537017858467
        ChildIds: 13685569657266750546
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
          SelfId: 5916987560056675981
          SubobjectId: 11573827148212648633
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3227688537017858467
        Name: "Sphere"
        Transform {
          Location {
            X: -1.73150814
            Y: -2.2116487
            Z: -0.419166028
          }
          Rotation {
            Pitch: 90
            Roll: -3.05175781e-05
          }
          Scale {
            X: 0.0414880328
            Y: 0.0302881412
            Z: 0.146278709
          }
        }
        ParentId: 7387567762139628344
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 4085077108301644216
          SubobjectId: 14569770772824302988
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 13685569657266750546
        Name: "Sphere"
        Transform {
          Location {
            X: -8.0355463
            Y: -2.21163225
            Z: -0.419163793
          }
          Rotation {
            Yaw: 90
            Roll: 95.7857742
          }
          Scale {
            X: 0.0389342606
            Y: 0.0389342569
            Z: 0.0322396643
          }
        }
        ParentId: 7387567762139628344
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 7942393242784250632
          SubobjectId: 11293389853837221692
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 9120073036681490503
        Name: "Sphere"
        Transform {
          Location {
            X: -1.96207619
            Y: -2.30361533
            Z: -0.660571873
          }
          Rotation {
            Pitch: -45
            Yaw: -179.999985
            Roll: -179.999985
          }
          Scale {
            X: 0.0292572659
            Y: 0.0421605855
            Z: 0.185237184
          }
        }
        ParentId: 11117526009505905394
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 8861371672518343506
          SubobjectId: 9834392880339476326
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 16080285283501836317
        Name: "Sphere"
        Transform {
          Location {
            X: -1.39432788
            Y: -2.33016896
            Z: -2.39035988
          }
          Rotation {
            Pitch: -43.0054
            Yaw: 158.058609
            Roll: 149.229813
          }
          Scale {
            X: 0.0336301364
            Y: 0.0336286649
            Z: 0.183542475
          }
        }
        ParentId: 11117526009505905394
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 510027856623954496
          SubobjectId: 17694881582826262132
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 17069314572717647059
        Name: "Sphere"
        Transform {
          Location {
            X: -1.39433706
            Y: -2.33016849
            Z: -2.39034772
          }
          Rotation {
            Pitch: -43.0053711
            Yaw: -158.058548
            Roll: -149.229919
          }
          Scale {
            X: 0.0336301364
            Y: 0.0336286649
            Z: 0.183542475
          }
        }
        ParentId: 11117526009505905394
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 15096171767720831011
          SubobjectId: 2522933415623134231
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 7546375725635728977
        Name: "Sphere"
        Transform {
          Location {
            X: 4.12171412
            Y: -2.27746868
            Z: -6.89506054
          }
          Rotation {
            Pitch: -3.81161499
            Yaw: -88.8322754
            Roll: 166.057312
          }
          Scale {
            X: 0.0389342606
            Y: 0.0389342569
            Z: 0.0322396643
          }
        }
        ParentId: 11117526009505905394
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 7766577435286671303
          SubobjectId: 11046010099729066995
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 8025894209706718623
        Name: "Sphere"
        Transform {
          Location {
            X: 1.66746366
            Y: 3.69080901
            Z: -8.06470108
          }
          Rotation {
            Pitch: 3.80408049
            Yaw: -40.0570679
            Roll: 134.2715
          }
          Scale {
            X: 0.0389342606
            Y: 0.0389342569
            Z: 0.0322396643
          }
        }
        ParentId: 11117526009505905394
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 9449479334867710131
          SubobjectId: 8187660455343740039
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 562890717704133910
        Name: "Sphere"
        Transform {
          Location {
            X: 1.59191418
            Y: -8.40437698
            Z: -8.24492455
          }
          Rotation {
            Pitch: 3.51262259
            Yaw: -150.205612
            Roll: 143.851242
          }
          Scale {
            X: 0.0389342606
            Y: 0.0389342569
            Z: 0.0322396643
          }
        }
        ParentId: 11117526009505905394
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
            Id: 114278397929005302
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 14142376502019916232
          SubobjectId: 3945420255988508156
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 11129647242275345594
        Name: "Sphere"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -135
          }
          Scale {
            X: 0.0521528758
            Y: 0.0442603081
            Z: 0.336677819
          }
        }
        ParentId: 6491204206290452914
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
              R: 1
              G: 0.615894
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
            Id: 4316658893749930966
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 17959433577381256518
          SubobjectId: 846565683941718386
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 5670355373754185014
        Name: "right_shoulder"
        Transform {
          Location {
            X: 13.9058228
            Y: 13.1456909
            Z: 5.08142471
          }
          Rotation {
            Pitch: -8.60885906
            Yaw: 2.15875602e-07
            Roll: -36.0491943
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 5789734264342224391
          SubobjectId: 11734803986017909299
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1785479716949964725
        Name: "right_elbow"
        Transform {
          Location {
            X: 11.8807983
            Y: 22.9927063
            Z: -8.29489517
          }
          Rotation {
            Pitch: 46.2685471
            Yaw: -46.9134369
            Roll: -61.0928345
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 1675327943733140276
          SubobjectId: 16554343056373333760
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1375956435616600341
        Name: "right_wrist"
        Transform {
          Location {
            X: 22.0396729
            Y: 26.9604797
            Z: -12.1616173
          }
          Rotation {
            Pitch: -3.52294922
            Yaw: -74.4697723
            Roll: -77.5310669
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 7537825961325098162
          SubobjectId: 11103799051837378694
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5771937013532837250
        Name: "root"
        Transform {
          Location {
            Z: -40
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 1146432087275504256
          SubobjectId: 18260921414460860084
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14358868087325922782
        Name: "spine"
        Transform {
          Location {
            X: 2.40557861
            Z: -4.78953171
          }
          Rotation {
            Pitch: -53.980732
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 14244221487050573834
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
          SelfId: 3878699646877873338
          SubobjectId: 14362201765078585486
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14244221487050573834
        Name: "Group"
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
        ParentId: 14358868087325922782
        ChildIds: 11095155293322704330
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
          SelfId: 4508176582385442705
          SubobjectId: 14705202868998667173
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11095155293322704330
        Name: "Fantasy Pommel 02"
        Transform {
          Location {
            X: -4.01131
            Z: -0.199893594
          }
          Rotation {
            Pitch: 6.69587326
            Yaw: 180
          }
          Scale {
            X: 0.302035809
            Y: 0.630631208
            Z: 0.595327
          }
        }
        ParentId: 14244221487050573834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8911288174540730015
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.637389183
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.784421325
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.47300002
              G: 0.232960269
              B: 0.0993299931
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
            Id: 15339827692159902109
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 15421235639057851094
          SubobjectId: 2630135947987699426
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 11890023286130226117
        Name: "tail_1"
        Transform {
          Location {
            X: -17.3737793
            Z: -11.0665436
          }
          Rotation {
            Pitch: -80.9950867
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
        ChildIds: 15138388917949397834
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
          SelfId: 7829908190356672081
          SubobjectId: 11397008315629726309
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15138388917949397834
        Name: "Tail1"
        Transform {
          Location {
            X: 2.77710581
            Z: -2.3941443
          }
          Rotation {
            Pitch: -45
            Yaw: 180
          }
          Scale {
            X: 1.56867993
            Y: 1.56867993
            Z: 1.56867993
          }
        }
        ParentId: 11890023286130226117
        ChildIds: 17574519257650697630
        ChildIds: 6422078047299443723
        ChildIds: 1176632000940661931
        ChildIds: 6726129388613874861
        ChildIds: 13614412718992651847
        ChildIds: 66960595277073500
        ChildIds: 3549552517446685101
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
          SelfId: 18239180476132625629
          SubobjectId: 1125254148162971881
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17574519257650697630
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: 0.0932371318
            Z: 2.84849119
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 0.0087040849
            Y: 0.119783297
            Z: 0.349928737
          }
        }
        ParentId: 15138388917949397834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 2928442192884610546
          SubobjectId: 15717782630861558214
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 6422078047299443723
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: -0.54959631
            Z: 4.2758193
          }
          Rotation {
            Pitch: -3.93032837
            Yaw: 174.122574
            Roll: -168.766174
          }
          Scale {
            X: 0.00870407932
            Y: 0.119783267
            Z: 0.338583946
          }
        }
        ParentId: 15138388917949397834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 7725370067233241796
          SubobjectId: 11075800139040202480
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 1176632000940661931
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: -0.54959631
            Z: 4.2758193
          }
          Rotation {
            Pitch: -3.93029785
            Yaw: -174.122467
            Roll: 168.76622
          }
          Scale {
            X: 0.00870407932
            Y: 0.119783267
            Z: 0.338583946
          }
        }
        ParentId: 15138388917949397834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 5237878889622671808
          SubobjectId: 13417223532741654004
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 6726129388613874861
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: -0.588247538
            Z: 5.51355076
          }
          Rotation {
            Pitch: -5.45065308
            Yaw: 166.96907
            Roll: -152.753693
          }
          Scale {
            X: 0.00870405883
            Y: 0.119782902
            Z: 0.305370331
          }
        }
        ParentId: 15138388917949397834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 16415164040368181361
          SubobjectId: 1246725339988669509
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 13614412718992651847
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: -0.588247538
            Z: 5.51355076
          }
          Rotation {
            Pitch: -5.45068359
            Yaw: -166.969116
            Roll: 152.753769
          }
          Scale {
            X: 0.00870405883
            Y: 0.119782902
            Z: 0.305370331
          }
        }
        ParentId: 15138388917949397834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 15987715723443333562
          SubobjectId: 3412853375491739022
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 66960595277073500
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: -0.936257303
            Z: 6.45708084
          }
          Rotation {
            Pitch: -4.37646484
            Yaw: 159.347809
            Roll: -137.437531
          }
          Scale {
            X: 0.00870404951
            Y: 0.119782798
            Z: 0.267722815
          }
        }
        ParentId: 15138388917949397834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 8283088283574763338
          SubobjectId: 9254987698819931006
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 3549552517446685101
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: -0.936257303
            Z: 6.45708084
          }
          Rotation {
            Pitch: -4.37640381
            Yaw: -159.347946
            Roll: 137.437653
          }
          Scale {
            X: 0.00870404951
            Y: 0.119782798
            Z: 0.267722815
          }
        }
        ParentId: 15138388917949397834
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13898612443987996531
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.705099344
              B: 0.39
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
            Id: 6641170506571814994
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        InstanceHistory {
          SelfId: 17342036609299783928
          SubobjectId: 155489380017620172
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 9909612152041300503
        Name: "tail_2"
        Transform {
          Location {
            X: -50.284729
            Z: -16.2819176
          }
          Rotation {
            Pitch: -80.9950867
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 10291045913146202002
          SubobjectId: 8958223801606828966
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8880870152645371892
        Name: "tail_3"
        Transform {
          Location {
            X: -82.866394
            Z: -21.4451027
          }
          Rotation {
            Pitch: -80.9952164
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9748279179978325271
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
          SelfId: 18222618326645013948
          SubobjectId: 1035999972301674888
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8612656375097271296
        Name: "VFX"
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
        ParentId: 9748279179978325271
        ChildIds: 5056684532798923170
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
          SelfId: 9154455008486131231
          SubobjectId: 10198413440078668331
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5056684532798923170
        Name: "Callout Sparkle"
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
        ParentId: 8612656375097271296
        UnregisteredParameters {
          Overrides {
            Name: "bp:Density"
            Float: 1
          }
          Overrides {
            Name: "bp:Initial Velocity"
            Vector {
              Z: 10
            }
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Curl Speed"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Local Space"
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
        InstanceHistory {
          SelfId: 10715209059439444472
          SubobjectId: 7365412273269401036
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 3321248754713690286
        Name: "Dragon Mob"
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
        ParentId: 15557930017523444593
        ChildIds: 2252829329749635150
        ChildIds: 14745830924087209945
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 3556416912647019080
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              G: 0.659999967
              B: 0.148609295
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 14320420807192399895
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          AnimatedMesh {
            AnimationStancePlaybackRate: 1
            AnimationStanceShouldLoop: true
            AnimationPlaybackRateMultiplier: 1
            PlayOnStartAnimation {
              PlaybackRate: 0.8
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
          SelfId: 9579209503154862597
          SubobjectId: 8535186490299162161
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
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
        Id: 2252829329749635150
        Name: "EagleMobController"
        Transform {
          Location {
            X: -9095
            Y: -9625
            Z: -3195
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3321248754713690286
        UnregisteredParameters {
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 3321248754713690286
            }
          }
          Overrides {
            Name: "cs:EagleRoot"
            ObjectReference {
              SubObjectId: 10190610956955079352
            }
          }
          Overrides {
            Name: "cs:AttackSound"
            ObjectReference {
              SubObjectId: 14745830924087209945
            }
          }
          Overrides {
            Name: "cs:Costume"
            ObjectReference {
              SubObjectId: 9748279179978325271
            }
          }
          Overrides {
            Name: "cs:Offset"
            ObjectReference {
              SubObjectId: 13372845881417330954
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
            Id: 2260888853798543825
          }
        }
        InstanceHistory {
          SelfId: 16320188152731313087
          SubobjectId: 1224932946176067467
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14745830924087209945
        Name: "Attack Sound"
        Transform {
          Location {
            X: 43.6367188
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3321248754713690286
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 12393078715059539998
          }
          Volume: 0.8
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        InstanceHistory {
          SelfId: 17071960578883696744
          SubobjectId: 2191259726065196124
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14591404167916859611
        Name: "Creature Bird Hawk Cry 01 SFX"
        Transform {
          Location {
            Z: 30
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15557930017523444593
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 672228843221556369
          }
          AutoPlay: true
          Pitch: -100
          Volume: 1
          Falloff: -1
          Radius: -1
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        InstanceHistory {
          SelfId: 15558122791688702611
          SubobjectId: 2696157069193146023
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11243952041583269946
        Name: "Basic Explosion VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.747483075
            Y: 0.747483075
            Z: 0.747483075
          }
        }
        ParentId: 15557930017523444593
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Fire"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Smoke"
            Bool: false
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.5
              B: 0.291390777
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 10
          }
          Overrides {
            Name: "bp:Enable Light"
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
        Blueprint {
          BlueprintAsset {
            Id: 10616134472715023449
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        InstanceHistory {
          SelfId: 14709017819071395615
          SubobjectId: 4513679298108707627
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        Relevance {
          Value: "mc:edistancerelevance:high"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11191340988888559741
        Name: "Cloth Fabric Flap Bright Rustle 01 SFX"
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
        ParentId: 15557930017523444593
        ChildIds: 12801294207601435794
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 175983598887838075
          }
          AutoPlay: true
          Repeat: true
          Pitch: 300
          Volume: 1
          Falloff: 3000
          Radius: 1000
          FadeInTime: 0.5
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        InstanceHistory {
          SelfId: 15507514902401207611
          SubobjectId: 2717605760327133455
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12801294207601435794
        Name: "LoopAudio"
        Transform {
          Location {
            X: 9860
            Y: 20020
            Z: -3570
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11191340988888559741
        UnregisteredParameters {
          Overrides {
            Name: "cs:Period"
            Float: 0.3
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
            Id: 11929697437890047657
          }
        }
        InstanceHistory {
          SelfId: 15587921281467003789
          SubobjectId: 3085046556135413689
          InstanceId: 7884083538746876590
          TemplateId: 2112935786619930455
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13372845881417330954
        Name: "Collider"
        Transform {
          Location {
            Z: 211.126678
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1262806953336043792
        UnregisteredParameters {
          Overrides {
            Name: "cs:Walkable"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12889861000896994476
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
      Id: 11594524757616528940
      Name: "Bone Human Skull 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_skull_01_ref"
      }
    }
    Assets {
      Id: 7363477334452929865
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 675563715440209277
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 114278397929005302
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
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
    Assets {
      Id: 10743705362862236791
      Name: "Bone Human Scapula 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_scap_01_ref"
      }
    }
    Assets {
      Id: 6641170506571814994
      Name: "Pyramid - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_hq_001"
      }
    }
    Assets {
      Id: 15339827692159902109
      Name: "Heart - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_heart_polished_001"
      }
    }
    Assets {
      Id: 4316658893749930966
      Name: "Pyramid - 4-Sided Truncated Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_truncated_hq_001"
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
      Id: 14320420807192399895
      Name: "Whelp Mob"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_dragonling_chubby_basic_001_ref"
      }
    }
    Assets {
      Id: 12393078715059539998
      Name: "Creature Bird Hawk Cry Squawk 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_bird_hawk_cry_squawk_01_Cue_ref"
      }
    }
    Assets {
      Id: 672228843221556369
      Name: "Creature Bird Hawk Cry 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_bird_hawk_cry_01a_Cue_ref"
      }
    }
    Assets {
      Id: 10616134472715023449
      Name: "Basic Explosion VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_explosion"
      }
    }
    Assets {
      Id: 175983598887838075
      Name: "Cloth Fabric Flap Bright Rustle 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_cloth_fabric_flap_bright_rustle_01a_Cue_ref"
      }
    }
    Assets {
      Id: 12889861000896994476
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Ability"
  VirtualFolderPath: "Assets"
}
