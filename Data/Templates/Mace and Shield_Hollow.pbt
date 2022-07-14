Assets {
  Id: 7156505519781115858
  Name: "Mace and Shield_Hollow"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3745387807024223457
      Objects {
        Id: 3745387807024223457
        Name: "Mace and Shield_Hollow"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3514713312137985011
        ChildIds: 1566953993139895785
        ChildIds: 6535090242445953989
        ChildIds: 8690955215761233262
        ChildIds: 17698976483492225292
        UnregisteredParameters {
          Overrides {
            Name: "cs:EquipmentStance"
            String: "1hand_melee_stance"
          }
          Overrides {
            Name: "cs:PlayerImpact"
            AssetReference {
              Id: 307406115803496087
            }
          }
          Overrides {
            Name: "cs:ObjectImpact"
            AssetReference {
              Id: 16244471840856776085
            }
          }
          Overrides {
            Name: "cs:SwingSound"
            AssetReference {
              Id: 5202188592339298281
            }
          }
          Overrides {
            Name: "cs:HitSphereRadius"
            Float: 150
          }
          Overrides {
            Name: "cs:HitSphereOffset"
            Vector {
              X: 50
              Z: 50
            }
          }
          Overrides {
            Name: "cs:ShowHitSphere"
            Bool: false
          }
          Overrides {
            Name: "cs:EquipmentStance:tooltip"
            String: "The stance animation when a player picks up the equipment."
          }
          Overrides {
            Name: "cs:EquipmentStance:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:EquipmentStance:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:PlayerImpact:tooltip"
            String: "Template that is spawned at the location where the hitbox hit the player."
          }
          Overrides {
            Name: "cs:PlayerImpact:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:PlayerImpact:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ObjectImpact:tooltip"
            String: "Impact template spawned on damageable objects."
          }
          Overrides {
            Name: "cs:ObjectImpact:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ObjectImpact:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingSound:tooltip"
            String: "Template that is spawned at the equipment owner location when a melee ability is executed."
          }
          Overrides {
            Name: "cs:SwingSound:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingSound:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:HitSphereRadius:tooltip"
            String: "Radius of hit sphere to detect players and damageable objects."
          }
          Overrides {
            Name: "cs:HitSphereRadius:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:HitSphereRadius:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:HitSphereOffset:tooltip"
            String: "Offset of the hit sphere from root position of equipment owner."
          }
          Overrides {
            Name: "cs:HitSphereOffset:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:HitSphereOffset:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ShowHitSphere:tooltip"
            String: "Show sphere in editor when performing ability."
          }
          Overrides {
            Name: "cs:ShowHitSphere:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ShowHitSphere:ml"
            Bool: false
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
        Equipment {
          SocketName: "right_prop"
          PickupTrigger {
            SelfId: 841534158063459245
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3514713312137985011
        Name: "Attack 1"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
          }
        }
        ParentId: 3745387807024223457
        UnregisteredParameters {
          Overrides {
            Name: "cs:Damage"
            Float: 35
          }
          Overrides {
            Name: "cs:UseHitSphere"
            Bool: true
          }
          Overrides {
            Name: "cs:SwingEffect"
            AssetReference {
              Id: 171090409284182791
            }
          }
          Overrides {
            Name: "cs:SwingSpawnDelay"
            Float: 0.1
          }
          Overrides {
            Name: "cs:SpawnEffectOnCast"
            Bool: true
          }
          Overrides {
            Name: "cs:SwingPosition"
            Vector {
              Z: 30
            }
          }
          Overrides {
            Name: "cs:SwingRotationX"
            Float: -4.8
          }
          Overrides {
            Name: "cs:SwingRotationY"
            Float: 0
          }
          Overrides {
            Name: "cs:Damage:tooltip"
            String: "Damage value applied to a player hit by hitbox trigger."
          }
          Overrides {
            Name: "cs:Damage:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Damage:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:UseHitSphere:tooltip"
            String: "If true, this ability will use the hit sphere cast during execution phase to damage players or damageable objects."
          }
          Overrides {
            Name: "cs:UseHitSphere:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:UseHitSphere:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingEffect:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingEffect:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingSpawnDelay:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingSpawnDelay:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingRotationX:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingRotationX:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingRotationY:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingRotationY:ml"
            Bool: false
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
        Ability {
          IsEnabled: true
          KeyBinding: "ability_primary"
          CastPhaseSettings {
            Duration: 0.2
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.2
            CanMove: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.01
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 0.59
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
          }
          Animation: "1hand_melee_slash_left"
          CanBePrevented: true
          KeyBinding_v2 {
            Value: "mc:egameaction:primaryaction"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1566953993139895785
        Name: "Attack 2"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
          }
        }
        ParentId: 3745387807024223457
        UnregisteredParameters {
          Overrides {
            Name: "cs:Damage"
            Float: 40
          }
          Overrides {
            Name: "cs:UseHitSphere"
            Bool: true
          }
          Overrides {
            Name: "cs:SwingEffect"
            AssetReference {
              Id: 171090409284182791
            }
          }
          Overrides {
            Name: "cs:SwingSpawnDelay"
            Float: 0.2
          }
          Overrides {
            Name: "cs:SpawnEffectOnCast"
            Bool: true
          }
          Overrides {
            Name: "cs:SwingPosition"
            Vector {
              Z: 10
            }
          }
          Overrides {
            Name: "cs:SwingRotationX"
            Float: -175
          }
          Overrides {
            Name: "cs:SwingRotationY"
            Float: -10
          }
          Overrides {
            Name: "cs:Damage:tooltip"
            String: "Damage value applied to a player hit by hitbox trigger."
          }
          Overrides {
            Name: "cs:Damage:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Damage:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:UseHitSphere:tooltip"
            String: "If true, this ability will use the hit sphere cast during execution phase to damage players or damageable objects."
          }
          Overrides {
            Name: "cs:UseHitSphere:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:UseHitSphere:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingEffect:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingEffect:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingSpawnDelay:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingSpawnDelay:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingRotationX:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingRotationX:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingRotationY:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SwingRotationY:ml"
            Bool: false
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
        Ability {
          IsEnabled: true
          KeyBinding: "ability_primary"
          CastPhaseSettings {
            Duration: 0.3
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.25
            CanMove: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.01
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 0.44
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
          }
          Animation: "1hand_melee_slash_right"
          CanBePrevented: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6535090242445953989
        Name: "Block"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
          }
        }
        ParentId: 3745387807024223457
        UnregisteredParameters {
          Overrides {
            Name: "cs:IsAbilityChain"
            Bool: false
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
        Ability {
          IsEnabled: true
          KeyBinding: "ability_primary"
          CastPhaseSettings {
            Duration: 3
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.05
            CanMove: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          RecoveryPhaseSettings {
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            IsTargetDataUpdated: true
          }
          Animation: "1hand_melee_shield_bash"
          CanBePrevented: true
          KeyBinding_v2 {
            Value: "mc:egameaction:secondaryaction"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8690955215761233262
        Name: "Heal"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
          }
        }
        ParentId: 3745387807024223457
        UnregisteredParameters {
          Overrides {
            Name: "cs:IsAbilityChain"
            Bool: false
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
        Ability {
          IsEnabled: true
          KeyBinding: "ability_primary"
          CastPhaseSettings {
            Duration: 0.2
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.25
            CanMove: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.02
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          CooldownPhaseSettings {
            Duration: 30
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
          }
          Animation: "unarmed_magic_up"
          CanBePrevented: true
          KeyBinding_v2 {
            Value: "mc:egameaction:extraaction_32"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17698976483492225292
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
        ParentId: 3745387807024223457
        ChildIds: 16897474759971515496
        ChildIds: 14632452247174376323
        WantsNetworking: true
        NetworkContext {
          Type: Local
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16897474759971515496
        Name: "ServerContext"
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
        ParentId: 17698976483492225292
        ChildIds: 14774544771309407551
        ChildIds: 10256956109011524342
        ChildIds: 16384862758443831406
        ChildIds: 14908443400059625468
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
        Id: 14774544771309407551
        Name: "EquipmentStanceServer"
        Transform {
          Location {
            X: -21205.8418
            Y: 15631.2627
            Z: -2663.97021
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16897474759971515496
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
            Id: 1427829216143793458
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10256956109011524342
        Name: "EquipmentMeleeAttacksServer"
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
        ParentId: 16897474759971515496
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
        Script {
          ScriptAsset {
            Id: 5082628058110625875
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16384862758443831406
        Name: "BlockAbilityServer"
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
        ParentId: 16897474759971515496
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 6535090242445953989
            }
          }
          Overrides {
            Name: "cs:AbilityAnimationStance"
            String: "1hand_melee_shield_block"
          }
          Overrides {
            Name: "cs:BlockPercentage"
            Float: 1
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
            Id: 15248574229477717252
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14908443400059625468
        Name: "HealAbilityServer"
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
        ParentId: 16897474759971515496
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 8690955215761233262
            }
          }
          Overrides {
            Name: "cs:HealPercent"
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
        Script {
          ScriptAsset {
            Id: 37842367290060402
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14632452247174376323
        Name: "Client Context"
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
        ParentId: 17698976483492225292
        ChildIds: 12408787806015397409
        ChildIds: 17228462346857688741
        ChildIds: 13795461874531787307
        ChildIds: 5085121405783551710
        ChildIds: 13016691559125716021
        UnregisteredParameters {
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
        Id: 12408787806015397409
        Name: "EquipmentSetIconClient"
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
        ParentId: 14632452247174376323
        UnregisteredParameters {
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 12953151354139110850
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
            Id: 7524651856908893815
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17228462346857688741
        Name: "EquipmentMeleeAttacksClient"
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
        ParentId: 14632452247174376323
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
        Script {
          ScriptAsset {
            Id: 12971704803185333098
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13795461874531787307
        Name: "BlockAbilityClient"
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
        ParentId: 14632452247174376323
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 6535090242445953989
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
            Id: 15810894035057021327
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5085121405783551710
        Name: "EquipmentAttachObjectToPlayer"
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
        ParentId: 14632452247174376323
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerSocket"
            String: "left_arm_prop"
          }
          Overrides {
            Name: "cs:LocalPosition"
            Vector {
              Y: 8
            }
          }
          Overrides {
            Name: "cs:LocalRotation"
            Rotator {
              Pitch: 30
            }
          }
          Overrides {
            Name: "cs:Object:tooltip"
            String: "Set object to attach to player on equip event."
          }
          Overrides {
            Name: "cs:Object"
            ObjectReference {
              SubObjectId: 10391473855082155934
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
            Id: 12439034694186114331
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13016691559125716021
        Name: "Geo"
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
        ParentId: 14632452247174376323
        ChildIds: 10391473855082155934
        ChildIds: 78224877148135091
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10391473855082155934
        Name: "Shield"
        Transform {
          Location {
            Y: 10
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13016691559125716021
        ChildIds: 13536261746694809252
        ChildIds: 4853499522167028483
        ChildIds: 11546027063915748638
        ChildIds: 8521761173880419905
        ChildIds: 13390835970012366979
        ChildIds: 15988014312816011046
        ChildIds: 5033286680421643132
        ChildIds: 18431578732577812564
        ChildIds: 6326473593214731661
        ChildIds: 12307861900194241296
        ChildIds: 3413865843896513622
        ChildIds: 4586949155644230618
        ChildIds: 11264378209052652107
        ChildIds: 8441363926272544113
        ChildIds: 16257272207226326231
        ChildIds: 8873457861351814945
        ChildIds: 17367510388970813589
        ChildIds: 13076016268607109860
        ChildIds: 5676119359493558622
        ChildIds: 17115104463124231366
        ChildIds: 3066544744046805165
        ChildIds: 9501849260138799285
        ChildIds: 7127073026477015363
        ChildIds: 178721475478142066
        ChildIds: 6287993535708412423
        ChildIds: 16765455430560600376
        ChildIds: 9087758768651342662
        ChildIds: 11287566296757782067
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
          Model {
            AggressiveMerge: true
          }
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
        Id: 13536261746694809252
        Name: "Fantasy Shield 02"
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
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 1
              G: 0.462319076
              B: 0.219305754
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
            Id: 4322675021483384603
          }
          Teams {
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
        Id: 4853499522167028483
        Name: "Fantasy Shield 01"
        Transform {
          Location {
            X: -0.138671875
            Y: 9.33551
            Z: 5.73681641
          }
          Rotation {
          }
          Scale {
            X: 0.320611984
            Y: 0.320611984
            Z: 0.320611984
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 11337413471323694429
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
            Id: 4438523867532045845
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
        Id: 11546027063915748638
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 18.7109375
            Y: -1.16360474
            Z: 21.2387695
          }
          Rotation {
            Pitch: 37.815506
            Yaw: 172.144684
            Roll: -174.134399
          }
          Scale {
            X: 0.13474223
            Y: 0.320013613
            Z: 0.0821536854
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 8521761173880419905
        Name: "Text 05: ~"
        Transform {
          Location {
            X: -46.3457031
            Y: 6.94805908
            Z: -19.1538086
          }
          Rotation {
            Pitch: -53.25317
            Yaw: -8.19622655e-05
            Roll: -1.62443132e-06
          }
          Scale {
            X: 0.422976106
            Y: -0.350339532
            Z: 0.416215748
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.530423403
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.346161515
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 17160283160308691459
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
        Id: 13390835970012366979
        Name: "Text 05: ~"
        Transform {
          Location {
            X: -42.6855469
            Y: -1.0333252
            Z: -46.0009766
          }
          Rotation {
            Pitch: -36.9974365
            Yaw: 13.6822128
            Roll: -1.12245452e-05
          }
          Scale {
            X: 0.282557309
            Y: -0.350339264
            Z: 0.508313417
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.530423403
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.346161515
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 17160283160308691459
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
        Id: 15988014312816011046
        Name: "Text 05: 6"
        Transform {
          Location {
            X: -21.90625
            Y: -1.48983765
            Z: -12.7358398
          }
          Rotation {
            Pitch: -26.229435
            Yaw: 10.5292139
            Roll: -170.882492
          }
          Scale {
            X: 0.0985498801
            Y: -0.234056547
            Z: 0.0600868464
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 5033286680421643132
        Name: "Text 05: 1"
        Transform {
          Location {
            X: -28.5410156
            Y: -2.9274292
            Z: -12.8198242
          }
          Rotation {
            Pitch: 41.4684029
            Yaw: 22.8078
            Roll: -168.17569
          }
          Scale {
            X: 0.20843108
            Y: -0.194799319
            Z: 0.189748451
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.22590971
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.162098333
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
            Id: 7369954283335535613
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
        Id: 18431578732577812564
        Name: "Text 05: ,"
        Transform {
          Location {
            X: -28.7519531
            Y: 2.86083984
            Z: -8.34130859
          }
          Rotation {
            Pitch: 5.13591957
            Yaw: -8.19622728e-05
            Roll: -7.22221648e-06
          }
          Scale {
            X: 0.48023966
            Y: -0.202550903
            Z: 1.23351324
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.704993844
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.812768042
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
            Id: 4180358987950391816
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
        Id: 6326473593214731661
        Name: "Text 05: 1"
        Transform {
          Location {
            X: 22.7929688
            Y: -0.903106689
            Z: 12.8989258
          }
          Rotation {
            Pitch: 72.96064
            Yaw: -24.3716965
            Roll: -13.9559135
          }
          Scale {
            X: 0.284977227
            Y: 0.266339183
            Z: 0.259433389
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.22590971
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.162098333
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
            Id: 7369954283335535613
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
        Id: 12307861900194241296
        Name: "Text 05: 1"
        Transform {
          Location {
            X: -24.25
            Y: 5.6550293
            Z: 13.6958008
          }
          Rotation {
            Pitch: 74.6177063
            Yaw: -165.024078
            Roll: 7.05736923
          }
          Scale {
            X: 0.284977227
            Y: 0.266339183
            Z: 0.259433389
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.22590971
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.162098333
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
            Id: 7369954283335535613
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
        Id: 3413865843896513622
        Name: "Text 05: 6"
        Transform {
          Location {
            X: -20.1816406
            Y: 6.41851807
            Z: 22.0043945
          }
          Rotation {
            Pitch: 36.6037254
            Yaw: 6.77475405
            Roll: 178.405884
          }
          Scale {
            X: 0.13474223
            Y: 0.320013613
            Z: 0.0821536854
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 4586949155644230618
        Name: "Text 05: ~"
        Transform {
          Location {
            X: 45.6757812
            Y: 7.11386108
            Z: -19.1538086
          }
          Rotation {
            Pitch: -53.2531395
            Yaw: -179.999954
            Roll: 1.62446577e-06
          }
          Scale {
            X: 0.422976106
            Y: 0.350339532
            Z: 0.416215748
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.530423403
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.346161515
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 17160283160308691459
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
        Id: 11264378209052652107
        Name: "Text 05: ~"
        Transform {
          Location {
            X: 42.015625
            Y: -0.867523193
            Z: -46.0009766
          }
          Rotation {
            Pitch: -36.9974365
            Yaw: 166.317734
            Roll: 1.22935498e-05
          }
          Scale {
            X: 0.282557309
            Y: 0.350339264
            Z: 0.508313417
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.530423403
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.346161515
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 17160283160308691459
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
        Id: 8441363926272544113
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 21.2363281
            Y: -1.32403564
            Z: -12.7358398
          }
          Rotation {
            Pitch: -26.2294483
            Yaw: 169.470718
            Roll: 170.882492
          }
          Scale {
            X: 0.0985498801
            Y: 0.234056547
            Z: 0.0600868464
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 16257272207226326231
        Name: "Text 05: 1"
        Transform {
          Location {
            X: 27.8710938
            Y: -2.7616272
            Z: -12.8198242
          }
          Rotation {
            Pitch: 41.4683342
            Yaw: 157.192123
            Roll: 168.17569
          }
          Scale {
            X: 0.20843108
            Y: 0.194799319
            Z: 0.189748451
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.22590971
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.162098333
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
            Id: 7369954283335535613
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
        Id: 8873457861351814945
        Name: "Text 05: ,"
        Transform {
          Location {
            X: 28.0820312
            Y: 3.02664185
            Z: -8.34130859
          }
          Rotation {
            Pitch: 5.13591957
            Yaw: -179.999954
            Roll: 7.22221375e-06
          }
          Scale {
            X: 0.48023966
            Y: 0.202550903
            Z: 1.23351324
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.704993844
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.812768042
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
            Id: 4180358987950391816
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
        Id: 17367510388970813589
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -5.62109375
            Y: 5.83508301
            Z: 8.93554688
          }
          Rotation {
            Pitch: -41.5691757
            Yaw: -179.999893
            Roll: 0.000229841651
          }
          Scale {
            X: 0.315849841
            Y: 0.29485327
            Z: 0.217132404
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 13076016268607109860
        Name: "Text 05: \'"
        Transform {
          Location {
            X: 5.60742188
            Y: -1.5256958
            Z: 8.79052734
          }
          Rotation {
            Pitch: -40.8350639
            Yaw: 7.41289768e-05
            Roll: 0.000225913638
          }
          Scale {
            X: 0.315849841
            Y: 0.29485327
            Z: 0.217132404
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 5676119359493558622
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 11.6113281
            Y: 0.413970947
            Z: 24.1494141
          }
          Rotation {
            Pitch: 61.0801735
            Yaw: 167.097214
            Roll: 179.363708
          }
          Scale {
            X: 0.0936952755
            Y: 0.256892383
            Z: 0.0571341589
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 17115104463124231366
        Name: "Text 05: 6"
        Transform {
          Location {
            X: -13.125
            Y: 6.9319458
            Z: 24.6396484
          }
          Rotation {
            Pitch: 57.147213
            Yaw: 10.0549822
            Roll: -177.174026
          }
          Scale {
            X: 0.0936952755
            Y: 0.256892383
            Z: 0.0571341589
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 3066544744046805165
        Name: "Text 05: \'"
        Transform {
          Location {
            X: 0.9296875
            Y: -0.874450684
            Z: 10.7607422
          }
          Rotation {
            Pitch: -40.8350105
            Yaw: 7.41289259e-05
            Roll: 0.000225913609
          }
          Scale {
            X: 0.315849841
            Y: 0.29485327
            Z: 0.217132404
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 9501849260138799285
        Name: "Text 05: 6"
        Transform {
          Location {
            X: -9.59375
            Y: 5.0083313
            Z: 32.7202148
          }
          Rotation {
            Pitch: 85.7716293
            Yaw: -139.141586
            Roll: 29.9388218
          }
          Scale {
            X: 0.089781478
            Y: 0.333282799
            Z: 0.0686730072
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 7127073026477015363
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 6.74609375
            Y: -3.4418335
            Z: 31.9711914
          }
          Rotation {
            Pitch: 75.886116
            Yaw: -9.69942093
            Roll: 5.87733841
          }
          Scale {
            X: 0.089781478
            Y: 0.333282799
            Z: 0.0686730072
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 178721475478142066
        Name: "Text 03: ."
        Transform {
          Location {
            X: -7.94335938
            Y: -0.693328857
            Z: 34.9560547
          }
          Rotation {
            Pitch: 4.18825817
            Roll: 4.07124799e-06
          }
          Scale {
            X: 0.195963234
            Y: 0.203746736
            Z: 0.195963234
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14888731246234281563
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
        Id: 6287993535708412423
        Name: "Text 03: ."
        Transform {
          Location {
            X: 8.18359375
            Y: 3.69339
            Z: 34.4404297
          }
          Rotation {
            Pitch: 4.18825817
            Yaw: -179.999954
            Roll: 1.96453948e-06
          }
          Scale {
            X: 0.195963234
            Y: 0.203746736
            Z: 0.195963234
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14888731246234281563
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
        Id: 16765455430560600376
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -1.765625
            Y: 7.02276611
            Z: 10.9057617
          }
          Rotation {
            Pitch: -41.5691795
            Yaw: -179.999893
            Roll: 0.000229841651
          }
          Scale {
            X: 0.315849841
            Y: 0.29485327
            Z: 0.217132404
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 9087758768651342662
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -3.4296875
            Y: 0.0928344727
            Z: 13.1000977
          }
          Rotation {
            Pitch: -40.83498
            Yaw: 7.41289186e-05
            Roll: 0.000225913609
          }
          Scale {
            X: 0.301837027
            Y: 0.281771958
            Z: 0.207499221
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 11287566296757782067
        Name: "Text 05: \'"
        Transform {
          Location {
            X: 2.9140625
            Y: 7.18899536
            Z: 13.3798828
          }
          Rotation {
            Pitch: -41.5691795
            Yaw: -179.999893
            Roll: 0.000229841651
          }
          Scale {
            X: 0.301837027
            Y: 0.281771958
            Z: 0.207499221
          }
        }
        ParentId: 10391473855082155934
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 78224877148135091
        Name: "Mace"
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
        ParentId: 13016691559125716021
        ChildIds: 9659098403467650547
        ChildIds: 13081787079263901213
        ChildIds: 7841958147749988476
        ChildIds: 12259526541171711331
        ChildIds: 16422182367059495902
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
          Model {
            AggressiveMerge: true
          }
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
        Id: 9659098403467650547
        Name: "Mace"
        Transform {
          Location {
            X: -0.087890625
            Y: -0.771789551
            Z: 62.6513672
          }
          Rotation {
            Roll: 3.00000358
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 78224877148135091
        ChildIds: 13135511001021471246
        ChildIds: 13622795460529101760
        ChildIds: 11561236712847708155
        ChildIds: 17096151580616311712
        ChildIds: 1017889564361437893
        ChildIds: 10546030682411795091
        ChildIds: 15842724136084306522
        ChildIds: 4021942677173490470
        ChildIds: 12272496640451915701
        ChildIds: 860669917059265390
        ChildIds: 7802881330595717572
        ChildIds: 18222622529298672344
        ChildIds: 16999909864052070732
        ChildIds: 5623715250316887913
        ChildIds: 6055937845028646206
        ChildIds: 4277739818811793659
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
        Id: 13135511001021471246
        Name: "Text 03: C"
        Transform {
          Location {
            X: -2.22265625
            Y: 4.62915182
            Z: 6.82926702
          }
          Rotation {
            Pitch: -27.0133553
            Yaw: 90.000061
            Roll: 179.999954
          }
          Scale {
            X: 0.0923542082
            Y: 0.203812763
            Z: 0.0948562548
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.248383343
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.236880168
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.236880168
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
            Id: 7906970403073025695
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
        Id: 13622795460529101760
        Name: "Text 05: 1"
        Transform {
          Location {
            X: 3.84375
            Y: 20.5808258
            Z: 20.1824131
          }
          Rotation {
            Pitch: 59.6046944
            Yaw: 90.0000687
            Roll: 5.06227079e-05
          }
          Scale {
            X: 0.284977198
            Y: 0.266339183
            Z: 0.259433389
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.22590971
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.162098333
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
            Id: 7369954283335535613
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
        Id: 11561236712847708155
        Name: "Text 05: ,"
        Transform {
          Location {
            X: -2.17773438
            Y: 12.1440926
            Z: 9.31093121
          }
          Rotation {
            Pitch: 31.5827789
            Yaw: -89.9999771
            Roll: -4.00887029e-06
          }
          Scale {
            X: 0.316535741
            Y: 0.202550441
            Z: 1.23351943
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.704993844
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.812768042
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
            Id: 4180358987950391816
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
        Id: 17096151580616311712
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 4.28710938
            Y: 18.7460899
            Z: 29.2790337
          }
          Rotation {
            Pitch: 51.7599487
            Yaw: -89.9999466
            Roll: -179.266876
          }
          Scale {
            X: 0.13474223
            Y: 0.320013583
            Z: 0.0821536854
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 1017889564361437893
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.20507812
            Y: 2.1121285
            Z: 23.3999329
          }
          Rotation {
            Pitch: 8.45188
            Yaw: 90.0000763
            Roll: -179.999954
          }
          Scale {
            X: 0.372033536
            Y: 0.225208223
            Z: 0.17787075
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.505858362
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.140603855
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 10546030682411795091
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 2.359375
            Y: 14.5086098
            Z: 27.2331676
          }
          Rotation {
            Pitch: -25.2866631
            Yaw: -89.9999847
            Roll: -179.266891
          }
          Scale {
            X: 0.0803579465
            Y: 0.150125757
            Z: 0.0491255373
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 15842724136084306522
        Name: "Text 05: ~"
        Transform {
          Location {
            X: -1.6640625
            Y: 26.943346
            Z: 8.81916523
          }
          Rotation {
            Pitch: -52.7863083
            Yaw: -89.9999619
          }
          Scale {
            X: 0.256838828
            Y: 0.172628731
            Z: 0.226694778
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.530423403
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.346161515
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 17160283160308691459
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
        Id: 4021942677173490470
        Name: "Text 05: 0"
        Transform {
          Location {
            X: -1.3359375
            Y: 3.90878153
            Z: 5.03373384
          }
          Rotation {
            Pitch: 88.7408752
            Yaw: -90
          }
          Scale {
            X: 0.0686207041
            Y: 0.143497527
            Z: 0.0406030044
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14061730684956481535
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
        Id: 12272496640451915701
        Name: "Text 03: ."
        Transform {
          Location {
            X: -2.19335938
            Y: 20.7782078
            Z: 27.1441784
          }
          Rotation {
            Pitch: 1.18827522
            Yaw: -89.9999619
          }
          Scale {
            X: 0.195963234
            Y: 0.203746721
            Z: 0.195963234
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14888731246234281563
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
        Id: 860669917059265390
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06640625
            Y: -15.192524
            Z: 31.1440506
          }
          Rotation {
            Pitch: 74.554039
            Yaw: 90.0000229
            Roll: -179.999954
          }
          Scale {
            X: 0.372033536
            Y: 0.194509581
            Z: 0.17787075
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 7802881330595717572
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06640625
            Y: 24.2212486
            Z: 8.57920551
          }
          Rotation {
            Pitch: -71.758049
            Yaw: -90
            Roll: -9.81881167e-05
          }
          Scale {
            X: 0.372033536
            Y: 0.194509581
            Z: 0.17787075
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 18222622529298672344
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.291015625
            Y: 10.6484852
            Z: 33.8737411
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -0.000332817028
            Roll: -38.746582
          }
          Scale {
            X: 0.0380128771
            Y: 0.0824039057
            Z: 0.14461498
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 16999909864052070732
        Name: "Wedge - Convex"
        Transform {
          Location {
            X: 0.279296875
            Y: 7.92995358
            Z: 34.0852699
          }
          Rotation {
            Pitch: 0.000129773587
            Yaw: -179.999588
            Roll: -122.524094
          }
          Scale {
            X: 0.0373543873
            Y: 0.0986448601
            Z: 0.136371583
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 15785876743814996770
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
        Id: 5623715250316887913
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.291015625
            Y: 5.82142639
            Z: 5.22345
          }
          Rotation {
            Pitch: 0.000300528307
            Yaw: -0.00111906824
            Roll: 17.3951359
          }
          Scale {
            X: 0.00934399478
            Y: 0.0618597679
            Z: 0.116827868
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 6055937845028646206
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.326171875
            Y: 14.0333242
            Z: 28.8599377
          }
          Rotation {
            Pitch: -0.00106550939
            Yaw: -0.00176450203
            Roll: 174.624222
          }
          Scale {
            X: 0.013013578
            Y: 0.0809152499
            Z: 0.10509114
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 4277739818811793659
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06640625
            Y: 8.2649622
            Z: 41.0904274
          }
          Rotation {
            Pitch: -0.00818256661
            Yaw: 89.9999313
            Roll: -179.999893
          }
          Scale {
            X: 0.195791274
            Y: 0.18277581
            Z: 0.134597659
          }
        }
        ParentId: 9659098403467650547
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 13081787079263901213
        Name: "Mace"
        Transform {
          Location {
            X: -0.087890625
            Y: -0.771789551
            Z: 62.6513672
          }
          Rotation {
            Yaw: 89.9999466
            Roll: 3.00000334
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 78224877148135091
        ChildIds: 7028781414813206195
        ChildIds: 4096185509955559143
        ChildIds: 11253581795248103401
        ChildIds: 14524673657460727180
        ChildIds: 13706619996503004085
        ChildIds: 243988246488732248
        ChildIds: 4464931808676456587
        ChildIds: 18239358225808996888
        ChildIds: 4469165953842444273
        ChildIds: 7437774911570804188
        ChildIds: 15102678015358853743
        ChildIds: 15971639596931874175
        ChildIds: 6905948080627766279
        ChildIds: 7598010314351218302
        ChildIds: 5451980108954623804
        ChildIds: 3341735074530571071
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
        Id: 7028781414813206195
        Name: "Text 03: C"
        Transform {
          Location {
            X: -2.22262955
            Y: 4.62939405
            Z: 6.82928038
          }
          Rotation {
            Pitch: -27.0133553
            Yaw: 90.0000763
            Roll: 179.999954
          }
          Scale {
            X: 0.0923542082
            Y: 0.203812763
            Z: 0.0948562548
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.248383343
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.236880168
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.236880168
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
            Id: 7906970403073025695
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
        Id: 4096185509955559143
        Name: "Text 05: 1"
        Transform {
          Location {
            X: 3.84373093
            Y: 20.581316
            Z: 20.1824398
          }
          Rotation {
            Pitch: 59.6047211
            Yaw: 90.0000763
            Roll: 4.72478714e-05
          }
          Scale {
            X: 0.284977198
            Y: 0.266339183
            Z: 0.259433389
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.22590971
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.162098333
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
            Id: 7369954283335535613
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
        Id: 11253581795248103401
        Name: "Text 05: ,"
        Transform {
          Location {
            X: -2.17832565
            Y: 12.144578
            Z: 9.31095695
          }
          Rotation {
            Pitch: 31.5827656
            Yaw: -89.9999619
          }
          Scale {
            X: 0.316535741
            Y: 0.202550441
            Z: 1.23351943
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.704993844
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.812768042
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
            Id: 4180358987950391816
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
        Id: 14524673657460727180
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 4.2862072
            Y: 18.7472534
            Z: 29.2790947
          }
          Rotation {
            Pitch: 51.7599602
            Yaw: -89.9999771
            Roll: -179.266907
          }
          Scale {
            X: 0.13474223
            Y: 0.320013583
            Z: 0.0821536854
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 13706619996503004085
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.20535588
            Y: 2.11221838
            Z: 23.3999367
          }
          Rotation {
            Pitch: 8.45188
            Yaw: 90.0000763
            Roll: -179.999954
          }
          Scale {
            X: 0.372033536
            Y: 0.225208223
            Z: 0.17787075
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.505858362
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.140603855
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 243988246488732248
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 2.35936165
            Y: 14.5086737
            Z: 27.2331715
          }
          Rotation {
            Pitch: -25.2866631
            Yaw: -89.9999847
            Roll: -179.266891
          }
          Scale {
            X: 0.0803579465
            Y: 0.150125757
            Z: 0.0491255373
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 4464931808676456587
        Name: "Text 05: ~"
        Transform {
          Location {
            X: -1.66341209
            Y: 26.9445038
            Z: 8.81922626
          }
          Rotation {
            Pitch: -52.7863045
            Yaw: -89.9999619
          }
          Scale {
            X: 0.256838828
            Y: 0.172628731
            Z: 0.226694778
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.530423403
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.346161515
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 17160283160308691459
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
        Id: 18239358225808996888
        Name: "Text 05: 0"
        Transform {
          Location {
            X: -1.33542252
            Y: 3.90987778
            Z: 5.03379154
          }
          Rotation {
            Pitch: 88.7410202
            Yaw: -90.0003128
          }
          Scale {
            X: 0.0686207041
            Y: 0.143497527
            Z: 0.0406030044
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14061730684956481535
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
        Id: 4469165953842444273
        Name: "Text 03: ."
        Transform {
          Location {
            X: -2.19331551
            Y: 20.7777805
            Z: 27.1441574
          }
          Rotation {
            Pitch: 1.18827522
            Yaw: -89.9999542
            Roll: -1.0674465e-07
          }
          Scale {
            X: 0.195963234
            Y: 0.203746721
            Z: 0.195963234
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14888731246234281563
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
        Id: 7437774911570804188
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06554127
            Y: -15.1917953
            Z: 31.1440887
          }
          Rotation {
            Pitch: 74.554039
            Yaw: 90
            Roll: -179.999969
          }
          Scale {
            X: 0.372033536
            Y: 0.194509581
            Z: 0.17787075
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 15102678015358853743
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06557274
            Y: 24.220911
            Z: 8.57918739
          }
          Rotation {
            Pitch: -71.758049
            Yaw: -90.0000153
            Roll: -9.27332367e-05
          }
          Scale {
            X: 0.372033536
            Y: 0.194509581
            Z: 0.17787075
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 15971639596931874175
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.291096687
            Y: 10.6480293
            Z: 33.8737183
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -0.000327339425
            Roll: -38.7465744
          }
          Scale {
            X: 0.0380128771
            Y: 0.0824039057
            Z: 0.14461498
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 6905948080627766279
        Name: "Wedge - Convex"
        Transform {
          Location {
            X: 0.278861046
            Y: 7.93010664
            Z: 34.0852776
          }
          Rotation {
            Pitch: 0.000122943398
            Yaw: -179.999588
            Roll: -122.524109
          }
          Scale {
            X: 0.0373543873
            Y: 0.0986448601
            Z: 0.136371583
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 15785876743814996770
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
        Id: 7598010314351218302
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.291101933
            Y: 5.82249308
            Z: 5.2235055
          }
          Rotation {
            Pitch: 0.000300528307
            Yaw: -0.00111542689
            Roll: 17.3951321
          }
          Scale {
            X: 0.00934399478
            Y: 0.0618597679
            Z: 0.116827868
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 5451980108954623804
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.32615757
            Y: 14.0342083
            Z: 28.8599834
          }
          Rotation {
            Pitch: -0.00106550939
            Yaw: -0.00175533793
            Roll: 174.624222
          }
          Scale {
            X: 0.013013578
            Y: 0.0809152499
            Z: 0.10509114
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 3341735074530571071
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06641483
            Y: 8.26511383
            Z: 41.0904388
          }
          Rotation {
            Pitch: -0.00818256661
            Yaw: 89.999939
            Roll: -179.999893
          }
          Scale {
            X: 0.195791274
            Y: 0.18277581
            Z: 0.134597659
          }
        }
        ParentId: 13081787079263901213
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 7841958147749988476
        Name: "Mace"
        Transform {
          Location {
            X: -0.087890625
            Y: -0.771789551
            Z: 62.6513672
          }
          Rotation {
            Yaw: 179.999954
            Roll: 3.00000119
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 78224877148135091
        ChildIds: 7576287325651085560
        ChildIds: 5545813542183716809
        ChildIds: 14790106060405593343
        ChildIds: 2369301313938319481
        ChildIds: 13507107340716123291
        ChildIds: 7512934853688355524
        ChildIds: 15746378059911659963
        ChildIds: 15706228863441560767
        ChildIds: 13706666760919984616
        ChildIds: 12451021014319384191
        ChildIds: 3299050386921873820
        ChildIds: 11820236116897938113
        ChildIds: 8811007274684037328
        ChildIds: 395302804364124546
        ChildIds: 5565180816993983563
        ChildIds: 4680943180655011413
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
        Id: 7576287325651085560
        Name: "Text 03: C"
        Transform {
          Location {
            X: -2.22265911
            Y: 4.62914896
            Z: 6.82926702
          }
          Rotation {
            Pitch: -27.0133495
            Yaw: 90.0000534
            Roll: 179.999954
          }
          Scale {
            X: 0.0923542082
            Y: 0.203812763
            Z: 0.0948562548
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.248383343
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.236880168
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.236880168
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
            Id: 7906970403073025695
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
        Id: 5545813542183716809
        Name: "Text 05: 1"
        Transform {
          Location {
            X: 3.84373403
            Y: 20.5808201
            Z: 20.1824131
          }
          Rotation {
            Pitch: 59.6046791
            Yaw: 90.0000381
            Roll: 5.06227079e-05
          }
          Scale {
            X: 0.284977198
            Y: 0.266339183
            Z: 0.259433389
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.22590971
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.162098333
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
            Id: 7369954283335535613
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
        Id: 14790106060405593343
        Name: "Text 05: ,"
        Transform {
          Location {
            X: -2.1777432
            Y: 12.1440887
            Z: 9.31093
          }
          Rotation {
            Pitch: 31.5827656
            Yaw: -89.9999542
          }
          Scale {
            X: 0.316535741
            Y: 0.202550441
            Z: 1.23351943
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.704993844
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.812768042
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
            Id: 4180358987950391816
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
        Id: 2369301313938319481
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 4.28709459
            Y: 18.7460899
            Z: 29.2790337
          }
          Rotation {
            Pitch: 51.7599258
            Yaw: -89.9999237
            Roll: -179.266891
          }
          Scale {
            X: 0.13474223
            Y: 0.320013583
            Z: 0.0821536854
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 13507107340716123291
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.20508
            Y: 2.11212707
            Z: 23.3999329
          }
          Rotation {
            Pitch: 8.45187378
            Yaw: 90.000061
            Roll: -179.999954
          }
          Scale {
            X: 0.372033536
            Y: 0.225208223
            Z: 0.17787075
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.505858362
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.140603855
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 7512934853688355524
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 2.35936308
            Y: 14.5086098
            Z: 27.2331676
          }
          Rotation {
            Pitch: -25.2866631
            Yaw: -89.9999695
            Roll: -179.266891
          }
          Scale {
            X: 0.0803579465
            Y: 0.150125757
            Z: 0.0491255373
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 15746378059911659963
        Name: "Text 05: ~"
        Transform {
          Location {
            X: -1.66408169
            Y: 26.9433384
            Z: 8.81916523
          }
          Rotation {
            Pitch: -52.7862816
            Yaw: -89.9999237
            Roll: -2.82337396e-06
          }
          Scale {
            X: 0.256838828
            Y: 0.172628731
            Z: 0.226694778
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.530423403
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.346161515
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 17160283160308691459
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
        Id: 15706228863441560767
        Name: "Text 05: 0"
        Transform {
          Location {
            X: -1.33593988
            Y: 3.90878
            Z: 5.03373384
          }
          Rotation {
            Pitch: 88.7401
            Yaw: -89.9992218
            Roll: 0.000155386806
          }
          Scale {
            X: 0.0686207041
            Y: 0.143497527
            Z: 0.0406030044
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14061730684956481535
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
        Id: 13706666760919984616
        Name: "Text 03: ."
        Transform {
          Location {
            X: -2.19337463
            Y: 20.7782
            Z: 27.1441784
          }
          Rotation {
            Pitch: 1.18827522
            Yaw: -89.9999466
            Roll: -4.26978602e-07
          }
          Scale {
            X: 0.195963234
            Y: 0.203746721
            Z: 0.195963234
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14888731246234281563
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
        Id: 12451021014319384191
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06639647
            Y: -15.1924896
            Z: 31.1440525
          }
          Rotation {
            Pitch: 74.5539551
            Yaw: 89.999939
            Roll: -179.999985
          }
          Scale {
            X: 0.372033536
            Y: 0.194509581
            Z: 0.17787075
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 3299050386921873820
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06642365
            Y: 24.2212429
            Z: 8.57920456
          }
          Rotation {
            Pitch: -71.7580185
            Yaw: -89.9999771
            Roll: -9.27331639e-05
          }
          Scale {
            X: 0.372033536
            Y: 0.194509581
            Z: 0.17787075
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 11820236116897938113
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.291006655
            Y: 10.6484833
            Z: 33.8737411
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -0.000333834
            Roll: -38.7465668
          }
          Scale {
            X: 0.0380128771
            Y: 0.0824039057
            Z: 0.14461498
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 8811007274684037328
        Name: "Wedge - Convex"
        Transform {
          Location {
            X: 0.279289842
            Y: 7.92995262
            Z: 34.0852699
          }
          Rotation {
            Pitch: 0.000129773587
            Yaw: -179.999588
            Roll: -122.524094
          }
          Scale {
            X: 0.0373543873
            Y: 0.0986448601
            Z: 0.136371583
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 15785876743814996770
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
        Id: 395302804364124546
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.291011125
            Y: 5.82142544
            Z: 5.22344971
          }
          Rotation {
            Pitch: 0.000300528307
            Yaw: -0.0011161617
            Roll: 17.3951263
          }
          Scale {
            X: 0.00934399478
            Y: 0.0618597679
            Z: 0.116827868
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 5565180816993983563
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.32616064
            Y: 14.0333214
            Z: 28.8599358
          }
          Rotation {
            Pitch: -0.00106550939
            Yaw: -0.00176110445
            Roll: 174.624222
          }
          Scale {
            X: 0.013013578
            Y: 0.0809152499
            Z: 0.10509114
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 4680943180655011413
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06641388
            Y: 8.26495934
            Z: 41.0904312
          }
          Rotation {
            Pitch: -0.00818256661
            Yaw: 89.9999313
            Roll: -179.999893
          }
          Scale {
            X: 0.195791274
            Y: 0.18277581
            Z: 0.134597659
          }
        }
        ParentId: 7841958147749988476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 12259526541171711331
        Name: "Mace"
        Transform {
          Location {
            X: -0.087890625
            Y: -0.771789551
            Z: 62.6513672
          }
          Rotation {
            Yaw: -90
            Roll: 3.00000238
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 78224877148135091
        ChildIds: 17742702142778718960
        ChildIds: 1893820117190724690
        ChildIds: 4210200669314891046
        ChildIds: 4296526607674073245
        ChildIds: 8819942645719530068
        ChildIds: 17567525722392633170
        ChildIds: 3413590037122023705
        ChildIds: 8030600309782714375
        ChildIds: 8253157536835888248
        ChildIds: 16177033843950326103
        ChildIds: 14488042427776832678
        ChildIds: 9708843832002202
        ChildIds: 10629194885727964654
        ChildIds: 15945157828964745009
        ChildIds: 15664101759402298049
        ChildIds: 14163311566908209534
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
        Id: 17742702142778718960
        Name: "Text 03: C"
        Transform {
          Location {
            X: -2.22262526
            Y: 4.62939548
            Z: 6.82928
          }
          Rotation {
            Pitch: -27.0133553
            Yaw: 90.000061
            Roll: 179.999954
          }
          Scale {
            X: 0.0923542082
            Y: 0.203812763
            Z: 0.0948562548
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.248383343
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.236880168
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.236880168
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
            Id: 7906970403073025695
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
        Id: 1893820117190724690
        Name: "Text 05: 1"
        Transform {
          Location {
            X: 3.84375
            Y: 20.5813122
            Z: 20.1824398
          }
          Rotation {
            Pitch: 59.6046791
            Yaw: 90.0000534
            Roll: 5.06226934e-05
          }
          Scale {
            X: 0.284977198
            Y: 0.266339183
            Z: 0.259433389
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.260445088
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.22590971
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.162098333
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
            Id: 7369954283335535613
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
        Id: 4210200669314891046
        Name: "Text 05: ,"
        Transform {
          Location {
            X: -2.17831326
            Y: 12.1445789
            Z: 9.310956
          }
          Rotation {
            Pitch: 31.5827656
            Yaw: -89.9999542
          }
          Scale {
            X: 0.316535741
            Y: 0.202550441
            Z: 1.23351943
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.178223953
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.704993844
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.812768042
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
            Id: 4180358987950391816
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
        Id: 4296526607674073245
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 4.28622246
            Y: 18.7472477
            Z: 29.2790947
          }
          Rotation {
            Pitch: 51.7599373
            Yaw: -89.9999466
            Roll: -179.266891
          }
          Scale {
            X: 0.13474223
            Y: 0.320013583
            Z: 0.0821536854
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.127882078
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 8819942645719530068
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.20535254
            Y: 2.11222076
            Z: 23.3999386
          }
          Rotation {
            Pitch: 8.45187378
            Yaw: 90.000061
            Roll: -179.999954
          }
          Scale {
            X: 0.372033536
            Y: 0.225208223
            Z: 0.17787075
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.505858362
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.140603855
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 17567525722392633170
        Name: "Text 05: 6"
        Transform {
          Location {
            X: 2.35937595
            Y: 14.5086699
            Z: 27.2331696
          }
          Rotation {
            Pitch: -25.2866631
            Yaw: -89.9999695
            Roll: -179.266891
          }
          Scale {
            X: 0.0803579465
            Y: 0.150125757
            Z: 0.0491255373
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 34823057115098118
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
        Id: 3413590037122023705
        Name: "Text 05: ~"
        Transform {
          Location {
            X: -1.66339302
            Y: 26.9445019
            Z: 8.81922626
          }
          Rotation {
            Pitch: -52.7862892
            Yaw: -89.9999466
          }
          Scale {
            X: 0.256838828
            Y: 0.172628731
            Z: 0.226694778
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.530423403
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.346161515
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 17160283160308691459
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
        Id: 8030600309782714375
        Name: "Text 05: 0"
        Transform {
          Location {
            X: -1.33541918
            Y: 3.90987873
            Z: 5.03379154
          }
          Rotation {
            Pitch: 88.7404
            Yaw: -89.9996796
          }
          Scale {
            X: 0.0686207041
            Y: 0.143497527
            Z: 0.0406030044
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.273092628
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14061730684956481535
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
        Id: 8253157536835888248
        Name: "Text 03: ."
        Transform {
          Location {
            X: -2.19332886
            Y: 20.7777805
            Z: 27.1441574
          }
          Rotation {
            Pitch: 1.18827522
            Yaw: -89.9999542
          }
          Scale {
            X: 0.195963234
            Y: 0.203746721
            Z: 0.195963234
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 14888731246234281563
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
        Id: 16177033843950326103
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06555271
            Y: -15.1917906
            Z: 31.1440887
          }
          Rotation {
            Pitch: 74.5540085
            Yaw: 90
            Roll: -179.999954
          }
          Scale {
            X: 0.372033536
            Y: 0.194509581
            Z: 0.17787075
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 14488042427776832678
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.06558228
            Y: 24.220911
            Z: 8.57918739
          }
          Rotation {
            Pitch: -71.7580261
            Yaw: -89.9999771
            Roll: -0.000114552757
          }
          Scale {
            X: 0.372033536
            Y: 0.194509581
            Z: 0.17787075
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.286354274
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.147431746
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 9708843832002202
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.291108131
            Y: 10.6480274
            Z: 33.8737183
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -0.00033870386
            Roll: -38.7465668
          }
          Scale {
            X: 0.0380128771
            Y: 0.0824039057
            Z: 0.14461498
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 10629194885727964654
        Name: "Wedge - Convex"
        Transform {
          Location {
            X: 0.278868675
            Y: 7.93010616
            Z: 34.0852776
          }
          Rotation {
            Pitch: 0.000129773587
            Yaw: -179.999588
            Roll: -122.524078
          }
          Scale {
            X: 0.0373543873
            Y: 0.0986448601
            Z: 0.136371583
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 15785876743814996770
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
        Id: 15945157828964745009
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.291107178
            Y: 5.82249212
            Z: 5.2235055
          }
          Rotation {
            Pitch: 0.000300528307
            Yaw: -0.00111880247
            Roll: 17.3951302
          }
          Scale {
            X: 0.00934399478
            Y: 0.0618597679
            Z: 0.116827868
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 15664101759402298049
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 0.326170921
            Y: 14.0342073
            Z: 28.8599834
          }
          Rotation {
            Pitch: -0.00106550939
            Yaw: -0.00176557165
            Roll: 174.624222
          }
          Scale {
            X: 0.013013578
            Y: 0.0809152499
            Z: 0.10509114
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.330130041
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.460088521
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
            Id: 10733938494793341403
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
        Id: 14163311566908209534
        Name: "Text 05: \'"
        Transform {
          Location {
            X: -2.0664053
            Y: 8.26511478
            Z: 41.0904388
          }
          Rotation {
            Pitch: -0.00818256661
            Yaw: 89.999939
            Roll: -179.999893
          }
          Scale {
            X: 0.195791274
            Y: 0.18277581
            Z: 0.134597659
          }
        }
        ParentId: 12259526541171711331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 8916846240532825810
            }
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 0.154591203
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.16997
          }
          Overrides {
            Name: "ma:Font.Faces:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Faces:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Font.Sides:utile"
            Float: 0.314840943
          }
          Overrides {
            Name: "ma:Font.Sides:vtile"
            Float: 0.273092628
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
            Id: 5463011714817637894
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
        Id: 16422182367059495902
        Name: "Mace_Base"
        Transform {
          Location {
            X: -0.087890625
            Y: -0.771789551
            Z: 55.7021484
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 78224877148135091
        ChildIds: 2244393700111345445
        ChildIds: 6601156706777776447
        ChildIds: 2261078532103429026
        ChildIds: 2168259287110106795
        ChildIds: 10001720707453278272
        ChildIds: 3261244875198737891
        ChildIds: 18257429418158973634
        ChildIds: 9724859998559376015
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
        Id: 2244393700111345445
        Name: "Flare Billboard"
        Transform {
          Location {
            X: 0.0625
            Y: -0.0957946777
            Z: 58.2490234
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16422182367059495902
        UnregisteredParameters {
          Overrides {
            Name: "bp:Width"
            Float: 0.8
          }
          Overrides {
            Name: "bp:Height"
            Float: 0.8
          }
          Overrides {
            Name: "bp:Flare Shape"
            Int: 2
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 1
              G: 0.949933767
              B: 0.73
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 0.62
              G: 0.270993382
              A: 1
            }
          }
          Overrides {
            Name: "bp:color c"
            Color {
              R: 0.61
              G: 0.0484768339
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Offset B"
            Float: 0.208887041
          }
          Overrides {
            Name: "bp:Color Offset C"
            Float: 0.740972698
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5.50355673
          }
          Overrides {
            Name: "bp:Color Offset A"
            Float: 0
          }
          Overrides {
            Name: "bp:Rotate Texture"
            Bool: false
          }
          Overrides {
            Name: "bp:Camera Fade Offset"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Camera Fade Distance"
            Float: 5
          }
          Overrides {
            Name: "bp:Depth Fade Distance"
            Float: 0.5
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
        Blueprint {
          BlueprintAsset {
            Id: 4488444258523261897
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6601156706777776447
        Name: "Urban Pipe Straight"
        Transform {
          Location {
            Z: -42.3417969
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 0.193020061
            Y: 0.193020061
            Z: 0.766086698
          }
        }
        ParentId: 16422182367059495902
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11337413471323694429
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
            Id: 15897705887741699672
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
        Id: 2261078532103429026
        Name: "Urban Pipe Straight"
        Transform {
          Location {
            Z: 5.95459
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 1.12348378
            Y: 1.12348378
            Z: 1.11480081
          }
        }
        ParentId: 16422182367059495902
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8916846240532825810
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
            Id: 14577953825021911847
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
        Id: 2168259287110106795
        Name: "Urban Pipe Straight"
        Transform {
          Location {
            Z: 7.64501953
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 1.12348378
            Y: 1.12348378
            Z: 1.06206775
          }
        }
        ParentId: 16422182367059495902
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8916846240532825810
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
            Id: 9675776263369201294
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
        Id: 10001720707453278272
        Name: "Urban Pipe Straight"
        Transform {
          Location {
            Z: -70.9716797
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 1.22250581
            Y: 1.22250581
            Z: 1.1556766
          }
        }
        ParentId: 16422182367059495902
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8916846240532825810
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
            Id: 9675776263369201294
          }
          Teams {
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
        Id: 3261244875198737891
        Name: "Urban Pipe Straight"
        Transform {
          Location {
            Z: -72.4882812
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 0.205451801
            Y: 0.205451801
            Z: 0.628388286
          }
        }
        ParentId: 16422182367059495902
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8916846240532825810
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
            Id: 15897705887741699672
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
        Id: 18257429418158973634
        Name: "Urban Pipe Straight"
        Transform {
          Location {
            Z: -41.1806641
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 0.0642935038
            Y: 0.0642935038
            Z: 0.140867606
          }
        }
        ParentId: 16422182367059495902
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8916846240532825810
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
            Id: 46061843978868412
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
        Id: 9724859998559376015
        Name: "Urban Pipe Straight"
        Transform {
          Location {
            Z: -72.2241211
          }
          Rotation {
            Yaw: -89.999939
          }
          Scale {
            X: 0.0641784221
            Y: 0.0641784221
            Z: 0.121197678
          }
        }
        ParentId: 16422182367059495902
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8916846240532825810
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
            Id: 46061843978868412
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
    }
    Assets {
      Id: 4322675021483384603
      Name: "Fantasy Shield 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_shield_002"
      }
    }
    Assets {
      Id: 8916846240532825810
      Name: "Metal Old Beaten Gold 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_002"
      }
    }
    Assets {
      Id: 11337413471323694429
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
      }
    }
    Assets {
      Id: 4438523867532045845
      Name: "Fantasy Shield 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_shield_001"
      }
    }
    Assets {
      Id: 34823057115098118
      Name: "Text 05: 6"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_032"
      }
    }
    Assets {
      Id: 17160283160308691459
      Name: "Text 05: ~"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_036"
      }
    }
    Assets {
      Id: 7369954283335535613
      Name: "Text 05: 1"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_027"
      }
    }
    Assets {
      Id: 4180358987950391816
      Name: "Text 05: ,"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_062"
      }
    }
    Assets {
      Id: 5463011714817637894
      Name: "Text 05: \'"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_057"
      }
    }
    Assets {
      Id: 14888731246234281563
      Name: "Text 03: ."
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_063"
      }
    }
    Assets {
      Id: 7906970403073025695
      Name: "Text 03: C"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_002"
      }
    }
    Assets {
      Id: 14061730684956481535
      Name: "Text 05: 0"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_026"
      }
    }
    Assets {
      Id: 10733938494793341403
      Name: "Wedge - Curved"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_curved_001"
      }
    }
    Assets {
      Id: 15785876743814996770
      Name: "Wedge - Convex"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_curved_convex_001"
      }
    }
    Assets {
      Id: 4488444258523261897
      Name: "Flare Billboard"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_flare_object"
      }
    }
    Assets {
      Id: 15897705887741699672
      Name: "Urban Pipe Straight"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_pipes_straight_001_ref"
      }
    }
    Assets {
      Id: 14577953825021911847
      Name: "Fantasy Pommel 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_001"
      }
    }
    Assets {
      Id: 9675776263369201294
      Name: "Fantasy Pommel 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_003"
      }
    }
    Assets {
      Id: 46061843978868412
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
  VirtualFolderPath: "Weapons"
}
