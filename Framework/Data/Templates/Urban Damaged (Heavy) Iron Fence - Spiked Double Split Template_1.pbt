Assets {
  Id: 17228249063074115187
  Name: "Urban Damaged (Heavy) Iron Fence - Spiked Double Split Template "
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10656148286335621720
      Objects {
        Id: 10656148286335621720
        Name: "Urban Damaged(H) Iron Fence Gate - Spiked Double Split Template "
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5008732478138144191
        ChildIds: 10455176627287727494
        ChildIds: 11187607364466616904
        ChildIds: 3226636537072061118
        ChildIds: 605017187405992817
        ChildIds: 10464608234084657174
        ChildIds: 7674283423853799445
        ChildIds: 8520001778297387633
        ChildIds: 11286961789300835327
        ChildIds: 10650809549346161783
        ChildIds: 77402142108751278
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
        Id: 10455176627287727494
        Name: "LeftGate"
        Transform {
          Location {
            X: 524.999512
            Y: 25
            Z: 30
          }
          Rotation {
            Yaw: 90.0000916
          }
          Scale {
            X: 1
            Y: -1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 4507314094600754926
        ChildIds: 4295956122748321355
        ChildIds: 12254190662297984580
        ChildIds: 9392605349922564257
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4507314094600754926
        Name: "AdvancedDoorController"
        Transform {
          Location {
          }
          Scale {
            X: 3.25
            Y: 3.25
            Z: 3.25
          }
        }
        ParentId: 10455176627287727494
        ChildIds: 3281683718676958459
        ChildIds: 12541680565494436580
        UnregisteredParameters {
          Overrides {
            Name: "cs:OpenOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:OpenRotation"
            Rotator {
              Yaw: -90
            }
          }
          Overrides {
            Name: "cs:TimeToOpen"
            Float: 0.75
          }
          Overrides {
            Name: "cs:StartOpen"
            Bool: false
          }
          Overrides {
            Name: "cs:FlipRotationBasedOnSide"
            Bool: true
          }
          Overrides {
            Name: "cs:RequireInteraction"
            Bool: true
          }
          Overrides {
            Name: "cs:TriggerCanCloseDoor"
            Bool: false
          }
          Overrides {
            Name: "cs:OpenInteractionLabel"
            String: "Open Door"
          }
          Overrides {
            Name: "cs:CloseInteractionLabel"
            String: "Close Door"
          }
          Overrides {
            Name: "cs:AutoCloseTime"
            Float: 3
          }
          Overrides {
            Name: "cs:DoorGeometry"
            ObjectReference {
              SubObjectId: 12254190662297984580
            }
          }
          Overrides {
            Name: "cs:DoorTrigger"
            ObjectReference {
              SubObjectId: 9392605349922564257
            }
          }
          Overrides {
            Name: "cs:ResetOnRoundStart"
            Bool: true
          }
          Overrides {
            Name: "cs:FlipRotationBasedOnSide:tooltip"
            String: "If checked, direction door will rotate is determined by player\'s approach angle."
          }
          Overrides {
            Name: "cs:RequireInteraction:tooltip"
            String: "Checked = requires player interaction (keypress) to open. Unchecked = door opens automatically when player enters trigger volume."
          }
          Overrides {
            Name: "cs:TriggerCanCloseDoor:tooltip"
            String: "Entering the trigger volume closes the door. Recommended if the trigger is attached to the door and \"RequireInteraction\" is unchecked. Useful in situations where door would block a path when open."
          }
          Overrides {
            Name: "cs:AutoCloseTime:tooltip"
            String: "Time in seconds before door automatically closes. Set to 0 or negative to force door to stay open (unless triggered)."
          }
          Overrides {
            Name: "cs:OpenOffset:tooltip"
            String: "Move DoorGeometry to this (relative local) position when opened."
          }
          Overrides {
            Name: "cs:OpenRotation:tooltip"
            String: "Rotate DoorGeometry by this amount when opened."
          }
          Overrides {
            Name: "cs:TimeToOpen:tooltip"
            String: "Time in seconds it takes for door to move completely."
          }
          Overrides {
            Name: "cs:StartOpen:tooltip"
            String: "Door will start in open position. If RequireInteraction or TriggerCanCloseDoor is checked it can be closed."
          }
          Overrides {
            Name: "cs:DoorTrigger:tooltip"
            String: "Trigger that triggers this door."
          }
          Overrides {
            Name: "cs:DoorGeometry:tooltip"
            String: "This is what will actually get moved! Must be networked, Static Context recommended."
          }
          Overrides {
            Name: "cs:ResetOnRoundStart:tooltip"
            String: "Returns the door to its initial state if a script calls Game.StartRound()"
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3281683718676958459
        Name: "DoorControllerServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.307692319
            Y: 0.307692319
            Z: 0.307692319
          }
        }
        ParentId: 4507314094600754926
        UnregisteredParameters {
          Overrides {
            Name: "cs:DoorController"
            ObjectReference {
              SubObjectId: 4507314094600754926
            }
          }
          Overrides {
            Name: "cs:OpenPosition"
            Vector {
            }
          }
          Overrides {
            Name: "cs:ClosedPosition"
            Vector {
            }
          }
          Overrides {
            Name: "cs:OpenRotation"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:ClosedRotation"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:ReversedOpenRotation"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:OpenPosition:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:OpenRotation:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ClosedRotation:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ClosedPosition:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ReversedOpenRotation:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:OpenPosition:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
          }
          Overrides {
            Name: "cs:ClosedPosition:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
          }
          Overrides {
            Name: "cs:OpenRotation:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
          }
          Overrides {
            Name: "cs:ClosedRotation:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
          }
          Overrides {
            Name: "cs:ReversedOpenRotation:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
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
            Id: 3259739974738216130
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12541680565494436580
        Name: "SetSoundsHere"
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
        ParentId: 4507314094600754926
        ChildIds: 6792716819617071555
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 6792716819617071555
        Name: "DoorControllerClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.307692319
            Y: 0.307692319
            Z: 0.307692319
          }
        }
        ParentId: 12541680565494436580
        UnregisteredParameters {
          Overrides {
            Name: "cs:DoorController"
            ObjectReference {
              SubObjectId: 4507314094600754926
            }
          }
          Overrides {
            Name: "cs:ServerScript"
            ObjectReference {
              SubObjectId: 3281683718676958459
            }
          }
          Overrides {
            Name: "cs:OpeningSFX"
            ObjectReference {
              SubObjectId: 11637594122101536848
            }
          }
          Overrides {
            Name: "cs:FullyOpenSFX"
            ObjectReference {
              SubObjectId: 15112905268275778761
            }
          }
          Overrides {
            Name: "cs:ClosingSFX"
            ObjectReference {
              SubObjectId: 11637594122101536848
            }
          }
          Overrides {
            Name: "cs:FullyClosedSFX"
            ObjectReference {
              SubObjectId: 15112905268275778761
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
            Id: 17269355720156759727
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4295956122748321355
        Name: "Sounds (ClientContext)"
        Transform {
          Location {
            X: 15.0001068
            Y: -99.9999771
            Z: 175
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10455176627287727494
        ChildIds: 11637594122101536848
        ChildIds: 15112905268275778761
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
        Id: 11637594122101536848
        Name: "Metal Door Hatch Slide 01 SFX"
        Transform {
          Location {
            Y: -134.999512
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4295956122748321355
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
            Id: 2919956752703671528
          }
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15112905268275778761
        Name: "Metal Door & Hatch Close Shut Set 01 SFX"
        Transform {
          Location {
            Y: -134.999512
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4295956122748321355
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
            Id: 9479528947908647592
          }
          TeamSettings {
          }
          AudioBP {
            Volume: 1
            Falloff: 3600
            Radius: 400
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12254190662297984580
        Name: "DoorRoot"
        Transform {
          Location {
            X: -24.9995232
            Y: -445.000031
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10455176627287727494
        ChildIds: 15332920629676577473
        UnregisteredParameters {
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
        Id: 15332920629676577473
        Name: "Geo_StaticContext"
        Transform {
          Location {
            X: 4.17232377e-06
            Y: -4.99999619
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12254190662297984580
        ChildIds: 10429815010707058891
        ChildIds: 11704753424282858552
        UnregisteredParameters {
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
          Type: RuntimeStatic
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10429815010707058891
        Name: "Urban - Damaged Iron Fence - Fence Top 05"
        Transform {
          Location {
            X: -0.001953125
            Y: -195.000488
            Z: 370
          }
          Rotation {
            Yaw: 90.0000687
          }
          Scale {
            X: 0.96
            Y: 1
            Z: 1
          }
        }
        ParentId: 15332920629676577473
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
            Id: 4486409086589361040
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
        Id: 11704753424282858552
        Name: "Urban - Damaged Iron Gate 03"
        Transform {
          Location {
            X: -0.001953125
            Y: -195.000488
            Z: -30
          }
          Rotation {
            Yaw: 90.0000687
          }
          Scale {
            X: 0.96
            Y: 1
            Z: 1
          }
        }
        ParentId: 15332920629676577473
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 8225332749088216016
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
            Id: 7831812092670386029
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
        Id: 9392605349922564257
        Name: "Trigger"
        Transform {
          Location {
            X: -24.9996357
            Y: -245.000031
            Z: 195
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 2.8
            Y: 3.9
            Z: 4.5
          }
        }
        ParentId: 10455176627287727494
        UnregisteredParameters {
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
        Id: 11187607364466616904
        Name: "RightGate"
        Transform {
          Location {
            X: 574.999939
            Y: 25
            Z: 30
          }
          Rotation {
            Yaw: 89.9998856
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 8666161874684413869
        ChildIds: 14118856978346287215
        ChildIds: 8777354356941815830
        ChildIds: 11007213459484281678
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8666161874684413869
        Name: "AdvancedDoorController"
        Transform {
          Location {
          }
          Scale {
            X: 3.25
            Y: 3.25
            Z: 3.25
          }
        }
        ParentId: 11187607364466616904
        ChildIds: 5505024054872819635
        ChildIds: 4599941414908259285
        UnregisteredParameters {
          Overrides {
            Name: "cs:OpenOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:OpenRotation"
            Rotator {
              Yaw: -90
            }
          }
          Overrides {
            Name: "cs:TimeToOpen"
            Float: 0.75
          }
          Overrides {
            Name: "cs:StartOpen"
            Bool: false
          }
          Overrides {
            Name: "cs:FlipRotationBasedOnSide"
            Bool: true
          }
          Overrides {
            Name: "cs:RequireInteraction"
            Bool: true
          }
          Overrides {
            Name: "cs:TriggerCanCloseDoor"
            Bool: false
          }
          Overrides {
            Name: "cs:OpenInteractionLabel"
            String: "Open Door"
          }
          Overrides {
            Name: "cs:CloseInteractionLabel"
            String: "Close Door"
          }
          Overrides {
            Name: "cs:AutoCloseTime"
            Float: 3
          }
          Overrides {
            Name: "cs:DoorGeometry"
            ObjectReference {
              SubObjectId: 8777354356941815830
            }
          }
          Overrides {
            Name: "cs:DoorTrigger"
            ObjectReference {
              SubObjectId: 11007213459484281678
            }
          }
          Overrides {
            Name: "cs:ResetOnRoundStart"
            Bool: true
          }
          Overrides {
            Name: "cs:FlipRotationBasedOnSide:tooltip"
            String: "If checked, direction door will rotate is determined by player\'s approach angle."
          }
          Overrides {
            Name: "cs:RequireInteraction:tooltip"
            String: "Checked = requires player interaction (keypress) to open. Unchecked = door opens automatically when player enters trigger volume."
          }
          Overrides {
            Name: "cs:TriggerCanCloseDoor:tooltip"
            String: "Entering the trigger volume closes the door. Recommended if the trigger is attached to the door and \"RequireInteraction\" is unchecked. Useful in situations where door would block a path when open."
          }
          Overrides {
            Name: "cs:AutoCloseTime:tooltip"
            String: "Time in seconds before door automatically closes. Set to 0 or negative to force door to stay open (unless triggered)."
          }
          Overrides {
            Name: "cs:OpenOffset:tooltip"
            String: "Move DoorGeometry to this (relative local) position when opened."
          }
          Overrides {
            Name: "cs:OpenRotation:tooltip"
            String: "Rotate DoorGeometry by this amount when opened."
          }
          Overrides {
            Name: "cs:TimeToOpen:tooltip"
            String: "Time in seconds it takes for door to move completely."
          }
          Overrides {
            Name: "cs:StartOpen:tooltip"
            String: "Door will start in open position. If RequireInteraction or TriggerCanCloseDoor is checked it can be closed."
          }
          Overrides {
            Name: "cs:DoorTrigger:tooltip"
            String: "Trigger that triggers this door."
          }
          Overrides {
            Name: "cs:DoorGeometry:tooltip"
            String: "This is what will actually get moved! Must be networked, Static Context recommended."
          }
          Overrides {
            Name: "cs:ResetOnRoundStart:tooltip"
            String: "Returns the door to its initial state if a script calls Game.StartRound()"
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5505024054872819635
        Name: "DoorControllerServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.307692319
            Y: 0.307692319
            Z: 0.307692319
          }
        }
        ParentId: 8666161874684413869
        UnregisteredParameters {
          Overrides {
            Name: "cs:DoorController"
            ObjectReference {
              SubObjectId: 8666161874684413869
            }
          }
          Overrides {
            Name: "cs:OpenPosition"
            Vector {
            }
          }
          Overrides {
            Name: "cs:ClosedPosition"
            Vector {
            }
          }
          Overrides {
            Name: "cs:OpenRotation"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:ClosedRotation"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:ReversedOpenRotation"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:OpenPosition:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:OpenRotation:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ClosedRotation:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ClosedPosition:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ReversedOpenRotation:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:OpenPosition:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
          }
          Overrides {
            Name: "cs:ClosedPosition:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
          }
          Overrides {
            Name: "cs:OpenRotation:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
          }
          Overrides {
            Name: "cs:ClosedRotation:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
          }
          Overrides {
            Name: "cs:ReversedOpenRotation:tooltip"
            String: "Used to ensure proper client-server communication. Safe to ignore."
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
            Id: 3259739974738216130
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4599941414908259285
        Name: "SetSoundsHere"
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
        ParentId: 8666161874684413869
        ChildIds: 712130992457223487
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 712130992457223487
        Name: "DoorControllerClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.307692319
            Y: 0.307692319
            Z: 0.307692319
          }
        }
        ParentId: 4599941414908259285
        UnregisteredParameters {
          Overrides {
            Name: "cs:DoorController"
            ObjectReference {
              SubObjectId: 8666161874684413869
            }
          }
          Overrides {
            Name: "cs:ServerScript"
            ObjectReference {
              SubObjectId: 5505024054872819635
            }
          }
          Overrides {
            Name: "cs:OpeningSFX"
            ObjectReference {
              SubObjectId: 7506308315819549144
            }
          }
          Overrides {
            Name: "cs:FullyOpenSFX"
            ObjectReference {
              SubObjectId: 11671663295970272319
            }
          }
          Overrides {
            Name: "cs:ClosingSFX"
            ObjectReference {
              SubObjectId: 7506308315819549144
            }
          }
          Overrides {
            Name: "cs:FullyClosedSFX"
            ObjectReference {
              SubObjectId: 11671663295970272319
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
            Id: 17269355720156759727
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14118856978346287215
        Name: "Sounds (ClientContext)"
        Transform {
          Location {
            X: 15.0001068
            Y: -99.9999771
            Z: 175
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11187607364466616904
        ChildIds: 7506308315819549144
        ChildIds: 11671663295970272319
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
        Id: 7506308315819549144
        Name: "Metal Door Hatch Slide 01 SFX"
        Transform {
          Location {
            X: 0.00029206273
            Y: -140
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14118856978346287215
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
            Id: 2919956752703671528
          }
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11671663295970272319
        Name: "Metal Door & Hatch Close Shut Set 01 SFX"
        Transform {
          Location {
            X: 0.00029206273
            Y: -140
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14118856978346287215
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
            Id: 9479528947908647592
          }
          TeamSettings {
          }
          AudioBP {
            Volume: 1
            Falloff: 3600
            Radius: 400
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8777354356941815830
        Name: "DoorRoot"
        Transform {
          Location {
            X: -24.9995232
            Y: -445.000031
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11187607364466616904
        ChildIds: 8610597156595471647
        UnregisteredParameters {
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
        Id: 8610597156595471647
        Name: "Geo_StaticContext"
        Transform {
          Location {
            X: 4.17232377e-06
            Y: -4.99999619
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8777354356941815830
        ChildIds: 7023516832326423997
        ChildIds: 17175429111783598042
        UnregisteredParameters {
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
          Type: RuntimeStatic
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7023516832326423997
        Name: "Urban - Damaged Iron Fence - Fence Top 05"
        Transform {
          Location {
            X: 0.000360307255
            Y: -194.998352
            Z: 370
          }
          Rotation {
            Yaw: 90.0000687
          }
          Scale {
            X: 0.96
            Y: -1
            Z: 1
          }
        }
        ParentId: 8610597156595471647
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
            Id: 4486409086589361040
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
        Id: 17175429111783598042
        Name: "Urban - Damaged Iron Gate 03"
        Transform {
          Location {
            X: 0.000360307255
            Y: -194.998352
            Z: -30
          }
          Rotation {
            Yaw: 90.0000687
          }
          Scale {
            X: 0.96
            Y: -1
            Z: 1
          }
        }
        ParentId: 8610597156595471647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 8225332749088216016
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
            Id: 7831812092670386029
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
        Id: 11007213459484281678
        Name: "Trigger"
        Transform {
          Location {
            X: -24.9996357
            Y: -245.000031
            Z: 195
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 2.8
            Y: 3.9
            Z: 4.5
          }
        }
        ParentId: 11187607364466616904
        UnregisteredParameters {
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
        Id: 3226636537072061118
        Name: "Hinges"
        Transform {
          Location {
            X: 1009.99988
          }
          Rotation {
            Yaw: -2.73207515e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 11565675522112348533
        ChildIds: 10657519010733659614
        ChildIds: 18094870999513940170
        ChildIds: 2233814037375195021
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
        Id: 11565675522112348533
        Name: "Japanese Chest Hinge 01"
        Transform {
          Location {
            X: 20
            Y: 1.43051129e-05
            Z: 325
          }
          Rotation {
            Pitch: 90
            Yaw: 177.469513
            Roll: 177.469482
          }
          Scale {
            X: 2
            Y: 2.25
            Z: 2
          }
        }
        ParentId: 3226636537072061118
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.325490206
              G: 0.286274523
              B: 0.141176477
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 988091216586047331
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 15402899459456575054
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
        Id: 10657519010733659614
        Name: "Japanese Chest Hinge 01"
        Transform {
          Location {
            X: 20
            Y: 1.43051129e-05
            Z: 75
          }
          Rotation {
            Pitch: 90
            Yaw: -177.469498
            Roll: -177.469528
          }
          Scale {
            X: 2
            Y: 2.25
            Z: 2
          }
        }
        ParentId: 3226636537072061118
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.325490206
              G: 0.286274523
              B: 0.141176477
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 988091216586047331
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 15402899459456575054
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
        Id: 18094870999513940170
        Name: "Japanese Chest Hinge 01"
        Transform {
          Location {
            X: -939.999268
            Y: 0.001953125
            Z: 325
          }
          Rotation {
            Pitch: -90
            Yaw: 33.6901093
            Roll: -33.690094
          }
          Scale {
            X: -2
            Y: 2.25
            Z: 2
          }
        }
        ParentId: 3226636537072061118
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.325490206
              G: 0.286274523
              B: 0.141176477
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 988091216586047331
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 15402899459456575054
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
        Id: 2233814037375195021
        Name: "Japanese Chest Hinge 01"
        Transform {
          Location {
            X: -939.999268
            Y: 0.001953125
            Z: 75
          }
          Rotation {
            Pitch: -90
            Yaw: 9.4623661
            Roll: -9.46231079
          }
          Scale {
            X: -2
            Y: 2.25
            Z: 2
          }
        }
        ParentId: 3226636537072061118
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.325490206
              G: 0.286274523
              B: 0.141176477
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 988091216586047331
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 15402899459456575054
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
        Id: 605017187405992817
        Name: "Urban Iron Fence - Pillar Large Template"
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
        ParentId: 10656148286335621720
        ChildIds: 15977123174987520964
        ChildIds: 6106073521300127983
        ChildIds: 1685887676767871984
        ChildIds: 1350711061191222996
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
        Id: 15977123174987520964
        Name: "Urban - Damaged Iron Fence - Pillar Base 01"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 605017187405992817
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2319927929110041507
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 647767520297404097
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
            Id: 14852082883520467487
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
        Id: 6106073521300127983
        Name: "Urban - Damaged Iron Fence - Pillar Mid 02"
        Transform {
          Location {
            Z: 125
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: -1
            Y: 1
            Z: 0.75
          }
        }
        ParentId: 605017187405992817
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 10984415144127775715
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
        Id: 1685887676767871984
        Name: "Urban - Damaged Iron Fence - Pillar Mid Top 02"
        Transform {
          Location {
            Z: 275
          }
          Rotation {
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 605017187405992817
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 7836827177118451436
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
        Id: 1350711061191222996
        Name: "Urban - Damaged Iron Fence - Pillar Cap 02"
        Transform {
          Location {
            Z: 475
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 605017187405992817
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 18347399718816297984
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
        Id: 10464608234084657174
        Name: "Urban Iron Fence - Pillar Large Template"
        Transform {
          Location {
            X: 550
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 2859460229847007971
        ChildIds: 2483047859777493733
        ChildIds: 2447965731913509077
        ChildIds: 5656248581923173798
        ChildIds: 3566550079382896627
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
        Id: 2859460229847007971
        Name: "Urban - Damaged Iron Fence - Pillar Base 01"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10464608234084657174
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2319927929110041507
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 647767520297404097
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
            Id: 14852082883520467487
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
        Id: 2483047859777493733
        Name: "Urban - Damaged Iron Fence - Pillar Mid 02"
        Transform {
          Location {
            Z: 125
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.4
          }
        }
        ParentId: 10464608234084657174
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 10984415144127775715
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
        Id: 2447965731913509077
        Name: "Urban - Damaged Iron Fence - Pillar Mid Top 02"
        Transform {
          Location {
            Z: 405
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10464608234084657174
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 7836827177118451436
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
        Id: 5656248581923173798
        Name: "Urban - Damaged Iron Fence - Pillar Cap 02"
        Transform {
          Location {
            Y: 157.802734
            Z: -15
          }
          Rotation {
            Pitch: 5.09827137
            Yaw: -51.7599487
            Roll: 29.3394794
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10464608234084657174
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 18347399718816297984
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
        Id: 3566550079382896627
        Name: "Hill 03"
        Transform {
          Location {
            X: -11.9980469
            Y: 183.236328
          }
          Rotation {
            Pitch: 0.158631131
            Yaw: 152.461945
            Roll: 0.304235339
          }
          Scale {
            X: 0.524114668
            Y: 0.524114668
            Z: 0.524114668
          }
        }
        ParentId: 10464608234084657174
        ChildIds: 2057475268962316074
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16844107203508180063
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
            Id: 16118682211110550421
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
        Id: 2057475268962316074
        Name: "Decal Dirt Patch"
        Transform {
          Location {
            X: -29.4179688
            Y: -1.45776367
            Z: -15.7480698
          }
          Rotation {
            Yaw: -3.05175781e-05
          }
          Scale {
            X: 1.82814896
            Y: 1.82814896
            Z: 0.182814851
          }
        }
        ParentId: 3566550079382896627
        UnregisteredParameters {
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 7202307395712524294
          }
          TeamSettings {
          }
          DecalBP {
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
        Id: 7674283423853799445
        Name: "Urban Iron Fence - Pillar Large Template"
        Transform {
          Location {
            X: 1100
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 14235398865428276308
        ChildIds: 3967657010273522934
        ChildIds: 9292624406514371199
        ChildIds: 14624904784547748790
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
        Id: 14235398865428276308
        Name: "Urban - Damaged Iron Fence - Pillar Base 01"
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
        ParentId: 7674283423853799445
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2319927929110041507
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 647767520297404097
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
            Id: 14852082883520467487
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
        Id: 3967657010273522934
        Name: "Urban - Damaged Iron Fence - Pillar Mid 02"
        Transform {
          Location {
            Z: 125
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.75
          }
        }
        ParentId: 7674283423853799445
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 10984415144127775715
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
        Id: 9292624406514371199
        Name: "Urban - Damaged Iron Fence - Pillar Mid Top 02"
        Transform {
          Location {
            Z: 275
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7674283423853799445
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 7836827177118451436
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
        Id: 14624904784547748790
        Name: "Urban - Damaged Iron Fence - Pillar Cap 02"
        Transform {
          Location {
            Z: 475
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7674283423853799445
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14924350122593897194
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14342301055342029612
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
            Id: 18347399718816297984
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
        Id: 8520001778297387633
        Name: "Post Tall"
        Transform {
          Location {
            X: 615
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 2161145184257363314
        ChildIds: 1817069144489021794
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
        Id: 2161145184257363314
        Name: "Urban - Damaged Iron Fence - Post Top 02"
        Transform {
          Location {
            Y: 28.2050781
            Z: 484.17923
          }
          Rotation {
            Pitch: 3.33380151
            Yaw: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8520001778297387633
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
            Id: 4670029623152493838
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
        Id: 1817069144489021794
        Name: "Urban - Damaged Iron Fence - Post 01"
        Transform {
          Location {
          }
          Rotation {
            Roll: 3.33380556
          }
          Scale {
            X: 1
            Y: 1
            Z: 2.425
          }
        }
        ParentId: 8520001778297387633
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 18020891506076657236
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
        Id: 11286961789300835327
        Name: "Post Tall"
        Transform {
          Location {
            X: 490
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 7158625065445491187
        ChildIds: 12276393703437930935
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
        Id: 7158625065445491187
        Name: "Urban - Damaged Iron Fence - Post Top 02"
        Transform {
          Location {
            X: -5
            Y: -23.2714844
            Z: 484.441284
          }
          Rotation {
            Roll: -2.75048828
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11286961789300835327
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
            Id: 4670029623152493838
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
        Id: 12276393703437930935
        Name: "Urban - Damaged Iron Fence - Post 01"
        Transform {
          Location {
            X: -5
          }
          Rotation {
            Pitch: 2.7505033
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 2.425
          }
        }
        ParentId: 11286961789300835327
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 18020891506076657236
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
        Id: 10650809549346161783
        Name: "Post Med"
        Transform {
          Location {
            X: 60
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 5806312915701507391
        ChildIds: 10349573661685366861
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
        Id: 5806312915701507391
        Name: "Urban - Damaged Iron Fence - Post Top 02"
        Transform {
          Location {
            X: 5
            Z: 360
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10650809549346161783
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
            Id: 4670029623152493838
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
        Id: 10349573661685366861
        Name: "Urban - Damaged Iron Fence - Post 01"
        Transform {
          Location {
            X: 5
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.80000031
          }
        }
        ParentId: 10650809549346161783
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 18020891506076657236
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
        Id: 77402142108751278
        Name: "Post Med"
        Transform {
          Location {
            X: 1035
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10656148286335621720
        ChildIds: 16192690924735885412
        ChildIds: 224410427999471540
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
        Id: 16192690924735885412
        Name: "Urban - Damaged Iron Fence - Post 01"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.80000031
          }
        }
        ParentId: 77402142108751278
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 18020891506076657236
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
        Id: 224410427999471540
        Name: "Urban - Damaged Iron Fence - Post Top 02"
        Transform {
          Location {
            Z: 360
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 77402142108751278
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
            Id: 4670029623152493838
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
    }
    Assets {
      Id: 2919956752703671528
      Name: "Metal Door Hatch Slide 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_metal_door_hatch_slide_01a_Cue_ref"
      }
    }
    Assets {
      Id: 9479528947908647592
      Name: "Metal Door & Hatch Close Shut Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_metal_doors_ref"
      }
    }
    Assets {
      Id: 4486409086589361040
      Name: "Urban - Damaged Iron Fence - Fence Top 05"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "ts_urb_fences_iron_fence_top_damaged_005_ref"
      }
    }
    Assets {
      Id: 7831812092670386029
      Name: "Urban - Damaged Iron Gate 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "ts_urb_fences_iron_gate_damaged_003_ref"
      }
    }
    Assets {
      Id: 8225332749088216016
      Name: "Iron Wrought Fence 03"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_hal_metal_iron_fence_003_uv_ref"
      }
    }
    Assets {
      Id: 15402899459456575054
      Name: "Japanese Chest Hinge 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_jpn_chest_med_hinge_001"
      }
    }
    Assets {
      Id: 988091216586047331
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 14852082883520467487
      Name: "Urban - Damaged Iron Fence - Pillar Base 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "ts_urb_fences_iron_pillar_base_damaged_001_ref"
      }
    }
    Assets {
      Id: 10984415144127775715
      Name: "Urban - Damaged Iron Fence - Pillar Mid 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "ts_urb_fences_iron_pillar_mid_damaged_002_ref"
      }
    }
    Assets {
      Id: 7836827177118451436
      Name: "Urban - Damaged Iron Fence - Pillar Mid Top 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "ts_urb_fences_iron_pillar_mid_top_damaged_002_ref"
      }
    }
    Assets {
      Id: 18347399718816297984
      Name: "Urban - Damaged Iron Fence - Pillar Cap 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "ts_urb_fences_iron_pillar_cap_damaged_002_ref"
      }
    }
    Assets {
      Id: 16118682211110550421
      Name: "Hill 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hill_003"
      }
    }
    Assets {
      Id: 16844107203508180063
      Name: "Rubble Concrete 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_mil_rubble_002_uv_ref"
      }
    }
    Assets {
      Id: 7202307395712524294
      Name: "Decal Dirt Patch"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_dirt_patch_001"
      }
    }
    Assets {
      Id: 4670029623152493838
      Name: "Urban - Damaged Iron Fence - Post Top 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "ts_urb_fences_iron_post_damaged_001_ref"
      }
    }
    Assets {
      Id: 18020891506076657236
      Name: "Urban - Damaged Iron Fence - Post 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "ts_urb_fences_iron_post_damaged_002_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Urban_Damaged_H_Iron_Fence_Gate_-_Spiked_Double_Split_Template_"
    }
  }
  SerializationVersion: 125
}
